package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Environment;
import android.view.MotionEvent;
import android.view.View;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.constants.CommonConstants;

import java.io.FileOutputStream;
import java.io.IOException;
import java.text.Bidi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CommonUtility {
    public static final String TAG = "CommonUtility";
    private static final String WRITE_MEDIA_STORAGE = "android.permission.WRITE_MEDIA_STORAGE";

    public enum ApplicationType {
        SYSTEM,
        UPDATED_SYSTEM_APP,
        OTHER
    }

    public static List<ResolveInfo> removeExcludeItemsFromList(List<ResolveInfo> srcList, List<String> excludingItems) {
        List<ResolveInfo> dst = new ArrayList<>(srcList);
        for (ResolveInfo resolveInfo : srcList) {
            Iterator<String> it = excludingItems.iterator();
            while (true) {
                if (it.hasNext()) {
                    String packagename = it.next();
                    if (packagename.equals(resolveInfo.activityInfo.packageName)) {
                        dst.remove(resolveInfo);
                        break;
                    }
                }
            }
        }
        return dst;
    }

    public static boolean isPackageExist(String packageName, Context context) throws PackageManager.NameNotFoundException {
        boolean result;
        if (context == null) {
            return false;
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            packageManager.getApplicationInfo(packageName, 0);
            result = true;
        } catch (PackageManager.NameNotFoundException e) {
            result = false;
        }
        return result;
    }

    public static boolean isMirroringRequired(Context context) throws Resources.NotFoundException {
        if (context == null) {
            return false;
        }
        String checkString = context.getResources().getString(R.string.capturing_mode_selector_bidicheck_string);
        Bidi temp = new Bidi(checkString, -2);
        boolean result = temp.isRightToLeft();
        return result;
    }

    public static boolean isActivityAvailable(Context context, Intent intent) {
        if (intent.resolveActivity(context.getPackageManager()) != null) {
            return true;
        }
        CameraLogger.w(TAG, "isActivityAvailable: false : " + intent);
        return false;
    }

    public static boolean isPreinstalledApp(Context context) {
        return getApplicationType(context).equals(ApplicationType.SYSTEM);
    }

    public static boolean isSystemApp(Context context) {
        return !getApplicationType(context).equals(ApplicationType.OTHER);
    }

    public static boolean isCoreCameraApp(Context context) {
        return CommonConstants.CORE_CAMERA_PACKAGE.equals(context.getPackageName());
    }

    public static boolean isPermissionGranted(Context context, String permission) {
        return context.getPackageManager().checkPermission(permission, context.getPackageName()) == PackageManager.PERMISSION_GRANTED;
    }

    public static boolean shouldStorageForceInternal(Context context) {
        return ((WRITE_MEDIA_STORAGE == 0 || isPermissionGranted(context, WRITE_MEDIA_STORAGE)) && isSystemApp(context)) ? false : true;
    }

    private static ApplicationType getApplicationType(Context context) throws PackageManager.NameNotFoundException {
        ApplicationType applicationType;
        try {
            PackageManager pm = context.getPackageManager();
            if (pm != null) {
                PackageInfo pi = pm.getPackageInfo(context.getPackageName(), 0);
                if (pi != null && pi.applicationInfo != null) {
                    int flags = pi.applicationInfo.flags;
                    if ((flags & 128) != 0) {
                        applicationType = ApplicationType.UPDATED_SYSTEM_APP;
                    } else if ((flags & 1) != 0) {
                        applicationType = ApplicationType.SYSTEM;
                    } else {
                        applicationType = ApplicationType.OTHER;
                    }
                } else {
                    CameraLogger.w(TAG, "Can't get packeage info. assume user app.");
                    applicationType = ApplicationType.OTHER;
                }
            } else {
                CameraLogger.w(TAG, "Can't get packeage manager. assume user app.");
                applicationType = ApplicationType.OTHER;
            }
            return applicationType;
        } catch (PackageManager.NameNotFoundException e) {
            CameraLogger.w(TAG, "Can't get packeage info. assume user app.");
            return ApplicationType.OTHER;
        }
    }

    public static boolean isEventContainedInView(View targetView, MotionEvent motion) {
        int[] locationOfView = new int[2];
        targetView.getLocationOnScreen(locationOfView);
        Rect rect = new Rect(locationOfView[0], locationOfView[1], locationOfView[0] + targetView.getWidth(), locationOfView[1] + targetView.getHeight());
        return rect.contains((int) motion.getRawX(), (int) motion.getRawY());
    }

    public static String removeFileExtension(String filename) {
        int lastDotPos = filename.lastIndexOf(46);
        return (lastDotPos == -1 || lastDotPos == 0) ? filename : filename.substring(0, lastDotPos);
    }

    public static String getFileExtension(String filename) {
        int lastDotPos;
        if (filename == null || (lastDotPos = filename.lastIndexOf(46)) == -1 || lastDotPos == 0) {
            return null;
        }
        return filename.substring(lastDotPos);
    }

    public static void dumpFile(byte[] data, String filename) throws IOException {
        FileOutputStream fos = null;
        try {
            fos = new FileOutputStream(Environment.getExternalStorageDirectory().getPath() + filename);
            if (data != null) {
                fos.write(data);
                fos.flush();
            }
        } finally {
            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException ignored) {
                }
            }
        }
    }

    public static boolean sameStrings(String arg1, String arg2) {
        if (arg1 == null) {
            if (arg2 == null) {
                return true;
            }
            return false;
        }
        return arg1.equals(arg2);
    }
}