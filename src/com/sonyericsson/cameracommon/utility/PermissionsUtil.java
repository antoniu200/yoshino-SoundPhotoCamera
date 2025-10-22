package com.sonyericsson.cameracommon.utility;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import com.sonyericsson.cameracommon.activity.RequestPermissionActivity;
import com.sonyericsson.cameracommon.activity.RequestPermissionSdCardActivity;
import com.sonyericsson.cameracommon.intent.IntentConstants;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class PermissionsUtil {
    public static final String TAG = "PermissionsUtil";

    public static boolean checkAndRequestSelfPermissions(Activity activity, int requestCode, String[] permissions) {
        if (permissions == null || permissions.length == 0 || Build.VERSION.SDK_INT < 23) {
            return false;
        }
        ArrayList<String> notGrantedPermission = new ArrayList<>();
        getSelfPermissions(activity, permissions, null, notGrantedPermission);
        if (notGrantedPermission.size() <= 0) {
            return false;
        }
        Intent intent = new Intent(activity, (Class<?>) RequestPermissionActivity.class);
        intent.putStringArrayListExtra(IntentConstants.EXTRA_PERMISSIONS_LIST, notGrantedPermission);
        activity.startActivityForResult(intent, requestCode);
        return true;
    }

    public static void getSelfPermissions(Activity activity, String[] permissions, List<String> granted, List<String> notGranted) {
        if (Build.VERSION.SDK_INT >= 23) {
            for (String permission : permissions) {
                if (activity.checkSelfPermission(permission) != 0) {
                    if (notGranted != null) {
                        notGranted.add(permission);
                    }
                } else if (granted != null) {
                    granted.add(permission);
                }
            }
        }
    }

    public static void requestSdCardGranted(Activity activity, int requestCode, String uuid) {
        Intent intent = new Intent(activity, (Class<?>) RequestPermissionSdCardActivity.class);
        intent.putExtra(RequestPermissionSdCardActivity.EXTRA_UUID, uuid);
        activity.startActivityForResult(intent, requestCode);
    }
}