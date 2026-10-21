package android.graphics.pdf;

import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.OsConstants;
import dalvik.system.CloseGuard;
import libcore.io.IoUtils;
import libcore.io.Libcore;

/* JADX INFO: loaded from: classes.dex */
public final class PdfEditor {
    private final CloseGuard mCloseGuard;
    private ParcelFileDescriptor mInput;
    private final long mNativeDocument;
    private int mPageCount;

    public PdfEditor(ParcelFileDescriptor parcelFileDescriptor) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        if (parcelFileDescriptor == null) {
            throw new NullPointerException("input cannot be null");
        }
        try {
            Libcore.os.lseek(parcelFileDescriptor.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
            long j2 = Libcore.os.fstat(parcelFileDescriptor.getFileDescriptor()).st_size;
            this.mInput = parcelFileDescriptor;
            synchronized (PdfRenderer.sPdfiumLock) {
                long jNativeOpen = nativeOpen(this.mInput.getFd(), j2);
                this.mNativeDocument = jNativeOpen;
                this.mPageCount = nativeGetPageCount(jNativeOpen);
            }
            closeGuard.open("close");
        } catch (ErrnoException unused) {
            throw new IllegalArgumentException("file descriptor not seekable");
        }
    }

    private void doClose() {
        synchronized (PdfRenderer.sPdfiumLock) {
            nativeClose(this.mNativeDocument);
        }
        IoUtils.closeQuietly(this.mInput);
        this.mInput = null;
        this.mCloseGuard.close();
    }

    private static native void nativeClose(long j2);

    private static native int nativeGetPageCount(long j2);

    private static native boolean nativeGetPageCropBox(long j2, int i2, Rect rect);

    private static native boolean nativeGetPageMediaBox(long j2, int i2, Rect rect);

    private static native void nativeGetPageSize(long j2, int i2, Point point);

    private static native long nativeOpen(int i2, long j2);

    private static native int nativeRemovePage(long j2, int i2);

    private static native boolean nativeScaleForPrinting(long j2);

    private static native void nativeSetPageCropBox(long j2, int i2, Rect rect);

    private static native void nativeSetPageMediaBox(long j2, int i2, Rect rect);

    private static native void nativeSetTransformAndClip(long j2, int i2, long j3, int i3, int i4, int i5, int i6);

    private static native void nativeWrite(long j2, int i2);

    private void throwIfClosed() {
        if (this.mInput == null) {
            throw new IllegalStateException("Already closed");
        }
    }

    private void throwIfCropBoxNull(Rect rect) {
        if (rect == null) {
            throw new NullPointerException("cropBox cannot be null");
        }
    }

    private void throwIfMediaBoxNull(Rect rect) {
        if (rect == null) {
            throw new NullPointerException("mediaBox cannot be null");
        }
    }

    private void throwIfNotNullAndNotAfine(Matrix matrix) {
        if (matrix != null && !matrix.isAffine()) {
            throw new IllegalStateException("Matrix must be afine");
        }
    }

    private void throwIfOutCropBoxNull(Rect rect) {
        if (rect == null) {
            throw new NullPointerException("outCropBox cannot be null");
        }
    }

    private void throwIfOutMediaBoxNull(Rect rect) {
        if (rect == null) {
            throw new NullPointerException("outMediaBox cannot be null");
        }
    }

    private void throwIfOutSizeNull(Point point) {
        if (point == null) {
            throw new NullPointerException("outSize cannot be null");
        }
    }

    private void throwIfPageNotInDocument(int i2) {
        if (i2 < 0 || i2 >= this.mPageCount) {
            throw new IllegalArgumentException("Invalid page index");
        }
    }

    public void close() {
        throwIfClosed();
        doClose();
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            if (this.mInput != null) {
                doClose();
            }
        } finally {
            super.finalize();
        }
    }

    public int getPageCount() {
        throwIfClosed();
        return this.mPageCount;
    }

    public boolean getPageCropBox(int i2, Rect rect) {
        boolean zNativeGetPageCropBox;
        throwIfClosed();
        throwIfOutCropBoxNull(rect);
        throwIfPageNotInDocument(i2);
        synchronized (PdfRenderer.sPdfiumLock) {
            zNativeGetPageCropBox = nativeGetPageCropBox(this.mNativeDocument, i2, rect);
        }
        return zNativeGetPageCropBox;
    }

    public boolean getPageMediaBox(int i2, Rect rect) {
        boolean zNativeGetPageMediaBox;
        throwIfClosed();
        throwIfOutMediaBoxNull(rect);
        throwIfPageNotInDocument(i2);
        synchronized (PdfRenderer.sPdfiumLock) {
            zNativeGetPageMediaBox = nativeGetPageMediaBox(this.mNativeDocument, i2, rect);
        }
        return zNativeGetPageMediaBox;
    }

    public void getPageSize(int i2, Point point) {
        throwIfClosed();
        throwIfOutSizeNull(point);
        throwIfPageNotInDocument(i2);
        synchronized (PdfRenderer.sPdfiumLock) {
            nativeGetPageSize(this.mNativeDocument, i2, point);
        }
    }

    public void removePage(int i2) {
        throwIfClosed();
        throwIfPageNotInDocument(i2);
        synchronized (PdfRenderer.sPdfiumLock) {
            this.mPageCount = nativeRemovePage(this.mNativeDocument, i2);
        }
    }

    public void setPageCropBox(int i2, Rect rect) {
        throwIfClosed();
        throwIfCropBoxNull(rect);
        throwIfPageNotInDocument(i2);
        synchronized (PdfRenderer.sPdfiumLock) {
            nativeSetPageCropBox(this.mNativeDocument, i2, rect);
        }
    }

    public void setPageMediaBox(int i2, Rect rect) {
        throwIfClosed();
        throwIfMediaBoxNull(rect);
        throwIfPageNotInDocument(i2);
        synchronized (PdfRenderer.sPdfiumLock) {
            nativeSetPageMediaBox(this.mNativeDocument, i2, rect);
        }
    }

    public void setTransformAndClip(int i2, Matrix matrix, Rect rect) {
        throwIfClosed();
        throwIfPageNotInDocument(i2);
        throwIfNotNullAndNotAfine(matrix);
        if (matrix == null) {
            matrix = Matrix.IDENTITY_MATRIX;
        }
        if (rect != null) {
            synchronized (PdfRenderer.sPdfiumLock) {
                nativeSetTransformAndClip(this.mNativeDocument, i2, matrix.native_instance, rect.left, rect.top, rect.right, rect.bottom);
            }
        } else {
            Point point = new Point();
            getPageSize(i2, point);
            synchronized (PdfRenderer.sPdfiumLock) {
                nativeSetTransformAndClip(this.mNativeDocument, i2, matrix.native_instance, 0, 0, point.f71x, point.f72y);
            }
        }
    }

    public boolean shouldScaleForPrinting() {
        boolean zNativeScaleForPrinting;
        throwIfClosed();
        synchronized (PdfRenderer.sPdfiumLock) {
            zNativeScaleForPrinting = nativeScaleForPrinting(this.mNativeDocument);
        }
        return zNativeScaleForPrinting;
    }

    public void write(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            throwIfClosed();
            synchronized (PdfRenderer.sPdfiumLock) {
                nativeWrite(this.mNativeDocument, parcelFileDescriptor.getFd());
            }
            IoUtils.closeQuietly(parcelFileDescriptor);
        } catch (Throwable th) {
            IoUtils.closeQuietly(parcelFileDescriptor);
            throw th;
        }
    }
}
