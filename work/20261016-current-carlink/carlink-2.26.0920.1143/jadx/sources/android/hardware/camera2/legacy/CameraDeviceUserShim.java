package android.hardware.camera2.legacy;

import android.hardware.Camera;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.ICameraDeviceCallbacks;
import android.hardware.camera2.ICameraDeviceUser;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.hardware.camera2.impl.CaptureResultExtras;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.utils.SubmitInfo;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceSpecificException;
import android.system.OsConstants;
import android.util.Log;
import android.util.SparseArray;
import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
public class CameraDeviceUserShim implements ICameraDeviceUser {
    private static final boolean DEBUG = false;
    private static final int OPEN_CAMERA_TIMEOUT_MS = 5000;
    private static final String TAG = "CameraDeviceUserShim";
    private final CameraCallbackThread mCameraCallbacks;
    private final CameraCharacteristics mCameraCharacteristics;
    private final CameraLooper mCameraInit;
    private final LegacyCameraDevice mLegacyDevice;
    private final Object mConfigureLock = new Object();
    private boolean mConfiguring = false;
    private final SparseArray<Surface> mSurfaces = new SparseArray<>();
    private int mSurfaceIdCounter = 0;

    public static class CameraCallbackThread implements ICameraDeviceCallbacks {
        private static final int CAMERA_ERROR = 0;
        private static final int CAMERA_IDLE = 1;
        private static final int CAPTURE_STARTED = 2;
        private static final int PREPARED = 4;
        private static final int REPEATING_REQUEST_ERROR = 5;
        private static final int REQUEST_QUEUE_EMPTY = 6;
        private static final int RESULT_RECEIVED = 3;
        private final ICameraDeviceCallbacks mCallbacks;
        private Handler mHandler;
        private final HandlerThread mHandlerThread;

        public class CallbackHandler extends Handler {
            public CallbackHandler(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                try {
                    switch (message.what) {
                        case 0:
                            CameraCallbackThread.this.mCallbacks.onDeviceError(message.arg1, (CaptureResultExtras) message.obj);
                            return;
                        case 1:
                            CameraCallbackThread.this.mCallbacks.onDeviceIdle();
                            return;
                        case 2:
                            CameraCallbackThread.this.mCallbacks.onCaptureStarted((CaptureResultExtras) message.obj, ((((long) message.arg2) & 4294967295L) << 32) | (4294967295L & ((long) message.arg1)));
                            return;
                        case 3:
                            Object[] objArr = (Object[]) message.obj;
                            CameraCallbackThread.this.mCallbacks.onResultReceived((CameraMetadataNative) objArr[0], (CaptureResultExtras) objArr[1]);
                            return;
                        case 4:
                            CameraCallbackThread.this.mCallbacks.onPrepared(message.arg1);
                            return;
                        case 5:
                            Object[] objArr2 = (Object[]) message.obj;
                            CameraCallbackThread.this.mCallbacks.onRepeatingRequestError(((Long) objArr2[0]).longValue(), ((Integer) objArr2[1]).intValue());
                            return;
                        case 6:
                            CameraCallbackThread.this.mCallbacks.onRequestQueueEmpty();
                            return;
                        default:
                            throw new IllegalArgumentException("Unknown callback message " + message.what);
                    }
                } catch (RemoteException e2) {
                    throw new IllegalStateException("Received remote exception during camera callback " + message.what, e2);
                }
            }
        }

        public CameraCallbackThread(ICameraDeviceCallbacks iCameraDeviceCallbacks) {
            this.mCallbacks = iCameraDeviceCallbacks;
            HandlerThread handlerThread = new HandlerThread("LegacyCameraCallback");
            this.mHandlerThread = handlerThread;
            handlerThread.start();
        }

        private Handler getHandler() {
            if (this.mHandler == null) {
                this.mHandler = new CallbackHandler(this.mHandlerThread.getLooper());
            }
            return this.mHandler;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        public void close() {
            this.mHandlerThread.quitSafely();
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onCaptureStarted(CaptureResultExtras captureResultExtras, long j2) {
            getHandler().sendMessage(getHandler().obtainMessage(2, (int) (j2 & 4294967295L), (int) ((j2 >> 32) & 4294967295L), captureResultExtras));
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onDeviceError(int i2, CaptureResultExtras captureResultExtras) {
            getHandler().sendMessage(getHandler().obtainMessage(0, i2, 0, captureResultExtras));
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onDeviceIdle() {
            getHandler().sendMessage(getHandler().obtainMessage(1));
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onPrepared(int i2) {
            getHandler().sendMessage(getHandler().obtainMessage(4, i2, 0));
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onRepeatingRequestError(long j2, int i2) {
            getHandler().sendMessage(getHandler().obtainMessage(5, new Object[]{Long.valueOf(j2), Integer.valueOf(i2)}));
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onRequestQueueEmpty() {
            getHandler().sendMessage(getHandler().obtainMessage(6, 0, 0));
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onResultReceived(CameraMetadataNative cameraMetadataNative, CaptureResultExtras captureResultExtras) {
            getHandler().sendMessage(getHandler().obtainMessage(3, new Object[]{cameraMetadataNative, captureResultExtras}));
        }
    }

    public static class CameraLooper implements Runnable, AutoCloseable {
        private final int mCameraId;
        private volatile int mInitErrors;
        private Looper mLooper;
        private final Thread mThread;
        private final Camera mCamera = Camera.openUninitialized();
        private final ConditionVariable mStartDone = new ConditionVariable();

        public CameraLooper(int i2) {
            this.mCameraId = i2;
            Thread thread = new Thread(this);
            this.mThread = thread;
            thread.start();
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            Looper looper = this.mLooper;
            if (looper == null) {
                return;
            }
            looper.quitSafely();
            try {
                this.mThread.join();
                this.mLooper = null;
            } catch (InterruptedException e2) {
                throw new AssertionError(e2);
            }
        }

        public Camera getCamera() {
            return this.mCamera;
        }

        @Override // java.lang.Runnable
        public void run() {
            Looper.prepare();
            this.mLooper = Looper.myLooper();
            this.mInitErrors = this.mCamera.cameraInitUnspecified(this.mCameraId);
            this.mStartDone.open();
            Looper.loop();
        }

        public int waitForOpen(int i2) {
            if (this.mStartDone.block(i2)) {
                return this.mInitErrors;
            }
            Log.e(CameraDeviceUserShim.TAG, "waitForOpen - Camera failed to open after timeout of 5000 ms");
            try {
                this.mCamera.release();
            } catch (RuntimeException e2) {
                Log.e(CameraDeviceUserShim.TAG, "connectBinderShim - Failed to release camera after timeout ", e2);
            }
            throw new ServiceSpecificException(10);
        }
    }

    public CameraDeviceUserShim(int i2, LegacyCameraDevice legacyCameraDevice, CameraCharacteristics cameraCharacteristics, CameraLooper cameraLooper, CameraCallbackThread cameraCallbackThread) {
        this.mLegacyDevice = legacyCameraDevice;
        this.mCameraCharacteristics = cameraCharacteristics;
        this.mCameraInit = cameraLooper;
        this.mCameraCallbacks = cameraCallbackThread;
    }

    public static CameraDeviceUserShim connectBinderShim(ICameraDeviceCallbacks iCameraDeviceCallbacks, int i2) {
        CameraLooper cameraLooper = new CameraLooper(i2);
        CameraCallbackThread cameraCallbackThread = new CameraCallbackThread(iCameraDeviceCallbacks);
        int iWaitForOpen = cameraLooper.waitForOpen(5000);
        Camera camera = cameraLooper.getCamera();
        LegacyExceptionUtils.throwOnServiceError(iWaitForOpen);
        camera.disableShutterSound();
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(i2, cameraInfo);
        try {
            CameraCharacteristics cameraCharacteristicsCreateCharacteristics = LegacyMetadataMapper.createCharacteristics(camera.getParameters(), cameraInfo);
            return new CameraDeviceUserShim(i2, new LegacyCameraDevice(i2, camera, cameraCharacteristicsCreateCharacteristics, cameraCallbackThread), cameraCharacteristicsCreateCharacteristics, cameraLooper, cameraCallbackThread);
        } catch (RuntimeException e2) {
            throw new ServiceSpecificException(10, "Unable to get initial parameters: " + e2.getMessage());
        }
    }

    private static int translateErrorsFromCamera1(int i2) {
        if (i2 == (-OsConstants.EACCES)) {
            return 1;
        }
        return i2;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return null;
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public void beginConfigure() {
        if (this.mLegacyDevice.isClosed()) {
            Log.e(TAG, "Cannot begin configure, device has been closed.");
            throw new ServiceSpecificException(4, "Cannot begin configure, device has been closed.");
        }
        synchronized (this.mConfigureLock) {
            if (this.mConfiguring) {
                Log.e(TAG, "Cannot begin configure, configuration change already in progress.");
                throw new ServiceSpecificException(10, "Cannot begin configure, configuration change already in progress.");
            }
            this.mConfiguring = true;
        }
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public long cancelRequest(int i2) {
        if (this.mLegacyDevice.isClosed()) {
            Log.e(TAG, "Cannot cancel request, device has been closed.");
            throw new ServiceSpecificException(4, "Cannot cancel request, device has been closed.");
        }
        synchronized (this.mConfigureLock) {
            if (this.mConfiguring) {
                Log.e(TAG, "Cannot cancel request, configuration change in progress.");
                throw new ServiceSpecificException(10, "Cannot cancel request, configuration change in progress.");
            }
        }
        return this.mLegacyDevice.cancelRequest(i2);
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public CameraMetadataNative createDefaultRequest(int i2) {
        if (this.mLegacyDevice.isClosed()) {
            Log.e(TAG, "Cannot create default request, device has been closed.");
            throw new ServiceSpecificException(4, "Cannot create default request, device has been closed.");
        }
        try {
            return LegacyMetadataMapper.createRequestTemplate(this.mCameraCharacteristics, i2);
        } catch (IllegalArgumentException unused) {
            Log.e(TAG, "createDefaultRequest - invalid templateId specified");
            throw new ServiceSpecificException(3, "createDefaultRequest - invalid templateId specified");
        }
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public int createInputStream(int i2, int i3, int i4) {
        Log.e(TAG, "Creating input stream is not supported on legacy devices");
        throw new ServiceSpecificException(10, "Creating input stream is not supported on legacy devices");
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public int createStream(OutputConfiguration outputConfiguration) {
        int i2;
        if (this.mLegacyDevice.isClosed()) {
            Log.e(TAG, "Cannot create stream, device has been closed.");
            throw new ServiceSpecificException(4, "Cannot create stream, device has been closed.");
        }
        synchronized (this.mConfigureLock) {
            if (!this.mConfiguring) {
                Log.e(TAG, "Cannot create stream, beginConfigure hasn't been called yet.");
                throw new ServiceSpecificException(10, "Cannot create stream, beginConfigure hasn't been called yet.");
            }
            if (outputConfiguration.getRotation() != 0) {
                Log.e(TAG, "Cannot create stream, stream rotation is not supported.");
                throw new ServiceSpecificException(3, "Cannot create stream, stream rotation is not supported.");
            }
            i2 = this.mSurfaceIdCounter + 1;
            this.mSurfaceIdCounter = i2;
            this.mSurfaces.put(i2, outputConfiguration.getSurface());
        }
        return i2;
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public void deleteStream(int i2) {
        if (this.mLegacyDevice.isClosed()) {
            Log.e(TAG, "Cannot delete stream, device has been closed.");
            throw new ServiceSpecificException(4, "Cannot delete stream, device has been closed.");
        }
        synchronized (this.mConfigureLock) {
            if (!this.mConfiguring) {
                Log.e(TAG, "Cannot delete stream, no configuration change in progress.");
                throw new ServiceSpecificException(10, "Cannot delete stream, no configuration change in progress.");
            }
            int iIndexOfKey = this.mSurfaces.indexOfKey(i2);
            if (iIndexOfKey < 0) {
                String str = "Cannot delete stream, stream id " + i2 + " doesn't exist.";
                Log.e(TAG, str);
                throw new ServiceSpecificException(3, str);
            }
            this.mSurfaces.removeAt(iIndexOfKey);
        }
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public void disconnect() {
        if (this.mLegacyDevice.isClosed()) {
            Log.w(TAG, "Cannot disconnect, device has already been closed.");
        }
        try {
            this.mLegacyDevice.close();
        } finally {
            this.mCameraInit.close();
            this.mCameraCallbacks.close();
        }
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public void endConfigure(int i2) {
        SparseArray<Surface> sparseArrayM32clone;
        if (this.mLegacyDevice.isClosed()) {
            Log.e(TAG, "Cannot end configure, device has been closed.");
            synchronized (this.mConfigureLock) {
                this.mConfiguring = false;
            }
            throw new ServiceSpecificException(4, "Cannot end configure, device has been closed.");
        }
        if (i2 != 0) {
            Log.e(TAG, "LEGACY devices do not support this operating mode");
            synchronized (this.mConfigureLock) {
                this.mConfiguring = false;
            }
            throw new ServiceSpecificException(3, "LEGACY devices do not support this operating mode");
        }
        synchronized (this.mConfigureLock) {
            if (!this.mConfiguring) {
                Log.e(TAG, "Cannot end configure, no configuration change in progress.");
                throw new ServiceSpecificException(10, "Cannot end configure, no configuration change in progress.");
            }
            SparseArray<Surface> sparseArray = this.mSurfaces;
            sparseArrayM32clone = sparseArray != null ? sparseArray.m32clone() : null;
            this.mConfiguring = false;
        }
        this.mLegacyDevice.configureOutputs(sparseArrayM32clone);
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public void finalizeOutputConfigurations(int i2, OutputConfiguration outputConfiguration) {
        Log.e(TAG, "Finalizing output configuration is not supported on legacy devices");
        throw new ServiceSpecificException(10, "Finalizing output configuration is not supported on legacy devices");
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public long flush() {
        if (this.mLegacyDevice.isClosed()) {
            Log.e(TAG, "Cannot flush, device has been closed.");
            throw new ServiceSpecificException(4, "Cannot flush, device has been closed.");
        }
        synchronized (this.mConfigureLock) {
            if (this.mConfiguring) {
                Log.e(TAG, "Cannot flush, configuration change in progress.");
                throw new ServiceSpecificException(10, "Cannot flush, configuration change in progress.");
            }
        }
        return this.mLegacyDevice.flush();
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public CameraMetadataNative getCameraInfo() {
        Log.e(TAG, "getCameraInfo unimplemented.");
        return null;
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public Surface getInputSurface() {
        Log.e(TAG, "Getting input surface is not supported on legacy devices");
        throw new ServiceSpecificException(10, "Getting input surface is not supported on legacy devices");
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public void prepare(int i2) {
        if (this.mLegacyDevice.isClosed()) {
            Log.e(TAG, "Cannot prepare stream, device has been closed.");
            throw new ServiceSpecificException(4, "Cannot prepare stream, device has been closed.");
        }
        this.mCameraCallbacks.onPrepared(i2);
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public void prepare2(int i2, int i3) {
        prepare(i3);
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public SubmitInfo submitRequest(CaptureRequest captureRequest, boolean z2) {
        if (this.mLegacyDevice.isClosed()) {
            Log.e(TAG, "Cannot submit request, device has been closed.");
            throw new ServiceSpecificException(4, "Cannot submit request, device has been closed.");
        }
        synchronized (this.mConfigureLock) {
            if (this.mConfiguring) {
                Log.e(TAG, "Cannot submit request, configuration change in progress.");
                throw new ServiceSpecificException(10, "Cannot submit request, configuration change in progress.");
            }
        }
        return this.mLegacyDevice.submitRequest(captureRequest, z2);
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public SubmitInfo submitRequestList(CaptureRequest[] captureRequestArr, boolean z2) {
        if (this.mLegacyDevice.isClosed()) {
            Log.e(TAG, "Cannot submit request list, device has been closed.");
            throw new ServiceSpecificException(4, "Cannot submit request list, device has been closed.");
        }
        synchronized (this.mConfigureLock) {
            if (this.mConfiguring) {
                Log.e(TAG, "Cannot submit request, configuration change in progress.");
                throw new ServiceSpecificException(10, "Cannot submit request, configuration change in progress.");
            }
        }
        return this.mLegacyDevice.submitRequestList(captureRequestArr, z2);
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public void tearDown(int i2) {
        if (this.mLegacyDevice.isClosed()) {
            Log.e(TAG, "Cannot tear down stream, device has been closed.");
            throw new ServiceSpecificException(4, "Cannot tear down stream, device has been closed.");
        }
    }

    @Override // android.hardware.camera2.ICameraDeviceUser
    public void waitUntilIdle() {
        if (this.mLegacyDevice.isClosed()) {
            Log.e(TAG, "Cannot wait until idle, device has been closed.");
            throw new ServiceSpecificException(4, "Cannot wait until idle, device has been closed.");
        }
        synchronized (this.mConfigureLock) {
            if (this.mConfiguring) {
                Log.e(TAG, "Cannot wait until idle, configuration change in progress.");
                throw new ServiceSpecificException(10, "Cannot wait until idle, configuration change in progress.");
            }
        }
        this.mLegacyDevice.waitUntilIdle();
    }
}
