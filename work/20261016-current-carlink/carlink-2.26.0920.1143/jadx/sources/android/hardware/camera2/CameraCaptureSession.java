package android.hardware.camera2;

import android.hardware.camera2.params.OutputConfiguration;
import android.os.Handler;
import android.view.Surface;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class CameraCaptureSession implements AutoCloseable {
    public static final int SESSION_ID_NONE = -1;

    public static abstract class CaptureCallback {
        public static final int NO_FRAMES_CAPTURED = -1;

        public void onCaptureBufferLost(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, Surface surface, long j2) {
        }

        public void onCaptureCompleted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, TotalCaptureResult totalCaptureResult) {
        }

        public void onCaptureFailed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureFailure captureFailure) {
        }

        public void onCapturePartial(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
        }

        public void onCaptureProgressed(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, CaptureResult captureResult) {
        }

        public void onCaptureSequenceAborted(CameraCaptureSession cameraCaptureSession, int i2) {
        }

        public void onCaptureSequenceCompleted(CameraCaptureSession cameraCaptureSession, int i2, long j2) {
        }

        public void onCaptureStarted(CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, long j2, long j3) {
        }
    }

    public static abstract class StateCallback {
        public void onActive(CameraCaptureSession cameraCaptureSession) {
        }

        public void onCaptureQueueEmpty(CameraCaptureSession cameraCaptureSession) {
        }

        public void onClosed(CameraCaptureSession cameraCaptureSession) {
        }

        public abstract void onConfigureFailed(CameraCaptureSession cameraCaptureSession);

        public abstract void onConfigured(CameraCaptureSession cameraCaptureSession);

        public void onReady(CameraCaptureSession cameraCaptureSession) {
        }

        public void onSurfacePrepared(CameraCaptureSession cameraCaptureSession, Surface surface) {
        }
    }

    public abstract void abortCaptures();

    public abstract int capture(CaptureRequest captureRequest, CaptureCallback captureCallback, Handler handler);

    public abstract int captureBurst(List<CaptureRequest> list, CaptureCallback captureCallback, Handler handler);

    @Override // java.lang.AutoCloseable
    public abstract void close();

    public abstract void finalizeOutputConfigurations(List<OutputConfiguration> list);

    public abstract CameraDevice getDevice();

    public abstract Surface getInputSurface();

    public abstract boolean isReprocessable();

    public abstract void prepare(int i2, Surface surface);

    public abstract void prepare(Surface surface);

    public abstract int setRepeatingBurst(List<CaptureRequest> list, CaptureCallback captureCallback, Handler handler);

    public abstract int setRepeatingRequest(CaptureRequest captureRequest, CaptureCallback captureCallback, Handler handler);

    public abstract void stopRepeating();

    public abstract void tearDown(Surface surface);
}
