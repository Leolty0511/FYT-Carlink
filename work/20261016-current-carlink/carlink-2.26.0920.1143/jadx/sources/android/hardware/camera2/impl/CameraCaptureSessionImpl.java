package android.hardware.camera2.impl;

import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.dispatch.ArgumentReplacingDispatcher;
import android.hardware.camera2.dispatch.BroadcastDispatcher;
import android.hardware.camera2.dispatch.DuckTypingDispatcher;
import android.hardware.camera2.dispatch.HandlerDispatcher;
import android.hardware.camera2.dispatch.InvokeDispatcher;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.utils.TaskDrainer;
import android.hardware.camera2.utils.TaskSingleDrainer;
import android.os.Handler;
import android.util.Log;
import android.view.Surface;
import com.android.internal.util.Preconditions;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CameraCaptureSessionImpl extends CameraCaptureSession implements CameraCaptureSessionCore {
    private static final boolean DEBUG = false;
    private static final String TAG = "CameraCaptureSession";
    private final TaskSingleDrainer mAbortDrainer;
    private volatile boolean mAborting;
    private boolean mClosed;
    private final boolean mConfigureSuccess;
    private final Handler mDeviceHandler;
    private final CameraDeviceImpl mDeviceImpl;
    private final int mId;
    private final String mIdString;
    private final TaskSingleDrainer mIdleDrainer;
    private final Surface mInput;
    private final TaskDrainer<Integer> mSequenceDrainer;
    private boolean mSkipUnconfigure = false;
    private final CameraCaptureSession.StateCallback mStateCallback;
    private final Handler mStateHandler;

    public class AbortDrainListener implements TaskDrainer.DrainListener {
        private AbortDrainListener() {
        }

        @Override // android.hardware.camera2.utils.TaskDrainer.DrainListener
        public void onDrained() {
            synchronized (CameraCaptureSessionImpl.this.mDeviceImpl.mInterfaceLock) {
                if (CameraCaptureSessionImpl.this.mSkipUnconfigure) {
                    return;
                }
                CameraCaptureSessionImpl.this.mIdleDrainer.beginDrain();
            }
        }
    }

    public class IdleDrainListener implements TaskDrainer.DrainListener {
        private IdleDrainListener() {
        }

        @Override // android.hardware.camera2.utils.TaskDrainer.DrainListener
        public void onDrained() {
            synchronized (CameraCaptureSessionImpl.this.mDeviceImpl.mInterfaceLock) {
                if (CameraCaptureSessionImpl.this.mSkipUnconfigure) {
                    return;
                }
                try {
                    CameraCaptureSessionImpl.this.mDeviceImpl.configureStreamsChecked(null, null, 0);
                } catch (CameraAccessException e2) {
                    Log.e(CameraCaptureSessionImpl.TAG, CameraCaptureSessionImpl.this.mIdString + "Exception while unconfiguring outputs: ", e2);
                } catch (IllegalStateException unused) {
                }
            }
        }
    }

    public class SequenceDrainListener implements TaskDrainer.DrainListener {
        private SequenceDrainListener() {
        }

        @Override // android.hardware.camera2.utils.TaskDrainer.DrainListener
        public void onDrained() {
            CameraCaptureSessionImpl.this.mStateCallback.onClosed(CameraCaptureSessionImpl.this);
            if (CameraCaptureSessionImpl.this.mSkipUnconfigure) {
                return;
            }
            CameraCaptureSessionImpl.this.mAbortDrainer.beginDrain();
        }
    }

    public CameraCaptureSessionImpl(int i2, Surface surface, CameraCaptureSession.StateCallback stateCallback, Handler handler, CameraDeviceImpl cameraDeviceImpl, Handler handler2, boolean z2) {
        this.mClosed = false;
        if (stateCallback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        this.mId = i2;
        String str = String.format("Session %d: ", Integer.valueOf(i2));
        this.mIdString = str;
        this.mInput = surface;
        Handler handlerCheckHandler = CameraDeviceImpl.checkHandler(handler);
        this.mStateHandler = handlerCheckHandler;
        CameraCaptureSession.StateCallback stateCallbackCreateUserStateCallbackProxy = createUserStateCallbackProxy(handlerCheckHandler, stateCallback);
        this.mStateCallback = stateCallbackCreateUserStateCallbackProxy;
        Handler handler3 = (Handler) Preconditions.checkNotNull(handler2, "deviceStateHandler must not be null");
        this.mDeviceHandler = handler3;
        this.mDeviceImpl = (CameraDeviceImpl) Preconditions.checkNotNull(cameraDeviceImpl, "deviceImpl must not be null");
        this.mSequenceDrainer = new TaskDrainer<>(handler3, new SequenceDrainListener(), "seq");
        this.mIdleDrainer = new TaskSingleDrainer(handler3, new IdleDrainListener(), "idle");
        this.mAbortDrainer = new TaskSingleDrainer(handler3, new AbortDrainListener(), "abort");
        if (z2) {
            stateCallbackCreateUserStateCallbackProxy.onConfigured(this);
            this.mConfigureSuccess = true;
            return;
        }
        stateCallbackCreateUserStateCallbackProxy.onConfigureFailed(this);
        this.mClosed = true;
        Log.e(TAG, str + "Failed to create capture session; configuration failed");
        this.mConfigureSuccess = false;
    }

    private int addPendingSequence(int i2) {
        this.mSequenceDrainer.taskStarted(Integer.valueOf(i2));
        return i2;
    }

    private void checkNotClosed() {
        if (this.mClosed) {
            throw new IllegalStateException("Session has been closed; further changes are illegal.");
        }
    }

    private CameraDeviceImpl.CaptureCallback createCaptureCallbackProxy(Handler handler, CameraCaptureSession.CaptureCallback captureCallback) {
        CameraDeviceImpl.CaptureCallback captureCallback2 = new CameraDeviceImpl.CaptureCallback() { // from class: android.hardware.camera2.impl.CameraCaptureSessionImpl.1
            @Override // android.hardware.camera2.impl.CameraDeviceImpl.CaptureCallback
            public void onCaptureBufferLost(CameraDevice cameraDevice, CaptureRequest captureRequest, Surface surface, long j2) {
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.CaptureCallback
            public void onCaptureCompleted(CameraDevice cameraDevice, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.CaptureCallback
            public void onCaptureFailed(CameraDevice cameraDevice, CaptureRequest captureRequest, CaptureFailure captureFailure) {
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.CaptureCallback
            public void onCapturePartial(CameraDevice cameraDevice, CaptureRequest captureRequest, CaptureResult captureResult) {
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.CaptureCallback
            public void onCaptureProgressed(CameraDevice cameraDevice, CaptureRequest captureRequest, CaptureResult captureResult) {
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.CaptureCallback
            public void onCaptureSequenceAborted(CameraDevice cameraDevice, int i2) {
                CameraCaptureSessionImpl.this.finishPendingSequence(i2);
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.CaptureCallback
            public void onCaptureSequenceCompleted(CameraDevice cameraDevice, int i2, long j2) {
                CameraCaptureSessionImpl.this.finishPendingSequence(i2);
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.CaptureCallback
            public void onCaptureStarted(CameraDevice cameraDevice, CaptureRequest captureRequest, long j2, long j3) {
            }
        };
        return captureCallback == null ? captureCallback2 : new CallbackProxies.DeviceCaptureCallbackProxy(new BroadcastDispatcher(new ArgumentReplacingDispatcher(new DuckTypingDispatcher(new HandlerDispatcher(new InvokeDispatcher(captureCallback), handler), CameraCaptureSession.CaptureCallback.class), 0, this), new InvokeDispatcher(captureCallback2)));
    }

    private CameraCaptureSession.StateCallback createUserStateCallbackProxy(Handler handler, CameraCaptureSession.StateCallback stateCallback) {
        return new CallbackProxies.SessionStateCallbackProxy(new HandlerDispatcher(new InvokeDispatcher(stateCallback), handler));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishPendingSequence(int i2) {
        try {
            this.mSequenceDrainer.taskFinished(Integer.valueOf(i2));
        } catch (IllegalStateException e2) {
            Log.w(TAG, e2.getMessage());
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void abortCaptures() {
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            if (!this.mAborting) {
                this.mAborting = true;
                this.mAbortDrainer.taskStarted();
                this.mDeviceImpl.flush();
            } else {
                Log.w(TAG, this.mIdString + "abortCaptures - Session is already aborting; doing nothing");
            }
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int capture(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        int iAddPendingSequence;
        if (captureRequest == null) {
            throw new IllegalArgumentException("request must not be null");
        }
        if (captureRequest.isReprocess() && !isReprocessable()) {
            throw new IllegalArgumentException("this capture session cannot handle reprocess requests");
        }
        if (captureRequest.isReprocess() && captureRequest.getReprocessableSessionId() != this.mId) {
            throw new IllegalArgumentException("capture request was created for another session");
        }
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            iAddPendingSequence = addPendingSequence(this.mDeviceImpl.capture(captureRequest, createCaptureCallbackProxy(CameraDeviceImpl.checkHandler(handler, captureCallback), captureCallback), this.mDeviceHandler));
        }
        return iAddPendingSequence;
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int captureBurst(List<CaptureRequest> list, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        int iAddPendingSequence;
        if (list == null) {
            throw new IllegalArgumentException("Requests must not be null");
        }
        if (list.isEmpty()) {
            throw new IllegalArgumentException("Requests must have at least one element");
        }
        for (CaptureRequest captureRequest : list) {
            if (captureRequest.isReprocess()) {
                if (!isReprocessable()) {
                    throw new IllegalArgumentException("This capture session cannot handle reprocess requests");
                }
                if (captureRequest.getReprocessableSessionId() != this.mId) {
                    throw new IllegalArgumentException("Capture request was created for another session");
                }
            }
        }
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            iAddPendingSequence = addPendingSequence(this.mDeviceImpl.captureBurst(list, createCaptureCallbackProxy(CameraDeviceImpl.checkHandler(handler, captureCallback), captureCallback), this.mDeviceHandler));
        }
        return iAddPendingSequence;
    }

    @Override // android.hardware.camera2.CameraCaptureSession, java.lang.AutoCloseable
    public void close() {
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            if (this.mClosed) {
                return;
            }
            this.mClosed = true;
            try {
                try {
                    this.mDeviceImpl.stopRepeating();
                } catch (CameraAccessException e2) {
                    Log.e(TAG, this.mIdString + "Exception while stopping repeating: ", e2);
                }
                this.mSequenceDrainer.beginDrain();
                Surface surface = this.mInput;
                if (surface != null) {
                    surface.release();
                }
            } catch (IllegalStateException unused) {
                this.mStateCallback.onClosed(this);
            }
        }
    }

    public void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void finalizeOutputConfigurations(List<OutputConfiguration> list) {
        this.mDeviceImpl.finalizeOutputConfigs(list);
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public CameraDevice getDevice() {
        return this.mDeviceImpl;
    }

    @Override // android.hardware.camera2.impl.CameraCaptureSessionCore
    public CameraDeviceImpl.StateCallbackKK getDeviceStateCallback() {
        final Object obj = this.mDeviceImpl.mInterfaceLock;
        return new CameraDeviceImpl.StateCallbackKK() { // from class: android.hardware.camera2.impl.CameraCaptureSessionImpl.2
            private boolean mBusy = false;
            private boolean mActive = false;

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.StateCallbackKK
            public void onActive(CameraDevice cameraDevice) {
                CameraCaptureSessionImpl.this.mIdleDrainer.taskStarted();
                this.mActive = true;
                CameraCaptureSessionImpl.this.mStateCallback.onActive(this);
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.StateCallbackKK
            public void onBusy(CameraDevice cameraDevice) {
                this.mBusy = true;
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onDisconnected(CameraDevice cameraDevice) {
                CameraCaptureSessionImpl.this.close();
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onError(CameraDevice cameraDevice, int i2) {
                Log.wtf(CameraCaptureSessionImpl.TAG, CameraCaptureSessionImpl.this.mIdString + "Got device error " + i2);
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.StateCallbackKK
            public void onIdle(CameraDevice cameraDevice) {
                boolean z2;
                synchronized (obj) {
                    z2 = CameraCaptureSessionImpl.this.mAborting;
                }
                if (this.mBusy && z2) {
                    CameraCaptureSessionImpl.this.mAbortDrainer.taskFinished();
                    synchronized (obj) {
                        CameraCaptureSessionImpl.this.mAborting = false;
                    }
                }
                if (this.mActive) {
                    CameraCaptureSessionImpl.this.mIdleDrainer.taskFinished();
                }
                this.mBusy = false;
                this.mActive = false;
                CameraCaptureSessionImpl.this.mStateCallback.onReady(this);
            }

            @Override // android.hardware.camera2.CameraDevice.StateCallback
            public void onOpened(CameraDevice cameraDevice) {
                throw new AssertionError("Camera must already be open before creating a session");
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.StateCallbackKK
            public void onRequestQueueEmpty() {
                CameraCaptureSessionImpl.this.mStateCallback.onCaptureQueueEmpty(this);
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.StateCallbackKK
            public void onSurfacePrepared(Surface surface) {
                CameraCaptureSessionImpl.this.mStateCallback.onSurfacePrepared(this, surface);
            }

            @Override // android.hardware.camera2.impl.CameraDeviceImpl.StateCallbackKK
            public void onUnconfigured(CameraDevice cameraDevice) {
            }
        };
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public Surface getInputSurface() {
        return this.mInput;
    }

    @Override // android.hardware.camera2.impl.CameraCaptureSessionCore
    public boolean isAborting() {
        return this.mAborting;
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public boolean isReprocessable() {
        return this.mInput != null;
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void prepare(Surface surface) {
        this.mDeviceImpl.prepare(surface);
    }

    @Override // android.hardware.camera2.impl.CameraCaptureSessionCore
    public void replaceSessionClose() {
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            this.mSkipUnconfigure = true;
            close();
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int setRepeatingBurst(List<CaptureRequest> list, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        int iAddPendingSequence;
        if (list == null) {
            throw new IllegalArgumentException("requests must not be null");
        }
        if (list.isEmpty()) {
            throw new IllegalArgumentException("requests must have at least one element");
        }
        Iterator<CaptureRequest> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().isReprocess()) {
                throw new IllegalArgumentException("repeating reprocess burst requests are not supported");
            }
        }
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            iAddPendingSequence = addPendingSequence(this.mDeviceImpl.setRepeatingBurst(list, createCaptureCallbackProxy(CameraDeviceImpl.checkHandler(handler, captureCallback), captureCallback), this.mDeviceHandler));
        }
        return iAddPendingSequence;
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int setRepeatingRequest(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        int iAddPendingSequence;
        if (captureRequest == null) {
            throw new IllegalArgumentException("request must not be null");
        }
        if (captureRequest.isReprocess()) {
            throw new IllegalArgumentException("repeating reprocess requests are not supported");
        }
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            iAddPendingSequence = addPendingSequence(this.mDeviceImpl.setRepeatingRequest(captureRequest, createCaptureCallbackProxy(CameraDeviceImpl.checkHandler(handler, captureCallback), captureCallback), this.mDeviceHandler));
        }
        return iAddPendingSequence;
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void stopRepeating() {
        synchronized (this.mDeviceImpl.mInterfaceLock) {
            checkNotClosed();
            this.mDeviceImpl.stopRepeating();
        }
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void tearDown(Surface surface) {
        this.mDeviceImpl.tearDown(surface);
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void prepare(int i2, Surface surface) {
        this.mDeviceImpl.prepare(i2, surface);
    }
}
