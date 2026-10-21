package android.graphics;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public class Interpolator {
    private int mFrameCount;
    private int mValueCount;
    private final int native_instance;

    public enum Result {
        NORMAL,
        FREEZE_START,
        FREEZE_END
    }

    public Interpolator(int i2) {
        this.mValueCount = i2;
        this.mFrameCount = 2;
        this.native_instance = nativeConstructor(i2, 2);
    }

    private static native int nativeConstructor(int i2, int i3);

    private static native void nativeDestructor(int i2);

    private static native void nativeReset(int i2, int i3, int i4);

    private static native void nativeSetKeyFrame(int i2, int i3, int i4, float[] fArr, float[] fArr2);

    private static native void nativeSetRepeatMirror(int i2, float f2, boolean z2);

    private static native int nativeTimeToValues(int i2, int i3, float[] fArr);

    public void finalize() {
        nativeDestructor(this.native_instance);
    }

    public final int getKeyFrameCount() {
        return this.mFrameCount;
    }

    public final int getValueCount() {
        return this.mValueCount;
    }

    public void reset(int i2) {
        reset(i2, 2);
    }

    public void setKeyFrame(int i2, int i3, float[] fArr) {
        setKeyFrame(i2, i3, fArr, null);
    }

    public void setRepeatMirror(float f2, boolean z2) {
        if (f2 >= 0.0f) {
            nativeSetRepeatMirror(this.native_instance, f2, z2);
        }
    }

    public Result timeToValues(float[] fArr) {
        return timeToValues((int) SystemClock.uptimeMillis(), fArr);
    }

    public void reset(int i2, int i3) {
        this.mValueCount = i2;
        this.mFrameCount = i3;
        nativeReset(this.native_instance, i2, i3);
    }

    public void setKeyFrame(int i2, int i3, float[] fArr, float[] fArr2) {
        if (i2 < 0 || i2 >= this.mFrameCount) {
            throw new IndexOutOfBoundsException();
        }
        if (fArr.length < this.mValueCount) {
            throw new ArrayStoreException();
        }
        if (fArr2 != null && fArr2.length < 4) {
            throw new ArrayStoreException();
        }
        nativeSetKeyFrame(this.native_instance, i2, i3, fArr, fArr2);
    }

    public Result timeToValues(int i2, float[] fArr) {
        if (fArr != null && fArr.length < this.mValueCount) {
            throw new ArrayStoreException();
        }
        int iNativeTimeToValues = nativeTimeToValues(this.native_instance, i2, fArr);
        if (iNativeTimeToValues != 0) {
            return iNativeTimeToValues != 1 ? Result.FREEZE_END : Result.FREEZE_START;
        }
        return Result.NORMAL;
    }

    public Interpolator(int i2, int i3) {
        this.mValueCount = i2;
        this.mFrameCount = i3;
        this.native_instance = nativeConstructor(i2, i3);
    }
}
