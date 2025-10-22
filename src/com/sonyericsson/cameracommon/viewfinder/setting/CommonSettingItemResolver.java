package com.sonyericsson.cameracommon.viewfinder.setting;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.constants.CommonConstants;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItemBuilder;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import com.sonyericsson.cameracommon.utility.StaticConfigurationUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CommonSettingItemResolver {
    public static final String TAG = "CommonSettingItemResolver";
    private final Context mContext;
    private final SettingDialogItemFactory mDialogItemFactory;
    private final CommonSettingExecutorFactory mExecutorFactory;
    private final CommonSettingKey[] mItems;
    private final CommonSettings mSettings;

    public CommonSettingItemResolver(Context context, CommonSettings commonSettings, CommonSettingExecutorFactory executorFactory, SettingDialogItemFactory dialogItemFactory, CommonSettingKey[] settingItems) {
        this.mContext = context;
        this.mSettings = commonSettings;
        this.mExecutorFactory = executorFactory;
        this.mDialogItemFactory = dialogItemFactory;
        this.mItems = settingItems;
    }

    public SettingAdapter generateItemAdapter() {
        SettingAdapter adapter = new SettingAdapter(this.mContext, this.mDialogItemFactory);
        ArrayList<CommonSettingKey> visibleItems = new ArrayList<>();
        for (CommonSettingKey key : this.mItems) {
            if (isVisible(key)) {
                visibleItems.add(key);
            }
        }
        Iterator<CommonSettingKey> it = visibleItems.iterator();
        while (it.hasNext()) {
            CommonSettingKey key2 = it.next();
            int itemType = getDialogItemType(key2);
            String valueText = "";
            CommonSettingValue[] values = key2.getValues();
            if (values.length > 0) {
                CommonSettingValue current = getSelectedSettingItem(values);
                SettingExecutorInterface<CommonSettingValue> valueExecutor = this.mExecutorFactory.getChangeValueExecutor(itemType);
                SettingItem currentitem = getSettingItem(current, valueExecutor);
                valueText = currentitem.getText(this.mContext.getResources());
                String subText = currentitem.getSubText(this.mContext.getResources());
                if (subText != null) {
                    valueText = valueText + " " + subText;
                }
            }
            SettingItemBuilder<CommonSettingKey> builder = SettingItemBuilder.build(key2).iconId(this.mSettings.get(key2).getIconId()).textId(key2.getTitleId()).text(key2.getTitle(this.mContext)).additionalTextForAccessibility(valueText).dialogItemType(itemType).executor(this.mExecutorFactory.getExecutor(key2, this.mDialogItemFactory));
            if (!key2.equals(CommonSettingKey.HELP_GUIDE)) {
                SettingExecutorInterface<CommonSettingValue> valueExecutor2 = this.mExecutorFactory.getChangeValueExecutor(itemType);
                for (CommonSettingValue value : key2.getValues()) {
                    builder.item(getSettingItem(value, valueExecutor2));
                }
            }
            adapter.add(builder.commit());
        }
        return adapter;
    }

    private CommonSettingValue getSelectedSettingItem(CommonSettingValue[] values) {
        if (values.length < 1) {
            throw new IllegalArgumentException("The specified list is empty.");
        }
        for (CommonSettingValue value : values) {
            CommonSettingKey key = value.getCommonSettingKey();
            boolean selected = value.equals(this.mSettings.get(key));
            boolean selectable = selected || this.mSettings.isSelectable(key);
            if (selected && selectable) {
                return value;
            }
        }
        return values[0];
    }

    public SettingAdapter generateItemAdapter(CommonSettingKey key) {
        SettingAdapter adapter = new SettingAdapter(this.mContext, this.mDialogItemFactory);
        int itemType = getDialogItemType(key);
        SettingExecutorInterface<CommonSettingValue> valueExecutor = this.mExecutorFactory.getChangeValueExecutor(itemType);
        for (CommonSettingValue item : key.getValues()) {
            adapter.add(getSettingItem(item, valueExecutor));
        }
        return adapter;
    }

    private boolean isVisible(CommonSettingKey key) {
        switch (key) {
            case SHUTTER_SOUND:
                if (StaticConfigurationUtil.isForceSound()) {
                    break;
                }
                break;
            case TERM_OF_USE:
            case SOFTWARE_LICENSES:
                if (CommonUtility.isSystemApp(this.mContext)) {
                    break;
                }
                break;
            case SAVE_DESTINATION:
                if (!this.mSettings.isFixed(key) && !CommonUtility.shouldStorageForceInternal(this.mContext)) {
                }
                break;
        }
        return true;
    }

    private int getDialogItemType(CommonSettingKey key) {
        switch (key) {
            case SHUTTER_SOUND:
            case GEO_TAG:
            case TOUCH_CAPTURE:
            case GRID_LINE:
                return 4;
            case TERM_OF_USE:
            case SOFTWARE_LICENSES:
            case TOUCH_BLOCK:
            case SAVE_DESTINATION:
            case FAST_CAPTURE:
            default:
                return 3;
        }
    }

    private SettingItem getSettingItem(CommonSettingValue value, SettingExecutorInterface<CommonSettingValue> executor) {
        CommonSettingKey key = value.getCommonSettingKey();
        boolean selected = value.equals(this.mSettings.get(key));
        boolean selectable = selected || this.mSettings.isSelectable(key);
        return SettingItemBuilder.build(value).iconId(value.getIconId()).textId(value.getTextId()).dialogItemType(2).executor(executor).selected(selected).selectable(selectable).commit();
    }

    private boolean isTouchBlockSupported() {
        PackageManager pm;
        if (!CommonUtility.isPackageExist(CommonConstants.TOUCH_BLOCKER_PACKAGE, this.mContext) || (pm = this.mContext.getPackageManager()) == null) {
            return false;
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(CommonConstants.TOUCH_BLOCKER_PACKAGE, CommonConstants.TOUCH_BLOCKER_SERVICE));
        intent.putExtra(CommonConstants.EXTRA_LAUNCHED_FROM_SMALLAPP, false);
        List<ResolveInfo> services = pm.queryIntentServices(intent, 4);
        for (ResolveInfo info : services) {
            ServiceInfo serviceInfo = info.serviceInfo;
            if (serviceInfo != null && CommonConstants.TOUCH_BLOCKER_PACKAGE.equals(serviceInfo.packageName)) {
                return serviceInfo.exported;
            }
        }
        return false;
    }
}