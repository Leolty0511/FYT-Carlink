package android.hardware.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.ICameraDeviceCallbacks;
import android.hardware.camera2.ICameraDeviceUser;
import android.hardware.camera2.utils.CameraBinderDecorator;
import android.hardware.camera2.utils.CameraRuntimeException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import android.view.Surface;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CameraDevice implements android.hardware.camera2.CameraDevice {
    private static final int REQUEST_ID_NONE = -1;
    private final boolean DEBUG;
    private final String TAG;
    private final String mCameraId;
    private final Handler mDeviceHandler;
    private final android.hardware.camera2.CameraDevice.StateListener mDeviceListener;
    private ICameraDeviceUser mRemoteDevice;
    private final Object mLock = new Object();
    private final CameraDeviceCallbacks mCallbacks = new CameraDeviceCallbacks();
    private boolean mIdle = true;
    private final SparseArray<CaptureListenerHolder> mCaptureListenerMap = new SparseArray<>();
    private int mRepeatingRequestId = -1;
    private final ArrayList<Integer> mRepeatingRequestIdDeletedList = new ArrayList<>();
    private final SparseArray<Surface> mConfiguredOutputs = new SparseArray<>();
    private final Runnable mCallOnOpened = new Runnable() { // from class: android.hardware.camera2.impl.CameraDevice.1
        @Override // java.lang.Runnable
        public void run() {
            if (CameraDevice.this.isClosed()) {
                return;
            }
            CameraDevice.this.mDeviceListener.onOpened(CameraDevice.this);
        }
    };
    private final Runnable mCallOnUnconfigured = new Runnable() { // from class: android.hardware.camera2.impl.CameraDevice.2
        @Override // java.lang.Runnable
        public void run() {
            if (CameraDevice.this.isClosed()) {
                return;
            }
            CameraDevice.this.mDeviceListener.onUnconfigured(CameraDevice.this);
        }
    };
    private final Runnable mCallOnActive = new Runnable() { // from class: android.hardware.camera2.impl.CameraDevice.3
        @Override // java.lang.Runnable
        public void run() {
            if (CameraDevice.this.isClosed()) {
                return;
            }
            CameraDevice.this.mDeviceListener.onActive(CameraDevice.this);
        }
    };
    private final Runnable mCallOnBusy = new Runnable() { // from class: android.hardware.camera2.impl.CameraDevice.4
        @Override // java.lang.Runnable
        public void run() {
            if (CameraDevice.this.isClosed()) {
                return;
            }
            CameraDevice.this.mDeviceListener.onBusy(CameraDevice.this);
        }
    };
    private final Runnable mCallOnClosed = new Runnable() { // from class: android.hardware.camera2.impl.CameraDevice.5
        @Override // java.lang.Runnable
        public void run() {
            if (CameraDevice.this.isClosed()) {
                return;
            }
            CameraDevice.this.mDeviceListener.onClosed(CameraDevice.this);
        }
    };
    private final Runnable mCallOnIdle = new Runnable() { // from class: android.hardware.camera2.impl.CameraDevice.6
        @Override // java.lang.Runnable
        public void run() {
            if (CameraDevice.this.isClosed()) {
                return;
            }
            CameraDevice.this.mDeviceListener.onIdle(CameraDevice.this);
        }
    };
    private final Runnable mCallOnDisconnected = new Runnable() { // from class: android.hardware.camera2.impl.CameraDevice.7
        @Override // java.lang.Runnable
        public void run() {
            if (CameraDevice.this.isClosed()) {
                return;
            }
            CameraDevice.this.mDeviceListener.onDisconnected(CameraDevice.this);
        }
    };

    public class CameraDeviceCallbacks extends ICameraDeviceCallbacks.Stub {
        public static final int ERROR_CAMERA_DEVICE = 1;
        public static final int ERROR_CAMERA_DISCONNECTED = 0;
        public static final int ERROR_CAMERA_SERVICE = 2;

        public CameraDeviceCallbacks() {
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks.Stub, android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onCameraError(final int i2) {
            Runnable runnable;
            if (CameraDevice.this.isClosed()) {
                return;
            }
            synchronized (CameraDevice.this.mLock) {
                try {
                    if (i2 != 0) {
                        if (i2 != 1 && i2 != 2) {
                            Log.e(CameraDevice.this.TAG, "Unknown error from camera device: " + i2);
                        }
                        runnable = new Runnable() { // from class: android.hardware.camera2.impl.CameraDevice.CameraDeviceCallbacks.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (CameraDevice.this.isClosed()) {
                                    return;
                                }
                                CameraDevice.this.mDeviceListener.onError(CameraDevice.this, i2);
                            }
                        };
                    } else {
                        runnable = CameraDevice.this.mCallOnDisconnected;
                    }
                    CameraDevice.this.mDeviceHandler.post(runnable);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onCameraIdle() {
            if (CameraDevice.this.isClosed()) {
                return;
            }
            if (CameraDevice.this.DEBUG) {
                Log.d(CameraDevice.this.TAG, "Camera now idle");
            }
            synchronized (CameraDevice.this.mLock) {
                if (!CameraDevice.this.mIdle) {
                    CameraDevice.this.mDeviceHandler.post(CameraDevice.this.mCallOnIdle);
                }
                CameraDevice.this.mIdle = true;
            }
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onCaptureStarted(int i2, final long j2) {
            final CaptureListenerHolder captureListenerHolder;
            if (CameraDevice.this.DEBUG) {
                Log.d(CameraDevice.this.TAG, "Capture started for id " + i2);
            }
            synchronized (CameraDevice.this.mLock) {
                captureListenerHolder = (CaptureListenerHolder) CameraDevice.this.mCaptureListenerMap.get(i2);
            }
            if (captureListenerHolder == null || CameraDevice.this.isClosed()) {
                return;
            }
            captureListenerHolder.getHandler().post(new Runnable() { // from class: android.hardware.camera2.impl.CameraDevice.CameraDeviceCallbacks.2
                @Override // java.lang.Runnable
                public void run() {
                    if (CameraDevice.this.isClosed()) {
                        return;
                    }
                    captureListenerHolder.getListener().onCaptureStarted(CameraDevice.this, captureListenerHolder.getRequest(), j2);
                }
            });
        }

        @Override // android.hardware.camera2.ICameraDeviceCallbacks
        public void onResultReceived(int i2, CameraMetadataNative cameraMetadataNative) {
            final CaptureListenerHolder captureListenerHolder;
            if (CameraDevice.this.DEBUG) {
                Log.d(CameraDevice.this.TAG, "Received result for id " + i2);
            }
            Boolean bool = (Boolean) cameraMetadataNative.get(CaptureResult.QUIRKS_PARTIAL_RESULT);
            boolean z2 = bool != null && bool.booleanValue();
            synchronized (CameraDevice.this.mLock) {
                captureListenerHolder = (CaptureListenerHolder) CameraDevice.this.mCaptureListenerMap.get(i2);
                if (captureListenerHolder != null && !captureListenerHolder.isRepeating() && !z2) {
                    CameraDevice.this.mCaptureListenerMap.remove(i2);
                }
                if (captureListenerHolder != null && captureListenerHolder.isRepeating() && !z2 && CameraDevice.this.mRepeatingRequestIdDeletedList.size() > 0) {
                    Iterator it = CameraDevice.this.mRepeatingRequestIdDeletedList.iterator();
                    while (it.hasNext()) {
                        int iIntValue = ((Integer) it.next()).intValue();
                        if (iIntValue < i2) {
                            CameraDevice.this.mCaptureListenerMap.remove(iIntValue);
                            it.remove();
                        }
                    }
                }
            }
            if (captureListenerHolder == null || CameraDevice.this.isClosed()) {
                return;
            }
            final CaptureRequest request = captureListenerHolder.getRequest();
            final CaptureResult captureResult = new CaptureResult(cameraMetadataNative, request, i2);
            captureListenerHolder.getHandler().post(z2 ? new Runnable() { // from class: android.hardware.camera2.impl.CameraDevice.CameraDeviceCallbacks.3
                @Override // java.lang.Runnable
                public void run() {
                    if (CameraDevice.this.isClosed()) {
                        return;
                    }
                    captureListenerHolder.getListener().onCapturePartial(CameraDevice.this, request, captureResult);
                }
            } : new Runnable() { // from class: android.hardware.camera2.impl.CameraDevice.CameraDeviceCallbacks.4
                @Override // java.lang.Runnable
                public void run() {
                    if (CameraDevice.this.isClosed()) {
                        return;
                    }
                    captureListenerHolder.getListener().onCaptureCompleted(CameraDevice.this, request, captureResult);
                }
            });
        }
    }

    public static class CaptureListenerHolder {
        private final Handler mHandler;
        private final android.hardware.camera2.CameraDevice.CaptureListener mListener;
        private final boolean mRepeating;
        private final CaptureRequest mRequest;

        public CaptureListenerHolder(android.hardware.camera2.CameraDevice.CaptureListener captureListener, CaptureRequest captureRequest, Handler handler, boolean z2) {
            if (captureListener == null || handler == null) {
                throw new UnsupportedOperationException("Must have a valid handler and a valid listener");
            }
            this.mRepeating = z2;
            this.mHandler = handler;
            this.mRequest = captureRequest;
            this.mListener = captureListener;
        }

        public Handler getHandler() {
            return this.mHandler;
        }

        public android.hardware.camera2.CameraDevice.CaptureListener getListener() {
            return this.mListener;
        }

        public CaptureRequest getRequest() {
            return this.mRequest;
        }

        public boolean isRepeating() {
            return this.mRepeating;
        }
    }

    public CameraDevice(String str, android.hardware.camera2.CameraDevice.StateListener stateListener, Handler handler) {
        if (str == null || stateListener == null || handler == null) {
            throw new IllegalArgumentException("Null argument given");
        }
        this.mCameraId = str;
        this.mDeviceListener = stateListener;
        this.mDeviceHandler = handler;
        String str2 = String.format("CameraDevice-%s-JV", str);
        this.TAG = str2;
        this.DEBUG = Log.isLoggable(str2, 3);
    }

    private Handler checkHandler(Handler handler) {
        if (handler != null) {
            return handler;
        }
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            return new Handler(looperMyLooper);
        }
        throw new IllegalArgumentException("No handler given, and current thread has no looper!");
    }

    private void checkIfCameraClosed() {
        if (this.mRemoteDevice == null) {
            throw new IllegalStateException("CameraDevice was already closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isClosed() {
        boolean z2;
        synchronized (this.mLock) {
            z2 = this.mRemoteDevice == null;
        }
        return z2;
    }

    private int submitCaptureRequest(CaptureRequest captureRequest, android.hardware.camera2.CameraDevice.CaptureListener captureListener, Handler handler, boolean z2) {
        int iSubmitRequest;
        if (captureListener != null) {
            handler = checkHandler(handler);
        }
        synchronized (this.mLock) {
            checkIfCameraClosed();
            if (z2) {
                stopRepeating();
            }
            try {
                try {
                    iSubmitRequest = this.mRemoteDevice.submitRequest(captureRequest, z2);
                    if (captureListener != null) {
                        this.mCaptureListenerMap.put(iSubmitRequest, new CaptureListenerHolder(captureListener, captureRequest, handler, z2));
                    }
                    if (z2) {
                        this.mRepeatingRequestId = iSubmitRequest;
                    }
                    if (this.mIdle) {
                        this.mDeviceHandler.post(this.mCallOnActive);
                    }
                    this.mIdle = false;
                } catch (CameraRuntimeException e2) {
                    throw e2.asChecked();
                }
            } catch (RemoteException unused) {
                return -1;
            }
        }
        return iSubmitRequest;
    }

    @Override // android.hardware.camera2.CameraDevice
    public int capture(CaptureRequest captureRequest, android.hardware.camera2.CameraDevice.CaptureListener captureListener, Handler handler) {
        return submitCaptureRequest(captureRequest, captureListener, handler, false);
    }

    @Override // android.hardware.camera2.CameraDevice
    public int captureBurst(List<CaptureRequest> list, android.hardware.camera2.CameraDevice.CaptureListener captureListener, Handler handler) {
        if (!list.isEmpty()) {
            throw new UnsupportedOperationException("Burst capture implemented yet");
        }
        Log.w(this.TAG, "Capture burst request list is empty, do nothing!");
        return -1;
    }

    @Override // android.hardware.camera2.CameraDevice, java.lang.AutoCloseable
    public void close() {
        synchronized (this.mLock) {
            try {
                ICameraDeviceUser iCameraDeviceUser = this.mRemoteDevice;
                if (iCameraDeviceUser != null) {
                    iCameraDeviceUser.disconnect();
                }
            } catch (CameraRuntimeException e2) {
                Log.e(this.TAG, "Exception while closing: ", e2.asChecked());
            } catch (RemoteException unused) {
            }
            if (this.mRemoteDevice != null) {
                this.mDeviceHandler.post(this.mCallOnClosed);
            }
            this.mRemoteDevice = null;
        }
    }

    @Override // android.hardware.camera2.CameraDevice
    public void configureOutputs(List<Surface> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        synchronized (this.mLock) {
            checkIfCameraClosed();
            HashSet<Surface> hashSet = new HashSet(list);
            ArrayList<Integer> arrayList = new ArrayList();
            for (int i2 = 0; i2 < this.mConfiguredOutputs.size(); i2++) {
                int iKeyAt = this.mConfiguredOutputs.keyAt(i2);
                Surface surfaceValueAt = this.mConfiguredOutputs.valueAt(i2);
                if (list.contains(surfaceValueAt)) {
                    hashSet.remove(surfaceValueAt);
                } else {
                    arrayList.add(Integer.valueOf(iKeyAt));
                }
            }
            this.mDeviceHandler.post(this.mCallOnBusy);
            stopRepeating();
            try {
                waitUntilIdle();
                for (Integer num : arrayList) {
                    this.mRemoteDevice.deleteStream(num.intValue());
                    this.mConfiguredOutputs.delete(num.intValue());
                }
                for (Surface surface : hashSet) {
                    this.mConfiguredOutputs.put(this.mRemoteDevice.createStream(0, 0, 0, surface), surface);
                }
                if (list.size() > 0) {
                    this.mDeviceHandler.post(this.mCallOnIdle);
                } else {
                    this.mDeviceHandler.post(this.mCallOnUnconfigured);
                }
            } catch (CameraRuntimeException e2) {
                if (e2.getReason() != 4) {
                    throw e2.asChecked();
                }
                throw new IllegalStateException("The camera is currently busy. You must wait until the previous operation completes.");
            } catch (RemoteException unused) {
            }
        }
    }

    @Override // android.hardware.camera2.CameraDevice
    public CaptureRequest.Builder createCaptureRequest(int i2) {
        CaptureRequest.Builder builder;
        synchronized (this.mLock) {
            checkIfCameraClosed();
            CameraMetadataNative cameraMetadataNative = new CameraMetadataNative();
            try {
                try {
                    this.mRemoteDevice.createDefaultRequest(i2, cameraMetadataNative);
                    builder = new CaptureRequest.Builder(cameraMetadataNative);
                } catch (CameraRuntimeException e2) {
                    throw e2.asChecked();
                }
            } catch (RemoteException unused) {
                return null;
            }
        }
        return builder;
    }

    public void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }

    @Override // android.hardware.camera2.CameraDevice
    public void flush() {
        synchronized (this.mLock) {
            checkIfCameraClosed();
            this.mDeviceHandler.post(this.mCallOnBusy);
            try {
                try {
                    this.mRemoteDevice.flush();
                } catch (CameraRuntimeException e2) {
                    throw e2.asChecked();
                }
            } catch (RemoteException unused) {
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

    public void setRemoteDevice(ICameraDeviceUser iCameraDeviceUser) {
        synchronized (this.mLock) {
            this.mRemoteDevice = (ICameraDeviceUser) CameraBinderDecorator.newInstance(iCameraDeviceUser);
            this.mDeviceHandler.post(this.mCallOnOpened);
            this.mDeviceHandler.post(this.mCallOnUnconfigured);
        }
    }

    @Override // android.hardware.camera2.CameraDevice
    public int setRepeatingBurst(List<CaptureRequest> list, android.hardware.camera2.CameraDevice.CaptureListener captureListener, Handler handler) {
        if (!list.isEmpty()) {
            throw new UnsupportedOperationException("Burst capture implemented yet");
        }
        Log.w(this.TAG, "Set Repeating burst request list is empty, do nothing!");
        return -1;
    }

    @Override // android.hardware.camera2.CameraDevice
    public int setRepeatingRequest(CaptureRequest captureRequest, android.hardware.camera2.CameraDevice.CaptureListener captureListener, Handler handler) {
        return submitCaptureRequest(captureRequest, captureListener, handler, true);
    }

    @Override // android.hardware.camera2.CameraDevice
    public void stopRepeating() {
        synchronized (this.mLock) {
            checkIfCameraClosed();
            int i2 = this.mRepeatingRequestId;
            if (i2 != -1) {
                this.mRepeatingRequestId = -1;
                this.mRepeatingRequestIdDeletedList.add(Integer.valueOf(i2));
                try {
                    this.mRemoteDevice.cancelRequest(i2);
                } catch (CameraRuntimeException e2) {
                    throw e2.asChecked();
                } catch (RemoteException unused) {
                }
            }
        }
    }

    @Override // android.hardware.camera2.CameraDevice
    public void waitUntilIdle() {
        synchronized (this.mLock) {
            checkIfCameraClosed();
            if (this.mRepeatingRequestId != -1) {
                throw new IllegalStateException("Active repeating request ongoing");
            }
            try {
                this.mRemoteDevice.waitUntilIdle();
                this.mRepeatingRequestId = -1;
                this.mRepeatingRequestIdDeletedList.clear();
                this.mCaptureListenerMap.clear();
            } catch (CameraRuntimeException e2) {
                throw e2.asChecked();
            } catch (RemoteException unused) {
            }
        }
    }
}
