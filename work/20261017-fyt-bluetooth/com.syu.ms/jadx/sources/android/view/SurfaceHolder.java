package android.view;

import android.graphics.Canvas;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes.dex */
public interface SurfaceHolder {

    @Deprecated
    public static final int SURFACE_TYPE_GPU = 2;

    @Deprecated
    public static final int SURFACE_TYPE_HARDWARE = 1;

    @Deprecated
    public static final int SURFACE_TYPE_NORMAL = 0;

    @Deprecated
    public static final int SURFACE_TYPE_PUSH_BUFFERS = 3;

    public static class BadSurfaceTypeException extends RuntimeException {
        public BadSurfaceTypeException() {
        }

        public BadSurfaceTypeException(String str) {
            super(str);
        }
    }

    public interface Callback {
        void surfaceChanged(SurfaceHolder surfaceHolder, int i2, int i3, int i4);

        void surfaceCreated(SurfaceHolder surfaceHolder);

        void surfaceDestroyed(SurfaceHolder surfaceHolder);
    }

    public interface Callback2 extends Callback {
        void surfaceRedrawNeeded(SurfaceHolder surfaceHolder);
    }

    void addCallback(Callback callback);

    Surface getSurface();

    Rect getSurfaceFrame();

    boolean isCreating();

    Canvas lockCanvas();

    Canvas lockCanvas(Rect rect);

    void removeCallback(Callback callback);

    void setFixedSize(int i2, int i3);

    void setFormat(int i2);

    void setKeepScreenOn(boolean z2);

    void setSizeFromLayout();

    @Deprecated
    void setType(int i2);

    void unlockCanvasAndPost(Canvas canvas);
}
