package android.hardware.camera2.impl;

import android.accessibilityservice.c;
import android.app.m;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.ICameraDeviceCallbacks;
import android.hardware.camera2.ICameraDeviceUser;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.InputConfiguration;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.hardware.camera2.utils.SubmitInfo;
import android.hardware.camera2.utils.SurfaceUtils;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.os.ServiceSpecificException;
import android.util.Log;
import android.util.Range;
import android.util.Size;
import android.util.SparseArray;
import android.view.Surface;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class CameraDeviceImpl extends CameraDevice implements IBinder.DeathRecipient {
    private static final long NANO_PER_SECOND = 1000000000;
    private static final int REQUEST_ID_NONE = -1;
    private final String TAG;
    private final int mAppTargetSdkVersion;
    private final String mCameraId;
    private final CameraCharacteristics mCharacteristics;
    private CameraCaptureSessionCore mCurrentSession;
    private final CameraDevice.StateCallback mDeviceCallback;
    private final Handler mDeviceHandler;
    protected ICameraDeviceUserWrapper mRemoteDevice;
    private volatile StateCallbackKK mSessionStateCallback;
    private final int mTotalPartialCount;
    private final boolean DEBUG = false;
    final Object mInterfaceLock = new Object();
    private final CameraDeviceCallbacks mCallbacks = new CameraDeviceCallbacks();
    private final AtomicBoolean mClosing = new AtomicBoolean();
    private boolean mInError = false;
    private boolean mIdle = true;
    private final SparseArray<CaptureCallbackHolder> mCaptureCallbackMap = new SparseArray<>();
    private int mRepeatingRequestId = -1;
    private AbstractMap.SimpleEntry<Integer, InputConfiguration> mConfiguredInput = new AbstractMap.SimpleEntry<>(-1, null);
    private final SparseArray<OutputConfiguration> mConfiguredOutputs = new SparseArray<>();
    private final List<RequestLastFrameNumbersHolder> mRequestLastFrameNumbersList = new ArrayList();
    private final FrameNumberTracker mFrameNumberTracker = new FrameNumberTracker();
    private int mNextSessionId = 0;
    private final Runnable mCallOnOpened = new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (CameraDeviceImpl.this.mInterfaceLock) {
                CameraDeviceImpl cameraDeviceImpl = CameraDeviceImpl.this;
                if (cameraDeviceImpl.mRemoteDevice == null) {
                    return;
                }
                StateCallbackKK stateCallbackKK = cameraDeviceImpl.mSessionStateCallback;
                if (stateCallbackKK != null) {
                    stateCallbackKK.onOpened(CameraDeviceImpl.this);
                }
                CameraDeviceImpl.this.mDeviceCallback.onOpened(CameraDeviceImpl.this);
            }
        }
    };
    private final Runnable mCallOnUnconfigured = new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.2
        @Override // java.lang.Runnable
        public void run() {
            synchronized (CameraDeviceImpl.this.mInterfaceLock) {
                CameraDeviceImpl cameraDeviceImpl = CameraDeviceImpl.this;
                if (cameraDeviceImpl.mRemoteDevice == null) {
                    return;
                }
                StateCallbackKK stateCallbackKK = cameraDeviceImpl.mSessionStateCallback;
                if (stateCallbackKK != null) {
                    stateCallbackKK.onUnconfigured(CameraDeviceImpl.this);
                }
            }
        }
    };
    private final Runnable mCallOnActive = new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.3
        @Override // java.lang.Runnable
        public void run() {
            synchronized (CameraDeviceImpl.this.mInterfaceLock) {
                CameraDeviceImpl cameraDeviceImpl = CameraDeviceImpl.this;
                if (cameraDeviceImpl.mRemoteDevice == null) {
                    return;
                }
                StateCallbackKK stateCallbackKK = cameraDeviceImpl.mSessionStateCallback;
                if (stateCallbackKK != null) {
                    stateCallbackKK.onActive(CameraDeviceImpl.this);
                }
            }
        }
    };
    private final Runnable mCallOnBusy = new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.4
        @Override // java.lang.Runnable
        public void run() {
            synchronized (CameraDeviceImpl.this.mInterfaceLock) {
                CameraDeviceImpl cameraDeviceImpl = CameraDeviceImpl.this;
                if (cameraDeviceImpl.mRemoteDevice == null) {
                    return;
                }
                StateCallbackKK stateCallbackKK = cameraDeviceImpl.mSessionStateCallback;
                if (stateCallbackKK != null) {
                    stateCallbackKK.onBusy(CameraDeviceImpl.this);
                }
            }
        }
    };
    private final Runnable mCallOnClosed = new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.5
        private boolean mClosedOnce = false;

        @Override // java.lang.Runnable
        public void run() {
            StateCallbackKK stateCallbackKK;
            if (this.mClosedOnce) {
                throw new AssertionError("Don't post #onClosed more than once");
            }
            synchronized (CameraDeviceImpl.this.mInterfaceLock) {
                stateCallbackKK = CameraDeviceImpl.this.mSessionStateCallback;
            }
            if (stateCallbackKK != null) {
                stateCallbackKK.onClosed(CameraDeviceImpl.this);
            }
            CameraDeviceImpl.this.mDeviceCallback.onClosed(CameraDeviceImpl.this);
            this.mClosedOnce = true;
        }
    };
    private final Runnable mCallOnIdle = new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.6
        @Override // java.lang.Runnable
        public void run() {
            synchronized (CameraDeviceImpl.this.mInterfaceLock) {
                CameraDeviceImpl cameraDeviceImpl = CameraDeviceImpl.this;
                if (cameraDeviceImpl.mRemoteDevice == null) {
                    return;
                }
                StateCallbackKK stateCallbackKK = cameraDeviceImpl.mSessionStateCallback;
                if (stateCallbackKK != null) {
                    stateCallbackKK.onIdle(CameraDeviceImpl.this);
                }
            }
        }
    };
    private final Runnable mCallOnDisconnected = new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.7
        @Override // java.lang.Runnable
        public void run() {
            synchronized (CameraDeviceImpl.this.mInterfaceLock) {
                CameraDeviceImpl cameraDeviceImpl = CameraDeviceImpl.this;
                if (cameraDeviceImpl.mRemoteDevice == null) {
                    return;
                }
                StateCallbackKK stateCallbackKK = cameraDeviceImpl.mSessionStateCallback;
                if (stateCallbackKK != null) {
                    stateCallbackKK.onDisconnected(CameraDeviceImpl.this);
                }
                CameraDeviceImpl.this.mDeviceCallback.onDisconnected(CameraDeviceImpl.this);
            }
        }
    };

    public class CameraDeviceCallbacks extends ICameraDeviceCallbacks.Stub {
        public CameraDeviceCallbacks() {
        }

        private void onCaptureErrorLocked(int i2, CaptureResultExtras captureResultExtras) {
            int requestId = captureResultExtras.getRequestId();
            int subsequenceId = captureResultExtras.getSubsequenceId();
            final long frameNumber = captureResultExtras.getFrameNumber();
            final CaptureCallbackHolder captureCallbackHolder = (CaptureCallbackHolder) CameraDeviceImpl.this.mCaptureCallbackMap.get(requestId);
            final CaptureRequest request = captureCallbackHolder.getRequest(subsequenceId);
            if (i2 == 5) {
                for (final Surface surface : ((OutputConfiguration) CameraDeviceImpl.this.mConfiguredOutputs.get(captureResultExtras.getErrorStreamId())).getSurfaces()) {
                    if (request.containsTarget(surface)) {
                        captureCallbackHolder.getHandler().post(new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.CameraDeviceCallbacks.5
                            @Override // java.lang.Runnable
                            public void run() {
                                if (CameraDeviceImpl.this.isClosed()) {
                                    return;
                                }
                                captureCallbackHolder.getCallback().onCaptureBufferLost(CameraDeviceImpl.this, request, surface, frameNumber);
                            }
                        });
                    }
                }
                return;
            }
            int i3 = 0;
            boolean z2 = i2 == 4;
            if (CameraDeviceImpl.this.mCurrentSession != null && CameraDeviceImpl.this.mCurrentSession.isAborting()) {
                i3 = 1;
            }
            final CaptureFailure captureFailure = new CaptureFailure(request, i3, z2, requestId, frameNumber);
            Runnable runnable = new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.CameraDeviceCallbacks.6
                @Override // java.lang.Runnable
                public void run() {
                    if (CameraDeviceImpl.this.isClosed()) {
                        return;
                    }
                    captureCallbackHolder.getCallback().onCaptureFailed(CameraDeviceImpl.this, request, captureFailure);
                }
            };
            CameraDeviceImpl.this.mFrameNumberTracker.updateTracker(frameNumber, true, request.isReprocess());
            CameraDeviceImpl.this.checkAndFireSequenceComplete();
            captureCallbackHolder.getHandler().post(runnable);
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks.Stub, android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onCaptureStarted(final CaptureResultExtras captureResultExtras, final long j2) {
            int requestId = captureResultExtras.getRequestId();
            final long frameNumber = captureResultExtras.getFrameNumber();
            synchronized (CameraDeviceImpl.this.mInterfaceLock) {
                CameraDeviceImpl cameraDeviceImpl = CameraDeviceImpl.this;
                if (cameraDeviceImpl.mRemoteDevice == null) {
                    return;
                }
                final CaptureCallbackHolder captureCallbackHolder = (CaptureCallbackHolder) cameraDeviceImpl.mCaptureCallbackMap.get(requestId);
                if (captureCallbackHolder == null) {
                    return;
                }
                if (CameraDeviceImpl.this.isClosed()) {
                    return;
                }
                captureCallbackHolder.getHandler().post(new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.CameraDeviceCallbacks.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CameraDeviceImpl.this.isClosed()) {
                            return;
                        }
                        int subsequenceId = captureResultExtras.getSubsequenceId();
                        CaptureRequest request = captureCallbackHolder.getRequest(subsequenceId);
                        if (!captureCallbackHolder.hasBatchedOutputs()) {
                            captureCallbackHolder.getCallback().onCaptureStarted(CameraDeviceImpl.this, captureCallbackHolder.getRequest(captureResultExtras.getSubsequenceId()), j2, frameNumber);
                            return;
                        }
                        Range range = (Range) request.get(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE);
                        for (int i2 = 0; i2 < captureCallbackHolder.getRequestCount(); i2++) {
                            long j3 = subsequenceId - i2;
                            captureCallbackHolder.getCallback().onCaptureStarted(CameraDeviceImpl.this, captureCallbackHolder.getRequest(i2), j2 - ((1000000000 * j3) / ((long) ((Integer) range.getUpper()).intValue())), frameNumber - j3);
                        }
                    }
                });
            }
        }

        /* JADX WARN: Code duplicated, block: B:21:0x003f  */
        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onDeviceError(int i2, CaptureResultExtras captureResultExtras) {
            synchronized (CameraDeviceImpl.this.mInterfaceLock) {
                CameraDeviceImpl cameraDeviceImpl = CameraDeviceImpl.this;
                if (cameraDeviceImpl.mRemoteDevice == null) {
                    return;
                }
                if (i2 != 0) {
                    if (i2 == 1 || i2 == 2) {
                        CameraDeviceImpl.this.mInError = true;
                        final int i3 = i2 == 1 ? 4 : 5;
                        CameraDeviceImpl.this.mDeviceHandler.post(new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.CameraDeviceCallbacks.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (CameraDeviceImpl.this.isClosed()) {
                                    return;
                                }
                                CameraDeviceImpl.this.mDeviceCallback.onError(CameraDeviceImpl.this, i3);
                            }
                        });
                    } else if (i2 == 3 || i2 == 4 || i2 == 5) {
                        onCaptureErrorLocked(i2, captureResultExtras);
                    } else {
                        Log.e(cameraDeviceImpl.TAG, "Unknown error from camera device: " + i2);
                        CameraDeviceImpl.this.mInError = true;
                        if (i2 == 1) {
                        }
                        CameraDeviceImpl.this.mDeviceHandler.post(new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.CameraDeviceCallbacks.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (CameraDeviceImpl.this.isClosed()) {
                                    return;
                                }
                                CameraDeviceImpl.this.mDeviceCallback.onError(CameraDeviceImpl.this, i3);
                            }
                        });
                    }
                } else {
                    cameraDeviceImpl.mDeviceHandler.post(CameraDeviceImpl.this.mCallOnDisconnected);
                }
            }
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onDeviceIdle() {
            synchronized (CameraDeviceImpl.this.mInterfaceLock) {
                CameraDeviceImpl cameraDeviceImpl = CameraDeviceImpl.this;
                if (cameraDeviceImpl.mRemoteDevice == null) {
                    return;
                }
                if (!cameraDeviceImpl.mIdle) {
                    CameraDeviceImpl.this.mDeviceHandler.post(CameraDeviceImpl.this.mCallOnIdle);
                }
                CameraDeviceImpl.this.mIdle = true;
            }
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onPrepared(int i2) {
            OutputConfiguration outputConfiguration;
            StateCallbackKK stateCallbackKK;
            synchronized (CameraDeviceImpl.this.mInterfaceLock) {
                outputConfiguration = (OutputConfiguration) CameraDeviceImpl.this.mConfiguredOutputs.get(i2);
                stateCallbackKK = CameraDeviceImpl.this.mSessionStateCallback;
            }
            if (stateCallbackKK == null) {
                return;
            }
            if (outputConfiguration == null) {
                Log.w(CameraDeviceImpl.this.TAG, "onPrepared invoked for unknown output Surface");
                return;
            }
            Iterator<Surface> it = outputConfiguration.getSurfaces().iterator();
            while (it.hasNext()) {
                stateCallbackKK.onSurfacePrepared(it.next());
            }
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onRepeatingRequestError(long j2, int i2) {
            synchronized (CameraDeviceImpl.this.mInterfaceLock) {
                CameraDeviceImpl cameraDeviceImpl = CameraDeviceImpl.this;
                if (cameraDeviceImpl.mRemoteDevice != null && cameraDeviceImpl.mRepeatingRequestId != -1) {
                    CameraDeviceImpl cameraDeviceImpl2 = CameraDeviceImpl.this;
                    cameraDeviceImpl2.checkEarlyTriggerSequenceComplete(cameraDeviceImpl2.mRepeatingRequestId, j2);
                    if (CameraDeviceImpl.this.mRepeatingRequestId == i2) {
                        CameraDeviceImpl.this.mRepeatingRequestId = -1;
                    }
                }
            }
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onRequestQueueEmpty() {
            StateCallbackKK stateCallbackKK;
            synchronized (CameraDeviceImpl.this.mInterfaceLock) {
                stateCallbackKK = CameraDeviceImpl.this.mSessionStateCallback;
            }
            if (stateCallbackKK == null) {
                return;
            }
            stateCallbackKK.onRequestQueueEmpty();
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onResultReceived(CameraMetadataNative cameraMetadataNative, final CaptureResultExtras captureResultExtras) throws Throwable {
            Runnable runnable;
            CaptureResult captureResult;
            int requestId = captureResultExtras.getRequestId();
            long frameNumber = captureResultExtras.getFrameNumber();
            synchronized (CameraDeviceImpl.this.mInterfaceLock) {
                try {
                    try {
                        CameraDeviceImpl cameraDeviceImpl = CameraDeviceImpl.this;
                        if (cameraDeviceImpl.mRemoteDevice == null) {
                            return;
                        }
                        CameraCharacteristics.Key<Size> key = CameraCharacteristics.LENS_INFO_SHADING_MAP_SIZE;
                        cameraMetadataNative.set(key, cameraDeviceImpl.getCharacteristics().get(key));
                        final CaptureCallbackHolder captureCallbackHolder = (CaptureCallbackHolder) CameraDeviceImpl.this.mCaptureCallbackMap.get(requestId);
                        final CaptureRequest request = captureCallbackHolder.getRequest(captureResultExtras.getSubsequenceId());
                        boolean z2 = captureResultExtras.getPartialResultCount() < CameraDeviceImpl.this.mTotalPartialCount;
                        boolean zIsReprocess = request.isReprocess();
                        if (CameraDeviceImpl.this.isClosed()) {
                            CameraDeviceImpl.this.mFrameNumberTracker.updateTracker(frameNumber, null, z2, zIsReprocess);
                            return;
                        }
                        final CameraMetadataNative cameraMetadataNative2 = captureCallbackHolder.hasBatchedOutputs() ? new CameraMetadataNative(cameraMetadataNative) : null;
                        if (z2) {
                            final CaptureResult captureResult2 = new CaptureResult(cameraMetadataNative, request, captureResultExtras);
                            runnable = new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.CameraDeviceCallbacks.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (CameraDeviceImpl.this.isClosed()) {
                                        return;
                                    }
                                    if (!captureCallbackHolder.hasBatchedOutputs()) {
                                        captureCallbackHolder.getCallback().onCaptureProgressed(CameraDeviceImpl.this, request, captureResult2);
                                        return;
                                    }
                                    for (int i2 = 0; i2 < captureCallbackHolder.getRequestCount(); i2++) {
                                        captureCallbackHolder.getCallback().onCaptureProgressed(CameraDeviceImpl.this, captureCallbackHolder.getRequest(i2), new CaptureResult(new CameraMetadataNative(cameraMetadataNative2), captureCallbackHolder.getRequest(i2), captureResultExtras));
                                    }
                                }
                            };
                            captureResult = captureResult2;
                        } else {
                            final List<CaptureResult> listPopPartialResults = CameraDeviceImpl.this.mFrameNumberTracker.popPartialResults(frameNumber);
                            final long jLongValue = ((Long) cameraMetadataNative.get(CaptureResult.SENSOR_TIMESTAMP)).longValue();
                            final Range range = (Range) request.get(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE);
                            final int subsequenceId = captureResultExtras.getSubsequenceId();
                            final TotalCaptureResult totalCaptureResult = new TotalCaptureResult(cameraMetadataNative, request, captureResultExtras, listPopPartialResults, captureCallbackHolder.getSessionId());
                            runnable = new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.CameraDeviceCallbacks.4
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (CameraDeviceImpl.this.isClosed()) {
                                        return;
                                    }
                                    if (!captureCallbackHolder.hasBatchedOutputs()) {
                                        captureCallbackHolder.getCallback().onCaptureCompleted(CameraDeviceImpl.this, request, totalCaptureResult);
                                        return;
                                    }
                                    for (int i2 = 0; i2 < captureCallbackHolder.getRequestCount(); i2++) {
                                        cameraMetadataNative2.set(CaptureResult.SENSOR_TIMESTAMP, Long.valueOf(jLongValue - ((((long) (subsequenceId - i2)) * 1000000000) / ((long) ((Integer) range.getUpper()).intValue()))));
                                        captureCallbackHolder.getCallback().onCaptureCompleted(CameraDeviceImpl.this, captureCallbackHolder.getRequest(i2), new TotalCaptureResult(new CameraMetadataNative(cameraMetadataNative2), captureCallbackHolder.getRequest(i2), captureResultExtras, listPopPartialResults, captureCallbackHolder.getSessionId()));
                                    }
                                }
                            };
                            captureResult = totalCaptureResult;
                        }
                        captureCallbackHolder.getHandler().post(runnable);
                        CameraDeviceImpl.this.mFrameNumberTracker.updateTracker(frameNumber, captureResult, z2, zIsReprocess);
                        if (!z2) {
                            CameraDeviceImpl.this.checkAndFireSequenceComplete();
                        }
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
    }

    public interface CaptureCallback {
        public static final int NO_FRAMES_CAPTURED = -1;

        void onCaptureBufferLost(CameraDevice cameraDevice, CaptureRequest captureRequest, Surface surface, long j2);

        void onCaptureCompleted(CameraDevice cameraDevice, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult);

        void onCaptureFailed(CameraDevice cameraDevice, CaptureRequest captureRequest, CaptureFailure captureFailure);

        void onCapturePartial(CameraDevice cameraDevice, CaptureRequest captureRequest, CaptureResult captureResult);

        void onCaptureProgressed(CameraDevice cameraDevice, CaptureRequest captureRequest, CaptureResult captureResult);

        void onCaptureSequenceAborted(CameraDevice cameraDevice, int i2);

        void onCaptureSequenceCompleted(CameraDevice cameraDevice, int i2, long j2);

        void onCaptureStarted(CameraDevice cameraDevice, CaptureRequest captureRequest, long j2, long j3);
    }

    public static abstract class StateCallbackKK extends CameraDevice.StateCallback {
        public void onActive(CameraDevice cameraDevice) {
        }

        public void onBusy(CameraDevice cameraDevice) {
        }

        public void onIdle(CameraDevice cameraDevice) {
        }

        public void onRequestQueueEmpty() {
        }

        public void onSurfacePrepared(Surface surface) {
        }

        public void onUnconfigured(CameraDevice cameraDevice) {
        }
    }

    public CameraDeviceImpl(String str, CameraDevice.StateCallback stateCallback, Handler handler, CameraCharacteristics cameraCharacteristics, int i2) {
        if (str == null || stateCallback == null || handler == null || cameraCharacteristics == null) {
            throw new IllegalArgumentException("Null argument given");
        }
        this.mCameraId = str;
        this.mDeviceCallback = stateCallback;
        this.mDeviceHandler = handler;
        this.mCharacteristics = cameraCharacteristics;
        this.mAppTargetSdkVersion = i2;
        String str2 = String.format("CameraDevice-JV-%s", str);
        this.TAG = str2.length() > 23 ? str2.substring(0, 23) : str2;
        Integer num = (Integer) cameraCharacteristics.get(CameraCharacteristics.REQUEST_PARTIAL_RESULT_COUNT);
        if (num == null) {
            this.mTotalPartialCount = 1;
        } else {
            this.mTotalPartialCount = num.intValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:22:0x005d  */
    public void checkAndFireSequenceComplete() {
        final CaptureCallbackHolder captureCallbackHolderValueAt;
        boolean z2;
        long completedFrameNumber = this.mFrameNumberTracker.getCompletedFrameNumber();
        long completedReprocessFrameNumber = this.mFrameNumberTracker.getCompletedReprocessFrameNumber();
        Iterator<RequestLastFrameNumbersHolder> it = this.mRequestLastFrameNumbersList.iterator();
        while (it.hasNext()) {
            final RequestLastFrameNumbersHolder next = it.next();
            final int requestId = next.getRequestId();
            synchronized (this.mInterfaceLock) {
                if (this.mRemoteDevice == null) {
                    Log.w(this.TAG, "Camera closed while checking sequences");
                    return;
                }
                int iIndexOfKey = this.mCaptureCallbackMap.indexOfKey(requestId);
                captureCallbackHolderValueAt = iIndexOfKey >= 0 ? this.mCaptureCallbackMap.valueAt(iIndexOfKey) : null;
                if (captureCallbackHolderValueAt != null) {
                    long lastRegularFrameNumber = next.getLastRegularFrameNumber();
                    long lastReprocessFrameNumber = next.getLastReprocessFrameNumber();
                    if (lastRegularFrameNumber > completedFrameNumber || lastReprocessFrameNumber > completedReprocessFrameNumber) {
                        z2 = false;
                    } else {
                        this.mCaptureCallbackMap.removeAt(iIndexOfKey);
                        z2 = true;
                    }
                } else {
                    z2 = false;
                }
            }
            if (captureCallbackHolderValueAt == null || z2) {
                it.remove();
            }
            if (z2) {
                captureCallbackHolderValueAt.getHandler().post(new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.10
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CameraDeviceImpl.this.isClosed()) {
                            return;
                        }
                        captureCallbackHolderValueAt.getCallback().onCaptureSequenceCompleted(CameraDeviceImpl.this, requestId, next.getLastFrameNumber());
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkEarlyTriggerSequenceComplete(final int i2, long j2) {
        if (j2 != -1) {
            this.mRequestLastFrameNumbersList.add(new RequestLastFrameNumbersHolder(i2, j2));
            checkAndFireSequenceComplete();
            return;
        }
        int iIndexOfKey = this.mCaptureCallbackMap.indexOfKey(i2);
        final CaptureCallbackHolder captureCallbackHolderValueAt = iIndexOfKey >= 0 ? this.mCaptureCallbackMap.valueAt(iIndexOfKey) : null;
        if (captureCallbackHolderValueAt != null) {
            this.mCaptureCallbackMap.removeAt(iIndexOfKey);
        }
        if (captureCallbackHolderValueAt != null) {
            captureCallbackHolderValueAt.getHandler().post(new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.9
                @Override // java.lang.Runnable
                public void run() {
                    if (CameraDeviceImpl.this.isClosed()) {
                        return;
                    }
                    captureCallbackHolderValueAt.getCallback().onCaptureSequenceAborted(CameraDeviceImpl.this, i2);
                }
            });
        } else {
            Log.w(this.TAG, String.format("did not register callback to request %d", Integer.valueOf(i2)));
        }
    }

    public static Handler checkHandler(Handler handler) {
        if (handler != null) {
            return handler;
        }
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            return new Handler(looperMyLooper);
        }
        throw new IllegalArgumentException("No handler given, and current thread has no looper!");
    }

    private void checkIfCameraClosedOrInError() throws CameraAccessException {
        if (this.mRemoteDevice == null) {
            throw new IllegalStateException("CameraDevice was already closed");
        }
        if (this.mInError) {
            throw new CameraAccessException(3, "The camera device has encountered a serious error");
        }
    }

    private void checkInputConfiguration(InputConfiguration inputConfiguration) {
        if (inputConfiguration != null) {
            StreamConfigurationMap streamConfigurationMap = (StreamConfigurationMap) this.mCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP);
            boolean z2 = false;
            for (int i2 : streamConfigurationMap.getInputFormats()) {
                if (i2 == inputConfiguration.getFormat()) {
                    z2 = true;
                }
            }
            if (!z2) {
                throw new IllegalArgumentException("input format " + inputConfiguration.getFormat() + " is not valid");
            }
            boolean z3 = false;
            for (Size size : streamConfigurationMap.getInputSizes(inputConfiguration.getFormat())) {
                if (inputConfiguration.getWidth() == size.getWidth() && inputConfiguration.getHeight() == size.getHeight()) {
                    z3 = true;
                }
            }
            if (z3) {
                return;
            }
            throw new IllegalArgumentException("input size " + inputConfiguration.getWidth() + "x" + inputConfiguration.getHeight() + " is not valid");
        }
    }

    private void createCaptureSessionInternal(InputConfiguration inputConfiguration, List<OutputConfiguration> list, CameraCaptureSession.StateCallback stateCallback, Handler handler, int i2) {
        boolean z2;
        Surface inputSurface;
        CameraCaptureSessionCore cameraCaptureSessionImpl;
        synchronized (this.mInterfaceLock) {
            checkIfCameraClosedOrInError();
            boolean z3 = i2 == 1;
            if (z3 && inputConfiguration != null) {
                throw new IllegalArgumentException("Constrained high speed session doesn't support input configuration yet.");
            }
            CameraCaptureSessionCore cameraCaptureSessionCore = this.mCurrentSession;
            if (cameraCaptureSessionCore != null) {
                cameraCaptureSessionCore.replaceSessionClose();
            }
            try {
                boolean zConfigureStreamsChecked = configureStreamsChecked(inputConfiguration, list, i2);
                inputSurface = (!zConfigureStreamsChecked || inputConfiguration == null) ? null : this.mRemoteDevice.getInputSurface();
                z2 = zConfigureStreamsChecked;
                e = null;
            } catch (CameraAccessException e2) {
                e = e2;
                z2 = false;
                inputSurface = null;
            }
            if (z3) {
                int i3 = this.mNextSessionId;
                this.mNextSessionId = i3 + 1;
                cameraCaptureSessionImpl = new CameraConstrainedHighSpeedCaptureSessionImpl(i3, stateCallback, handler, this, this.mDeviceHandler, z2, this.mCharacteristics);
            } else {
                int i4 = this.mNextSessionId;
                this.mNextSessionId = i4 + 1;
                cameraCaptureSessionImpl = new CameraCaptureSessionImpl(i4, inputSurface, stateCallback, handler, this, this.mDeviceHandler, z2);
            }
            this.mCurrentSession = cameraCaptureSessionImpl;
            if (e != null) {
                throw e;
            }
            this.mSessionStateCallback = cameraCaptureSessionImpl.getDeviceStateCallback();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CameraCharacteristics getCharacteristics() {
        return this.mCharacteristics;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isClosed() {
        return this.mClosing.get();
    }

    private void overrideEnableZsl(CameraMetadataNative cameraMetadataNative, boolean z2) {
        CaptureRequest.Key<Boolean> key = CaptureRequest.CONTROL_ENABLE_ZSL;
        if (((Boolean) cameraMetadataNative.get(key)) == null) {
            return;
        }
        cameraMetadataNative.set(key, Boolean.valueOf(z2));
    }

    private int submitCaptureRequest(List<CaptureRequest> list, CaptureCallback captureCallback, Handler handler, boolean z2) {
        int requestId;
        Handler handlerCheckHandler = checkHandler(handler, captureCallback);
        for (CaptureRequest captureRequest : list) {
            if (captureRequest.getTargets().isEmpty()) {
                throw new IllegalArgumentException("Each request must have at least one Surface target");
            }
            Iterator<Surface> it = captureRequest.getTargets().iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new IllegalArgumentException("Null Surface targets are not allowed");
                }
            }
        }
        synchronized (this.mInterfaceLock) {
            checkIfCameraClosedOrInError();
            if (z2) {
                stopRepeating();
            }
            SubmitInfo submitInfoSubmitRequestList = this.mRemoteDevice.submitRequestList((CaptureRequest[]) list.toArray(new CaptureRequest[list.size()]), z2);
            if (captureCallback != null) {
                this.mCaptureCallbackMap.put(submitInfoSubmitRequestList.getRequestId(), new CaptureCallbackHolder(captureCallback, list, handlerCheckHandler, z2, this.mNextSessionId - 1));
            }
            if (z2) {
                int i2 = this.mRepeatingRequestId;
                if (i2 != -1) {
                    checkEarlyTriggerSequenceComplete(i2, submitInfoSubmitRequestList.getLastFrameNumber());
                }
                this.mRepeatingRequestId = submitInfoSubmitRequestList.getRequestId();
            } else {
                this.mRequestLastFrameNumbersList.add(new RequestLastFrameNumbersHolder(list, submitInfoSubmitRequestList));
            }
            if (this.mIdle) {
                this.mDeviceHandler.post(this.mCallOnActive);
            }
            this.mIdle = false;
            requestId = submitInfoSubmitRequestList.getRequestId();
        }
        return requestId;
    }

    private void waitUntilIdle() {
        synchronized (this.mInterfaceLock) {
            checkIfCameraClosedOrInError();
            if (this.mRepeatingRequestId != -1) {
                throw new IllegalStateException("Active repeating request ongoing");
            }
            this.mRemoteDevice.waitUntilIdle();
        }
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
        Log.w(this.TAG, "CameraDevice " + this.mCameraId + " died unexpectedly");
        if (this.mRemoteDevice == null) {
            return;
        }
        this.mInError = true;
        this.mDeviceHandler.post(new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.11
            @Override // java.lang.Runnable
            public void run() {
                if (CameraDeviceImpl.this.isClosed()) {
                    return;
                }
                CameraDeviceImpl.this.mDeviceCallback.onError(CameraDeviceImpl.this, 5);
            }
        });
    }

    public int capture(CaptureRequest captureRequest, CaptureCallback captureCallback, Handler handler) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(captureRequest);
        return submitCaptureRequest(arrayList, captureCallback, handler, false);
    }

    public int captureBurst(List<CaptureRequest> list, CaptureCallback captureCallback, Handler handler) {
        if (list == null || list.isEmpty()) {
            throw new IllegalArgumentException("At least one request must be given");
        }
        return submitCaptureRequest(list, captureCallback, handler, false);
    }

    @Override // android.hardware.camera2.CameraDevice, java.lang.AutoCloseable
    public void close() {
        synchronized (this.mInterfaceLock) {
            if (this.mClosing.getAndSet(true)) {
                return;
            }
            ICameraDeviceUserWrapper iCameraDeviceUserWrapper = this.mRemoteDevice;
            if (iCameraDeviceUserWrapper != null) {
                iCameraDeviceUserWrapper.disconnect();
                this.mRemoteDevice.unlinkToDeath(this, 0);
            }
            if (this.mRemoteDevice != null || this.mInError) {
                this.mDeviceHandler.post(this.mCallOnClosed);
            }
            this.mRemoteDevice = null;
        }
    }

    public void configureOutputs(List<Surface> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Surface> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new OutputConfiguration(it.next()));
        }
        configureStreamsChecked(null, arrayList, 0);
    }

    public boolean configureStreamsChecked(InputConfiguration inputConfiguration, List<OutputConfiguration> list, int i2) {
        if (list == null) {
            list = new ArrayList<>();
        }
        if (list.size() == 0 && inputConfiguration != null) {
            throw new IllegalArgumentException("cannot configure an input stream without any output streams");
        }
        checkInputConfiguration(inputConfiguration);
        synchronized (this.mInterfaceLock) {
            checkIfCameraClosedOrInError();
            HashSet hashSet = new HashSet(list);
            ArrayList<Integer> arrayList = new ArrayList();
            for (int i3 = 0; i3 < this.mConfiguredOutputs.size(); i3++) {
                int iKeyAt = this.mConfiguredOutputs.keyAt(i3);
                OutputConfiguration outputConfigurationValueAt = this.mConfiguredOutputs.valueAt(i3);
                if (!list.contains(outputConfigurationValueAt) || outputConfigurationValueAt.isDeferredConfiguration()) {
                    arrayList.add(Integer.valueOf(iKeyAt));
                } else {
                    hashSet.remove(outputConfigurationValueAt);
                }
            }
            this.mDeviceHandler.post(this.mCallOnBusy);
            stopRepeating();
            try {
                try {
                    try {
                        waitUntilIdle();
                        this.mRemoteDevice.beginConfigure();
                        InputConfiguration value = this.mConfiguredInput.getValue();
                        if (inputConfiguration != value && (inputConfiguration == null || !inputConfiguration.equals(value))) {
                            if (value != null) {
                                this.mRemoteDevice.deleteStream(this.mConfiguredInput.getKey().intValue());
                                this.mConfiguredInput = new AbstractMap.SimpleEntry<>(-1, null);
                            }
                            if (inputConfiguration != null) {
                                this.mConfiguredInput = new AbstractMap.SimpleEntry<>(Integer.valueOf(this.mRemoteDevice.createInputStream(inputConfiguration.getWidth(), inputConfiguration.getHeight(), inputConfiguration.getFormat())), inputConfiguration);
                            }
                        }
                        for (Integer num : arrayList) {
                            this.mRemoteDevice.deleteStream(num.intValue());
                            this.mConfiguredOutputs.delete(num.intValue());
                        }
                        for (OutputConfiguration outputConfiguration : list) {
                            if (hashSet.contains(outputConfiguration)) {
                                this.mConfiguredOutputs.put(this.mRemoteDevice.createStream(outputConfiguration), outputConfiguration);
                            }
                        }
                        this.mRemoteDevice.endConfigure(i2);
                        if (list.size() > 0) {
                            this.mDeviceHandler.post(this.mCallOnIdle);
                        } else {
                            this.mDeviceHandler.post(this.mCallOnUnconfigured);
                        }
                    } catch (Throwable th) {
                        this.mDeviceHandler.post(this.mCallOnUnconfigured);
                        throw th;
                    }
                } catch (IllegalArgumentException e2) {
                    Log.w(this.TAG, "Stream configuration failed due to: " + e2.getMessage());
                    this.mDeviceHandler.post(this.mCallOnUnconfigured);
                    return false;
                }
            } catch (CameraAccessException e3) {
                if (e3.getReason() == 4) {
                    throw new IllegalStateException("The camera is currently busy. You must wait until the previous operation completes.", e3);
                }
                throw e3;
            }
        }
        return true;
    }

    @Override // android.hardware.camera2.CameraDevice
    public CaptureRequest.Builder createCaptureRequest(int i2) {
        CaptureRequest.Builder builder;
        synchronized (this.mInterfaceLock) {
            checkIfCameraClosedOrInError();
            CameraMetadataNative cameraMetadataNativeCreateDefaultRequest = this.mRemoteDevice.createDefaultRequest(i2);
            if (this.mAppTargetSdkVersion < 26 || i2 != 2) {
                overrideEnableZsl(cameraMetadataNativeCreateDefaultRequest, false);
            }
            builder = new CaptureRequest.Builder(cameraMetadataNativeCreateDefaultRequest, false, -1);
        }
        return builder;
    }

    @Override // android.hardware.camera2.CameraDevice
    public void createCaptureSession(List<Surface> list, CameraCaptureSession.StateCallback stateCallback, Handler handler) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Surface> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new OutputConfiguration(it.next()));
        }
        createCaptureSessionInternal(null, arrayList, stateCallback, handler, 0);
    }

    @Override // android.hardware.camera2.CameraDevice
    public void createCaptureSessionByOutputConfigurations(List<OutputConfiguration> list, CameraCaptureSession.StateCallback stateCallback, Handler handler) {
        createCaptureSessionInternal(null, new ArrayList(list), stateCallback, handler, 0);
    }

    @Override // android.hardware.camera2.CameraDevice
    public void createConstrainedHighSpeedCaptureSession(List<Surface> list, CameraCaptureSession.StateCallback stateCallback, Handler handler) {
        if (list == null || list.size() == 0 || list.size() > 2) {
            throw new IllegalArgumentException("Output surface list must not be null and the size must be no more than 2");
        }
        SurfaceUtils.checkConstrainedHighSpeedSurfaces(list, null, (StreamConfigurationMap) getCharacteristics().get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP));
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Surface> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new OutputConfiguration(it.next()));
        }
        createCaptureSessionInternal(null, arrayList, stateCallback, handler, 1);
    }

    @Override // android.hardware.camera2.CameraDevice
    public void createCustomCaptureSession(InputConfiguration inputConfiguration, List<OutputConfiguration> list, int i2, CameraCaptureSession.StateCallback stateCallback, Handler handler) {
        ArrayList arrayList = new ArrayList();
        Iterator<OutputConfiguration> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new OutputConfiguration(it.next()));
        }
        createCaptureSessionInternal(inputConfiguration, arrayList, stateCallback, handler, i2);
    }

    @Override // android.hardware.camera2.CameraDevice
    public CaptureRequest.Builder createReprocessCaptureRequest(TotalCaptureResult totalCaptureResult) {
        CaptureRequest.Builder builder;
        synchronized (this.mInterfaceLock) {
            checkIfCameraClosedOrInError();
            builder = new CaptureRequest.Builder(new CameraMetadataNative(totalCaptureResult.getNativeCopy()), true, totalCaptureResult.getSessionId());
        }
        return builder;
    }

    @Override // android.hardware.camera2.CameraDevice
    public void createReprocessableCaptureSession(InputConfiguration inputConfiguration, List<Surface> list, CameraCaptureSession.StateCallback stateCallback, Handler handler) {
        if (inputConfiguration == null) {
            throw new IllegalArgumentException("inputConfig cannot be null when creating a reprocessable capture session");
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Surface> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new OutputConfiguration(it.next()));
        }
        createCaptureSessionInternal(inputConfiguration, arrayList, stateCallback, handler, 0);
    }

    @Override // android.hardware.camera2.CameraDevice
    public void createReprocessableCaptureSessionByConfigurations(InputConfiguration inputConfiguration, List<OutputConfiguration> list, CameraCaptureSession.StateCallback stateCallback, Handler handler) {
        if (inputConfiguration == null) {
            throw new IllegalArgumentException("inputConfig cannot be null when creating a reprocessable capture session");
        }
        if (list == null) {
            throw new IllegalArgumentException("Output configurations cannot be null when creating a reprocessable capture session");
        }
        ArrayList arrayList = new ArrayList();
        Iterator<OutputConfiguration> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new OutputConfiguration(it.next()));
        }
        createCaptureSessionInternal(inputConfiguration, arrayList, stateCallback, handler, 0);
    }

    public void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    public void finalizeOutputConfigs(List<OutputConfiguration> list) {
        int iKeyAt;
        if (list == null || list.size() == 0) {
            throw new IllegalArgumentException("deferred config is null or empty");
        }
        synchronized (this.mInterfaceLock) {
            for (OutputConfiguration outputConfiguration : list) {
                int i2 = 0;
                while (true) {
                    if (i2 >= this.mConfiguredOutputs.size()) {
                        iKeyAt = -1;
                        break;
                    } else {
                        if (outputConfiguration.equals(this.mConfiguredOutputs.valueAt(i2))) {
                            iKeyAt = this.mConfiguredOutputs.keyAt(i2);
                            break;
                        }
                        i2++;
                    }
                }
                if (iKeyAt == -1) {
                    throw new IllegalArgumentException("Deferred config is not part of this session");
                }
                if (outputConfiguration.getSurfaces().size() == 0) {
                    throw new IllegalArgumentException("The final config for stream " + iKeyAt + " must have at least 1 surface");
                }
                this.mRemoteDevice.finalizeOutputConfigurations(iKeyAt, outputConfiguration);
            }
        }
    }

    public void flush() {
        synchronized (this.mInterfaceLock) {
            checkIfCameraClosedOrInError();
            this.mDeviceHandler.post(this.mCallOnBusy);
            if (this.mIdle) {
                this.mDeviceHandler.post(this.mCallOnIdle);
                return;
            }
            long jFlush = this.mRemoteDevice.flush();
            int i2 = this.mRepeatingRequestId;
            if (i2 != -1) {
                checkEarlyTriggerSequenceComplete(i2, jFlush);
                this.mRepeatingRequestId = -1;
            }
        }
    }

    public CameraDeviceCallbacks getCallbacks() {
        return this.mCallbacks;
    }

    @Override // android.hardware.camera2.CameraDevice
    public String getId() {
        return this.mCameraId;
    }

    public void prepare(Surface surface) {
        int iKeyAt;
        if (surface == null) {
            throw new IllegalArgumentException("Surface is null");
        }
        synchronized (this.mInterfaceLock) {
            int i2 = 0;
            while (true) {
                if (i2 >= this.mConfiguredOutputs.size()) {
                    iKeyAt = -1;
                    break;
                } else {
                    if (this.mConfiguredOutputs.valueAt(i2).getSurfaces().contains(surface)) {
                        iKeyAt = this.mConfiguredOutputs.keyAt(i2);
                        break;
                    }
                    i2++;
                }
            }
            if (iKeyAt == -1) {
                throw new IllegalArgumentException("Surface is not part of this session");
            }
            this.mRemoteDevice.prepare(iKeyAt);
        }
    }

    public void setRemoteDevice(ICameraDeviceUser iCameraDeviceUser) {
        synchronized (this.mInterfaceLock) {
            if (this.mInError) {
                return;
            }
            this.mRemoteDevice = new ICameraDeviceUserWrapper(iCameraDeviceUser);
            IBinder iBinderAsBinder = iCameraDeviceUser.asBinder();
            if (iBinderAsBinder != null) {
                try {
                    iBinderAsBinder.linkToDeath(this, 0);
                } catch (RemoteException unused) {
                    this.mDeviceHandler.post(this.mCallOnDisconnected);
                    throw new CameraAccessException(2, "The camera device has encountered a serious error");
                }
            }
            this.mDeviceHandler.post(this.mCallOnOpened);
            this.mDeviceHandler.post(this.mCallOnUnconfigured);
        }
    }

    public void setRemoteFailure(ServiceSpecificException serviceSpecificException) {
        final boolean z2;
        int i2 = serviceSpecificException.errorCode;
        final int i3 = 4;
        if (i2 == 4) {
            z2 = false;
        } else if (i2 == 10) {
            z2 = true;
        } else {
            if (i2 == 6) {
                i3 = 3;
            } else if (i2 == 7) {
                z2 = true;
                i3 = 1;
            } else if (i2 != 8) {
                Log.e(this.TAG, "Unexpected failure in opening camera device: " + serviceSpecificException.errorCode + serviceSpecificException.getMessage());
            } else {
                i3 = 2;
            }
            z2 = true;
        }
        synchronized (this.mInterfaceLock) {
            this.mInError = true;
            this.mDeviceHandler.post(new Runnable() { // from class: android.hardware.camera2.impl.CameraDeviceImpl.8
                @Override // java.lang.Runnable
                public void run() {
                    if (z2) {
                        CameraDeviceImpl.this.mDeviceCallback.onError(CameraDeviceImpl.this, i3);
                    } else {
                        CameraDeviceImpl.this.mDeviceCallback.onDisconnected(CameraDeviceImpl.this);
                    }
                }
            });
        }
    }

    public int setRepeatingBurst(List<CaptureRequest> list, CaptureCallback captureCallback, Handler handler) {
        if (list == null || list.isEmpty()) {
            throw new IllegalArgumentException("At least one request must be given");
        }
        return submitCaptureRequest(list, captureCallback, handler, true);
    }

    public int setRepeatingRequest(CaptureRequest captureRequest, CaptureCallback captureCallback, Handler handler) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(captureRequest);
        return submitCaptureRequest(arrayList, captureCallback, handler, true);
    }

    public void setSessionListener(StateCallbackKK stateCallbackKK) {
        synchronized (this.mInterfaceLock) {
            this.mSessionStateCallback = stateCallbackKK;
        }
    }

    public void stopRepeating() {
        synchronized (this.mInterfaceLock) {
            checkIfCameraClosedOrInError();
            int i2 = this.mRepeatingRequestId;
            if (i2 != -1) {
                this.mRepeatingRequestId = -1;
                try {
                    checkEarlyTriggerSequenceComplete(i2, this.mRemoteDevice.cancelRequest(i2));
                } catch (IllegalArgumentException unused) {
                }
            }
        }
    }

    public void tearDown(Surface surface) {
        int iKeyAt;
        if (surface == null) {
            throw new IllegalArgumentException("Surface is null");
        }
        synchronized (this.mInterfaceLock) {
            int i2 = 0;
            while (true) {
                if (i2 >= this.mConfiguredOutputs.size()) {
                    iKeyAt = -1;
                    break;
                } else {
                    if (surface == this.mConfiguredOutputs.valueAt(i2).getSurface()) {
                        iKeyAt = this.mConfiguredOutputs.keyAt(i2);
                        break;
                    }
                    i2++;
                }
            }
            if (iKeyAt == -1) {
                throw new IllegalArgumentException("Surface is not part of this session");
            }
            this.mRemoteDevice.tearDown(iKeyAt);
        }
    }

    public static <T> Handler checkHandler(Handler handler, T t2) {
        return t2 != null ? checkHandler(handler) : handler;
    }

    public class FrameNumberTracker {
        private long mCompletedFrameNumber = -1;
        private long mCompletedReprocessFrameNumber = -1;
        private final LinkedList<Long> mSkippedRegularFrameNumbers = new LinkedList<>();
        private final LinkedList<Long> mSkippedReprocessFrameNumbers = new LinkedList<>();
        private final TreeMap<Long, Boolean> mFutureErrorMap = new TreeMap<>();
        private final HashMap<Long, List<CaptureResult>> mPartialResults = new HashMap<>();

        public FrameNumberTracker() {
        }

        private void update() {
            Iterator<Map.Entry<Long, Boolean>> it = this.mFutureErrorMap.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Long, Boolean> next = it.next();
                Long key = next.getKey();
                Boolean value = next.getValue();
                Boolean bool = Boolean.TRUE;
                if (value.booleanValue()) {
                    if (key.longValue() == this.mCompletedReprocessFrameNumber + 1) {
                        this.mCompletedReprocessFrameNumber = key.longValue();
                    } else if (this.mSkippedReprocessFrameNumbers.isEmpty() || key != this.mSkippedReprocessFrameNumbers.element()) {
                        bool = Boolean.FALSE;
                    } else {
                        this.mCompletedReprocessFrameNumber = key.longValue();
                        this.mSkippedReprocessFrameNumbers.remove();
                    }
                } else if (key.longValue() == this.mCompletedFrameNumber + 1) {
                    this.mCompletedFrameNumber = key.longValue();
                } else if (this.mSkippedRegularFrameNumbers.isEmpty() || key != this.mSkippedRegularFrameNumbers.element()) {
                    bool = Boolean.FALSE;
                } else {
                    this.mCompletedFrameNumber = key.longValue();
                    this.mSkippedRegularFrameNumbers.remove();
                }
                if (bool.booleanValue()) {
                    it.remove();
                }
            }
        }

        private void updateCompletedFrameNumber(long j2) {
            long j3 = this.mCompletedFrameNumber;
            if (j2 <= j3) {
                throw new IllegalArgumentException("frame number " + j2 + " is a repeat");
            }
            long j4 = this.mCompletedReprocessFrameNumber;
            if (j2 > j4) {
                long jMax = Math.max(j3, j4);
                while (true) {
                    jMax++;
                    if (jMax >= j2) {
                        break;
                    } else {
                        this.mSkippedReprocessFrameNumbers.add(Long.valueOf(jMax));
                    }
                }
            } else {
                if (this.mSkippedRegularFrameNumbers.isEmpty() || j2 < this.mSkippedRegularFrameNumbers.element().longValue()) {
                    throw new IllegalArgumentException("frame number " + j2 + " is a repeat");
                }
                if (j2 > this.mSkippedRegularFrameNumbers.element().longValue()) {
                    StringBuilder sbL = m.l("frame number ", j2, " comes out of order. Expecting ");
                    sbL.append(this.mSkippedRegularFrameNumbers.element());
                    throw new IllegalArgumentException(sbL.toString());
                }
                this.mSkippedRegularFrameNumbers.remove();
            }
            this.mCompletedFrameNumber = j2;
        }

        private void updateCompletedReprocessFrameNumber(long j2) {
            long j3 = this.mCompletedReprocessFrameNumber;
            if (j2 < j3) {
                throw new IllegalArgumentException("frame number " + j2 + " is a repeat");
            }
            long j4 = this.mCompletedFrameNumber;
            if (j2 >= j4) {
                long jMax = Math.max(j4, j3);
                while (true) {
                    jMax++;
                    if (jMax >= j2) {
                        break;
                    } else {
                        this.mSkippedRegularFrameNumbers.add(Long.valueOf(jMax));
                    }
                }
            } else {
                if (this.mSkippedReprocessFrameNumbers.isEmpty() || j2 < this.mSkippedReprocessFrameNumbers.element().longValue()) {
                    throw new IllegalArgumentException("frame number " + j2 + " is a repeat");
                }
                if (j2 > this.mSkippedReprocessFrameNumbers.element().longValue()) {
                    StringBuilder sbL = m.l("frame number ", j2, " comes out of order. Expecting ");
                    sbL.append(this.mSkippedReprocessFrameNumbers.element());
                    throw new IllegalArgumentException(sbL.toString());
                }
                this.mSkippedReprocessFrameNumbers.remove();
            }
            this.mCompletedReprocessFrameNumber = j2;
        }

        public long getCompletedFrameNumber() {
            return this.mCompletedFrameNumber;
        }

        public long getCompletedReprocessFrameNumber() {
            return this.mCompletedReprocessFrameNumber;
        }

        public List<CaptureResult> popPartialResults(long j2) {
            return this.mPartialResults.remove(Long.valueOf(j2));
        }

        public void updateTracker(long j2, boolean z2, boolean z3) {
            if (z2) {
                this.mFutureErrorMap.put(Long.valueOf(j2), Boolean.valueOf(z3));
            } else {
                try {
                    if (z3) {
                        updateCompletedReprocessFrameNumber(j2);
                    } else {
                        updateCompletedFrameNumber(j2);
                    }
                } catch (IllegalArgumentException e2) {
                    Log.e(CameraDeviceImpl.this.TAG, e2.getMessage());
                }
            }
            update();
        }

        public void updateTracker(long j2, CaptureResult captureResult, boolean z2, boolean z3) {
            if (!z2) {
                updateTracker(j2, false, z3);
                return;
            }
            if (captureResult == null) {
                return;
            }
            List<CaptureResult> arrayList = this.mPartialResults.get(Long.valueOf(j2));
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.mPartialResults.put(Long.valueOf(j2), arrayList);
            }
            arrayList.add(captureResult);
        }
    }

    public static class CaptureCallbackHolder {
        private final CaptureCallback mCallback;
        private final Handler mHandler;
        private final boolean mHasBatchedOutputs;
        private final boolean mRepeating;
        private final List<CaptureRequest> mRequestList;
        private final int mSessionId;

        public CaptureCallbackHolder(CaptureCallback captureCallback, List<CaptureRequest> list, Handler handler, boolean z2, int i2) {
            if (captureCallback == null || handler == null) {
                throw new UnsupportedOperationException("Must have a valid handler and a valid callback");
            }
            this.mRepeating = z2;
            this.mHandler = handler;
            this.mRequestList = new ArrayList(list);
            this.mCallback = captureCallback;
            this.mSessionId = i2;
            boolean z3 = false;
            for (int i3 = 0; i3 < list.size(); i3++) {
                CaptureRequest captureRequest = list.get(i3);
                if (!captureRequest.isPartOfCRequestList() || (i3 == 0 && captureRequest.getTargets().size() != 2)) {
                    this.mHasBatchedOutputs = z3;
                }
            }
            z3 = true;
            this.mHasBatchedOutputs = z3;
        }

        public CaptureCallback getCallback() {
            return this.mCallback;
        }

        public Handler getHandler() {
            return this.mHandler;
        }

        public CaptureRequest getRequest(int i2) {
            if (i2 >= this.mRequestList.size()) {
                throw new IllegalArgumentException(String.format("Requested subsequenceId %d is larger than request list size %d.", Integer.valueOf(i2), Integer.valueOf(this.mRequestList.size())));
            }
            if (i2 >= 0) {
                return this.mRequestList.get(i2);
            }
            throw new IllegalArgumentException(String.format("Requested subsequenceId %d is negative", Integer.valueOf(i2)));
        }

        public int getRequestCount() {
            return this.mRequestList.size();
        }

        public int getSessionId() {
            return this.mSessionId;
        }

        public boolean hasBatchedOutputs() {
            return this.mHasBatchedOutputs;
        }

        public boolean isRepeating() {
            return this.mRepeating;
        }

        public CaptureRequest getRequest() {
            return getRequest(0);
        }
    }

    public void prepare(int i2, Surface surface) {
        int iKeyAt;
        if (surface == null) {
            throw new IllegalArgumentException("Surface is null");
        }
        if (i2 > 0) {
            synchronized (this.mInterfaceLock) {
                int i3 = 0;
                while (true) {
                    if (i3 >= this.mConfiguredOutputs.size()) {
                        iKeyAt = -1;
                        break;
                    } else {
                        if (surface == this.mConfiguredOutputs.valueAt(i3).getSurface()) {
                            iKeyAt = this.mConfiguredOutputs.keyAt(i3);
                            break;
                        }
                        i3++;
                    }
                }
                if (iKeyAt != -1) {
                    this.mRemoteDevice.prepare2(i2, iKeyAt);
                } else {
                    throw new IllegalArgumentException("Surface is not part of this session");
                }
            }
            return;
        }
        throw new IllegalArgumentException(c.d("Invalid maxCount given: ", i2));
    }

    public static class RequestLastFrameNumbersHolder {
        private final long mLastRegularFrameNumber;
        private final long mLastReprocessFrameNumber;
        private final int mRequestId;

        public RequestLastFrameNumbersHolder(List<CaptureRequest> list, SubmitInfo submitInfo) {
            long lastFrameNumber = submitInfo.getLastFrameNumber();
            if (submitInfo.getLastFrameNumber() < list.size() - 1) {
                StringBuilder sb = new StringBuilder("lastFrameNumber: ");
                sb.append(submitInfo.getLastFrameNumber());
                sb.append(" should be at least ");
                sb.append(list.size() - 1);
                sb.append(" for the number of  requests in the list: ");
                sb.append(list.size());
                throw new IllegalArgumentException(sb.toString());
            }
            long j2 = -1;
            long j3 = -1;
            for (int size = list.size() - 1; size >= 0; size--) {
                CaptureRequest captureRequest = list.get(size);
                if (captureRequest.isReprocess() && j2 == -1) {
                    j2 = lastFrameNumber;
                } else if (!captureRequest.isReprocess() && j3 == -1) {
                    j3 = lastFrameNumber;
                }
                if (j2 != -1 && j3 != -1) {
                    break;
                }
                lastFrameNumber--;
            }
            this.mLastRegularFrameNumber = j3;
            this.mLastReprocessFrameNumber = j2;
            this.mRequestId = submitInfo.getRequestId();
        }

        public long getLastFrameNumber() {
            return Math.max(this.mLastRegularFrameNumber, this.mLastReprocessFrameNumber);
        }

        public long getLastRegularFrameNumber() {
            return this.mLastRegularFrameNumber;
        }

        public long getLastReprocessFrameNumber() {
            return this.mLastReprocessFrameNumber;
        }

        public int getRequestId() {
            return this.mRequestId;
        }

        public RequestLastFrameNumbersHolder(int i2, long j2) {
            this.mLastRegularFrameNumber = j2;
            this.mLastReprocessFrameNumber = -1L;
            this.mRequestId = i2;
        }
    }
}
