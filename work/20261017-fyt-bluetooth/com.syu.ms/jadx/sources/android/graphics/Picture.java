package android.graphics;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class Picture {
    private static final int WORKING_STREAM_STORAGE = 16384;
    public final boolean createdFromStream;
    private final int mNativePicture;
    private Canvas mRecordingCanvas;

    public static class RecordingCanvas extends Canvas {
        private final Picture mPicture;

        public RecordingCanvas(Picture picture, int i2) {
            super(i2);
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
        this(nativeConstructor(0), false);
    }

    @Deprecated
    public static Picture createFromStream(InputStream inputStream) {
        return new Picture(nativeCreateFromStream(inputStream, new byte[16384]), true);
    }

    private static native int nativeBeginRecording(int i2, int i3, int i4);

    private static native int nativeConstructor(int i2);

    private static native int nativeCreateFromStream(InputStream inputStream, byte[] bArr);

    private static native void nativeDestructor(int i2);

    private static native void nativeDraw(int i2, int i3);

    private static native void nativeEndRecording(int i2);

    private static native boolean nativeWriteToStream(int i2, OutputStream outputStream, byte[] bArr);

    public Canvas beginRecording(int i2, int i3) {
        RecordingCanvas recordingCanvas = new RecordingCanvas(this, nativeBeginRecording(this.mNativePicture, i2, i3));
        this.mRecordingCanvas = recordingCanvas;
        return recordingCanvas;
    }

    public void draw(Canvas canvas) {
        if (this.mRecordingCanvas != null) {
            endRecording();
        }
        nativeDraw(canvas.mNativeCanvas, this.mNativePicture);
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
        } finally {
            super.finalize();
        }
    }

    public native int getHeight();

    public native int getWidth();

    public final int ni() {
        return this.mNativePicture;
    }

    @Deprecated
    public void writeToStream(OutputStream outputStream) {
        Objects.requireNonNull(outputStream);
        if (!nativeWriteToStream(this.mNativePicture, outputStream, new byte[16384])) {
            throw new RuntimeException();
        }
    }

    public Picture(Picture picture) {
        this(nativeConstructor(picture != null ? picture.mNativePicture : 0), false);
    }

    private Picture(int i2, boolean z2) {
        if (i2 != 0) {
            this.mNativePicture = i2;
            this.createdFromStream = z2;
            return;
        }
        throw new RuntimeException();
    }
}
