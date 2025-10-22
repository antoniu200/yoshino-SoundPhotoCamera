package com.sonyericsson.cameracommon.viewfinder.setting;

import android.content.Context;
import com.sonyericsson.cameracommon.setting.controller.SettingDialogController;
import com.sonyericsson.cameracommon.setting.dialog.SettingAdapter;
import com.sonyericsson.cameracommon.setting.dialogitem.SettingDialogItemFactory;
import com.sonyericsson.cameracommon.setting.executor.SettingChangeAndCloseExecutor;
import com.sonyericsson.cameracommon.setting.executor.SettingChangeExecutor;
import com.sonyericsson.cameracommon.setting.executor.SettingChangerInterface;
import com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface;
import com.sonyericsson.cameracommon.setting.settingitem.SettingItem;
import com.sonyericsson.cameracommon.setting.settingitem.TypedSettingItem;

/* loaded from: classes.dex */
public class SettingExecutorFactory<Key, Value> {
    private final Context mContext;
    private final SettingChangerInterface<Value> mSettingChanger;
    private final SettingDialogController mSettingDialogController;

    public SettingExecutorFactory(Context context, SettingDialogController settingDialogController, SettingChangerInterface<Value> settingChanger) {
        this.mContext = context;
        this.mSettingDialogController = settingDialogController;
        this.mSettingChanger = settingChanger;
    }

    public SettingExecutorInterface<Key> getOpenValueSelectDialogExecutor(Key key, final SettingDialogItemFactory dialogItemFactory) {
        return new SettingExecutorInterface<Key>() { // from class: com.sonyericsson.cameracommon.viewfinder.setting.SettingExecutorFactory.1
            @Override // com.sonyericsson.cameracommon.setting.executor.SettingExecutorInterface
            public void onExecute(TypedSettingItem<Key> key2) {
                SettingExecutorFactory.this.mSettingDialogController.openSecondLayerDialog(SettingExecutorFactory.this.generateChildrenAdapter(key2, dialogItemFactory), key2.getData());
            }
        };
    }

    public SettingExecutorInterface<Value> getChangeValueExecutor(int keyItemType) {
        switch (keyItemType) {
            case 4:
            case 5:
            case 7:
                return new SettingChangeExecutor(this.mSettingChanger);
            case 6:
            default:
                return new SettingChangeAndCloseExecutor(this.mSettingChanger, this.mSettingDialogController);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SettingAdapter generateChildrenAdapter(SettingItem parent, SettingDialogItemFactory dialogItemFactory) {
        SettingAdapter adapter = new SettingAdapter(this.mContext, dialogItemFactory);
        for (SettingItem item : parent.getChildren()) {
            adapter.add(item);
        }
        return adapter;
    }
}