package android.graphics.pdf;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import dalvik.system.CloseGuard;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PdfDocument {
    private final byte[] mChunk = new byte[4096];
    private final CloseGuard mCloseGuard;
    private Page mCurrentPage;
    private int mNativeDocument;
    private final List<PageInfo> mPages;

    public static final class Page {
        private Canvas mCanvas;
        private final PageInfo mPageInfo;

        /* JADX INFO: Access modifiers changed from: private */
        public void finish() {
            Canvas canvas = this.mCanvas;
            if (canvas != null) {
                canvas.release();
                this.mCanvas = null;
            }
        }

        public Canvas getCanvas() {
            return this.mCanvas;
        }

        public PageInfo getInfo() {
            return this.mPageInfo;
        }

        public boolean isFinished() {
            return this.mCanvas == null;
        }

        private Page(Canvas canvas, PageInfo pageInfo) {
            this.mCanvas = canvas;
            this.mPageInfo = pageInfo;
        }
    }

    public static final class PageInfo {
        private Rect mContentRect;
        private int mPageHeight;
        private int mPageNumber;
        private int mPageWidth;

        public static final class Builder {
            private final PageInfo mPageInfo;

            public Builder(int i2, int i3, int i4) {
                PageInfo pageInfo = new PageInfo();
                this.mPageInfo = pageInfo;
                if (i2 <= 0) {
                    throw new IllegalArgumentException("page width must be positive");
                }
                if (i3 <= 0) {
                    throw new IllegalArgumentException("page width must be positive");
                }
                if (i4 < 0) {
                    throw new IllegalArgumentException("pageNumber must be non negative");
                }
                pageInfo.mPageWidth = i2;
                pageInfo.mPageHeight = i3;
                pageInfo.mPageNumber = i4;
            }

            public PageInfo create() {
                if (this.mPageInfo.mContentRect == null) {
                    this.mPageInfo.mContentRect = new Rect(0, 0, this.mPageInfo.mPageWidth, this.mPageInfo.mPageHeight);
                }
                return this.mPageInfo;
            }

            public Builder setContentRect(Rect rect) {
                if (rect != null && (rect.left < 0 || rect.top < 0 || rect.right > this.mPageInfo.mPageWidth || rect.bottom > this.mPageInfo.mPageHeight)) {
                    throw new IllegalArgumentException("contentRect does not fit the page");
                }
                this.mPageInfo.mContentRect = rect;
                return this;
            }
        }

        public Rect getContentRect() {
            return this.mContentRect;
        }

        public int getPageHeight() {
            return this.mPageHeight;
        }

        public int getPageNumber() {
            return this.mPageNumber;
        }

        public int getPageWidth() {
            return this.mPageWidth;
        }

        private PageInfo() {
        }
    }

    public final class PdfCanvas extends Canvas {
        public PdfCanvas(int i2) {
            super(i2);
        }

        @Override // android.graphics.Canvas
        public void setBitmap(Bitmap bitmap) {
            throw new UnsupportedOperationException();
        }
    }

    public PdfDocument() {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        this.mPages = new ArrayList();
        this.mNativeDocument = nativeCreateDocument();
        closeGuard.open("close");
    }

    private void dispose() {
        int i2 = this.mNativeDocument;
        if (i2 != 0) {
            nativeClose(i2);
            this.mCloseGuard.close();
            this.mNativeDocument = 0;
        }
    }

    private native void nativeClose(int i2);

    private native int nativeCreateDocument();

    private native void nativeFinishPage(int i2);

    private static native int nativeStartPage(int i2, int i3, int i4, int i5, int i6, int i7, int i8);

    private native void nativeWriteTo(int i2, OutputStream outputStream, byte[] bArr);

    private void throwIfClosed() {
        if (this.mNativeDocument == 0) {
            throw new IllegalStateException("document is closed!");
        }
    }

    private void throwIfCurrentPageNotFinished() {
        if (this.mCurrentPage != null) {
            throw new IllegalStateException("Current page not finished!");
        }
    }

    public void close() {
        throwIfCurrentPageNotFinished();
        dispose();
    }

    public void finalize() throws Throwable {
        try {
            this.mCloseGuard.warnIfOpen();
            dispose();
        } finally {
            super.finalize();
        }
    }

    public void finishPage(Page page) {
        throwIfClosed();
        if (page == null) {
            throw new IllegalArgumentException("page cannot be null");
        }
        if (page != this.mCurrentPage) {
            throw new IllegalStateException("invalid page");
        }
        if (page.isFinished()) {
            throw new IllegalStateException("page already finished");
        }
        this.mPages.add(page.getInfo());
        this.mCurrentPage = null;
        nativeFinishPage(this.mNativeDocument);
        page.finish();
    }

    public List<PageInfo> getPages() {
        return Collections.unmodifiableList(this.mPages);
    }

    public Page startPage(PageInfo pageInfo) {
        throwIfClosed();
        throwIfCurrentPageNotFinished();
        if (pageInfo == null) {
            throw new IllegalArgumentException("page cannot be null");
        }
        Page page = new Page(new PdfCanvas(nativeStartPage(this.mNativeDocument, pageInfo.mPageWidth, pageInfo.mPageHeight, pageInfo.mContentRect.left, pageInfo.mContentRect.top, pageInfo.mContentRect.right, pageInfo.mContentRect.bottom)), pageInfo);
        this.mCurrentPage = page;
        return page;
    }

    public void writeTo(OutputStream outputStream) {
        throwIfClosed();
        throwIfCurrentPageNotFinished();
        if (outputStream == null) {
            throw new IllegalArgumentException("out cannot be null!");
        }
        nativeWriteTo(this.mNativeDocument, outputStream, this.mChunk);
    }
}
