package com.sonyericsson.cameracommon.utility;

/* loaded from: classes.dex */
public class ArraysUtil {
    public static final String TAG = "ArraysUtil";

    public static void swap(float[] array, int i, int j) {
        float tmp = array[j];
        array[j] = array[i];
        array[i] = tmp;
    }
}