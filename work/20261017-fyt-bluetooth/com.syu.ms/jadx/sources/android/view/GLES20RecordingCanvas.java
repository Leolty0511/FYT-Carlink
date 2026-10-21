package android.view;

import android.graphics.Rect;
import android.util.Pools;

/* JADX INFO: loaded from: classes.dex */
class GLES20RecordingCanvas extends GLES20Canvas {
    private static final int POOL_LIMIT = 25;
    private static final Pools.SynchronizedPool<GLES20RecordingCanvas> sPool = new Pools.SynchronizedPool<>(25);
    private GLES20DisplayList mDisplayList;

    private GLES20RecordingCanvas() {
        super(true, true);
    }

    public static GLES20RecordingCanvas obtain(GLES20DisplayList gLES20DisplayList) {
        GLES20RecordingCanvas gLES20RecordingCanvasAcquire = sPool.acquire();
        if (gLES20RecordingCanvasAcquire == null) {
            gLES20RecordingCanvasAcquire = new GLES20RecordingCanvas();
        }
        gLES20RecordingCanvasAcquire.mDisplayList = gLES20DisplayList;
        return gLES20RecordingCanvasAcquire;
    }

    @Override // android.view.GLES20Canvas, android.view.HardwareCanvas
    public int drawDisplayList(DisplayList displayList, Rect rect, int i2) {
        int iDrawDisplayList = super.drawDisplayList(displayList, rect, i2);
        this.mDisplayList.getChildDisplayLists().add(displayList);
        return iDrawDisplayList;
    }

    public int end(int i2) {
        return getDisplayList(i2);
    }

    public void recycle() {
        this.mDisplayList = null;
        resetDisplayListRenderer();
        sPool.release(this);
    }

    public void start() {
        this.mDisplayList.clearReferences();
    }
}
