package android.view;

import android.util.Pools;

/* JADX INFO: loaded from: classes2.dex */
public final class VelocityTracker {
    private static final int ACTIVE_POINTER_ID = -1;
    private static final Pools.SynchronizedPool<VelocityTracker> sPool = new Pools.SynchronizedPool<>(2);
    private long mPtr;
    private final String mStrategy;

    public static final class Estimator {
        private static final int MAX_DEGREE = 4;
        public float confidence;
        public int degree;
        public final float[] xCoeff = new float[5];
        public final float[] yCoeff = new float[5];

        private float estimate(float f2, float[] fArr) {
            float f3 = 0.0f;
            float f4 = 1.0f;
            for (int i2 = 0; i2 <= this.degree; i2++) {
                f3 += fArr[i2] * f4;
                f4 *= f2;
            }
            return f3;
        }

        public float estimateX(float f2) {
            return estimate(f2, this.xCoeff);
        }

        public float estimateY(float f2) {
            return estimate(f2, this.yCoeff);
        }

        public float getXCoeff(int i2) {
            if (i2 <= this.degree) {
                return this.xCoeff[i2];
            }
            return 0.0f;
        }

        public float getYCoeff(int i2) {
            if (i2 <= this.degree) {
                return this.yCoeff[i2];
            }
            return 0.0f;
        }
    }

    private VelocityTracker(String str) {
        this.mPtr = nativeInitialize(str);
        this.mStrategy = str;
    }

    private static native void nativeAddMovement(long j2, MotionEvent motionEvent);

    private static native void nativeClear(long j2);

    private static native void nativeComputeCurrentVelocity(long j2, int i2, float f2);

    private static native void nativeDispose(long j2);

    private static native boolean nativeGetEstimator(long j2, int i2, Estimator estimator);

    private static native float nativeGetXVelocity(long j2, int i2);

    private static native float nativeGetYVelocity(long j2, int i2);

    private static native long nativeInitialize(String str);

    public static VelocityTracker obtain() {
        VelocityTracker velocityTrackerAcquire = sPool.acquire();
        return velocityTrackerAcquire != null ? velocityTrackerAcquire : new VelocityTracker(null);
    }

    public void addMovement(MotionEvent motionEvent) {
        if (motionEvent == null) {
            throw new IllegalArgumentException("event must not be null");
        }
        nativeAddMovement(this.mPtr, motionEvent);
    }

    public void clear() {
        nativeClear(this.mPtr);
    }

    public void computeCurrentVelocity(int i2) {
        nativeComputeCurrentVelocity(this.mPtr, i2, Float.MAX_VALUE);
    }

    public void finalize() throws Throwable {
        try {
            long j2 = this.mPtr;
            if (j2 != 0) {
                nativeDispose(j2);
                this.mPtr = 0L;
            }
        } finally {
            super.finalize();
        }
    }

    public boolean getEstimator(int i2, Estimator estimator) {
        if (estimator != null) {
            return nativeGetEstimator(this.mPtr, i2, estimator);
        }
        throw new IllegalArgumentException("outEstimator must not be null");
    }

    public float getXVelocity() {
        return nativeGetXVelocity(this.mPtr, -1);
    }

    public float getYVelocity() {
        return nativeGetYVelocity(this.mPtr, -1);
    }

    public void recycle() {
        if (this.mStrategy == null) {
            clear();
            sPool.release(this);
        }
    }

    public void computeCurrentVelocity(int i2, float f2) {
        nativeComputeCurrentVelocity(this.mPtr, i2, f2);
    }

    public float getXVelocity(int i2) {
        return nativeGetXVelocity(this.mPtr, i2);
    }

    public float getYVelocity(int i2) {
        return nativeGetYVelocity(this.mPtr, i2);
    }

    public static VelocityTracker obtain(String str) {
        if (str == null) {
            return obtain();
        }
        return new VelocityTracker(str);
    }
}
