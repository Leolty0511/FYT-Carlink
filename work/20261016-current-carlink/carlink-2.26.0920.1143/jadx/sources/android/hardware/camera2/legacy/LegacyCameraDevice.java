package android.hardware.camera2.legacy;

import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.ICameraDeviceCallbacks;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.hardware.camera2.impl.CaptureResultExtras;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.hardware.camera2.utils.ArrayUtils;
import android.hardware.camera2.utils.SubmitInfo;
import android.opengl.GLES11;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.RemoteException;
import android.os.ServiceSpecificException;
import android.util.Log;
import android.util.Pair;
import android.util.Size;
import android.util.SparseArray;
import android.view.Surface;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LegacyCameraDevice implements AutoCloseable {
    private static final boolean DEBUG = false;
    private static final int GRALLOC_USAGE_HW_COMPOSER = 2048;
    private static final int GRALLOC_USAGE_HW_RENDER = 512;
    private static final int GRALLOC_USAGE_HW_TEXTURE = 256;
    private static final int GRALLOC_USAGE_HW_VIDEO_ENCODER = 65536;
    private static final int GRALLOC_USAGE_RENDERSCRIPT = 1048576;
    private static final int GRALLOC_USAGE_SW_READ_OFTEN = 3;
    private static final int ILLEGAL_VALUE = -1;
    public static final int MAX_DIMEN_FOR_ROUNDING = 1920;
    public static final int NATIVE_WINDOW_SCALING_MODE_SCALE_TO_WINDOW = 1;
    private final String TAG;
    private final Handler mCallbackHandler;
    private final HandlerThread mCallbackHandlerThread;
    private final int mCameraId;
    private boolean mClosed;
    private SparseArray<Surface> mConfiguredSurfaces;
    private final ICameraDeviceCallbacks mDeviceCallbacks;
    private final CameraDeviceState mDeviceState;
    private final ConditionVariable mIdle;
    private final RequestThreadManager mRequestThreadManager;
    private final Handler mResultHandler;
    private final HandlerThread mResultThread;
    private final CameraDeviceState.CameraDeviceStateListener mStateListener;
    private final CameraCharacteristics mStaticCharacteristics;

    public LegacyCameraDevice(int i2, Camera camera, CameraCharacteristics cameraCharacteristics, ICameraDeviceCallbacks iCameraDeviceCallbacks) {
        CameraDeviceState cameraDeviceState = new CameraDeviceState();
        this.mDeviceState = cameraDeviceState;
        this.mClosed = false;
        this.mIdle = new ConditionVariable(true);
        HandlerThread handlerThread = new HandlerThread("ResultThread");
        this.mResultThread = handlerThread;
        HandlerThread handlerThread2 = new HandlerThread("CallbackThread");
        this.mCallbackHandlerThread = handlerThread2;
        CameraDeviceState.CameraDeviceStateListener cameraDeviceStateListener = new CameraDeviceState.CameraDeviceStateListener() { // from class: android.hardware.camera2.legacy.LegacyCameraDevice.1
            @Override // android.hardware.camera2.legacy.CameraDeviceState.CameraDeviceStateListener
            public void onBusy() {
                LegacyCameraDevice.this.mIdle.close();
            }

            @Override // android.hardware.camera2.legacy.CameraDeviceState.CameraDeviceStateListener
            public void onCaptureResult(final CameraMetadataNative cameraMetadataNative, final RequestHolder requestHolder) {
                final CaptureResultExtras extrasFromRequest = LegacyCameraDevice.this.getExtrasFromRequest(requestHolder);
                LegacyCameraDevice.this.mResultHandler.post(new Runnable() { // from class: android.hardware.camera2.legacy.LegacyCameraDevice.1.5
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            LegacyCameraDevice.this.mDeviceCallbacks.onResultReceived(cameraMetadataNative, extrasFromRequest);
                        } catch (RemoteException e2) {
                            throw new IllegalStateException("Received remote exception during onCameraError callback: ", e2);
                        }
                    }
                });
            }

            @Override // android.hardware.camera2.legacy.CameraDeviceState.CameraDeviceStateListener
            public void onCaptureStarted(final RequestHolder requestHolder, final long j2) {
                final CaptureResultExtras extrasFromRequest = LegacyCameraDevice.this.getExtrasFromRequest(requestHolder);
                LegacyCameraDevice.this.mResultHandler.post(new Runnable() { // from class: android.hardware.camera2.legacy.LegacyCameraDevice.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            LegacyCameraDevice.this.mDeviceCallbacks.onCaptureStarted(extrasFromRequest, j2);
                        } catch (RemoteException e2) {
                            throw new IllegalStateException("Received remote exception during onCameraError callback: ", e2);
                        }
                    }
                });
            }

            @Override // android.hardware.camera2.legacy.CameraDeviceState.CameraDeviceStateListener
            public void onConfiguring() {
            }

            @Override // android.hardware.camera2.legacy.CameraDeviceState.CameraDeviceStateListener
            public void onError(final int i3, Object obj, final RequestHolder requestHolder) {
                if (i3 == 0 || i3 == 1 || i3 == 2) {
                    LegacyCameraDevice.this.mIdle.open();
                }
                final CaptureResultExtras extrasFromRequest = LegacyCameraDevice.this.getExtrasFromRequest(requestHolder, i3, obj);
                LegacyCameraDevice.this.mResultHandler.post(new Runnable() { // from class: android.hardware.camera2.legacy.LegacyCameraDevice.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            LegacyCameraDevice.this.mDeviceCallbacks.onDeviceError(i3, extrasFromRequest);
                        } catch (RemoteException e2) {
                            throw new IllegalStateException("Received remote exception during onCameraError callback: ", e2);
                        }
                    }
                });
            }

            @Override // android.hardware.camera2.legacy.CameraDeviceState.CameraDeviceStateListener
            public void onIdle() {
                LegacyCameraDevice.this.mIdle.open();
                LegacyCameraDevice.this.mResultHandler.post(new Runnable() { // from class: android.hardware.camera2.legacy.LegacyCameraDevice.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            LegacyCameraDevice.this.mDeviceCallbacks.onDeviceIdle();
                        } catch (RemoteException e2) {
                            throw new IllegalStateException("Received remote exception during onCameraIdle callback: ", e2);
                        }
                    }
                });
            }

            @Override // android.hardware.camera2.legacy.CameraDeviceState.CameraDeviceStateListener
            public void onRepeatingRequestError(final long j2, final int i3) {
                LegacyCameraDevice.this.mResultHandler.post(new Runnable() { // from class: android.hardware.camera2.legacy.LegacyCameraDevice.1.6
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            LegacyCameraDevice.this.mDeviceCallbacks.onRepeatingRequestError(j2, i3);
                        } catch (RemoteException e2) {
                            throw new IllegalStateException("Received remote exception during onRepeatingRequestError callback: ", e2);
                        }
                    }
                });
            }

            @Override // android.hardware.camera2.legacy.CameraDeviceState.CameraDeviceStateListener
            public void onRequestQueueEmpty() {
                LegacyCameraDevice.this.mResultHandler.post(new Runnable() { // from class: android.hardware.camera2.legacy.LegacyCameraDevice.1.4
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            LegacyCameraDevice.this.mDeviceCallbacks.onRequestQueueEmpty();
                        } catch (RemoteException e2) {
                            throw new IllegalStateException("Received remote exception during onRequestQueueEmpty callback: ", e2);
                        }
                    }
                });
            }
        };
        this.mStateListener = cameraDeviceStateListener;
        this.mCameraId = i2;
        this.mDeviceCallbacks = iCameraDeviceCallbacks;
        this.TAG = String.format("CameraDevice-%d-LE", Integer.valueOf(i2));
        handlerThread.start();
        this.mResultHandler = new Handler(handlerThread.getLooper());
        handlerThread2.start();
        Handler handler = new Handler(handlerThread2.getLooper());
        this.mCallbackHandler = handler;
        cameraDeviceState.setCameraDeviceCallbacks(handler, cameraDeviceStateListener);
        this.mStaticCharacteristics = cameraCharacteristics;
        RequestThreadManager requestThreadManager = new RequestThreadManager(i2, camera, cameraCharacteristics, cameraDeviceState);
        this.mRequestThreadManager = requestThreadManager;
        requestThreadManager.start();
    }

    public static void connectSurface(Surface surface) throws LegacyExceptionUtils.BufferQueueAbandonedException {
        Preconditions.checkNotNull(surface);
        LegacyExceptionUtils.throwOnError(nativeConnectSurface(surface));
    }

    public static boolean containsSurfaceId(Surface surface, Collection<Long> collection) {
        try {
            return collection.contains(Long.valueOf(getSurfaceId(surface)));
        } catch (LegacyExceptionUtils.BufferQueueAbandonedException unused) {
            return false;
        }
    }

    public static int detectSurfaceDataspace(Surface surface) {
        Preconditions.checkNotNull(surface);
        return LegacyExceptionUtils.throwOnError(nativeDetectSurfaceDataspace(surface));
    }

    public static int detectSurfaceType(Surface surface) {
        Preconditions.checkNotNull(surface);
        int iNativeDetectSurfaceType = nativeDetectSurfaceType(surface);
        if (iNativeDetectSurfaceType >= 1 && iNativeDetectSurfaceType <= 5) {
            iNativeDetectSurfaceType = 34;
        }
        return LegacyExceptionUtils.throwOnError(iNativeDetectSurfaceType);
    }

    public static int detectSurfaceUsageFlags(Surface surface) {
        Preconditions.checkNotNull(surface);
        return nativeDetectSurfaceUsageFlags(surface);
    }

    public static void disconnectSurface(Surface surface) throws LegacyExceptionUtils.BufferQueueAbandonedException {
        if (surface == null) {
            return;
        }
        LegacyExceptionUtils.throwOnError(nativeDisconnectSurface(surface));
    }

    public static Size findClosestSize(Size size, Size[] sizeArr) {
        Size size2 = null;
        if (size != null && sizeArr != null) {
            for (Size size3 : sizeArr) {
                if (size3.equals(size)) {
                    return size;
                }
                if (size3.getWidth() <= 1920 && (size2 == null || findEuclidDistSquare(size, size3) < findEuclidDistSquare(size2, size3))) {
                    size2 = size3;
                }
            }
        }
        return size2;
    }

    public static long findEuclidDistSquare(Size size, Size size2) {
        long width = size.getWidth() - size2.getWidth();
        long height = size.getHeight() - size2.getHeight();
        return (height * height) + (width * width);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CaptureResultExtras getExtrasFromRequest(RequestHolder requestHolder) {
        return getExtrasFromRequest(requestHolder, -1, null);
    }

    public static long getSurfaceId(Surface surface) throws LegacyExceptionUtils.BufferQueueAbandonedException {
        Preconditions.checkNotNull(surface);
        try {
            return nativeGetSurfaceId(surface);
        } catch (IllegalArgumentException unused) {
            throw new LegacyExceptionUtils.BufferQueueAbandonedException();
        }
    }

    public static List<Long> getSurfaceIds(SparseArray<Surface> sparseArray) throws LegacyExceptionUtils.BufferQueueAbandonedException {
        if (sparseArray == null) {
            throw new NullPointerException("Null argument surfaces");
        }
        ArrayList arrayList = new ArrayList();
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            long surfaceId = getSurfaceId(sparseArray.valueAt(i2));
            if (surfaceId == 0) {
                throw new IllegalStateException("Configured surface had null native GraphicBufferProducer pointer!");
            }
            arrayList.add(Long.valueOf(surfaceId));
        }
        return arrayList;
    }

    public static Size getSurfaceSize(Surface surface) throws LegacyExceptionUtils.BufferQueueAbandonedException {
        Preconditions.checkNotNull(surface);
        int[] iArr = new int[2];
        LegacyExceptionUtils.throwOnError(nativeDetectSurfaceDimens(surface, iArr));
        return new Size(iArr[0], iArr[1]);
    }

    public static Size getTextureSize(SurfaceTexture surfaceTexture) throws LegacyExceptionUtils.BufferQueueAbandonedException {
        Preconditions.checkNotNull(surfaceTexture);
        int[] iArr = new int[2];
        LegacyExceptionUtils.throwOnError(nativeDetectTextureDimens(surfaceTexture, iArr));
        return new Size(iArr[0], iArr[1]);
    }

    public static boolean isFlexibleConsumer(Surface surface) {
        int iDetectSurfaceUsageFlags = detectSurfaceUsageFlags(surface);
        return (1114112 & iDetectSurfaceUsageFlags) == 0 && (iDetectSurfaceUsageFlags & 2307) != 0;
    }

    public static boolean isPreviewConsumer(Surface surface) {
        int iDetectSurfaceUsageFlags = detectSurfaceUsageFlags(surface);
        boolean z2 = (1114115 & iDetectSurfaceUsageFlags) == 0 && (iDetectSurfaceUsageFlags & GLES11.GL_CURRENT_COLOR) != 0;
        try {
            detectSurfaceType(surface);
            return z2;
        } catch (LegacyExceptionUtils.BufferQueueAbandonedException e2) {
            throw new IllegalArgumentException("Surface was abandoned", e2);
        }
    }

    public static boolean isVideoEncoderConsumer(Surface surface) {
        int iDetectSurfaceUsageFlags = detectSurfaceUsageFlags(surface);
        boolean z2 = (1050883 & iDetectSurfaceUsageFlags) == 0 && (iDetectSurfaceUsageFlags & 65536) != 0;
        try {
            detectSurfaceType(surface);
            return z2;
        } catch (LegacyExceptionUtils.BufferQueueAbandonedException e2) {
            throw new IllegalArgumentException("Surface was abandoned", e2);
        }
    }

    private static native int nativeConnectSurface(Surface surface);

    private static native int nativeDetectSurfaceDataspace(Surface surface);

    private static native int nativeDetectSurfaceDimens(Surface surface, int[] iArr);

    private static native int nativeDetectSurfaceType(Surface surface);

    private static native int nativeDetectSurfaceUsageFlags(Surface surface);

    private static native int nativeDetectTextureDimens(SurfaceTexture surfaceTexture, int[] iArr);

    private static native int nativeDisconnectSurface(Surface surface);

    public static native int nativeGetJpegFooterSize();

    private static native long nativeGetSurfaceId(Surface surface);

    private static native int nativeProduceFrame(Surface surface, byte[] bArr, int i2, int i3, int i4);

    private static native int nativeSetNextTimestamp(Surface surface, long j2);

    private static native int nativeSetScalingMode(Surface surface, int i2);

    private static native int nativeSetSurfaceDimens(Surface surface, int i2, int i3);

    private static native int nativeSetSurfaceFormat(Surface surface, int i2);

    private static native int nativeSetSurfaceOrientation(Surface surface, int i2, int i3);

    public static boolean needsConversion(Surface surface) {
        int iDetectSurfaceType = detectSurfaceType(surface);
        return iDetectSurfaceType == 35 || iDetectSurfaceType == 842094169 || iDetectSurfaceType == 17;
    }

    public static void produceFrame(Surface surface, byte[] bArr, int i2, int i3, int i4) throws LegacyExceptionUtils.BufferQueueAbandonedException {
        Preconditions.checkNotNull(surface);
        Preconditions.checkNotNull(bArr);
        Preconditions.checkArgumentPositive(i2, "width must be positive.");
        Preconditions.checkArgumentPositive(i3, "height must be positive.");
        LegacyExceptionUtils.throwOnError(nativeProduceFrame(surface, bArr, i2, i3, i4));
    }

    public static void setNextTimestamp(Surface surface, long j2) throws LegacyExceptionUtils.BufferQueueAbandonedException {
        Preconditions.checkNotNull(surface);
        LegacyExceptionUtils.throwOnError(nativeSetNextTimestamp(surface, j2));
    }

    public static void setScalingMode(Surface surface, int i2) throws LegacyExceptionUtils.BufferQueueAbandonedException {
        Preconditions.checkNotNull(surface);
        LegacyExceptionUtils.throwOnError(nativeSetScalingMode(surface, i2));
    }

    public static void setSurfaceDimens(Surface surface, int i2, int i3) throws LegacyExceptionUtils.BufferQueueAbandonedException {
        Preconditions.checkNotNull(surface);
        Preconditions.checkArgumentPositive(i2, "width must be positive.");
        Preconditions.checkArgumentPositive(i3, "height must be positive.");
        LegacyExceptionUtils.throwOnError(nativeSetSurfaceDimens(surface, i2, i3));
    }

    public static void setSurfaceFormat(Surface surface, int i2) throws LegacyExceptionUtils.BufferQueueAbandonedException {
        Preconditions.checkNotNull(surface);
        LegacyExceptionUtils.throwOnError(nativeSetSurfaceFormat(surface, i2));
    }

    public static void setSurfaceOrientation(Surface surface, int i2, int i3) throws LegacyExceptionUtils.BufferQueueAbandonedException {
        Preconditions.checkNotNull(surface);
        LegacyExceptionUtils.throwOnError(nativeSetSurfaceOrientation(surface, i2, i3));
    }

    public long cancelRequest(int i2) {
        return this.mRequestThreadManager.cancelRepeating(i2);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.mRequestThreadManager.quit();
        this.mCallbackHandlerThread.quitSafely();
        this.mResultThread.quitSafely();
        try {
            this.mCallbackHandlerThread.join();
        } catch (InterruptedException unused) {
            Log.e(this.TAG, String.format("Thread %s (%d) interrupted while quitting.", this.mCallbackHandlerThread.getName(), Long.valueOf(this.mCallbackHandlerThread.getId())));
        }
        try {
            this.mResultThread.join();
        } catch (InterruptedException unused2) {
            Log.e(this.TAG, String.format("Thread %s (%d) interrupted while quitting.", this.mResultThread.getName(), Long.valueOf(this.mResultThread.getId())));
        }
        this.mClosed = true;
    }

    public int configureOutputs(SparseArray<Surface> sparseArray) {
        boolean idle;
        ArrayList arrayList = new ArrayList();
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i2 = 0; i2 < size; i2++) {
                Surface surfaceValueAt = sparseArray.valueAt(i2);
                if (surfaceValueAt == null) {
                    Log.e(this.TAG, "configureOutputs - null outputs are not allowed");
                    return LegacyExceptionUtils.BAD_VALUE;
                }
                if (!surfaceValueAt.isValid()) {
                    Log.e(this.TAG, "configureOutputs - invalid output surfaces are not allowed");
                    return LegacyExceptionUtils.BAD_VALUE;
                }
                StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) this.mStaticCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
                try {
                    Size surfaceSize = getSurfaceSize(surfaceValueAt);
                    int iDetectSurfaceType = detectSurfaceType(surfaceValueAt);
                    boolean zIsFlexibleConsumer = isFlexibleConsumer(surfaceValueAt);
                    Size[] outputSizes = streamConfigurationMap.getOutputSizes(iDetectSurfaceType);
                    if (outputSizes == null) {
                        if (iDetectSurfaceType == 34) {
                            outputSizes = streamConfigurationMap.getOutputSizes(35);
                        } else if (iDetectSurfaceType == 33) {
                            outputSizes = streamConfigurationMap.getOutputSizes(256);
                        }
                    }
                    if (ArrayUtils.contains(outputSizes, surfaceSize)) {
                        arrayList.add(new Pair(surfaceValueAt, surfaceSize));
                    } else {
                        if (!zIsFlexibleConsumer || (surfaceSize = findClosestSize(surfaceSize, outputSizes)) == null) {
                            Log.e(this.TAG, String.format("Surface with size (w=%d, h=%d) and format 0x%x is not valid, %s", Integer.valueOf(surfaceSize.getWidth()), Integer.valueOf(surfaceSize.getHeight()), Integer.valueOf(iDetectSurfaceType), outputSizes == null ? "format is invalid." : "size not in valid set: " + Arrays.toString(outputSizes)));
                            return LegacyExceptionUtils.BAD_VALUE;
                        }
                        arrayList.add(new Pair(surfaceValueAt, surfaceSize));
                    }
                    setSurfaceDimens(surfaceValueAt, surfaceSize.getWidth(), surfaceSize.getHeight());
                } catch (LegacyExceptionUtils.BufferQueueAbandonedException e2) {
                    Log.e(this.TAG, "Surface bufferqueue is abandoned, cannot configure as output: ", e2);
                    return LegacyExceptionUtils.BAD_VALUE;
                }
            }
        }
        if (this.mDeviceState.setConfiguring()) {
            this.mRequestThreadManager.configure(arrayList);
            idle = this.mDeviceState.setIdle();
        } else {
            idle = false;
        }
        if (!idle) {
            return LegacyExceptionUtils.INVALID_OPERATION;
        }
        this.mConfiguredSurfaces = sparseArray;
        return 0;
    }

    public void finalize() throws Throwable {
        try {
            try {
                close();
            } catch (ServiceSpecificException e2) {
                Log.e(this.TAG, "Got error while trying to finalize, ignoring: " + e2.getMessage());
            }
        } finally {
            super.finalize();
        }
    }

    public long flush() {
        long jFlush = this.mRequestThreadManager.flush();
        waitUntilIdle();
        return jFlush;
    }

    public boolean isClosed() {
        return this.mClosed;
    }

    public SubmitInfo submitRequest(CaptureRequest captureRequest, boolean z2) {
        return submitRequestList(new CaptureRequest[]{captureRequest}, z2);
    }

    public SubmitInfo submitRequestList(CaptureRequest[] captureRequestArr, boolean z2) {
        if (captureRequestArr == null || captureRequestArr.length == 0) {
            Log.e(this.TAG, "submitRequestList - Empty/null requests are not allowed");
            throw new ServiceSpecificException(LegacyExceptionUtils.BAD_VALUE, "submitRequestList - Empty/null requests are not allowed");
        }
        try {
            SparseArray<Surface> sparseArray = this.mConfiguredSurfaces;
            Collection arrayList = sparseArray == null ? new ArrayList() : getSurfaceIds(sparseArray);
            for (CaptureRequest captureRequest : captureRequestArr) {
                if (captureRequest.getTargets().isEmpty()) {
                    Log.e(this.TAG, "submitRequestList - Each request must have at least one Surface target");
                    throw new ServiceSpecificException(LegacyExceptionUtils.BAD_VALUE, "submitRequestList - Each request must have at least one Surface target");
                }
                for (Surface surface : captureRequest.getTargets()) {
                    if (surface == null) {
                        Log.e(this.TAG, "submitRequestList - Null Surface targets are not allowed");
                        throw new ServiceSpecificException(LegacyExceptionUtils.BAD_VALUE, "submitRequestList - Null Surface targets are not allowed");
                    }
                    if (this.mConfiguredSurfaces == null) {
                        Log.e(this.TAG, "submitRequestList - must configure  device with valid surfaces before submitting requests");
                        throw new ServiceSpecificException(LegacyExceptionUtils.INVALID_OPERATION, "submitRequestList - must configure  device with valid surfaces before submitting requests");
                    }
                    if (!containsSurfaceId(surface, arrayList)) {
                        Log.e(this.TAG, "submitRequestList - cannot use a surface that wasn't configured");
                        throw new ServiceSpecificException(LegacyExceptionUtils.BAD_VALUE, "submitRequestList - cannot use a surface that wasn't configured");
                    }
                }
            }
            this.mIdle.close();
            return this.mRequestThreadManager.submitCaptureRequests(captureRequestArr, z2);
        } catch (LegacyExceptionUtils.BufferQueueAbandonedException unused) {
            throw new ServiceSpecificException(LegacyExceptionUtils.BAD_VALUE, "submitRequestList - configured surface is abandoned.");
        }
    }

    public void waitUntilIdle() {
        this.mIdle.block();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CaptureResultExtras getExtrasFromRequest(RequestHolder requestHolder, int i2, Object obj) {
        int iKeyAt;
        if (i2 == 5) {
            int iIndexOfValue = this.mConfiguredSurfaces.indexOfValue((Surface) obj);
            if (iIndexOfValue < 0) {
                Log.e(this.TAG, "Buffer drop error reported for unknown Surface");
                iKeyAt = -1;
            } else {
                iKeyAt = this.mConfiguredSurfaces.keyAt(iIndexOfValue);
            }
        } else {
            iKeyAt = -1;
        }
        return requestHolder == null ? new CaptureResultExtras(-1, -1, -1, -1, -1L, -1, -1) : new CaptureResultExtras(requestHolder.getRequestId(), requestHolder.getSubsequeceId(), 0, 0, requestHolder.getFrameNumber(), 1, iKeyAt);
    }

    public static List<Long> getSurfaceIds(Collection<Surface> collection) throws LegacyExceptionUtils.BufferQueueAbandonedException {
        if (collection != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<Surface> it = collection.iterator();
            while (it.hasNext()) {
                long surfaceId = getSurfaceId(it.next());
                if (surfaceId != 0) {
                    arrayList.add(Long.valueOf(surfaceId));
                } else {
                    throw new IllegalStateException("Configured surface had null native GraphicBufferProducer pointer!");
                }
            }
            return arrayList;
        }
        throw new NullPointerException("Null argument surfaces");
    }
}
