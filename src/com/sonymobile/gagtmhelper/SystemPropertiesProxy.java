package com.sonymobile.gagtmhelper;

import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
final class SystemPropertiesProxy {
    public static String get(Context context, String key) throws NoSuchMethodException, ClassNotFoundException, SecurityException, IllegalArgumentException {
        try {
            ClassLoader cl = context.getClassLoader();
            Class SystemProperties = cl.loadClass("android.os.SystemProperties");
            Class[] paramTypes = {String.class};
            Method get = SystemProperties.getMethod("get", paramTypes);
            Object[] params = {key};
            String ret = (String) get.invoke(SystemProperties, params);
            return ret;
        } catch (ClassNotFoundException e) {
            return "";
        } catch (IllegalAccessException e2) {
            return "";
        } catch (NoSuchMethodException e3) {
            return "";
        } catch (InvocationTargetException e4) {
            return "";
        }
    }

    private SystemPropertiesProxy() {
    }
}