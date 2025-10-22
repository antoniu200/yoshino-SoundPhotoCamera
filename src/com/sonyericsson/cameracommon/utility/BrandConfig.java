package com.sonyericsson.cameracommon.utility;

import android.os.Build;

/* loaded from: classes.dex */
public class BrandConfig {
    private static final String VERIZON_BRAND = "verizon";

    public static boolean isVerizonBrand() {
        return VERIZON_BRAND.equals(Build.BRAND);
    }
}