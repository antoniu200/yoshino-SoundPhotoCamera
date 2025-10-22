package com.sonymobile.cameracommon.gltextureview;

import com.sonymobile.cameracommon.gltextureview.GLTextureView;
import java.util.ArrayList;
import java.util.List;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

/* loaded from: classes.dex */
public class EGLConfigChooser_RGBA8888D16S8 implements GLTextureView.EGLConfigChooser {
    private static final int BIT_A = 8;
    private static final int BIT_B = 8;
    private static final int BIT_DEPTH = 16;
    private static final int BIT_G = 8;
    private static final int BIT_R = 8;
    private static final int BIT_STENCIL = 8;

    @Override // com.sonymobile.cameracommon.gltextureview.GLTextureView.EGLConfigChooser
    public EGLConfig chooseConfig(EGL10 egl, EGLDisplay display, GLTextureView.OpenGLVersion version) {
        int[] configNum = new int[1];
        if (!egl.eglGetConfigs(display, null, 0, configNum)) {
            throw new RuntimeException("Failed to eglChooseConfig()");
        }
        EGLConfig[] configs = new EGLConfig[configNum[0]];
        if (!egl.eglChooseConfig(display, getRequiredConfigSpec(version), configs, configs.length, null)) {
            throw new RuntimeException("Failed to eglChooseConfig()");
        }
        for (EGLConfig check : configs) {
            int r = getConfigAttrib(egl, display, check, 12324);
            int g = getConfigAttrib(egl, display, check, 12323);
            int b = getConfigAttrib(egl, display, check, 12322);
            int a = getConfigAttrib(egl, display, check, 12321);
            int d = getConfigAttrib(egl, display, check, 12325);
            int s = getConfigAttrib(egl, display, check, 12326);
            if (r == 8 && g == 8 && b == 8 && 8 <= a && 16 <= d && 8 <= s) {
                return check;
            }
        }
        return configs[0];
    }

    private int[] getRequiredConfigSpec(GLTextureView.OpenGLVersion version) {
        List<Integer> result = new ArrayList<>();
        switch (version) {
            case OPEN_GL_ES_20:
                result.add(12352);
                result.add(4);
                break;
        }
        result.add(12324);
        result.add(8);
        result.add(12323);
        result.add(8);
        result.add(12322);
        result.add(8);
        result.add(12321);
        result.add(8);
        result.add(12325);
        result.add(16);
        result.add(12326);
        result.add(8);
        result.add(12344);
        int[] resultArray = new int[result.size()];
        for (int i = 0; i < result.size(); i++) {
            resultArray[i] = result.get(i).intValue();
        }
        return resultArray;
    }

    private static int getConfigAttrib(EGL10 egl, EGLDisplay eglDisplay, EGLConfig eglConfig, int attr) {
        int[] value = new int[1];
        egl.eglGetConfigAttrib(eglDisplay, eglConfig, attr, value);
        return value[0];
    }
}