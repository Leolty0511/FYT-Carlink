package android.view;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class GraphicBuffer implements Parcelable {
    public static final Parcelable.Creator<GraphicBuffer> CREATOR = new Parcelable.Creator<GraphicBuffer>() { // from class: android.view.GraphicBuffer.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GraphicBuffer createFromParcel(Parcel parcel) {
            int i2 = parcel.readInt();
            int i3 = parcel.readInt();
            int i4 = parcel.readInt();
            int i5 = parcel.readInt();
            int iNReadGraphicBufferFromParcel = GraphicBuffer.nReadGraphicBufferFromParcel(parcel);
            if (iNReadGraphicBufferFromParcel != 0) {
                return new GraphicBuffer(i2, i3, i4, i5, iNReadGraphicBufferFromParcel);
            }
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GraphicBuffer[] newArray(int i2) {
            return new GraphicBuffer[i2];
        }
    };
    public static final int USAGE_HW_2D = 1024;
    public static final int USAGE_HW_COMPOSER = 2048;
    public static final int USAGE_HW_MASK = 466688;
    public static final int USAGE_HW_RENDER = 512;
    public static final int USAGE_HW_TEXTURE = 256;
    public static final int USAGE_HW_VIDEO_ENCODER = 65536;
    public static final int USAGE_PROTECTED = 16384;
    public static final int USAGE_SOFTWARE_MASK = 255;
    public static final int USAGE_SW_READ_MASK = 15;
    public static final int USAGE_SW_READ_NEVER = 0;
    public static final int USAGE_SW_READ_OFTEN = 3;
    public static final int USAGE_SW_READ_RARELY = 2;
    public static final int USAGE_SW_WRITE_MASK = 240;
    public static final int USAGE_SW_WRITE_NEVER = 0;
    public static final int USAGE_SW_WRITE_OFTEN = 48;
    public static final int USAGE_SW_WRITE_RARELY = 32;
    private Canvas mCanvas;
    private boolean mDestroyed;
    private final int mFormat;
    private final int mHeight;
    private final int mNativeObject;
    private int mSaveCount;
    private final int mUsage;
    private final int mWidth;

    public static GraphicBuffer create(int i2, int i3, int i4, int i5) {
        int iNCreateGraphicBuffer = nCreateGraphicBuffer(i2, i3, i4, i5);
        if (iNCreateGraphicBuffer != 0) {
            return new GraphicBuffer(i2, i3, i4, i5, iNCreateGraphicBuffer);
        }
        return null;
    }

    private static native int nCreateGraphicBuffer(int i2, int i3, int i4, int i5);

    private static native void nDestroyGraphicBuffer(int i2);

    private static native boolean nLockCanvas(int i2, Canvas canvas, Rect rect);

    /* JADX INFO: Access modifiers changed from: private */
    public static native int nReadGraphicBufferFromParcel(Parcel parcel);

    private static native boolean nUnlockCanvasAndPost(int i2, Canvas canvas);

    private static native void nWriteGraphicBufferToParcel(int i2, Parcel parcel);

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void destroy() {
        if (this.mDestroyed) {
            return;
        }
        this.mDestroyed = true;
        nDestroyGraphicBuffer(this.mNativeObject);
    }

    public void finalize() throws Throwable {
        try {
            if (!this.mDestroyed) {
                nDestroyGraphicBuffer(this.mNativeObject);
            }
        } finally {
            super.finalize();
        }
    }

    public int getFormat() {
        return this.mFormat;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getUsage() {
        return this.mUsage;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public boolean isDestroyed() {
        return this.mDestroyed;
    }

    public Canvas lockCanvas() {
        return lockCanvas(null);
    }

    public void unlockCanvasAndPost(Canvas canvas) {
        Canvas canvas2;
        if (this.mDestroyed || (canvas2 = this.mCanvas) == null || canvas != canvas2) {
            return;
        }
        canvas.restoreToCount(this.mSaveCount);
        this.mSaveCount = 0;
        nUnlockCanvasAndPost(this.mNativeObject, this.mCanvas);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        if (this.mDestroyed) {
            throw new IllegalStateException("This GraphicBuffer has been destroyed and cannot be written to a parcel.");
        }
        parcel.writeInt(this.mWidth);
        parcel.writeInt(this.mHeight);
        parcel.writeInt(this.mFormat);
        parcel.writeInt(this.mUsage);
        nWriteGraphicBufferToParcel(this.mNativeObject, parcel);
    }

    private GraphicBuffer(int i2, int i3, int i4, int i5, int i6) {
        this.mWidth = i2;
        this.mHeight = i3;
        this.mFormat = i4;
        this.mUsage = i5;
        this.mNativeObject = i6;
    }

    public Canvas lockCanvas(Rect rect) {
        if (this.mDestroyed) {
            return null;
        }
        if (this.mCanvas == null) {
            this.mCanvas = new Canvas();
        }
        if (!nLockCanvas(this.mNativeObject, this.mCanvas, rect)) {
            return null;
        }
        this.mSaveCount = this.mCanvas.save();
        return this.mCanvas;
    }
}
