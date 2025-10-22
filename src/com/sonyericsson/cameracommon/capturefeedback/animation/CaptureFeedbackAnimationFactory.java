package com.sonyericsson.cameracommon.capturefeedback.animation;

import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

/* loaded from: classes.dex */
public class CaptureFeedbackAnimationFactory {
    public static final String TAG = "CaptureFeedbackAnimationFactory";

    public static CaptureFeedbackAnimation createDefaultAnimation() {
        return new DefaultFeedbackAnimation();
    }

    private static class DefaultFeedbackAnimation implements CaptureFeedbackAnimation {
        private static final float BLUE = 0.0f;
        private static final float CONTROL_X1 = 0.95f;
        private static final float CONTROL_X2 = 0.795f;
        private static final float CONTROL_Y1 = 0.05f;
        private static final float CONTROL_Y2 = 0.035f;
        private static final long DURATION_MILLIS = 200;
        private static final float END_ALPHA = 0.0f;
        private static final float GREEN = 0.0f;
        private static final float RED = 0.0f;
        private static final float START_ALPHA = 1.0f;
        private final Interpolator mInterpolator;

        private DefaultFeedbackAnimation() {
            this.mInterpolator = new PathInterpolator(CONTROL_X1, CONTROL_Y1, CONTROL_X2, CONTROL_Y2);
        }

        @Override // com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimation
        public boolean draw(CaptureFeedbackAnimationCanvas canvas, long elapsedTimeMillis) {
            float progress = elapsedTimeMillis / 200.0f;
            float alpha = 1.0f + ((-1.0f) * Math.min(1.0f, this.mInterpolator.getInterpolation(progress)));
            if (progress > 1.0d) {
                canvas.drawColor(0.0f, 0.0f, 0.0f, 0.0f);
                return false;
            }
            canvas.drawColor(alpha, 0.0f, 0.0f, 0.0f);
            return true;
        }
    }
}