package android.media;

import android.accessibilityservice.c;
import android.graphics.ImageFormat;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.hardware.camera2.utils.SurfaceUtils;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Size;
import android.view.Surface;
import dalvik.system.VMRuntime;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.NioUtils;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ImageWriter implements AutoCloseable {
    private int mEstimatedNativeAllocBytes;
    private OnImageReleasedListener mListener;
    private ListenerHandler mListenerHandler;
    private final int mMaxImages;
    private long mNativeContext;
    private int mWriterFormat;
    private final Object mListenerLock = new Object();
    private List<Image> mDequeuedImages = new CopyOnWriteArrayList();

    public final class ListenerHandler extends Handler {
        public ListenerHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            OnImageReleasedListener onImageReleasedListener;
            synchronized (ImageWriter.this.mListenerLock) {
                onImageReleasedListener = ImageWriter.this.mListener;
            }
            if (onImageReleasedListener != null) {
                onImageReleasedListener.onImageReleased(ImageWriter.this);
            }
        }
    }

    public interface OnImageReleasedListener {
        void onImageReleased(ImageWriter imageWriter);
    }

    public static class WriterSurfaceImage extends Image {
        private long mNativeBuffer;
        private ImageWriter mOwner;
        private SurfacePlane[] mPlanes;
        private int mNativeFenceFd = -1;
        private int mHeight = -1;
        private int mWidth = -1;
        private int mFormat = -1;
        private final long DEFAULT_TIMESTAMP = Long.MIN_VALUE;
        private long mTimestamp = Long.MIN_VALUE;

        public class SurfacePlane extends Image.Plane {
            private ByteBuffer mBuffer;
            private final int mPixelStride;
            private final int mRowStride;

            private SurfacePlane(int i2, int i3, ByteBuffer byteBuffer) {
                this.mRowStride = i2;
                this.mPixelStride = i3;
                this.mBuffer = byteBuffer;
                byteBuffer.order(ByteOrder.nativeOrder());
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void clearBuffer() {
                ByteBuffer byteBuffer = this.mBuffer;
                if (byteBuffer == null) {
                    return;
                }
                if (byteBuffer.isDirect()) {
                    NioUtils.freeDirectBuffer(this.mBuffer);
                }
                this.mBuffer = null;
            }

            @Override // android.media.Image.Plane
            public ByteBuffer getBuffer() {
                WriterSurfaceImage.this.throwISEIfImageIsInvalid();
                return this.mBuffer;
            }

            @Override // android.media.Image.Plane
            public int getPixelStride() {
                WriterSurfaceImage.this.throwISEIfImageIsInvalid();
                return this.mPixelStride;
            }

            @Override // android.media.Image.Plane
            public int getRowStride() {
                WriterSurfaceImage.this.throwISEIfImageIsInvalid();
                return this.mRowStride;
            }
        }

        public WriterSurfaceImage(ImageWriter imageWriter) {
            this.mOwner = imageWriter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void clearSurfacePlanes() {
            if (!this.mIsImageValid || this.mPlanes == null) {
                return;
            }
            int i2 = 0;
            while (true) {
                SurfacePlane[] surfacePlaneArr = this.mPlanes;
                if (i2 >= surfacePlaneArr.length) {
                    return;
                }
                SurfacePlane surfacePlane = surfacePlaneArr[i2];
                if (surfacePlane != null) {
                    surfacePlane.clearBuffer();
                    this.mPlanes[i2] = null;
                }
                i2++;
            }
        }

        private native synchronized SurfacePlane[] nativeCreatePlanes(int i2, int i3);

        private native synchronized int nativeGetFormat();

        private native synchronized int nativeGetHeight();

        private native synchronized int nativeGetWidth();

        @Override // android.media.Image, java.lang.AutoCloseable
        public void close() {
            if (this.mIsImageValid) {
                getOwner().abortImage(this);
            }
        }

        public final void finalize() throws Throwable {
            try {
                close();
            } finally {
                super.finalize();
            }
        }

        @Override // android.media.Image
        public int getFormat() {
            throwISEIfImageIsInvalid();
            if (this.mFormat == -1) {
                this.mFormat = nativeGetFormat();
            }
            return this.mFormat;
        }

        @Override // android.media.Image
        public int getHeight() {
            throwISEIfImageIsInvalid();
            if (this.mHeight == -1) {
                this.mHeight = nativeGetHeight();
            }
            return this.mHeight;
        }

        @Override // android.media.Image
        public long getNativeContext() {
            throwISEIfImageIsInvalid();
            return this.mNativeBuffer;
        }

        @Override // android.media.Image
        public Image.Plane[] getPlanes() {
            throwISEIfImageIsInvalid();
            if (this.mPlanes == null) {
                this.mPlanes = nativeCreatePlanes(ImageUtils.getNumPlanesForFormat(getFormat()), getOwner().getFormat());
            }
            return (Image.Plane[]) this.mPlanes.clone();
        }

        @Override // android.media.Image
        public long getTimestamp() {
            throwISEIfImageIsInvalid();
            return this.mTimestamp;
        }

        @Override // android.media.Image
        public int getWidth() {
            throwISEIfImageIsInvalid();
            if (this.mWidth == -1) {
                this.mWidth = nativeGetWidth();
            }
            return this.mWidth;
        }

        @Override // android.media.Image
        public boolean isAttachable() {
            throwISEIfImageIsInvalid();
            return false;
        }

        @Override // android.media.Image
        public void setTimestamp(long j2) {
            throwISEIfImageIsInvalid();
            this.mTimestamp = j2;
        }

        @Override // android.media.Image
        public ImageWriter getOwner() {
            throwISEIfImageIsInvalid();
            return this.mOwner;
        }
    }

    static {
        System.loadLibrary("media_jni");
        nativeClassInit();
    }

    public ImageWriter(Surface surface, int i2, int i3) {
        if (surface == null || i2 < 1) {
            throw new IllegalArgumentException("Illegal input argument: surface " + surface + ", maxImages: " + i2);
        }
        this.mMaxImages = i2;
        i3 = i3 == 0 ? SurfaceUtils.getSurfaceFormat(surface) : i3;
        this.mNativeContext = nativeInit(new WeakReference(this), surface, i2, i3);
        Size surfaceSize = SurfaceUtils.getSurfaceSize(surface);
        this.mEstimatedNativeAllocBytes = ImageUtils.getEstimatedNativeAllocBytes(surfaceSize.getWidth(), surfaceSize.getHeight(), i3, 1);
        VMRuntime.getRuntime().registerNativeAllocation(this.mEstimatedNativeAllocBytes);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abortImage(Image image) {
        if (image == null) {
            throw new IllegalArgumentException("image shouldn't be null");
        }
        if (!this.mDequeuedImages.contains(image)) {
            throw new IllegalStateException("It is illegal to abort some image that is not dequeued yet");
        }
        WriterSurfaceImage writerSurfaceImage = (WriterSurfaceImage) image;
        if (writerSurfaceImage.mIsImageValid) {
            cancelImage(this.mNativeContext, image);
            this.mDequeuedImages.remove(image);
            writerSurfaceImage.clearSurfacePlanes();
            writerSurfaceImage.mIsImageValid = false;
        }
    }

    private void attachAndQueueInputImage(Image image) {
        if (image == null) {
            throw new IllegalArgumentException("image shouldn't be null");
        }
        if (isImageOwnedByMe(image)) {
            throw new IllegalArgumentException("Can not attach an image that is owned ImageWriter already");
        }
        if (!image.isAttachable()) {
            throw new IllegalStateException("Image was not detached from last owner, or image  is not detachable");
        }
        Rect cropRect = image.getCropRect();
        nativeAttachAndQueueImage(this.mNativeContext, image.getNativeContext(), image.getFormat(), image.getTimestamp(), cropRect.left, cropRect.top, cropRect.right, cropRect.bottom);
    }

    private native synchronized void cancelImage(long j2, Image image);

    private boolean isImageOwnedByMe(Image image) {
        return (image instanceof WriterSurfaceImage) && ((WriterSurfaceImage) image).getOwner() == this;
    }

    private native synchronized int nativeAttachAndQueueImage(long j2, long j3, int i2, long j4, int i3, int i4, int i5, int i6);

    private static native void nativeClassInit();

    private native synchronized void nativeClose(long j2);

    private native synchronized void nativeDequeueInputImage(long j2, Image image);

    private native synchronized long nativeInit(Object obj, Surface surface, int i2, int i3);

    private native synchronized void nativeQueueInputImage(long j2, Image image, long j3, int i2, int i3, int i4, int i5);

    public static ImageWriter newInstance(Surface surface, int i2) {
        return new ImageWriter(surface, i2, 0);
    }

    private static void postEventFromNative(Object obj) {
        ListenerHandler listenerHandler;
        ImageWriter imageWriter = (ImageWriter) ((WeakReference) obj).get();
        if (imageWriter == null) {
            return;
        }
        synchronized (imageWriter.mListenerLock) {
            listenerHandler = imageWriter.mListenerHandler;
        }
        if (listenerHandler != null) {
            listenerHandler.sendEmptyMessage(0);
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        setOnImageReleasedListener(null, null);
        Iterator<Image> it = this.mDequeuedImages.iterator();
        while (it.hasNext()) {
            it.next().close();
        }
        this.mDequeuedImages.clear();
        nativeClose(this.mNativeContext);
        this.mNativeContext = 0L;
        if (this.mEstimatedNativeAllocBytes > 0) {
            VMRuntime.getRuntime().registerNativeFree(this.mEstimatedNativeAllocBytes);
            this.mEstimatedNativeAllocBytes = 0;
        }
    }

    public Image dequeueInputImage() {
        if (this.mWriterFormat == 34) {
            throw new IllegalStateException("PRIVATE format ImageWriter doesn't support this operation since the images are inaccessible to the application!");
        }
        if (this.mDequeuedImages.size() >= this.mMaxImages) {
            throw new IllegalStateException("Already dequeued max number of Images " + this.mMaxImages);
        }
        WriterSurfaceImage writerSurfaceImage = new WriterSurfaceImage(this);
        nativeDequeueInputImage(this.mNativeContext, writerSurfaceImage);
        this.mDequeuedImages.add(writerSurfaceImage);
        writerSurfaceImage.mIsImageValid = true;
        return writerSurfaceImage;
    }

    public void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    public int getFormat() {
        return this.mWriterFormat;
    }

    public int getMaxImages() {
        return this.mMaxImages;
    }

    public void queueInputImage(Image image) {
        if (image == null) {
            throw new IllegalArgumentException("image shouldn't be null");
        }
        boolean zIsImageOwnedByMe = isImageOwnedByMe(image);
        if (zIsImageOwnedByMe && !((WriterSurfaceImage) image).mIsImageValid) {
            throw new IllegalStateException("Image from ImageWriter is invalid");
        }
        if (!zIsImageOwnedByMe) {
            if (!(image.getOwner() instanceof ImageReader)) {
                throw new IllegalArgumentException("Only images from ImageReader can be queued to ImageWriter, other image source is not supported yet!");
            }
            ((ImageReader) image.getOwner()).detachImage(image);
            attachAndQueueInputImage(image);
            image.close();
            return;
        }
        Rect cropRect = image.getCropRect();
        nativeQueueInputImage(this.mNativeContext, image, image.getTimestamp(), cropRect.left, cropRect.top, cropRect.right, cropRect.bottom);
        if (zIsImageOwnedByMe) {
            this.mDequeuedImages.remove(image);
            WriterSurfaceImage writerSurfaceImage = (WriterSurfaceImage) image;
            writerSurfaceImage.clearSurfacePlanes();
            writerSurfaceImage.mIsImageValid = false;
        }
    }

    public void setOnImageReleasedListener(OnImageReleasedListener onImageReleasedListener, Handler handler) {
        synchronized (this.mListenerLock) {
            try {
                if (onImageReleasedListener != null) {
                    Looper looper = handler != null ? handler.getLooper() : Looper.myLooper();
                    if (looper == null) {
                        throw new IllegalArgumentException("handler is null but the current thread is not a looper");
                    }
                    ListenerHandler listenerHandler = this.mListenerHandler;
                    if (listenerHandler == null || listenerHandler.getLooper() != looper) {
                        this.mListenerHandler = new ListenerHandler(looper);
                    }
                    this.mListener = onImageReleasedListener;
                } else {
                    this.mListener = null;
                    this.mListenerHandler = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static ImageWriter newInstance(Surface surface, int i2, int i3) {
        if (ImageFormat.isPublicFormat(i3) || PixelFormat.isPublicFormat(i3)) {
            return new ImageWriter(surface, i2, i3);
        }
        throw new IllegalArgumentException(c.d("Invalid format is specified: ", i3));
    }
}
