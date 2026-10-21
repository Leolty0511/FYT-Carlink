package v;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements SurfaceHolder {
    public static final boolean DEBUG = false;
    private static final String TAG = "BaseSurfaceHolder";
    public SurfaceHolder.Callback[] mGottenCallbacks;
    public boolean mHaveGottenCallbacks;
    public Rect mTmpDirty;
    public final ArrayList<SurfaceHolder.Callback> mCallbacks = new ArrayList<>();
    public final ReentrantLock mSurfaceLock = new ReentrantLock();
    public Surface mSurface = new Surface();
    public int mRequestedWidth = -1;
    public int mRequestedHeight = -1;
    public int mRequestedFormat = -1;
    public int mRequestedType = -1;
    public long mLastLockTime = 0;
    public int mType = -1;
    public final Rect mSurfaceFrame = new Rect();

    private final Canvas internalLockCanvas(Rect rect) {
        Canvas canvasLockCanvas;
        if (this.mType == 3) {
            throw new SurfaceHolder.BadSurfaceTypeException("Surface type is SURFACE_TYPE_PUSH_BUFFERS");
        }
        this.mSurfaceLock.lock();
        if (onAllowLockCanvas()) {
            if (rect == null) {
                if (this.mTmpDirty == null) {
                    this.mTmpDirty = new Rect();
                }
                this.mTmpDirty.set(this.mSurfaceFrame);
                rect = this.mTmpDirty;
            }
            try {
                canvasLockCanvas = this.mSurface.lockCanvas(rect);
            } catch (Exception e2) {
                Log.e(TAG, "Exception locking surface", e2);
                canvasLockCanvas = null;
            }
        } else {
            canvasLockCanvas = null;
        }
        if (canvasLockCanvas != null) {
            this.mLastLockTime = SystemClock.uptimeMillis();
            return canvasLockCanvas;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        long j2 = this.mLastLockTime + 100;
        if (j2 > jUptimeMillis) {
            try {
                Thread.sleep(j2 - jUptimeMillis);
            } catch (InterruptedException unused) {
            }
            jUptimeMillis = SystemClock.uptimeMillis();
        }
        this.mLastLockTime = jUptimeMillis;
        this.mSurfaceLock.unlock();
        return null;
    }

    @Override // android.view.SurfaceHolder
    public void addCallback(SurfaceHolder.Callback callback) {
        synchronized (this.mCallbacks) {
            if (!this.mCallbacks.contains(callback)) {
                this.mCallbacks.add(callback);
            }
        }
    }

    public SurfaceHolder.Callback[] getCallbacks() {
        if (this.mHaveGottenCallbacks) {
            return this.mGottenCallbacks;
        }
        synchronized (this.mCallbacks) {
            int size = this.mCallbacks.size();
            if (size > 0) {
                SurfaceHolder.Callback[] callbackArr = this.mGottenCallbacks;
                if (callbackArr == null || callbackArr.length != size) {
                    this.mGottenCallbacks = new SurfaceHolder.Callback[size];
                }
                this.mCallbacks.toArray(this.mGottenCallbacks);
            } else {
                this.mGottenCallbacks = null;
            }
            this.mHaveGottenCallbacks = true;
        }
        return this.mGottenCallbacks;
    }

    public int getRequestedFormat() {
        return this.mRequestedFormat;
    }

    public int getRequestedHeight() {
        return this.mRequestedHeight;
    }

    public int getRequestedType() {
        return this.mRequestedType;
    }

    public int getRequestedWidth() {
        return this.mRequestedWidth;
    }

    @Override // android.view.SurfaceHolder
    public Surface getSurface() {
        return this.mSurface;
    }

    @Override // android.view.SurfaceHolder
    public Rect getSurfaceFrame() {
        return this.mSurfaceFrame;
    }

    @Override // android.view.SurfaceHolder
    public Canvas lockCanvas() {
        return internalLockCanvas(null);
    }

    public abstract boolean onAllowLockCanvas();

    public abstract void onRelayoutContainer();

    public abstract void onUpdateSurface();

    @Override // android.view.SurfaceHolder
    public void removeCallback(SurfaceHolder.Callback callback) {
        synchronized (this.mCallbacks) {
            this.mCallbacks.remove(callback);
        }
    }

    @Override // android.view.SurfaceHolder
    public void setFixedSize(int i2, int i3) {
        if (this.mRequestedWidth == i2 && this.mRequestedHeight == i3) {
            return;
        }
        this.mRequestedWidth = i2;
        this.mRequestedHeight = i3;
        onRelayoutContainer();
    }

    @Override // android.view.SurfaceHolder
    public void setFormat(int i2) {
        if (this.mRequestedFormat != i2) {
            this.mRequestedFormat = i2;
            onUpdateSurface();
        }
    }

    @Override // android.view.SurfaceHolder
    public void setSizeFromLayout() {
        if (this.mRequestedWidth == -1 && this.mRequestedHeight == -1) {
            return;
        }
        this.mRequestedHeight = -1;
        this.mRequestedWidth = -1;
        onRelayoutContainer();
    }

    public void setSurfaceFrameSize(int i2, int i3) {
        Rect rect = this.mSurfaceFrame;
        rect.top = 0;
        rect.left = 0;
        rect.right = i2;
        rect.bottom = i3;
    }

    @Override // android.view.SurfaceHolder
    public void setType(int i2) {
        if (i2 == 1 || i2 == 2) {
            i2 = 0;
        }
        if ((i2 == 0 || i2 == 3) && this.mRequestedType != i2) {
            this.mRequestedType = i2;
            onUpdateSurface();
        }
    }

    public void ungetCallbacks() {
        this.mHaveGottenCallbacks = false;
    }

    @Override // android.view.SurfaceHolder
    public void unlockCanvasAndPost(Canvas canvas) {
        this.mSurface.unlockCanvasAndPost(canvas);
        this.mSurfaceLock.unlock();
    }

    @Override // android.view.SurfaceHolder
    public Canvas lockCanvas(Rect rect) {
        return internalLockCanvas(rect);
    }
}
