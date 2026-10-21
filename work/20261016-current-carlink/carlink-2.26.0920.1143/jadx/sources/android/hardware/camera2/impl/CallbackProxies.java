package android.hardware.camera2.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.dispatch.Dispatchable;
import android.hardware.camera2.dispatch.MethodNameInvoker;
import android.view.Surface;
import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public class CallbackProxies {

    public static class DeviceCaptureCallbackProxy implements CameraDeviceImpl.CaptureCallback {
        private final MethodNameInvoker<CameraDeviceImpl.CaptureCallback> mProxy;

        public DeviceCaptureCallbackProxy(Dispatchable<CameraDeviceImpl.CaptureCallback> dispatchable) {
            this.mProxy = new MethodNameInvoker<>((Dispatchable) Preconditions.checkNotNull(dispatchable, "dispatchTarget must not be null"), CameraDeviceImpl.CaptureCallback.class);
        }

        @Override // android.hardware.camera2.impl.CameraDeviceImpl.CaptureCallback
        public void onCaptureBufferLost(CameraDevice cameraDevice, CaptureRequest captureRequest, Surface surface, long j2) throws Throwable {
            this.mProxy.invoke("onCaptureBufferLost", cameraDevice, captureRequest, surface, Long.valueOf(j2));
        }

        @Override // android.hardware.camera2.impl.CameraDeviceImpl.CaptureCallback
        public void onCaptureCompleted(CameraDevice cameraDevice, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) throws Throwable {
            this.mProxy.invoke("onCaptureCompleted", cameraDevice, captureRequest, totalCaptureResult);
        }

        @Override // android.hardware.camera2.impl.CameraDeviceImpl.CaptureCallback
        public void onCaptureFailed(CameraDevice cameraDevice, CaptureRequest captureRequest, CaptureFailure captureFailure) throws Throwable {
            this.mProxy.invoke("onCaptureFailed", cameraDevice, captureRequest, captureFailure);
        }

        @Override // android.hardware.camera2.impl.CameraDeviceImpl.CaptureCallback
        public void onCapturePartial(CameraDevice cameraDevice, CaptureRequest captureRequest, CaptureResult captureResult) throws Throwable {
            this.mProxy.invoke("onCapturePartial", cameraDevice, captureRequest, captureResult);
        }

        @Override // android.hardware.camera2.impl.CameraDeviceImpl.CaptureCallback
        public void onCaptureProgressed(CameraDevice cameraDevice, CaptureRequest captureRequest, CaptureResult captureResult) throws Throwable {
            this.mProxy.invoke("onCaptureProgressed", cameraDevice, captureRequest, captureResult);
        }

        @Override // android.hardware.camera2.impl.CameraDeviceImpl.CaptureCallback
        public void onCaptureSequenceAborted(CameraDevice cameraDevice, int i2) throws Throwable {
            this.mProxy.invoke("onCaptureSequenceAborted", cameraDevice, Integer.valueOf(i2));
        }

        @Override // android.hardware.camera2.impl.CameraDeviceImpl.CaptureCallback
        public void onCaptureSequenceCompleted(CameraDevice cameraDevice, int i2, long j2) throws Throwable {
            this.mProxy.invoke("onCaptureSequenceCompleted", cameraDevice, Integer.valueOf(i2), Long.valueOf(j2));
        }

        @Override // android.hardware.camera2.impl.CameraDeviceImpl.CaptureCallback
        public void onCaptureStarted(CameraDevice cameraDevice, CaptureRequest captureRequest, long j2, long j3) throws Throwable {
            this.mProxy.invoke("onCaptureStarted", cameraDevice, captureRequest, Long.valueOf(j2), Long.valueOf(j3));
        }
    }

    public static class DeviceStateCallbackProxy extends CameraDeviceImpl.StateCallbackKK {
        private final MethodNameInvoker<CameraDeviceImpl.StateCallbackKK> mProxy;

        public DeviceStateCallbackProxy(Dispatchable<CameraDeviceImpl.StateCallbackKK> dispatchable) {
            this.mProxy = new MethodNameInvoker<>((Dispatchable) Preconditions.checkNotNull(dispatchable, "dispatchTarget must not be null"), CameraDeviceImpl.StateCallbackKK.class);
        }

        @Override // android.hardware.camera2.impl.CameraDeviceImpl.StateCallbackKK
        public void onActive(CameraDevice cameraDevice) throws Throwable {
            this.mProxy.invoke("onActive", cameraDevice);
        }

        @Override // android.hardware.camera2.impl.CameraDeviceImpl.StateCallbackKK
        public void onBusy(CameraDevice cameraDevice) throws Throwable {
            this.mProxy.invoke("onBusy", cameraDevice);
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onClosed(CameraDevice cameraDevice) throws Throwable {
            this.mProxy.invoke("onClosed", cameraDevice);
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) throws Throwable {
            this.mProxy.invoke("onDisconnected", cameraDevice);
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i2) throws Throwable {
            this.mProxy.invoke("onError", cameraDevice, Integer.valueOf(i2));
        }

        @Override // android.hardware.camera2.impl.CameraDeviceImpl.StateCallbackKK
        public void onIdle(CameraDevice cameraDevice) throws Throwable {
            this.mProxy.invoke("onIdle", cameraDevice);
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(CameraDevice cameraDevice) throws Throwable {
            this.mProxy.invoke("onOpened", cameraDevice);
        }

        @Override // android.hardware.camera2.impl.CameraDeviceImpl.StateCallbackKK
        public void onUnconfigured(CameraDevice cameraDevice) throws Throwable {
            this.mProxy.invoke("onUnconfigured", cameraDevice);
        }
    }

    public static class SessionStateCallbackProxy extends CameraCaptureSession.StateCallback {
        private final MethodNameInvoker<CameraCaptureSession.StateCallback> mProxy;

        public SessionStateCallbackProxy(Dispatchable<CameraCaptureSession.StateCallback> dispatchable) {
            this.mProxy = new MethodNameInvoker<>((Dispatchable) Preconditions.checkNotNull(dispatchable, "dispatchTarget must not be null"), CameraCaptureSession.StateCallback.class);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onActive(CameraCaptureSession cameraCaptureSession) throws Throwable {
            this.mProxy.invoke("onActive", cameraCaptureSession);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onCaptureQueueEmpty(CameraCaptureSession cameraCaptureSession) throws Throwable {
            this.mProxy.invoke("onCaptureQueueEmpty", cameraCaptureSession);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onClosed(CameraCaptureSession cameraCaptureSession) throws Throwable {
            this.mProxy.invoke("onClosed", cameraCaptureSession);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) throws Throwable {
            this.mProxy.invoke("onConfigureFailed", cameraCaptureSession);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) throws Throwable {
            this.mProxy.invoke("onConfigured", cameraCaptureSession);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onReady(CameraCaptureSession cameraCaptureSession) throws Throwable {
            this.mProxy.invoke("onReady", cameraCaptureSession);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onSurfacePrepared(CameraCaptureSession cameraCaptureSession, Surface surface) throws Throwable {
            this.mProxy.invoke("onSurfacePrepared", cameraCaptureSession, surface);
        }
    }

    private CallbackProxies() {
        throw new AssertionError();
    }
}
