package com.sonymobile.cameracommon.opengl;

/* loaded from: classes.dex */
public abstract class TransitionControllerUtil {

    private static abstract class TimeControlBase {
        protected float mDifX;
        protected float mDifY;
        protected float mDifZ;
        protected float mFromX;
        protected float mFromY;
        protected float mFromZ;
        protected RenderBase mTarget = null;
        protected float mToX;
        protected float mToY;
        protected float mToZ;

        abstract void update(float f);

        public TimeControlBase(float fromX, float fromY, float fromZ, float toX, float toY, float toZ) {
            this.mFromX = fromX;
            this.mFromY = fromY;
            this.mFromZ = fromZ;
            this.mToX = toX;
            this.mToY = toY;
            this.mToZ = toZ;
            this.mDifX = this.mToX - this.mFromX;
            this.mDifY = this.mToY - this.mFromY;
            this.mDifZ = this.mToZ - this.mFromZ;
        }

        public void setTargetRenderBase(RenderBase target) {
            this.mTarget = target;
        }

        public void setFromCondition(float fromX, float fromY, float fromZ) {
            this.mFromX = fromX;
            this.mFromY = fromY;
            this.mFromZ = fromZ;
            this.mDifX = this.mToX - this.mFromX;
            this.mDifY = this.mToY - this.mFromY;
            this.mDifZ = this.mToZ - this.mFromZ;
        }

        public void setToCondition(float toX, float toY, float toZ) {
            this.mToX = toX;
            this.mToY = toY;
            this.mToZ = toZ;
            this.mDifX = this.mToX - this.mFromX;
            this.mDifY = this.mToY - this.mFromY;
            this.mDifZ = this.mToZ - this.mFromZ;
        }
    }

    public static class TimeControlTranslator extends TimeControlBase {
        @Override // com.sonymobile.cameracommon.opengl.TransitionControllerUtil.TimeControlBase
        public /* bridge */ /* synthetic */ void setFromCondition(float f, float f2, float f3) {
            super.setFromCondition(f, f2, f3);
        }

        @Override // com.sonymobile.cameracommon.opengl.TransitionControllerUtil.TimeControlBase
        public /* bridge */ /* synthetic */ void setTargetRenderBase(RenderBase renderBase) {
            super.setTargetRenderBase(renderBase);
        }

        @Override // com.sonymobile.cameracommon.opengl.TransitionControllerUtil.TimeControlBase
        public /* bridge */ /* synthetic */ void setToCondition(float f, float f2, float f3) {
            super.setToCondition(f, f2, f3);
        }

        public TimeControlTranslator(float fromX, float fromY, float fromZ, float toX, float toY, float toZ) {
            super(fromX, fromY, fromZ, toX, toY, toZ);
        }

        @Override // com.sonymobile.cameracommon.opengl.TransitionControllerUtil.TimeControlBase
        public void update(float progress) {
            if (progress < 0.0f) {
                progress = 0.0f;
            }
            if (1.0f < progress) {
                progress = 1.0f;
            }
            this.mTarget.translate(this.mFromX + (this.mDifX * progress), this.mFromY + (this.mDifY * progress), this.mFromZ + (this.mDifZ * progress));
        }
    }

    public static class TimeControlRotator extends TimeControlBase {
        @Override // com.sonymobile.cameracommon.opengl.TransitionControllerUtil.TimeControlBase
        public /* bridge */ /* synthetic */ void setFromCondition(float f, float f2, float f3) {
            super.setFromCondition(f, f2, f3);
        }

        @Override // com.sonymobile.cameracommon.opengl.TransitionControllerUtil.TimeControlBase
        public /* bridge */ /* synthetic */ void setTargetRenderBase(RenderBase renderBase) {
            super.setTargetRenderBase(renderBase);
        }

        @Override // com.sonymobile.cameracommon.opengl.TransitionControllerUtil.TimeControlBase
        public /* bridge */ /* synthetic */ void setToCondition(float f, float f2, float f3) {
            super.setToCondition(f, f2, f3);
        }

        public TimeControlRotator(float fromX, float fromY, float fromZ, float toX, float toY, float toZ) {
            super(fromX, fromY, fromZ, toX, toY, toZ);
        }

        @Override // com.sonymobile.cameracommon.opengl.TransitionControllerUtil.TimeControlBase
        public void update(float progress) {
            if (progress < 0.0f) {
                progress = 0.0f;
            }
            if (1.0f < progress) {
                progress = 1.0f;
            }
            this.mTarget.rotate(this.mFromX + (this.mDifX * progress), this.mFromY + (this.mDifY * progress), this.mFromZ + (this.mDifZ * progress));
        }
    }

    public static class TimeControlScalor extends TimeControlBase {
        @Override // com.sonymobile.cameracommon.opengl.TransitionControllerUtil.TimeControlBase
        public /* bridge */ /* synthetic */ void setFromCondition(float f, float f2, float f3) {
            super.setFromCondition(f, f2, f3);
        }

        @Override // com.sonymobile.cameracommon.opengl.TransitionControllerUtil.TimeControlBase
        public /* bridge */ /* synthetic */ void setTargetRenderBase(RenderBase renderBase) {
            super.setTargetRenderBase(renderBase);
        }

        @Override // com.sonymobile.cameracommon.opengl.TransitionControllerUtil.TimeControlBase
        public /* bridge */ /* synthetic */ void setToCondition(float f, float f2, float f3) {
            super.setToCondition(f, f2, f3);
        }

        public TimeControlScalor(float fromX, float fromY, float fromZ, float toX, float toY, float toZ) {
            super(fromX, fromY, fromZ, toX, toY, toZ);
        }

        @Override // com.sonymobile.cameracommon.opengl.TransitionControllerUtil.TimeControlBase
        public void update(float progress) {
            if (progress < 0.0f) {
                progress = 0.0f;
            }
            if (1.0f < progress) {
                progress = 1.0f;
            }
            this.mTarget.scale(this.mFromX + (this.mDifX * progress), this.mFromY + (this.mDifY * progress), this.mFromZ + (this.mDifZ * progress));
        }
    }

    public static abstract class ServoControlBase {
        protected static final int CONDITION_LENGTH = 3;
        protected static final int INTEGRAL_SAMPLE_LENGTH = 6;
        protected float mGainD;
        protected float mGainI;
        protected float mGainP;
        protected final float[] mInitialCondition = new float[3];
        protected final float[] mActualCondition = new float[3];
        protected final float[] mTargetCondition = new float[3];
        protected final float[] mIntegratedDeltas = new float[3];
        protected float[] mLastDifferences = new float[2];
        protected ApplierStrategy mApplierStrategy = null;
        private ServoControlListener mListener = null;

        protected interface ApplierStrategy {
            void apply(float f, float f2, float f3, RenderBase renderBase);
        }

        public interface ServoControlListener {
            void onCompleted();
        }

        public ServoControlBase(float initialX, float initialY, float initialZ) {
            this.mInitialCondition[0] = initialX;
            this.mInitialCondition[1] = initialY;
            this.mInitialCondition[2] = initialZ;
            resetActualCondition();
            this.mTargetCondition[0] = this.mInitialCondition[0];
            this.mTargetCondition[1] = this.mInitialCondition[1];
            this.mTargetCondition[2] = this.mInitialCondition[2];
            for (int i = 0; i < 3; i++) {
                this.mIntegratedDeltas[i] = 0.0f;
            }
            this.mLastDifferences[0] = 0.0f;
            this.mLastDifferences[1] = 0.0f;
        }

        public void setGains(float gainP, float gainI, float gainD) {
            this.mGainP = gainP;
            this.mGainI = gainI;
            this.mGainD = gainD;
        }

        public void updateTargetCondition(float targetX, float targetY, float targetZ) {
            this.mTargetCondition[0] = targetX;
            this.mTargetCondition[1] = targetY;
            this.mTargetCondition[2] = targetZ;
        }

        public void setListener(ServoControlListener listener) {
            this.mListener = listener;
        }

        private void checkTransitionComplete() {
            for (int i = 0; i < 3; i++) {
                if (Math.abs(this.mTargetCondition[i] - this.mActualCondition[i]) > 0.001f) {
                    return;
                }
            }
            if (this.mListener != null) {
                this.mListener.onCompleted();
                this.mListener = null;
            }
        }

        public void resetActualCondition() {
            this.mActualCondition[0] = this.mInitialCondition[0];
            this.mActualCondition[1] = this.mInitialCondition[1];
            this.mActualCondition[2] = this.mInitialCondition[2];
            for (int i = 0; i < 3; i++) {
                this.mIntegratedDeltas[i] = 0.0f;
            }
            this.mLastDifferences[0] = 0.0f;
            this.mLastDifferences[1] = 0.0f;
        }

        public void update() {
            for (int i = 0; i < 3; i++) {
                float dif = this.mTargetCondition[i] - this.mActualCondition[i];
                float[] fArr = this.mActualCondition;
                fArr[i] = fArr[i] + (this.mGainP * dif);
                float oneSample = this.mIntegratedDeltas[i] / 6.0f;
                this.mIntegratedDeltas[i] = (this.mIntegratedDeltas[i] + dif) - oneSample;
                float[] fArr2 = this.mActualCondition;
                fArr2[i] = fArr2[i] + (this.mIntegratedDeltas[i] * this.mGainI);
                if (this.mLastDifferences[0] != 0.0f && this.mLastDifferences[1] != 0.0f) {
                    float dDif = (dif - this.mLastDifferences[0]) - (this.mLastDifferences[0] - this.mLastDifferences[1]);
                    float[] fArr3 = this.mActualCondition;
                    fArr3[i] = fArr3[i] + (this.mGainD * dDif);
                }
                this.mLastDifferences[1] = this.mLastDifferences[0];
                this.mLastDifferences[0] = dif;
            }
            checkTransitionComplete();
        }

        public static class Applier {
            protected final float[] mActualCondition = new float[3];
            private final ApplierStrategy mApplierStrategy;

            public Applier(float actX, float actY, float actZ, ApplierStrategy applierStrategy) {
                this.mActualCondition[0] = actX;
                this.mActualCondition[1] = actY;
                this.mActualCondition[2] = actZ;
                this.mApplierStrategy = applierStrategy;
            }

            public void apply(RenderBase renderer) {
                this.mApplierStrategy.apply(this.mActualCondition[0], this.mActualCondition[1], this.mActualCondition[2], renderer);
            }
        }

        public Applier getCurrentConcreteApplier() {
            return new Applier(this.mActualCondition[0], this.mActualCondition[1], this.mActualCondition[2], this.mApplierStrategy);
        }
    }

    public static class ServoControlTranslator extends ServoControlBase {
        public ServoControlTranslator(float initialX, float initialY, float initialZ) {
            super(initialX, initialY, initialZ);
            this.mApplierStrategy = new ApplierStrategyImpl();
        }

        private static class ApplierStrategyImpl implements ServoControlBase.ApplierStrategy {
            private ApplierStrategyImpl() {
            }

            @Override // com.sonymobile.cameracommon.opengl.TransitionControllerUtil.ServoControlBase.ApplierStrategy
            public void apply(float actX, float actY, float actZ, RenderBase renderer) {
                renderer.translate(actX, actY, actZ);
            }
        }
    }

    public static class ServoControlRotator extends ServoControlBase {
        public ServoControlRotator(float initialX, float initialY, float initialZ) {
            super(initialX, initialY, initialZ);
            this.mApplierStrategy = new ApplierStrategyImpl();
        }

        private static class ApplierStrategyImpl implements ServoControlBase.ApplierStrategy {
            private ApplierStrategyImpl() {
            }

            @Override // com.sonymobile.cameracommon.opengl.TransitionControllerUtil.ServoControlBase.ApplierStrategy
            public void apply(float actX, float actY, float actZ, RenderBase renderer) {
                renderer.rotate(actX, actY, actZ);
            }
        }
    }

    public static class ServoControlScalor extends ServoControlBase {
        public ServoControlScalor(float initialX, float initialY, float initialZ) {
            super(initialX, initialY, initialZ);
            this.mApplierStrategy = new ApplierStrategyImpl();
        }

        private static class ApplierStrategyImpl implements ServoControlBase.ApplierStrategy {
            private ApplierStrategyImpl() {
            }

            @Override // com.sonymobile.cameracommon.opengl.TransitionControllerUtil.ServoControlBase.ApplierStrategy
            public void apply(float actX, float actY, float actZ, RenderBase renderer) {
                renderer.scale(actX, actY, actZ);
            }
        }
    }

    public static class ServoControlAlphaBlendor {
        private float mActualAlpha;
        private final float mGainP;
        private final float mInitialAlpha;
        private AlphaBlendable mTarget = null;
        private float mTargetAlpha;

        public ServoControlAlphaBlendor(float initialAlpha, float gainP) {
            this.mInitialAlpha = initialAlpha;
            resetActualAlpha();
            this.mTargetAlpha = this.mInitialAlpha;
            this.mGainP = gainP;
        }

        public void setTargetElement(AlphaBlendable target) {
            this.mTarget = target;
        }

        public void resetActualAlpha() {
            this.mActualAlpha = this.mInitialAlpha;
        }

        public void updateTargetAlpha(float targetAlpha) {
            this.mTargetAlpha = targetAlpha;
        }

        public void update() {
            float dif = this.mTargetAlpha - this.mActualAlpha;
            this.mActualAlpha += this.mGainP * dif;
            this.mTarget.setAlpha(this.mActualAlpha);
        }
    }

    public static class FrictionModel {
        private static final float GRAVITY_ACCEL = 9.80665f;
        private final float mFrictionRate;
        private final float mInitialVeloc;
        private float mLastPosit = 0.0f;
        private float mLastVeloc = Float.MAX_VALUE;
        private boolean mIsStopped = false;
        private final long mStartTimestamp = System.currentTimeMillis();

        public FrictionModel(float frictionRate, float initialVeloc) {
            this.mFrictionRate = frictionRate;
            this.mInitialVeloc = initialVeloc;
        }

        public void release() {
        }

        public boolean isStopped() {
            return this.mIsStopped;
        }

        public float getCurrentDistance() {
            long diffTime = System.currentTimeMillis() - this.mStartTimestamp;
            float elapsedTime = diffTime / 1000.0f;
            float curAccel = this.mFrictionRate * GRAVITY_ACCEL;
            if (0.0f < this.mInitialVeloc) {
                curAccel *= -1.0f;
            }
            float curVeloc = this.mInitialVeloc + (curAccel * elapsedTime);
            if (Math.abs(this.mLastVeloc) < Math.abs(curVeloc)) {
                this.mIsStopped = true;
                return this.mLastPosit;
            }
            this.mLastVeloc = curVeloc;
            this.mLastPosit = (this.mInitialVeloc * elapsedTime) + (((curAccel * elapsedTime) * elapsedTime) / 2.0f);
            return this.mLastPosit;
        }
    }
}