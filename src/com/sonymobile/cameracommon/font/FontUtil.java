package com.sonymobile.cameracommon.font;

import android.graphics.Typeface;
import android.widget.Button;
import android.widget.TextView;
import java.io.File;

/* loaded from: classes.dex */
public class FontUtil {
    public static final String TAG = "FontUtil";

    public enum RobotoFontType {
        THIN("/system/fonts/Roboto-Thin.ttf"),
        THIN_ITALIC("/system/fonts/Roboto-ThinItalic.ttf"),
        LIGHT("/system/fonts/Roboto-Light.ttf"),
        LIGHT_ITALIC("/system/fonts/Roboto-LightItalic.ttf"),
        REGULAR("/system/fonts/Roboto-Regular.ttf"),
        REGULAR_ITALIC("/system/fonts/Roboto-Italic.ttf"),
        MEDIUM("/system/fonts/Roboto-Medium.ttf"),
        MEDIUM_ITALIC("/system/fonts/Roboto-MediumItalic.ttf"),
        BLACK("/system/fonts/Roboto-Black.ttf"),
        BLACK_ITALIC("/system/fonts/Roboto-BlackItalic.ttf"),
        BOLD("/system/fonts/Roboto-Bold.ttf"),
        BOLD_ITALIC("/system/fonts/Roboto-BoldItalic.ttf"),
        CONDENSED_LIGHT("/system/fonts/RobotoCondensed-Light.ttf"),
        CONDENSED_LIGHT_ITALIC("/system/fonts/RobotoCondensed-LightItalic.ttf"),
        CONDENSED("/system/fonts/RobotoCondensed-Regular.ttf"),
        CONDENSED_ITALIC("/system/fonts/RobotoCondensed-Italic.ttf"),
        CONDENSED_BOLD("/system/fonts/RobotoCondensed-Bold.ttf"),
        CONDENSED_BOLD_ITALIC("/system/fonts/RobotoCondensed-BoldItalic.ttf");

        private final String mPath;

        RobotoFontType(String path) {
            this.mPath = path;
        }
    }

    public static Typeface createTypeface(RobotoFontType type) {
        if (type != null && new File(type.mPath).exists()) {
            Typeface typeface = Typeface.createFromFile(type.mPath);
            return typeface;
        }
        return null;
    }

    public static boolean setRobotoFont(TextView view, RobotoFontType type) {
        Typeface typeface;
        if (view == null || type == null || (typeface = createTypeface(type)) == null) {
            return false;
        }
        view.setTypeface(typeface);
        return true;
    }

    public static boolean setRobotoFont(Button view, RobotoFontType type) {
        Typeface typeface;
        if (view == null || type == null || (typeface = createTypeface(type)) == null) {
            return false;
        }
        view.setTypeface(typeface);
        return true;
    }

    public static boolean setBold(TextView view) {
        if (view == null) {
            return false;
        }
        view.setTypeface(Typeface.DEFAULT_BOLD);
        return true;
    }

    public static boolean setBold(Button view) {
        if (view == null) {
            return false;
        }
        view.setTypeface(Typeface.DEFAULT_BOLD);
        return true;
    }

    public static boolean setDefault(TextView view) {
        if (view == null) {
            return false;
        }
        view.setTypeface(Typeface.DEFAULT);
        return true;
    }

    public static boolean setDefault(Button view) {
        if (view == null) {
            return false;
        }
        view.setTypeface(Typeface.DEFAULT);
        return true;
    }
}