package android.media;

import android.accessibilityservice.c;
import android.graphics.ImageFormat;
import android.graphics.PixelFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import dalvik.system.VMRuntime;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.NioUtils;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class ImageReader implements AutoCloseable {
    private static final int ACQUIRE_MAX_IMAGES = 2;
    private static final int ACQUIRE_NO_BUFS = 1;
    private static final int ACQUIRE_SUCCESS = 0;
    private static final long BUFFER_USAGE_UNKNOWN = 0;
    private int mEstimatedNativeAllocBytes;
    private final int mFormat;
    private final int mHeight;
    private boolean mIsReaderValid;
    private OnImageAvailableListener mListener;
    private ListenerHandler mListenerHandler;
    private final int mMaxImages;
    private long mNativeContext;
    private final int mNumPlanes;
    private final Surface mSurface;
    private final int mWidth;
    private final Object mListenerLock = new Object();
    private final Object mCloseLock = new Object();
    private List<Image> mAcquiredImages = new CopyOnWriteArrayList();

    public final class ListenerHandler extends Handler {
        public ListenerHandler(Looper looper) {
            super(looper, null, true);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            OnImageAvailableListener onImageAvailableListener;
            boolean z2;
            synchronized (ImageReader.this.mListenerLock) {
                onImageAvailableListener = ImageReader.this.mListener;
            }
            synchronized (ImageReader.this.mCloseLock) {
                z2 = ImageReader.this.mIsReaderValid;
            }
            if (onImageAvailableListener == null || !z2) {
                return;
            }
            onImageAvailableListener.onImageAvailable(ImageReader.this);
        }
    }

    public interface OnImageAvailableListener {
        void onImageAvailable(ImageReader imageReader);
    }

    public class SurfaceImage extends Image {
        private int mFormat;
        private AtomicBoolean mIsDetached = new AtomicBoolean(false);
        private long mNativeBuffer;
        private SurfacePlane[] mPlanes;
        private long mTimestamp;

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
                SurfaceImage.this.throwISEIfImageIsInvalid();
                return this.mBuffer;
            }

            @Override // android.media.Image.Plane
            public int getPixelStride() {
                SurfaceImage.this.throwISEIfImageIsInvalid();
                if (ImageReader.this.mFormat != 36) {
                    return this.mPixelStride;
                }
                throw new UnsupportedOperationException("getPixelStride is not supported for RAW_PRIVATE plane");
            }

            @Override // android.media.Image.Plane
            public int getRowStride() {
                SurfaceImage.this.throwISEIfImageIsInvalid();
                if (ImageReader.this.mFormat != 36) {
                    return this.mRowStride;
                }
                throw new UnsupportedOperationException("getRowStride is not supported for RAW_PRIVATE plane");
            }
        }

        public SurfaceImage(int i2) {
            this.mFormat = 0;
            this.mFormat = i2;
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

        private native synchronized int nativeGetFormat(int i2);

        private native synchronized int nativeGetHeight();

        private native synchronized int nativeGetWidth();

        /* JADX INFO: Access modifiers changed from: private */
        public void setDetached(boolean z2) {
            throwISEIfImageIsInvalid();
            this.mIsDetached.getAndSet(z2);
        }

        @Override // android.media.Image, java.lang.AutoCloseable
        public void close() {
            ImageReader.this.releaseImage(this);
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
            int imageFormat = ImageReader.this.getImageFormat();
            if (imageFormat != 34) {
                imageFormat = nativeGetFormat(imageFormat);
            }
            this.mFormat = imageFormat;
            return imageFormat;
        }

        @Override // android.media.Image
        public int getHeight() {
            throwISEIfImageIsInvalid();
            int format = getFormat();
            return (format == 36 || format == 256 || format == 257) ? ImageReader.this.getHeight() : nativeGetHeight();
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
                this.mPlanes = nativeCreatePlanes(ImageReader.this.mNumPlanes, ImageReader.this.mFormat);
            }
            return (Image.Plane[]) this.mPlanes.clone();
        }

        public ImageReader getReader() {
            return ImageReader.this;
        }

        @Override // android.media.Image
        public long getTimestamp() {
            throwISEIfImageIsInvalid();
            return this.mTimestamp;
        }

        @Override // android.media.Image
        public int getWidth() {
            throwISEIfImageIsInvalid();
            int format = getFormat();
            return (format == 36 || format == 256 || format == 257) ? ImageReader.this.getWidth() : nativeGetWidth();
        }

        @Override // android.media.Image
        public boolean isAttachable() {
            throwISEIfImageIsInvalid();
            return this.mIsDetached.get();
        }

        @Override // android.media.Image
        public void setTimestamp(long j2) {
            throwISEIfImageIsInvalid();
            this.mTimestamp = j2;
        }

        @Override // android.media.Image
        public ImageReader getOwner() {
            throwISEIfImageIsInvalid();
            return ImageReader.this;
        }
    }

    static {
        System.loadLibrary("media_jni");
        nativeClassInit();
    }

    public ImageReader(int i2, int i3, int i4, int i5, long j2) {
        this.mIsReaderValid = false;
        this.mWidth = i2;
        this.mHeight = i3;
        this.mFormat = i4;
        this.mMaxImages = i5;
        if (i2 < 1 || i3 < 1) {
            throw new IllegalArgumentException("The image dimensions must be positive");
        }
        if (i5 < 1) {
            throw new IllegalArgumentException("Maximum outstanding image count must be at least 1");
        }
        if (i4 == 17) {
            throw new IllegalArgumentException("NV21 format is not supported");
        }
        this.mNumPlanes = ImageUtils.getNumPlanesForFormat(i4);
        nativeInit(new WeakReference(this), i2, i3, i4, i5, j2);
        this.mSurface = nativeGetSurface();
        this.mIsReaderValid = true;
        this.mEstimatedNativeAllocBytes = ImageUtils.getEstimatedNativeAllocBytes(i2, i3, i4, 1);
        VMRuntime.getRuntime().registerNativeAllocation(this.mEstimatedNativeAllocBytes);
    }

    private int acquireNextSurfaceImage(SurfaceImage surfaceImage) {
        int iNativeImageSetup;
        synchronized (this.mCloseLock) {
            iNativeImageSetup = this.mIsReaderValid ? nativeImageSetup(surfaceImage) : 1;
            if (iNativeImageSetup == 0) {
                surfaceImage.mIsImageValid = true;
            } else if (iNativeImageSetup != 1 && iNativeImageSetup != 2) {
                throw new AssertionError("Unknown nativeImageSetup return code " + iNativeImageSetup);
            }
            if (iNativeImageSetup == 0) {
                this.mAcquiredImages.add(surfaceImage);
            }
        }
        return iNativeImageSetup;
    }

    private static boolean isFormatUsageCombinationAllowed(int i2, long j2) {
        if ((!ImageFormat.isPublicFormat(i2) && !PixelFormat.isPublicFormat(i2)) || j2 == 0) {
            return false;
        }
        if (i2 == 34) {
            return (((j2 > 256L ? 1 : (j2 == 256L ? 0 : -1)) == 0) || (j2 > 65536L ? 1 : (j2 == 65536L ? 0 : -1)) == 0) || j2 == 65792;
        }
        return j2 == 2 || j2 == 3;
    }

    private boolean isImageOwnedbyMe(Image image) {
        return (image instanceof SurfaceImage) && ((SurfaceImage) image).getReader() == this;
    }

    private static native void nativeClassInit();

    private native synchronized void nativeClose();

    private native synchronized int nativeDetachImage(Image image);

    private native synchronized void nativeDiscardFreeBuffers();

    private native synchronized Surface nativeGetSurface();

    private native synchronized int nativeImageSetup(Image image);

    private native synchronized void nativeInit(Object obj, int i2, int i3, int i4, int i5, long j2);

    private native synchronized void nativeReleaseImage(Image image);

    public static ImageReader newInstance(int i2, int i3, int i4, int i5) {
        return new ImageReader(i2, i3, i4, i5, 0L);
    }

    private static void postEventFromNative(Object obj) {
        ListenerHandler listenerHandler;
        ImageReader imageReader = (ImageReader) ((WeakReference) obj).get();
        if (imageReader == null) {
            return;
        }
        synchronized (imageReader.mListenerLock) {
            listenerHandler = imageReader.mListenerHandler;
        }
        if (listenerHandler != null) {
            listenerHandler.sendEmptyMessage(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseImage(Image image) {
        if (!(image instanceof SurfaceImage)) {
            throw new IllegalArgumentException("This image was not produced by an ImageReader");
        }
        SurfaceImage surfaceImage = (SurfaceImage) image;
        if (surfaceImage.mIsImageValid) {
            if (surfaceImage.getReader() != this || !this.mAcquiredImages.contains(image)) {
                throw new IllegalArgumentException("This image was not produced by this ImageReader");
            }
            surfaceImage.clearSurfacePlanes();
            nativeReleaseImage(image);
            surfaceImage.mIsImageValid = false;
            this.mAcquiredImages.remove(image);
        }
    }

    public Image acquireLatestImage() {
        Image imageAcquireNextImage = acquireNextImage();
        if (imageAcquireNextImage == null) {
            return null;
        }
        while (true) {
            try {
                Image imageAcquireNextImageNoThrowISE = acquireNextImageNoThrowISE();
                if (imageAcquireNextImageNoThrowISE == null) {
                    return imageAcquireNextImage;
                }
                imageAcquireNextImage.close();
                imageAcquireNextImage = imageAcquireNextImageNoThrowISE;
            } catch (Throwable th) {
                imageAcquireNextImage.close();
                throw th;
            }
        }
    }

    public Image acquireNextImage() {
        SurfaceImage surfaceImage = new SurfaceImage(this.mFormat);
        int iAcquireNextSurfaceImage = acquireNextSurfaceImage(surfaceImage);
        if (iAcquireNextSurfaceImage == 0) {
            return surfaceImage;
        }
        if (iAcquireNextSurfaceImage == 1) {
            return null;
        }
        if (iAcquireNextSurfaceImage != 2) {
            throw new AssertionError(c.d("Unknown nativeImageSetup return code ", iAcquireNextSurfaceImage));
        }
        throw new IllegalStateException(String.format("maxImages (%d) has already been acquired, call #close before acquiring more.", Integer.valueOf(this.mMaxImages)));
    }

    public Image acquireNextImageNoThrowISE() {
        SurfaceImage surfaceImage = new SurfaceImage(this.mFormat);
        if (acquireNextSurfaceImage(surfaceImage) == 0) {
            return surfaceImage;
        }
        return null;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        setOnImageAvailableListener(null, null);
        Surface surface = this.mSurface;
        if (surface != null) {
            surface.release();
        }
        synchronized (this.mCloseLock) {
            this.mIsReaderValid = false;
            Iterator<Image> it = this.mAcquiredImages.iterator();
            while (it.hasNext()) {
                it.next().close();
            }
            this.mAcquiredImages.clear();
            nativeClose();
            if (this.mEstimatedNativeAllocBytes > 0) {
                VMRuntime.getRuntime().registerNativeFree(this.mEstimatedNativeAllocBytes);
                this.mEstimatedNativeAllocBytes = 0;
            }
        }
    }

    public void detachImage(Image image) {
        if (image == null) {
            throw new IllegalArgumentException("input image must not be null");
        }
        if (!isImageOwnedbyMe(image)) {
            throw new IllegalArgumentException("Trying to detach an image that is not owned by this ImageReader");
        }
        SurfaceImage surfaceImage = (SurfaceImage) image;
        surfaceImage.throwISEIfImageIsInvalid();
        if (surfaceImage.isAttachable()) {
            throw new IllegalStateException("Image was already detached from this ImageReader");
        }
        nativeDetachImage(image);
        surfaceImage.clearSurfacePlanes();
        surfaceImage.mPlanes = null;
        surfaceImage.setDetached(true);
    }

    public void discardFreeBuffers() {
        synchronized (this.mCloseLock) {
            nativeDiscardFreeBuffers();
        }
    }

    public void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getImageFormat() {
        return this.mFormat;
    }

    public int getMaxImages() {
        return this.mMaxImages;
    }

    public Surface getSurface() {
        return this.mSurface;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public void setOnImageAvailableListener(OnImageAvailableListener onImageAvailableListener, Handler handler) {
        synchronized (this.mListenerLock) {
            try {
                if (onImageAvailableListener != null) {
                    Looper looper = handler != null ? handler.getLooper() : Looper.myLooper();
                    if (looper == null) {
                        throw new IllegalArgumentException("handler is null but the current thread is not a looper");
                    }
                    ListenerHandler listenerHandler = this.mListenerHandler;
                    if (listenerHandler == null || listenerHandler.getLooper() != looper) {
                        this.mListenerHandler = new ListenerHandler(looper);
                    }
                    this.mListener = onImageAvailableListener;
                } else {
                    this.mListener = null;
                    this.mListenerHandler = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static ImageReader newInstance(int i2, int i3, int i4, int i5, long j2) {
        if (isFormatUsageCombinationAllowed(i4, j2)) {
            return new ImageReader(i2, i3, i4, i5, j2);
        }
        throw new IllegalArgumentException("Format usage combination is not supported: format = " + i4 + ", usage = " + j2);
    }
}
