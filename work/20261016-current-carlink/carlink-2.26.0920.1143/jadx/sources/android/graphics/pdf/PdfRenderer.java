package android.graphics.pdf;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.OsConstants;
import com.android.internal.util.Preconditions;
import dalvik.system.CloseGuard;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import libcore.io.Libcore;

/* JADX INFO: loaded from: classes.dex */
public final class PdfRenderer implements AutoCloseable {
    static final Object sPdfiumLock = new Object();
    private final CloseGuard mCloseGuard;
    private Page mCurrentPage;
    private ParcelFileDescriptor mInput;
    private final long mNativeDocument;
    private final int mPageCount;
    private final Point mTempPoint;

    public final class Page implements AutoCloseable {
        public static final int RENDER_MODE_FOR_DISPLAY = 1;
        public static final int RENDER_MODE_FOR_PRINT = 2;
        private final CloseGuard mCloseGuard;
        private final int mHeight;
        private final int mIndex;
        private long mNativePage;
        private final int mWidth;

        private void doClose() {
            synchronized (PdfRenderer.sPdfiumLock) {
                PdfRenderer.nativeClosePage(this.mNativePage);
            }
            this.mNativePage = 0L;
            this.mCloseGuard.close();
            PdfRenderer.this.mCurrentPage = null;
        }

        private void throwIfClosed() {
            if (this.mNativePage == 0) {
                throw new IllegalStateException("Already closed");
            }
        }

        @Override // java.lang.AutoCloseable
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
                if (this.mNativePage != 0) {
                    doClose();
                }
            } finally {
                super.finalize();
            }
        }

        public int getHeight() {
            return this.mHeight;
        }

        public int getIndex() {
            return this.mIndex;
        }

        public int getWidth() {
            return this.mWidth;
        }

        public void render(Bitmap bitmap, Rect rect, Matrix matrix, int i2) {
            Matrix matrix2;
            if (this.mNativePage == 0) {
                throw null;
            }
            Bitmap bitmap2 = (Bitmap) Preconditions.checkNotNull(bitmap, "bitmap null");
            if (bitmap2.getConfig() != Bitmap.Config.ARGB_8888) {
                throw new IllegalArgumentException("Unsupported pixel format");
            }
            if (rect != null && (rect.left < 0 || rect.top < 0 || rect.right > bitmap2.getWidth() || rect.bottom > bitmap2.getHeight())) {
                throw new IllegalArgumentException("destBounds not in destination");
            }
            if (matrix != null && !matrix.isAffine()) {
                throw new IllegalArgumentException("transform not affine");
            }
            if (i2 != 2 && i2 != 1) {
                throw new IllegalArgumentException("Unsupported render mode");
            }
            if (i2 == 2 && i2 == 1) {
                throw new IllegalArgumentException("Only single render mode supported");
            }
            int i3 = rect != null ? rect.left : 0;
            int i4 = rect != null ? rect.top : 0;
            int width = rect != null ? rect.right : bitmap2.getWidth();
            int height = rect != null ? rect.bottom : bitmap2.getHeight();
            if (matrix == null) {
                matrix2 = new Matrix();
                matrix2.postScale((width - i3) / getWidth(), (height - i4) / getHeight());
                matrix2.postTranslate(i3, i4);
            } else {
                matrix2 = matrix;
            }
            long j2 = matrix2.native_instance;
            synchronized (PdfRenderer.sPdfiumLock) {
                PdfRenderer.nativeRenderPage(PdfRenderer.this.mNativeDocument, this.mNativePage, bitmap2, i3, i4, width, height, j2, i2);
            }
        }

        private Page(int i2) {
            CloseGuard closeGuard = CloseGuard.get();
            this.mCloseGuard = closeGuard;
            Point point = PdfRenderer.this.mTempPoint;
            synchronized (PdfRenderer.sPdfiumLock) {
                this.mNativePage = PdfRenderer.nativeOpenPageAndGetSize(PdfRenderer.this.mNativeDocument, i2, point);
            }
            this.mIndex = i2;
            this.mWidth = point.f71x;
            this.mHeight = point.f72y;
            closeGuard.open("close");
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RenderMode {
    }

    public PdfRenderer(ParcelFileDescriptor parcelFileDescriptor) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        this.mTempPoint = new Point();
        if (parcelFileDescriptor == null) {
            throw new NullPointerException("input cannot be null");
        }
        try {
            Libcore.os.lseek(parcelFileDescriptor.getFileDescriptor(), 0L, OsConstants.SEEK_SET);
            long j2 = Libcore.os.fstat(parcelFileDescriptor.getFileDescriptor()).st_size;
            this.mInput = parcelFileDescriptor;
            synchronized (sPdfiumLock) {
                long jNativeCreate = nativeCreate(this.mInput.getFd(), j2);
                this.mNativeDocument = jNativeCreate;
                try {
                    this.mPageCount = nativeGetPageCount(jNativeCreate);
                } catch (Throwable th) {
                    nativeClose(this.mNativeDocument);
                    throw th;
                }
            }
            closeGuard.open("close");
        } catch (ErrnoException unused) {
            throw new IllegalArgumentException("file descriptor not seekable");
        }
    }

    private void doClose() {
        Page page = this.mCurrentPage;
        if (page != null) {
            page.close();
        }
        synchronized (sPdfiumLock) {
            nativeClose(this.mNativeDocument);
        }
        try {
            this.mInput.close();
        } catch (IOException unused) {
        }
        this.mInput = null;
        this.mCloseGuard.close();
    }

    private static native void nativeClose(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeClosePage(long j2);

    private static native long nativeCreate(int i2, long j2);

    private static native int nativeGetPageCount(long j2);

    /* JADX INFO: Access modifiers changed from: private */
    public static native long nativeOpenPageAndGetSize(long j2, int i2, Point point);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void nativeRenderPage(long j2, long j3, Bitmap bitmap, int i2, int i3, int i4, int i5, long j4, int i6);

    private static native boolean nativeScaleForPrinting(long j2);

    private void throwIfClosed() {
        if (this.mInput == null) {
            throw new IllegalStateException("Already closed");
        }
    }

    private void throwIfPageNotInDocument(int i2) {
        if (i2 < 0 || i2 >= this.mPageCount) {
            throw new IllegalArgumentException("Invalid page index");
        }
    }

    private void throwIfPageOpened() {
        if (this.mCurrentPage != null) {
            throw new IllegalStateException("Current page not closed");
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        throwIfClosed();
        throwIfPageOpened();
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

    public Page openPage(int i2) {
        throwIfClosed();
        throwIfPageOpened();
        throwIfPageNotInDocument(i2);
        Page page = new Page(i2);
        this.mCurrentPage = page;
        return page;
    }

    public boolean shouldScaleForPrinting() {
        boolean zNativeScaleForPrinting;
        throwIfClosed();
        synchronized (sPdfiumLock) {
            zNativeScaleForPrinting = nativeScaleForPrinting(this.mNativeDocument);
        }
        return zNativeScaleForPrinting;
    }
}
