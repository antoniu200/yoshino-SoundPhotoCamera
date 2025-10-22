package com.sonyericsson.cameracommon.activity;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import android.text.TextUtils;

import com.sonyericsson.cameracommon.R;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class RequestPermissionSdCardActivity extends Activity {
    public static final String EXTRA_UUID = "extra_key_uuid";
    public static final String TAG = "RequestPermissionSdCardActivity";
    private AlertDialog mCurrentShownDialog = null;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws Resources.NotFoundException {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_request_permission);
        String uuid = getIntent().getStringExtra(EXTRA_UUID);
        if (!TextUtils.isEmpty(uuid)) {
            requestPermissionSdCard(uuid);
        } else {
            showPermissionDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish(int result) {
        Intent resultData = new Intent();
        setResult(result, resultData);
        finish();
    }

    private void requestPermissionSdCard(String uuid) {
        StorageManager sm = (StorageManager) getSystemService(Context.STORAGE_SERVICE);
        List<StorageVolume> vols = sm.getStorageVolumes();
        for (StorageVolume vol : vols) {
            if (vol != null && vol.isRemovable() && Objects.equals(vol.getUuid(), uuid)) {
                Intent SDCardIntent = vol.createOpenDocumentTreeIntent();
                startActivityForResult(SDCardIntent, 256);
                return;
            }
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        if (this.mCurrentShownDialog != null) {
            finish(0);
        }
    }

    private void showPermissionDialog() throws Resources.NotFoundException {
    }

    @Override // android.app.Activity
    public void onActivityResult(int requestCode, int resultCode, Intent data) throws Resources.NotFoundException {
        super.onActivityResult(requestCode, resultCode, data);
        switch (requestCode) {
            case 256:
                switch (resultCode) {
                    case -1:
                        Uri uri = data.getData();
                        if (uri != null) {
                            int takeFlags = data.getFlags() & 3;
                            getContentResolver().takePersistableUriPermission(uri, takeFlags);
                            finish(-1);
                            break;
                        } else {
                            finish(0);
                            break;
                        }
                    case 0:
                        showPermissionDialog();
                        break;
                }
            case 512:
                finish(-1);
                break;
        }
    }
}