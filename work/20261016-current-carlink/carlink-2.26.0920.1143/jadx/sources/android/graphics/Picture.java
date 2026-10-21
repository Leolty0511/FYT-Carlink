package android.graphics;

import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class Picture {
    private static final int WORKING_STREAM_STORAGE = 16384;
    private long mNativePicture;
    private Canvas mRecordingCanvas;

    public static class RecordingCanvas extends Canvas {
        private final Picture mPicture;

        public RecordingCanvas(Picture picture, long j2) {
            super(j2);
            this.mPicture = picture;
        }

        @Override // android.graphics.Canvas
        public void drawPicture(Picture picture) {
            if (this.mPicture == picture) {
                throw new RuntimeException("Cannot draw a picture into its recording canvas");
            }
            super.drawPicture(picture);
        }

        @Override // android.graphics.Canvas
        public void setBitmap(Bitmap bitmap) {
            throw new RuntimeException("Cannot call setBitmap on a picture canvas");
        }
    }

    public Picture() {
        this(nativeConstructor(0L));
    }

    @Deprecated
    public static Picture createFromStream(InputStream inputStream) {
        return new Picture(nativeCreateFromStream(inputStream, new byte[16384]));
    }

    private static native long nativeBeginRecording(long j2, int i2, int i3);

    private static native long nativeConstructor(long j2);

    private static native long nativeCreateFromStream(InputStream inputStream, byte[] bArr);

    private static native void nativeDestructor(long j2);

    private static native void nativeDraw(long j2, long j3);

    private static native void nativeEndRecording(long j2);

    private static native int nativeGetHeight(long j2);

    private static native int nativeGetWidth(long j2);

    private static native boolean nativeWriteToStream(long j2, OutputStream outputStream, byte[] bArr);

    public Canvas beginRecording(int i2, int i3) {
        RecordingCanvas recordingCanvas = new RecordingCanvas(this, nativeBeginRecording(this.mNativePicture, i2, i3));
        this.mRecordingCanvas = recordingCanvas;
        return recordingCanvas;
    }

    public void draw(Canvas canvas) {
        if (this.mRecordingCanvas != null) {
            endRecording();
        }
        nativeDraw(canvas.getNativeCanvasWrapper(), this.mNativePicture);
    }

    public void endRecording() {
        if (this.mRecordingCanvas != null) {
            this.mRecordingCanvas = null;
            nativeEndRecording(this.mNativePicture);
        }
    }

    public void finalize() throws Throwable {
        try {
            nativeDestructor(this.mNativePicture);
            this.mNativePicture = 0L;
        } finally {
            super.finalize();
        }
    }

    public int getHeight() {
        return nativeGetHeight(this.mNativePicture);
    }

    public int getWidth() {
        return nativeGetWidth(this.mNativePicture);
    }

    @Deprecated
    public void writeToStream(OutputStream outputStream) {
        outputStream.getClass();
        if (!nativeWriteToStream(this.mNativePicture, outputStream, new byte[16384])) {
            throw new RuntimeException();
        }
    }

    public Picture(Picture picture) {
        this(nativeConstructor(picture != null ? picture.mNativePicture : 0L));
    }

    private Picture(long j2) {
        if (j2 != 0) {
            this.mNativePicture = j2;
            return;
        }
        throw new RuntimeException();
    }
}
