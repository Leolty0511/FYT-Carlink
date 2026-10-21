package android.media;

import android.graphics.Bitmap;
import android.graphics.PointF;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class FaceDetector {
    private static boolean sInitialized = false;
    private byte[] mBWBuffer;
    private int mDCR;
    private int mFD;
    private int mHeight;
    private int mMaxFaces;
    private int mSDK;
    private int mWidth;

    public class Face {
        public static final float CONFIDENCE_THRESHOLD = 0.4f;
        public static final int EULER_X = 0;
        public static final int EULER_Y = 1;
        public static final int EULER_Z = 2;
        private float mConfidence;
        private float mEyesDist;
        private float mMidPointX;
        private float mMidPointY;
        private float mPoseEulerX;
        private float mPoseEulerY;
        private float mPoseEulerZ;

        public float confidence() {
            return this.mConfidence;
        }

        public float eyesDistance() {
            return this.mEyesDist;
        }

        public void getMidPoint(PointF pointF) {
            pointF.set(this.mMidPointX, this.mMidPointY);
        }

        public float pose(int i2) {
            if (i2 == 0) {
                return this.mPoseEulerX;
            }
            if (i2 == 1) {
                return this.mPoseEulerY;
            }
            if (i2 == 2) {
                return this.mPoseEulerZ;
            }
            throw new IllegalArgumentException();
        }

        private Face() {
        }
    }

    static {
        try {
            System.loadLibrary("FFTEm");
            nativeClassInit();
            sInitialized = true;
        } catch (UnsatisfiedLinkError unused) {
            Log.d("FFTEm", "face detection library not found!");
        }
    }

    public FaceDetector(int i2, int i3, int i4) {
        if (sInitialized) {
            fft_initialize(i2, i3, i4);
            this.mWidth = i2;
            this.mHeight = i3;
            this.mMaxFaces = i4;
            this.mBWBuffer = new byte[i2 * i3];
        }
    }

    private native void fft_destroy();

    private native int fft_detect(Bitmap bitmap);

    private native void fft_get_face(Face face, int i2);

    private native int fft_initialize(int i2, int i3, int i4);

    private static native void nativeClassInit();

    public void finalize() {
        fft_destroy();
    }

    public int findFaces(Bitmap bitmap, Face[] faceArr) {
        if (!sInitialized) {
            return 0;
        }
        if (bitmap.getWidth() != this.mWidth || bitmap.getHeight() != this.mHeight) {
            throw new IllegalArgumentException("bitmap size doesn't match initialization");
        }
        if (faceArr.length < this.mMaxFaces) {
            throw new IllegalArgumentException("faces[] smaller than maxFaces");
        }
        int iFft_detect = fft_detect(bitmap);
        int i2 = this.mMaxFaces;
        if (iFft_detect >= i2) {
            iFft_detect = i2;
        }
        for (int i3 = 0; i3 < iFft_detect; i3++) {
            if (faceArr[i3] == null) {
                faceArr[i3] = new Face();
            }
            fft_get_face(faceArr[i3], i3);
        }
        return iFft_detect;
    }
}
