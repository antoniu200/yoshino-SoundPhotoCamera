package com.sonyericsson.cameracommon.viewfinder.setting;

import android.content.Context;
import android.content.res.Resources;
import com.sonyericsson.cameracommon.activity.BaseActivity;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingKey;
import com.sonyericsson.cameracommon.commonsetting.CommonSettingValue;
import com.sonyericsson.cameracommon.commonsetting.CommonSettings;
import com.sonyericsson.cameracommon.keytranslator.KeyEventTranslator;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogStack;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialog.SettingTabs;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.utility.CommonUtility;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class SettingUi implements OnChangedCommonSettingListener, SettingTabs.OnTabSelectedListener, SettingDialogController {
    public static final String TAG = "SettingUi";
    protected final CommonSettingItemResolver mCommonItemResolver;
    protected final Context mContext;
    protected final SettingDialogStack mDialogStack;
    private final KeyEventTranslator mKeyEventTranslator;
    private SettingAdapter mMenuItemAdapter;
    private SettingTabs.Tab mSelectedTab;
    private SettingAdapter mSettingItemAdapter;
    private final SettingAdapter mShortcutItemAdapter;

    public SettingUi(BaseActivity activity, SettingDialogStack dialogStack, CommonSettingKey[] items) {
        this(activity, dialogStack, activity.getCommonSettings(), getVisibleCommonKeys(items, activity));
    }

    public SettingUi(Context context, SettingDialogStack dialogStack, CommonSettings commonSettings, CommonSettingKey[] items) {
        this.mContext = context;
        this.mDialogStack = dialogStack;
        this.mKeyEventTranslator = new KeyEventTranslator(commonSettings);
        CommonSettingChanger commonSettingChanger = new CommonSettingChanger(context, commonSettings, this);
        this.mCommonItemResolver = new CommonSettingItemResolver(context, commonSettings, new CommonSettingExecutorFactory(context, this, commonSettingChanger), new SettingDialogItemFactory(), items);
        this.mShortcutItemAdapter = new SettingAdapter(this.mContext);
        this.mMenuItemAdapter = null;
        this.mSettingItemAdapter = null;
        this.mSelectedTab = null;
    }

    public void setup() {
        this.mDialogStack.updateShortcutTray(this.mShortcutItemAdapter);
    }

    public boolean isOpened() {
        return this.mDialogStack.isDialogOpened();
    }

    public SettingTabs.Tab getSelectedTab() {
        return this.mSelectedTab;
    }

    public void clearShortcutSelected() {
        this.mDialogStack.clearShortcutSelected();
    }

    public void openMenuDialog(SettingAdapter adapter, SettingTabs.Tab[] tabs, SettingTabs.Tab selectedTab, Object tag, int menuDialogRowCount) {
        if (this.mDialogStack.openMenuDialog(adapter, tabs, this, tag, menuDialogRowCount)) {
            this.mMenuItemAdapter = adapter;
            this.mSelectedTab = selectedTab;
            this.mDialogStack.getMenuDialog().setSelectedTab(this.mSelectedTab);
        }
    }

    public void openMenuDialog(SettingAdapter adapter, int titleTextResource, Object tag, int menuDialogRowCount) {
        if (this.mDialogStack.openMenuDialog(adapter, titleTextResource, tag, menuDialogRowCount)) {
            this.mMenuItemAdapter = adapter;
        }
    }

    @Override // com.sonyericsson.cameracommon.setting.controller.SettingDialogController
    public void openSecondLayerDialog(SettingAdapter adapter, Object tag) throws Resources.NotFoundException {
        this.mSettingItemAdapter = adapter;
        this.mDialogStack.openSecondLayerDialog(this.mSettingItemAdapter, tag);
    }

    public void openControlDialog(SettingAdapter adapter, Object tag) throws Resources.NotFoundException {
        this.mSettingItemAdapter = adapter;
        this.mDialogStack.openControlDialog(adapter, tag);
    }

    public void openShortcutDialog(SettingAdapter adapter, int titleId, Object tag) throws Resources.NotFoundException {
        this.mSettingItemAdapter = adapter;
        this.mDialogStack.openShortcutDialog(this.mSettingItemAdapter, titleId, tag);
    }

    @Override // com.sonyericsson.cameracommon.setting.controller.SettingDialogController
    public void closeCurrentDialog() throws Resources.NotFoundException {
        this.mDialogStack.closeCurrentDialog();
    }

    @Override // com.sonyericsson.cameracommon.setting.controller.SettingDialogController
    public void closeDialogs(boolean withAnimation) {
        this.mDialogStack.closeDialogs(withAnimation);
    }

    public void showShortcutTray() {
        this.mDialogStack.showShortcutTray();
    }

    public void hideShortcutTray() {
        this.mDialogStack.hideShortcutTray();
    }

    public void clearShortcutTray(Context context) {
        SettingAdapter adapter = new SettingAdapter(context);
        updateShortcutItems(adapter);
    }

    public void selectShortcut(Object shortcut) {
        if (this.mShortcutItemAdapter != null) {
            this.mShortcutItemAdapter.selectByData(shortcut);
            this.mShortcutItemAdapter.notifyDataSetChanged();
        }
    }

    public void setSensorOrientation(int orientation) {
        this.mDialogStack.setUiOrientation(orientation);
    }

    protected void updateShortcutItems(SettingAdapter adapter) {
        if (this.mShortcutItemAdapter != null) {
            if (adapter.getSelected() == null) {
                SettingItem selected = this.mShortcutItemAdapter.getSelected();
                copy(this.mShortcutItemAdapter, adapter);
                this.mShortcutItemAdapter.selectByItem(selected);
            } else {
                copy(this.mShortcutItemAdapter, adapter);
            }
            this.mShortcutItemAdapter.notifyDataSetChanged();
        }
    }

    protected void updateMenuItems(SettingAdapter adapter, boolean resetScrollPosition) {
        if (this.mMenuItemAdapter != null) {
            copy(this.mMenuItemAdapter, adapter);
            if (resetScrollPosition) {
                this.mMenuItemAdapter.notifyDataSetInvalidated();
            } else {
                this.mMenuItemAdapter.notifyDataSetChanged();
            }
        }
    }

    protected void updateSettingItems(SettingAdapter adapter) {
        if (this.mSettingItemAdapter != null) {
            copy(this.mSettingItemAdapter, adapter);
            this.mSettingItemAdapter.notifyDataSetChanged();
        }
    }

    protected void closeDialogsTemporarily() {
        if (this.mDialogStack.isDialogOpened()) {
            closeDialogs(false);
        }
    }

    private void copy(SettingAdapter to, SettingAdapter from) {
        to.clear();
        for (int i = 0; i < from.getCount(); i++) {
            to.add(from.getItem(i));
        }
    }

    @Override // com.sonyericsson.cameracommon.setting.dialog.SettingTabs.OnTabSelectedListener
    public void onTabSelected(SettingTabs.Tab tab) {
        this.mSelectedTab = tab;
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.setting.OnChangedCommonSettingListener
    public void onSettingChanged(CommonSettingValue value) {
    }

    private static CommonSettingKey[] getVisibleCommonKeys(CommonSettingKey[] candidates, BaseActivity activity) {
        List<CommonSettingKey> selection = new ArrayList<>();
        for (CommonSettingKey i : candidates) {
            switch (i) {
                case SAVE_DESTINATION:
                    if (activity.getExtraOutput() == null) {
                        selection.add(i);
                        break;
                    } else {
                        break;
                    }
                case FAST_CAPTURE:
                    if (CommonUtility.isSystemApp(activity)) {
                        selection.add(i);
                        break;
                    } else {
                        break;
                    }
                default:
                    selection.add(i);
                    break;
            }
        }
        return (CommonSettingKey[]) selection.toArray(new CommonSettingKey[0]);
    }

    protected CommonSettingKey findCommonSettingKeyShownBySettingDialog() {
        for (CommonSettingKey key : CommonSettingKey.values()) {
            if (this.mDialogStack.isOpened(key)) {
                return key;
            }
        }
        return null;
    }
}