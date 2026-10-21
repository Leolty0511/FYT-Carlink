package android.view;

import android.content.res.CompatibilityInfo;
import android.graphics.Canvas;
import android.graphics.GraphicBuffer;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import dalvik.system.CloseGuard;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes2.dex */
public class Surface implements Parcelable {
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
    public static final int ROTATION_0 = 0;
    public static final int ROTATION_180 = 2;
    public static final int ROTATION_270 = 3;
    public static final int ROTATION_90 = 1;
    public static final int SCALING_MODE_FREEZE = 0;
    public static final int SCALING_MODE_NO_SCALE_CROP = 3;
    public static final int SCALING_MODE_SCALE_CROP = 2;
    public static final int SCALING_MODE_SCALE_TO_WINDOW = 1;
    private static final String TAG = "Surface";
    private final Canvas mCanvas;
    private final CloseGuard mCloseGuard;
    private Matrix mCompatibleMatrix;
    private int mGenerationId;
    private HwuiContext mHwuiContext;
    private boolean mIsAutoRefreshEnabled;
    private boolean mIsSharedBufferModeEnabled;
    private boolean mIsSingleBuffered;
    final Object mLock;
    private long mLockedObject;
    private String mName;
    long mNativeObject;

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

    public final class HwuiContext {
        private DisplayListCanvas mCanvas;
        private long mHwuiRenderer;
        private final RenderNode mRenderNode;

        public HwuiContext() {
            RenderNode renderNodeCreate = RenderNode.create("HwuiCanvas", null);
            this.mRenderNode = renderNodeCreate;
            renderNodeCreate.setClipToBounds(false);
            this.mHwuiRenderer = Surface.nHwuiCreate(renderNodeCreate.mNativeRenderNode, Surface.this.mNativeObject);
        }

        public void destroy() {
            long j2 = this.mHwuiRenderer;
            if (j2 != 0) {
                Surface.nHwuiDestroy(j2);
                this.mHwuiRenderer = 0L;
            }
        }

        public Canvas lockCanvas(int i2, int i3) {
            if (this.mCanvas != null) {
                throw new IllegalStateException("Surface was already locked!");
            }
            DisplayListCanvas displayListCanvasStart = this.mRenderNode.start(i2, i3);
            this.mCanvas = displayListCanvasStart;
            return displayListCanvasStart;
        }

        public void unlockAndPost(Canvas canvas) {
            DisplayListCanvas displayListCanvas = this.mCanvas;
            if (canvas != displayListCanvas) {
                throw new IllegalArgumentException("canvas object must be the same instance that was previously returned by lockCanvas");
            }
            this.mRenderNode.end(displayListCanvas);
            this.mCanvas = null;
            Surface.nHwuiDraw(this.mHwuiRenderer);
        }

        public void updateSurface() {
            Surface.nHwuiSetSurface(this.mHwuiRenderer, Surface.this.mNativeObject);
        }
    }

    public static class OutOfResourcesException extends RuntimeException {
        public OutOfResourcesException() {
        }

        public OutOfResourcesException(String str) {
            super(str);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Rotation {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScalingMode {
    }

    public Surface() {
        this.mCloseGuard = CloseGuard.get();
        this.mLock = new Object();
        this.mCanvas = new CompatibleCanvas();
    }

    private void checkNotReleasedLocked() {
        if (this.mNativeObject == 0) {
            throw new IllegalStateException("Surface has already been released.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nHwuiCreate(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nHwuiDestroy(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nHwuiDraw(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nHwuiSetSurface(long j2, long j3);

    private static native void nativeAllocateBuffers(long j2);

    private static native int nativeAttachAndQueueBuffer(long j2, GraphicBuffer graphicBuffer);

    private static native long nativeCreateFromSurfaceControl(long j2);

    private static native long nativeCreateFromSurfaceTexture(SurfaceTexture surfaceTexture);

    private static native int nativeForceScopedDisconnect(long j2);

    private static native long nativeGetFromSurfaceControl(long j2);

    private static native int nativeGetHeight(long j2);

    private static native long nativeGetNextFrameNumber(long j2);

    private static native int nativeGetWidth(long j2);

    private static native boolean nativeIsConsumerRunningBehind(long j2);

    private static native boolean nativeIsValid(long j2);

    private static native long nativeLockCanvas(long j2, Canvas canvas, Rect rect);

    private static native long nativeReadFromParcel(long j2, Parcel parcel);

    private static native void nativeRelease(long j2);

    private static native int nativeSetAutoRefreshEnabled(long j2, boolean z2);

    private static native int nativeSetScalingMode(long j2, int i2);

    private static native int nativeSetSharedBufferModeEnabled(long j2, boolean z2);

    private static native void nativeUnlockCanvasAndPost(long j2, Canvas canvas);

    private static native void nativeWriteToParcel(long j2, Parcel parcel);

    public static String rotationToString(int i2) {
        if (i2 == 0) {
            return "ROTATION_0";
        }
        if (i2 == 1) {
            return "ROTATION_90";
        }
        if (i2 == 2) {
            return "ROTATION_180";
        }
        if (i2 == 3) {
            return "ROTATION_270";
        }
        throw new IllegalArgumentException(android.accessibilityservice.c.d("Invalid rotation: ", i2));
    }

    private void setNativeObjectLocked(long j2) {
        long j3 = this.mNativeObject;
        if (j3 != j2) {
            if (j3 == 0 && j2 != 0) {
                this.mCloseGuard.open("release");
            } else if (j3 != 0 && j2 == 0) {
                this.mCloseGuard.close();
            }
            this.mNativeObject = j2;
            this.mGenerationId++;
            HwuiContext hwuiContext = this.mHwuiContext;
            if (hwuiContext != null) {
                hwuiContext.updateSurface();
            }
        }
    }

    private void unlockSwCanvasAndPost(Canvas canvas) {
        if (canvas != this.mCanvas) {
            throw new IllegalArgumentException("canvas object must be the same instance that was previously returned by lockCanvas");
        }
        if (this.mNativeObject != this.mLockedObject) {
            Log.w(TAG, "WARNING: Surface's mNativeObject (0x" + Long.toHexString(this.mNativeObject) + ") != mLockedObject (0x" + Long.toHexString(this.mLockedObject) + ")");
        }
        long j2 = this.mLockedObject;
        if (j2 == 0) {
            throw new IllegalStateException("Surface was not locked");
        }
        try {
            nativeUnlockCanvasAndPost(j2, canvas);
        } finally {
            nativeRelease(this.mLockedObject);
            this.mLockedObject = 0L;
        }
    }

    public void allocateBuffers() {
        synchronized (this.mLock) {
            checkNotReleasedLocked();
            nativeAllocateBuffers(this.mNativeObject);
        }
    }

    public void attachAndQueueBuffer(GraphicBuffer graphicBuffer) {
        synchronized (this.mLock) {
            checkNotReleasedLocked();
            if (nativeAttachAndQueueBuffer(this.mNativeObject, graphicBuffer) != 0) {
                throw new RuntimeException("Failed to attach and queue buffer to Surface (bad object?)");
            }
        }
    }

    public void copyFrom(SurfaceControl surfaceControl) {
        if (surfaceControl == null) {
            throw new IllegalArgumentException("other must not be null");
        }
        long j2 = surfaceControl.mNativeObject;
        if (j2 == 0) {
            throw new NullPointerException("null SurfaceControl native object. Are you using a released SurfaceControl?");
        }
        long jNativeGetFromSurfaceControl = nativeGetFromSurfaceControl(j2);
        synchronized (this.mLock) {
            long j3 = this.mNativeObject;
            if (j3 != 0) {
                nativeRelease(j3);
            }
            setNativeObjectLocked(jNativeGetFromSurfaceControl);
        }
    }

    public void createFrom(SurfaceControl surfaceControl) {
        if (surfaceControl == null) {
            throw new IllegalArgumentException("other must not be null");
        }
        long j2 = surfaceControl.mNativeObject;
        if (j2 == 0) {
            throw new NullPointerException("null SurfaceControl native object. Are you using a released SurfaceControl?");
        }
        long jNativeCreateFromSurfaceControl = nativeCreateFromSurfaceControl(j2);
        synchronized (this.mLock) {
            long j3 = this.mNativeObject;
            if (j3 != 0) {
                nativeRelease(j3);
            }
            setNativeObjectLocked(jNativeCreateFromSurfaceControl);
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

    public void forceScopedDisconnect() {
        synchronized (this.mLock) {
            checkNotReleasedLocked();
            if (nativeForceScopedDisconnect(this.mNativeObject) != 0) {
                throw new RuntimeException("Failed to disconnect Surface instance (bad object?)");
            }
        }
    }

    public int getGenerationId() {
        int i2;
        synchronized (this.mLock) {
            i2 = this.mGenerationId;
        }
        return i2;
    }

    public long getNextFrameNumber() {
        long jNativeGetNextFrameNumber;
        synchronized (this.mLock) {
            jNativeGetNextFrameNumber = nativeGetNextFrameNumber(this.mNativeObject);
        }
        return jNativeGetNextFrameNumber;
    }

    public boolean isAutoRefreshEnabled() {
        return this.mIsAutoRefreshEnabled;
    }

    public boolean isConsumerRunningBehind() {
        boolean zNativeIsConsumerRunningBehind;
        synchronized (this.mLock) {
            checkNotReleasedLocked();
            zNativeIsConsumerRunningBehind = nativeIsConsumerRunningBehind(this.mNativeObject);
        }
        return zNativeIsConsumerRunningBehind;
    }

    public boolean isSharedBufferModeEnabled() {
        return this.mIsSharedBufferModeEnabled;
    }

    public boolean isSingleBuffered() {
        return this.mIsSingleBuffered;
    }

    public boolean isValid() {
        synchronized (this.mLock) {
            long j2 = this.mNativeObject;
            if (j2 == 0) {
                return false;
            }
            return nativeIsValid(j2);
        }
    }

    public Canvas lockCanvas(Rect rect) {
        Canvas canvas;
        synchronized (this.mLock) {
            checkNotReleasedLocked();
            if (this.mLockedObject != 0) {
                throw new IllegalArgumentException("Surface was already locked");
            }
            this.mLockedObject = nativeLockCanvas(this.mNativeObject, this.mCanvas, rect);
            canvas = this.mCanvas;
        }
        return canvas;
    }

    public Canvas lockHardwareCanvas() {
        Canvas canvasLockCanvas;
        synchronized (this.mLock) {
            checkNotReleasedLocked();
            if (this.mHwuiContext == null) {
                this.mHwuiContext = new HwuiContext();
            }
            canvasLockCanvas = this.mHwuiContext.lockCanvas(nativeGetWidth(this.mNativeObject), nativeGetHeight(this.mNativeObject));
        }
        return canvasLockCanvas;
    }

    public void readFromParcel(Parcel parcel) {
        if (parcel == null) {
            throw new IllegalArgumentException("source must not be null");
        }
        synchronized (this.mLock) {
            this.mName = parcel.readString();
            this.mIsSingleBuffered = parcel.readInt() != 0;
            setNativeObjectLocked(nativeReadFromParcel(this.mNativeObject, parcel));
        }
    }

    public void release() {
        synchronized (this.mLock) {
            long j2 = this.mNativeObject;
            if (j2 != 0) {
                nativeRelease(j2);
                setNativeObjectLocked(0L);
            }
            HwuiContext hwuiContext = this.mHwuiContext;
            if (hwuiContext != null) {
                hwuiContext.destroy();
                this.mHwuiContext = null;
            }
        }
    }

    public void setAutoRefreshEnabled(boolean z2) {
        if (this.mIsAutoRefreshEnabled != z2) {
            if (nativeSetAutoRefreshEnabled(this.mNativeObject, z2) != 0) {
                throw new RuntimeException("Failed to set auto refresh on Surface (bad object?)");
            }
            this.mIsAutoRefreshEnabled = z2;
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

    public void setScalingMode(int i2) {
        synchronized (this.mLock) {
            checkNotReleasedLocked();
            if (nativeSetScalingMode(this.mNativeObject, i2) != 0) {
                throw new IllegalArgumentException("Invalid scaling mode: " + i2);
            }
        }
    }

    public void setSharedBufferModeEnabled(boolean z2) {
        if (this.mIsSharedBufferModeEnabled != z2) {
            if (nativeSetSharedBufferModeEnabled(this.mNativeObject, z2) != 0) {
                throw new RuntimeException("Failed to set shared buffer mode on Surface (bad object?)");
            }
            this.mIsSharedBufferModeEnabled = z2;
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
        long j2;
        if (surface == null) {
            throw new IllegalArgumentException("other must not be null");
        }
        if (surface != this) {
            synchronized (surface.mLock) {
                j2 = surface.mNativeObject;
                surface.setNativeObjectLocked(0L);
            }
            synchronized (this.mLock) {
                long j3 = this.mNativeObject;
                if (j3 != 0) {
                    nativeRelease(j3);
                }
                setNativeObjectLocked(j2);
            }
        }
    }

    @Deprecated
    public void unlockCanvas(Canvas canvas) {
        throw new UnsupportedOperationException();
    }

    public void unlockCanvasAndPost(Canvas canvas) {
        synchronized (this.mLock) {
            checkNotReleasedLocked();
            HwuiContext hwuiContext = this.mHwuiContext;
            if (hwuiContext != null) {
                hwuiContext.unlockAndPost(canvas);
            } else {
                unlockSwCanvasAndPost(canvas);
            }
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (parcel == null) {
            throw new IllegalArgumentException("dest must not be null");
        }
        synchronized (this.mLock) {
            parcel.writeString(this.mName);
            parcel.writeInt(this.mIsSingleBuffered ? 1 : 0);
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
        if (surfaceTexture != null) {
            this.mIsSingleBuffered = surfaceTexture.isSingleBuffered();
            synchronized (obj) {
                this.mName = surfaceTexture.toString();
                setNativeObjectLocked(nativeCreateFromSurfaceTexture(surfaceTexture));
            }
            return;
        }
        throw new IllegalArgumentException("surfaceTexture must not be null");
    }

    private Surface(long j2) {
        this.mCloseGuard = CloseGuard.get();
        Object obj = new Object();
        this.mLock = obj;
        this.mCanvas = new CompatibleCanvas();
        synchronized (obj) {
            setNativeObjectLocked(j2);
        }
    }
}
