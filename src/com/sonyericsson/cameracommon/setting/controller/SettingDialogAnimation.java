package com.sonyericsson.cameracommon.setting.controller;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import com.sonyericsson.cameracommon.R;
import com.sonyericsson.cameracommon.utility.ViewUtility;

/* loaded from: classes.dex */
public class SettingDialogAnimation {
    public static final String TAG = "SettingDialogAnimation";
    private Context mContext;
    private final float mTranslateDistance;

    public SettingDialogAnimation(Context context) {
        this.mContext = context;
        this.mTranslateDistance = ViewUtility.getPixel(this.mContext, R.dimen.setting_dialog_column_height) / 3.0f;
    }

    private TranslateAnimation getTranslateForDecelerate(float fromX, float toX, float fromY, float toY) {
        TranslateAnimation translate = new TranslateAnimation(fromX, toX, fromY, toY);
        translate.setInterpolator(this.mContext, android.R.anim.decelerate_interpolator);
        return translate;
    }

    private TranslateAnimation getTranslateForAccelerate(float fromX, float toX, float fromY, float toY) {
        TranslateAnimation translate = new TranslateAnimation(fromX, toX, fromY, toY);
        translate.setInterpolator(this.mContext, android.R.anim.accelerate_interpolator);
        return translate;
    }

    public Animation setOpenDialogAnimation(View view, int orientation) throws Resources.NotFoundException {
        AnimationSet animation = new AnimationSet(false);
        Animation alpha = AnimationUtils.loadAnimation(this.mContext, R.anim.setting_dialog_fade_in);
        animation.addAnimation(alpha);
        animation.setDuration(animation.getDuration());
        if (orientation == 1) {
            animation.addAnimation(getTranslateForDecelerate(this.mTranslateDistance, 0.0f, 0.0f, 0.0f));
        } else {
            animation.addAnimation(getTranslateForDecelerate(0.0f, 0.0f, this.mTranslateDistance, 0.0f));
        }
        view.setAnimation(animation);
        return animation;
    }

    public Animation setCloseDialogAnimation(View view, int orientation) throws Resources.NotFoundException {
        AnimationSet animation = new AnimationSet(false);
        Animation alpha = AnimationUtils.loadAnimation(this.mContext, R.anim.setting_dialog_fade_out);
        animation.addAnimation(alpha);
        animation.setDuration(animation.getDuration());
        if (orientation == 1) {
            animation.addAnimation(getTranslateForAccelerate(0.0f, this.mTranslateDistance, 0.0f, 0.0f));
        } else {
            animation.addAnimation(getTranslateForAccelerate(0.0f, 0.0f, 0.0f, this.mTranslateDistance));
        }
        view.setAnimation(animation);
        return animation;
    }
}