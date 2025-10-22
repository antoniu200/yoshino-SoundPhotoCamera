package com.sonyericsson.album.fastview;

import dalvik.system.PathClassLoader;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ReflectionUtil {
    private static final Map<String, PathClassLoader> sClassLoaderMap = new HashMap();

    private ReflectionUtil() {
    }

    public static synchronized Class<?> getClass(String apkName, String className) throws Exception {
        Class<?> cls;
        PathClassLoader cl = sClassLoaderMap.get(apkName);
        if (cl == null) {
            cl = new PathClassLoader(apkName, ClassLoader.getSystemClassLoader());
            sClassLoaderMap.put(apkName, cl);
        }
        cls = Class.forName(className, true, cl);
        return cls;
    }

    public static Method getMethod(Class<?> cls, String methodName, Class<?>... parameterTypes) throws Exception {
        Method method = cls.getDeclaredMethod(methodName, parameterTypes);
        method.setAccessible(true);
        return method;
    }
}