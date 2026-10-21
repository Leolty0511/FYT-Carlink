package android.view;

import android.content.res.CompatibilityInfo;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.syu.jni.BuildConfig;
import dalvik.system.CloseGuard;

/* JADX INFO: loaded from: classes.dex */
public class Surface implements Parcelable {
    public static final int ROTATION_0 = 0;
    public static final int ROTATION_180 = 2;
    public static final int ROTATION_270 = 3;
    public static final int ROTATION_90 = 1;
    private static final String TAG = "Surface";
    private boolean changewh;
    private final Canvas mCanvas;
    private final CloseGuard mCloseGuard;
    private Matrix mCompatibleMatrix;
    private int mGenerationId;
    public final Object mLock;
    private int mLockedObject;
    private String mName;
    public int mNativeObject;
    private int mRotation;
    public static final Parcelable.Creator<Surface> CREATOR = new Parcelable.Creator<Surface>() { // from class: android.view.Surface.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Surface createFromParcel(Parcel parcel) {
            try {
                Surface surface = new Surface();
                surface.readFromParcel(parcel);
                return surface;
            } catch (Exception e2) {
                Log.e(Surface.TAG, "Exception creating surface from parcel", e2);
                return null;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Surface[] newArray(int i2) {
            return new Surface[i2];
        }
    };
    private static final boolean USE_LCDC_COMPOSER = Build.USE_LCDC_COMPOSER;

    public final class CompatibleCanvas extends Canvas {
        private Matrix mOrigMatrix;

        private CompatibleCanvas() {
            this.mOrigMatrix = null;
        }

        @Override // android.graphics.Canvas
        public void getMatrix(Matrix matrix) {
            super.getMatrix(matrix);
            if (this.mOrigMatrix == null) {
                this.mOrigMatrix = new Matrix();
            }
            this.mOrigMatrix.set(matrix);
        }

        @Override // android.graphics.Canvas
        public void setMatrix(Matrix matrix) {
            Matrix matrix2;
            if (Surface.this.mCompatibleMatrix == null || (matrix2 = this.mOrigMatrix) == null || matrix2.equals(matrix)) {
                super.setMatrix(matrix);
                return;
            }
            Matrix matrix3 = new Matrix(Surface.this.mCompatibleMatrix);
            matrix3.preConcat(matrix);
            super.setMatrix(matrix3);
        }
    }

    public static class OutOfResourcesException extends RuntimeException {
        public OutOfResourcesException() {
        }

        public OutOfResourcesException(String str) {
            super(str);
        }
    }

    public Surface() {
        this.mCloseGuard = CloseGuard.get();
        this.mLock = new Object();
        this.mCanvas = new CompatibleCanvas();
        this.changewh = false;
        this.mRotation = -1;
    }

    private static native void changeWH(int i2, int i3);

    private void checkNotReleasedLocked() {
        if (this.mNativeObject == 0) {
            throw new IllegalStateException("Surface has already been released.");
        }
    }

    private static native int nativeCreateFromSurfaceControl(int i2);

    private static native int nativeCreateFromSurfaceTexture(SurfaceTexture surfaceTexture);

    private static native boolean nativeIsConsumerRunningBehind(int i2);

    private static native boolean nativeIsValid(int i2);

    private static native int nativeLockCanvas(int i2, Canvas canvas, Rect rect);

    private static native int nativeReadFromParcel(int i2, Parcel parcel);

    private static native void nativeRelease(int i2);

    private static native void nativeUnlockCanvasAndPost(int i2, Canvas canvas);

    private static native void nativeWriteToParcel(int i2, Parcel parcel);

    public static String rotationToString(int i2) {
        if (i2 == 0) {
            return "ROTATION_0";
        }
        if (i2 == 1) {
            return "ROATATION_90";
        }
        if (i2 == 2) {
            return "ROATATION_180";
        }
        if (i2 == 3) {
            return "ROATATION_270";
        }
        throw new IllegalArgumentException("Invalid rotation: " + i2);
    }

    private void setNativeObjectLocked(int i2) {
        int i3 = this.mNativeObject;
        if (i3 != i2) {
            if (i3 == 0 && i2 != 0) {
                this.mCloseGuard.open(BuildConfig.BUILD_TYPE);
            } else if (i3 != 0 && i2 == 0) {
                this.mCloseGuard.close();
            }
            this.mNativeObject = i2;
            this.mGenerationId++;
        }
    }

    public void ChangeWH(int i2) {
        if (USE_LCDC_COMPOSER) {
            this.changewh = true;
            this.mRotation = i2;
        }
    }

    public void copyFrom(SurfaceControl surfaceControl) {
        if (surfaceControl == null) {
            throw new IllegalArgumentException("other must not be null");
        }
        int i2 = surfaceControl.mNativeObject;
        if (i2 == 0) {
            throw new NullPointerException("SurfaceControl native object is null. Are you using a released SurfaceControl?");
        }
        int iNativeCreateFromSurfaceControl = nativeCreateFromSurfaceControl(i2);
        synchronized (this.mLock) {
            int i3 = this.mNativeObject;
            if (i3 != 0) {
                nativeRelease(i3);
            }
            setNativeObjectLocked(iNativeCreateFromSurfaceControl);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void destroy() {
        release();
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            release();
        } finally {
            super.finalize();
        }
    }

    public int getGenerationId() {
        int i2;
        synchronized (this.mLock) {
            i2 = this.mGenerationId;
        }
        return i2;
    }

    public boolean isConsumerRunningBehind() {
        boolean zNativeIsConsumerRunningBehind;
        synchronized (this.mLock) {
            checkNotReleasedLocked();
            zNativeIsConsumerRunningBehind = nativeIsConsumerRunningBehind(this.mNativeObject);
        }
        return zNativeIsConsumerRunningBehind;
    }

    public boolean isValid() {
        synchronized (this.mLock) {
            int i2 = this.mNativeObject;
            if (i2 == 0) {
                return false;
            }
            return nativeIsValid(i2);
        }
    }

    public Canvas lockCanvas(Rect rect) {
        Canvas canvas;
        synchronized (this.mLock) {
            checkNotReleasedLocked();
            if (this.mLockedObject != 0) {
                throw new IllegalStateException("Surface was already locked");
            }
            if (USE_LCDC_COMPOSER && this.changewh) {
                changeWH(this.mNativeObject, this.mRotation);
            }
            this.mLockedObject = nativeLockCanvas(this.mNativeObject, this.mCanvas, rect);
            canvas = this.mCanvas;
        }
        return canvas;
    }

    public void readFromParcel(Parcel parcel) {
        if (parcel == null) {
            throw new IllegalArgumentException("source must not be null");
        }
        synchronized (this.mLock) {
            this.mName = parcel.readString();
            setNativeObjectLocked(nativeReadFromParcel(this.mNativeObject, parcel));
        }
    }

    public void release() {
        synchronized (this.mLock) {
            int i2 = this.mNativeObject;
            if (i2 != 0) {
                nativeRelease(i2);
                setNativeObjectLocked(0);
            }
        }
    }

    public void setCompatibilityTranslator(CompatibilityInfo.Translator translator) {
        if (translator != null) {
            float f2 = translator.applicationScale;
            Matrix matrix = new Matrix();
            this.mCompatibleMatrix = matrix;
            matrix.setScale(f2, f2);
        }
    }

    public String toString() {
        String str;
        synchronized (this.mLock) {
            str = "Surface(name=" + this.mName + ")/@0x" + Integer.toHexString(System.identityHashCode(this));
        }
        return str;
    }

    @Deprecated
    public void transferFrom(Surface surface) {
        int i2;
        if (surface == null) {
            throw new IllegalArgumentException("other must not be null");
        }
        if (surface != this) {
            synchronized (surface.mLock) {
                i2 = surface.mNativeObject;
                surface.setNativeObjectLocked(0);
            }
            synchronized (this.mLock) {
                int i3 = this.mNativeObject;
                if (i3 != 0) {
                    nativeRelease(i3);
                }
                setNativeObjectLocked(i2);
            }
        }
    }

    @Deprecated
    public void unlockCanvas(Canvas canvas) {
        throw new UnsupportedOperationException();
    }

    public void unlockCanvasAndPost(Canvas canvas) {
        if (canvas != this.mCanvas) {
            throw new IllegalArgumentException("canvas object must be the same instance that was previously returned by lockCanvas");
        }
        synchronized (this.mLock) {
            checkNotReleasedLocked();
            if (this.mNativeObject != this.mLockedObject) {
                Log.w(TAG, "WARNING: Surface's mNativeObject (0x" + Integer.toHexString(this.mNativeObject) + ") != mLockedObject (0x" + Integer.toHexString(this.mLockedObject) + ")");
            }
            int i2 = this.mLockedObject;
            if (i2 == 0) {
                throw new IllegalStateException("Surface was not locked");
            }
            nativeUnlockCanvasAndPost(i2, canvas);
            nativeRelease(this.mLockedObject);
            this.mLockedObject = 0;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (parcel == null) {
            throw new IllegalArgumentException("dest must not be null");
        }
        synchronized (this.mLock) {
            parcel.writeString(this.mName);
            nativeWriteToParcel(this.mNativeObject, parcel);
        }
        if ((i2 & 1) != 0) {
            release();
        }
    }

    public Surface(SurfaceTexture surfaceTexture) {
        this.mCloseGuard = CloseGuard.get();
        Object obj = new Object();
        this.mLock = obj;
        this.mCanvas = new CompatibleCanvas();
        this.changewh = false;
        this.mRotation = -1;
        if (surfaceTexture != null) {
            synchronized (obj) {
                this.mName = surfaceTexture.toString();
                setNativeObjectLocked(nativeCreateFromSurfaceTexture(surfaceTexture));
            }
            return;
        }
        throw new IllegalArgumentException("surfaceTexture must not be null");
    }

    private Surface(int i2) {
        this.mCloseGuard = CloseGuard.get();
        Object obj = new Object();
        this.mLock = obj;
        this.mCanvas = new CompatibleCanvas();
        this.changewh = false;
        this.mRotation = -1;
        synchronized (obj) {
            setNativeObjectLocked(i2);
        }
    }
}
