package com.sonymobile.android.addoncamera.soundphoto.view.settingui;

import android.content.Context;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItemBuilder;
import com.sonyericsson.cameracommon.viewfinder.setting.SettingExecutorFactory;
import com.sonymobile.android.addoncamera.soundphoto.setting.ParameterHolder;
import com.sonymobile.android.addoncamera.soundphoto.setting.ParameterKey;
import com.sonymobile.android.addoncamera.soundphoto.setting.ParameterValue;
import com.sonymobile.android.addoncamera.soundphoto.setting.Parameters;
import com.sonymobile.android.addoncamera.soundphoto.setting.SettingPreference;
import com.sonymobile.android.addoncamera.soundphoto.setting.SettingPreferenceManager;
import com.sonymobile.android.addoncamera.soundphoto.setting.SettingSelectability;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ModeSettingItemResolver {
    private final Context mContext;
    private final SettingDialogItemFactory mDialogItemFactory = new SettingDialogItemFactory();
    private final SettingExecutorFactory<ParameterKey, ParameterValue> mExecutorFactory;
    private final SettingPreferenceManager mPreferences;

    ModeSettingItemResolver(Context context, SettingPreferenceManager preferences, SettingExecutorFactory<ParameterKey, ParameterValue> executorFactory) {
        this.mContext = context;
        this.mPreferences = preferences;
        this.mExecutorFactory = executorFactory;
    }

    public SettingAdapter generatePhotoSettingItems() {
        SettingAdapter adapter = new SettingAdapter(this.mContext);
        SettingPreference currentParameterSet = this.mPreferences.getCurrentPreference();
        ParameterHolder<?>[] parameters = null;
        switch (currentParameterSet.capturingMode) {
            case MAIN:
                parameters = new ParameterHolder[]{currentParameterSet.selfTimer, currentParameterSet.autoReview};
                break;
            case FRONT:
                parameters = new ParameterHolder[]{currentParameterSet.autoReview};
                break;
        }
        for (ParameterHolder<?> param : parameters) {
            if (param.getSelectability() == SettingSelectability.SELECTABLE) {
                adapter.add(getSettingItem(param.get().key()));
            }
        }
        return adapter;
    }

    public SettingAdapter generateFlashItems() {
        SettingAdapter adapter = new SettingAdapter(this.mContext, this.mDialogItemFactory);
        for (SettingItem item : getValueItems(Parameters.FLASH)) {
            adapter.add(item);
        }
        return adapter;
    }

    public SettingAdapter generateSelfTimerItems() {
        SettingAdapter adapter = new SettingAdapter(this.mContext, this.mDialogItemFactory);
        for (SettingItem item : getValueItems(Parameters.SELF_TIMER)) {
            adapter.add(item);
        }
        return adapter;
    }

    private SettingItem getSettingItem(ParameterKey key) {
        int type = getItemType(key);
        SettingItemBuilder<ParameterKey> builder = SettingItemBuilder.build(key).textId(key.textId()).dialogItemType(type).executor(this.mExecutorFactory.getOpenValueSelectDialogExecutor(key, this.mDialogItemFactory));
        for (SettingItem item : getValueItems(key)) {
            builder.item(item);
        }
        return builder.commit();
    }

    private List<SettingItem> getValueItems(ParameterKey key) {
        List<SettingItem> items = new ArrayList<>();
        ParameterValue[] options = this.mPreferences.getCurrentPreference().options(key);
        if (options != null) {
            ParameterValue current = this.mPreferences.getCurrentPreference().get(key);
            int length = options.length;
            for (int i = 0; i < length; i++) {
                ParameterValue item = options[i];
                items.add(SettingItemBuilder.build(item).iconId(item.iconId()).textId(item.textId()).dialogItemType(getItemType(item)).selected(item == current).executor(this.mExecutorFactory.getChangeValueExecutor(getItemType(key))).commit());
            }
        }
        return items;
    }

    private int getItemType(ParameterKey key) {
        if (key instanceof Parameters) {
            switch ((Parameters) key) {
                case FLASH:
                case SELF_TIMER:
                    // same grouping you used for values below
                    return 1;
                // If you have any special “submenu” keys, map them here to 3.
                // case SCENE:
                //     return 3;
                default:
                    return 3; // keep your previous default
            }
        }
        return 3;
    }

    private int getItemType(ParameterValue value) {
        switch (value.key()) {
            case FLASH:
            case SELF_TIMER:
                return 1;
            default:
                return 2;
        }
    }
}
