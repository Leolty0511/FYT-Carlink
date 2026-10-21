package android.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class TextureView extends View {
    private static final String LOG_TAG = "TextureView";
    private Canvas mCanvas;
    private boolean mHadSurface;
    private HardwareLayer mLayer;
    private SurfaceTextureListener mListener;
    private final Object[] mLock;
    private final Matrix mMatrix;
    private boolean mMatrixChanged;
    private int mNativeWindow;
    private final Object[] mNativeWindowLock;
    private boolean mOpaque;
    private int mSaveCount;
    private SurfaceTexture mSurface;
    private boolean mUpdateLayer;
    private SurfaceTexture.OnFrameAvailableListener mUpdateListener;
    private boolean mUpdateSurface;

    public interface SurfaceTextureListener {
        void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3);

        boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture);

        void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3);

        void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture);
    }

    public TextureView(Context context) {
        super(context);
        this.mOpaque = true;
        this.mMatrix = new Matrix();
        this.mLock = new Object[0];
        this.mNativeWindowLock = new Object[0];
        init();
    }

    private void applyTransformMatrix() {
        HardwareLayer hardwareLayer;
        if (!this.mMatrixChanged || (hardwareLayer = this.mLayer) == null) {
            return;
        }
        hardwareLayer.setTransform(this.mMatrix);
        this.mMatrixChanged = false;
    }

    private void applyUpdate() {
        if (this.mLayer == null) {
            return;
        }
        synchronized (this.mLock) {
            if (this.mUpdateLayer) {
                this.mUpdateLayer = false;
                this.mLayer.update(getWidth(), getHeight(), this.mOpaque);
                SurfaceTextureListener surfaceTextureListener = this.mListener;
                if (surfaceTextureListener != null) {
                    surfaceTextureListener.onSurfaceTextureUpdated(this.mSurface);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroySurface() {
        if (this.mLayer != null) {
            this.mSurface.detachFromGLContext();
            this.mLayer.clearStorage();
            SurfaceTextureListener surfaceTextureListener = this.mListener;
            boolean zOnSurfaceTextureDestroyed = surfaceTextureListener != null ? surfaceTextureListener.onSurfaceTextureDestroyed(this.mSurface) : true;
            synchronized (this.mNativeWindowLock) {
                nDestroyNativeWindow();
            }
            this.mLayer.destroy();
            if (zOnSurfaceTextureDestroyed) {
                this.mSurface.release();
            }
            this.mSurface = null;
            this.mLayer = null;
            this.mHadSurface = true;
        }
    }

    private void init() {
        this.mLayerPaint = new Paint();
    }

    private native void nCreateNativeWindow(SurfaceTexture surfaceTexture);

    private native void nDestroyNativeWindow();

    private static native boolean nLockCanvas(int i2, Canvas canvas, Rect rect);

    private static native void nUnlockCanvasAndPost(int i2, Canvas canvas);

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLayer() {
        synchronized (this.mLock) {
            this.mUpdateLayer = true;
        }
    }

    private void updateLayerAndInvalidate() {
        synchronized (this.mLock) {
            this.mUpdateLayer = true;
        }
        invalidate();
    }

    @Override // android.view.View
    public void buildLayer() {
    }

    @Override // android.view.View
    public void destroyHardwareResources() {
        super.destroyHardwareResources();
        destroySurface();
        invalidateParentCaches();
        invalidate(true);
    }

    @Override // android.view.View
    public boolean destroyLayer(boolean z2) {
        return false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        this.mPrivateFlags = (this.mPrivateFlags & (-6291457)) | 32;
        applyUpdate();
        applyTransformMatrix();
    }

    public Bitmap getBitmap() {
        return getBitmap(getWidth(), getHeight());
    }

    @Override // android.view.View
    public HardwareLayer getHardwareLayer() {
        HardwareRenderer hardwareRenderer;
        int i2 = this.mPrivateFlags | 32800;
        this.mPrivateFlags = i2;
        this.mPrivateFlags = i2 & (-6291457);
        if (this.mLayer == null) {
            View.AttachInfo attachInfo = this.mAttachInfo;
            if (attachInfo == null || (hardwareRenderer = attachInfo.mHardwareRenderer) == null) {
                return null;
            }
            HardwareLayer hardwareLayerCreateHardwareLayer = hardwareRenderer.createHardwareLayer(this.mOpaque);
            this.mLayer = hardwareLayerCreateHardwareLayer;
            if (!this.mUpdateSurface) {
                this.mSurface = this.mAttachInfo.mHardwareRenderer.createSurfaceTexture(hardwareLayerCreateHardwareLayer);
            }
            this.mSurface.setDefaultBufferSize(getWidth(), getHeight());
            nCreateNativeWindow(this.mSurface);
            SurfaceTexture.OnFrameAvailableListener onFrameAvailableListener = new SurfaceTexture.OnFrameAvailableListener() { // from class: android.view.TextureView.2
                @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
                public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                    TextureView.this.updateLayer();
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        TextureView.this.invalidate();
                    } else {
                        TextureView.this.postInvalidate();
                    }
                }
            };
            this.mUpdateListener = onFrameAvailableListener;
            this.mSurface.setOnFrameAvailableListener(onFrameAvailableListener);
            SurfaceTextureListener surfaceTextureListener = this.mListener;
            if (surfaceTextureListener != null && !this.mUpdateSurface) {
                surfaceTextureListener.onSurfaceTextureAvailable(this.mSurface, getWidth(), getHeight());
            }
            this.mLayer.setLayerPaint(this.mLayerPaint);
        }
        if (this.mUpdateSurface) {
            this.mUpdateSurface = false;
            updateLayer();
            this.mMatrixChanged = true;
            this.mAttachInfo.mHardwareRenderer.setSurfaceTexture(this.mLayer, this.mSurface);
            this.mSurface.setDefaultBufferSize(getWidth(), getHeight());
        }
        applyUpdate();
        applyTransformMatrix();
        return this.mLayer;
    }

    @Override // android.view.View
    public int getLayerType() {
        return 2;
    }

    public SurfaceTexture getSurfaceTexture() {
        return this.mSurface;
    }

    public SurfaceTextureListener getSurfaceTextureListener() {
        return this.mListener;
    }

    public Matrix getTransform(Matrix matrix) {
        if (matrix == null) {
            matrix = new Matrix();
        }
        matrix.set(this.mMatrix);
        return matrix;
    }

    @Override // android.view.View
    public boolean hasStaticLayer() {
        return true;
    }

    public boolean isAvailable() {
        return this.mSurface != null;
    }

    @Override // android.view.View
    public boolean isOpaque() {
        return this.mOpaque;
    }

    public Canvas lockCanvas() {
        return lockCanvas(null);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isHardwareAccelerated()) {
            Log.w(LOG_TAG, "A TextureView or a subclass can only be used with hardware acceleration enabled.");
        }
        if (this.mHadSurface) {
            invalidate(true);
            this.mHadSurface = false;
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mLayer == null || executeHardwareAction(new Runnable() { // from class: android.view.TextureView.1
            @Override // java.lang.Runnable
            public void run() {
                TextureView.this.destroySurface();
            }
        })) {
            return;
        }
        Log.w(LOG_TAG, "TextureView was not able to destroy its surface: " + this);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        SurfaceTexture surfaceTexture = this.mSurface;
        if (surfaceTexture != null) {
            surfaceTexture.setDefaultBufferSize(getWidth(), getHeight());
            updateLayer();
            SurfaceTextureListener surfaceTextureListener = this.mListener;
            if (surfaceTextureListener != null) {
                surfaceTextureListener.onSurfaceTextureSizeChanged(this.mSurface, getWidth(), getHeight());
            }
        }
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i2) {
        super.onVisibilityChanged(view, i2);
        SurfaceTexture surfaceTexture = this.mSurface;
        if (surfaceTexture != null) {
            if (i2 != 0) {
                surfaceTexture.setOnFrameAvailableListener(null);
            } else {
                surfaceTexture.setOnFrameAvailableListener(this.mUpdateListener);
                updateLayerAndInvalidate();
            }
        }
    }

    @Override // android.view.View
    public void setLayerType(int i2, Paint paint) {
        if (paint != this.mLayerPaint) {
            if (paint == null) {
                paint = new Paint();
            }
            this.mLayerPaint = paint;
            invalidate();
        }
    }

    public void setOpaque(boolean z2) {
        if (z2 != this.mOpaque) {
            this.mOpaque = z2;
            if (this.mLayer != null) {
                updateLayerAndInvalidate();
            }
        }
    }

    public void setSurfaceTexture(SurfaceTexture surfaceTexture) {
        Objects.requireNonNull(surfaceTexture, "surfaceTexture must not be null");
        SurfaceTexture surfaceTexture2 = this.mSurface;
        if (surfaceTexture2 != null) {
            surfaceTexture2.release();
        }
        this.mSurface = surfaceTexture;
        this.mUpdateSurface = true;
        invalidateParentIfNeeded();
    }

    public void setSurfaceTextureListener(SurfaceTextureListener surfaceTextureListener) {
        this.mListener = surfaceTextureListener;
    }

    public void setTransform(Matrix matrix) {
        this.mMatrix.set(matrix);
        this.mMatrixChanged = true;
        invalidateParentIfNeeded();
    }

    public void unlockCanvasAndPost(Canvas canvas) {
        Canvas canvas2 = this.mCanvas;
        if (canvas2 == null || canvas != canvas2) {
            return;
        }
        canvas.restoreToCount(this.mSaveCount);
        this.mSaveCount = 0;
        synchronized (this.mNativeWindowLock) {
            nUnlockCanvasAndPost(this.mNativeWindow, this.mCanvas);
        }
    }

    public Bitmap getBitmap(int i2, int i3) {
        if (!isAvailable() || i2 <= 0 || i3 <= 0) {
            return null;
        }
        return getBitmap(Bitmap.createBitmap(getResources().getDisplayMetrics(), i2, i3, Bitmap.Config.ARGB_8888));
    }

    public Canvas lockCanvas(Rect rect) {
        if (!isAvailable()) {
            return null;
        }
        if (this.mCanvas == null) {
            this.mCanvas = new Canvas();
        }
        synchronized (this.mNativeWindowLock) {
            if (!nLockCanvas(this.mNativeWindow, this.mCanvas, rect)) {
                return null;
            }
            this.mSaveCount = this.mCanvas.save();
            return this.mCanvas;
        }
    }

    public Bitmap getBitmap(Bitmap bitmap) {
        HardwareRenderer hardwareRenderer;
        if (bitmap != null && isAvailable()) {
            View.AttachInfo attachInfo = this.mAttachInfo;
            if (attachInfo != null && (hardwareRenderer = attachInfo.mHardwareRenderer) != null && hardwareRenderer.isEnabled() && !attachInfo.mHardwareRenderer.validate()) {
                throw new IllegalStateException("Could not acquire hardware rendering context");
            }
            applyUpdate();
            applyTransformMatrix();
            if (this.mLayer == null && this.mUpdateSurface) {
                getHardwareLayer();
            }
            HardwareLayer hardwareLayer = this.mLayer;
            if (hardwareLayer != null) {
                hardwareLayer.copyInto(bitmap);
            }
        }
        return bitmap;
    }

    public TextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOpaque = true;
        this.mMatrix = new Matrix();
        this.mLock = new Object[0];
        this.mNativeWindowLock = new Object[0];
        init();
    }

    public TextureView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.mOpaque = true;
        this.mMatrix = new Matrix();
        this.mLock = new Object[0];
        this.mNativeWindowLock = new Object[0];
        init();
    }
}
