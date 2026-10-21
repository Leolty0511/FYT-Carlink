package com.android.internal.view.animation;

import android.animation.TimeInterpolator;
import android.util.TimeUtils;
import android.view.Choreographer;

/* JADX INFO: loaded from: classes3.dex */
@HasNativeInterpolator
public class FallbackLUTInterpolator implements NativeInterpolatorFactory, TimeInterpolator {
    private static final int MAX_SAMPLE_POINTS = 300;
    private final float[] mLut;
    private TimeInterpolator mSourceInterpolator;

    public FallbackLUTInterpolator(TimeInterpolator timeInterpolator, long j2) {
        this.mSourceInterpolator = timeInterpolator;
        this.mLut = createLUT(timeInterpolator, j2);
    }

    private static float[] createLUT(TimeInterpolator timeInterpolator, long j2) {
        int iMin = Math.min(Math.max(2, (int) Math.ceil(j2 / ((double) ((int) (Choreographer.getInstance().getFrameIntervalNanos() / TimeUtils.NANOS_PER_MS))))), 300);
        float[] fArr = new float[iMin];
        float f2 = iMin - 1;
        for (int i2 = 0; i2 < iMin; i2++) {
            fArr[i2] = timeInterpolator.getInterpolation(i2 / f2);
        }
        return fArr;
    }

    @Override // com.android.internal.view.animation.NativeInterpolatorFactory
    public long createNativeInterpolator() {
        return NativeInterpolatorFactoryHelper.createLutInterpolator(this.mLut);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        return this.mSourceInterpolator.getInterpolation(f2);
    }

    public static long createNativeInterpolator(TimeInterpolator timeInterpolator, long j2) {
        return NativeInterpolatorFactoryHelper.createLutInterpolator(createLUT(timeInterpolator, j2));
    }
}
