package android.hardware.camera2.impl;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraConstrainedHighSpeedCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.StreamConfigurationMap;
import android.hardware.camera2.utils.SurfaceUtils;
import android.os.Handler;
import android.util.Range;
import android.view.Surface;
import com.android.internal.util.Preconditions;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CameraConstrainedHighSpeedCaptureSessionImpl extends CameraConstrainedHighSpeedCaptureSession implements CameraCaptureSessionCore {
    private final CameraCharacteristics mCharacteristics;
    private final CameraCaptureSessionImpl mSessionImpl;

    public class WrapperCallback extends CameraCaptureSession.StateCallback {
        private final CameraCaptureSession.StateCallback mCallback;

        public WrapperCallback(CameraCaptureSession.StateCallback stateCallback) {
            this.mCallback = stateCallback;
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onActive(CameraCaptureSession cameraCaptureSession) {
            this.mCallback.onActive(CameraConstrainedHighSpeedCaptureSessionImpl.this);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onCaptureQueueEmpty(CameraCaptureSession cameraCaptureSession) {
            this.mCallback.onCaptureQueueEmpty(CameraConstrainedHighSpeedCaptureSessionImpl.this);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onClosed(CameraCaptureSession cameraCaptureSession) {
            this.mCallback.onClosed(CameraConstrainedHighSpeedCaptureSessionImpl.this);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
            this.mCallback.onConfigureFailed(CameraConstrainedHighSpeedCaptureSessionImpl.this);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) {
            this.mCallback.onConfigured(CameraConstrainedHighSpeedCaptureSessionImpl.this);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onReady(CameraCaptureSession cameraCaptureSession) {
            this.mCallback.onReady(CameraConstrainedHighSpeedCaptureSessionImpl.this);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onSurfacePrepared(CameraCaptureSession cameraCaptureSession, Surface surface) {
            this.mCallback.onSurfacePrepared(CameraConstrainedHighSpeedCaptureSessionImpl.this, surface);
        }
    }

    public CameraConstrainedHighSpeedCaptureSessionImpl(int i2, CameraCaptureSession.StateCallback stateCallback, Handler handler, CameraDeviceImpl cameraDeviceImpl, Handler handler2, boolean z2, CameraCharacteristics cameraCharacteristics) {
        this.mCharacteristics = cameraCharacteristics;
        this.mSessionImpl = new CameraCaptureSessionImpl(i2, null, new WrapperCallback(stateCallback), handler, cameraDeviceImpl, handler2, z2);
    }

    private boolean isConstrainedHighSpeedRequestList(List<CaptureRequest> list) {
        Preconditions.checkCollectionNotEmpty(list, "High speed request list");
        Iterator<CaptureRequest> it = list.iterator();
        while (it.hasNext()) {
            if (!it.next().isPartOfCRequestList()) {
                return false;
            }
        }
        return true;
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void abortCaptures() {
        this.mSessionImpl.abortCaptures();
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int capture(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        throw new UnsupportedOperationException("Constrained high speed session doesn't support this method");
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int captureBurst(List<CaptureRequest> list, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        if (isConstrainedHighSpeedRequestList(list)) {
            return this.mSessionImpl.captureBurst(list, captureCallback, handler);
        }
        throw new IllegalArgumentException("Only request lists created by createHighSpeedRequestList() can be submitted to a constrained high speed capture session");
    }

    @Override // android.hardware.camera2.CameraCaptureSession, java.lang.AutoCloseable
    public void close() {
        this.mSessionImpl.close();
    }

    @Override // android.hardware.camera2.CameraConstrainedHighSpeedCaptureSession
    public List<CaptureRequest> createHighSpeedRequestList(CaptureRequest captureRequest) {
        CaptureRequest.Builder builder;
        if (captureRequest == null) {
            throw new IllegalArgumentException("Input capture request must not be null");
        }
        Collection<Surface> targets = captureRequest.getTargets();
        Range range = (Range) captureRequest.get(CaptureRequest.CONTROL_AE_TARGET_FPS_RANGE);
        SurfaceUtils.checkConstrainedHighSpeedSurfaces(targets, range, (StreamConfigurationMap) this.mCharacteristics.get(CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP));
        int iIntValue = ((Integer) range.getUpper()).intValue() / 30;
        ArrayList arrayList = new ArrayList();
        CaptureRequest.Builder builder2 = new CaptureRequest.Builder(new CameraMetadataNative(captureRequest.getNativeCopy()), false, -1);
        builder2.setTag(captureRequest.getTag());
        Iterator<Surface> it = targets.iterator();
        Surface next = it.next();
        if (targets.size() == 1 && SurfaceUtils.isSurfaceForHwVideoEncoder(next)) {
            builder2.set(CaptureRequest.CONTROL_CAPTURE_INTENT, 1);
        } else {
            builder2.set(CaptureRequest.CONTROL_CAPTURE_INTENT, 3);
        }
        builder2.setPartOfCHSRequestList(true);
        if (targets.size() == 2) {
            builder = new CaptureRequest.Builder(new CameraMetadataNative(captureRequest.getNativeCopy()), false, -1);
            builder.setTag(captureRequest.getTag());
            builder.set(CaptureRequest.CONTROL_CAPTURE_INTENT, 3);
            builder.addTarget(next);
            Surface next2 = it.next();
            builder.addTarget(next2);
            builder.setPartOfCHSRequestList(true);
            if (!SurfaceUtils.isSurfaceForHwVideoEncoder(next)) {
                next = next2;
            }
            builder2.addTarget(next);
        } else {
            builder2.addTarget(next);
            builder = null;
        }
        for (int i2 = 0; i2 < iIntValue; i2++) {
            if (i2 != 0 || builder == null) {
                arrayList.add(builder2.build());
            } else {
                arrayList.add(builder.build());
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void finalizeOutputConfigurations(List<OutputConfiguration> list) {
        this.mSessionImpl.finalizeOutputConfigurations(list);
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public CameraDevice getDevice() {
        return this.mSessionImpl.getDevice();
    }

    @Override // android.hardware.camera2.impl.CameraCaptureSessionCore
    public CameraDeviceImpl.StateCallbackKK getDeviceStateCallback() {
        return this.mSessionImpl.getDeviceStateCallback();
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public Surface getInputSurface() {
        return null;
    }

    @Override // android.hardware.camera2.impl.CameraCaptureSessionCore
    public boolean isAborting() {
        return this.mSessionImpl.isAborting();
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public boolean isReprocessable() {
        return false;
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void prepare(Surface surface) {
        this.mSessionImpl.prepare(surface);
    }

    @Override // android.hardware.camera2.impl.CameraCaptureSessionCore
    public void replaceSessionClose() {
        this.mSessionImpl.replaceSessionClose();
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int setRepeatingBurst(List<CaptureRequest> list, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        if (isConstrainedHighSpeedRequestList(list)) {
            return this.mSessionImpl.setRepeatingBurst(list, captureCallback, handler);
        }
        throw new IllegalArgumentException("Only request lists created by createHighSpeedRequestList() can be submitted to a constrained high speed capture session");
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public int setRepeatingRequest(CaptureRequest captureRequest, CameraCaptureSession.CaptureCallback captureCallback, Handler handler) {
        throw new UnsupportedOperationException("Constrained high speed session doesn't support this method");
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void stopRepeating() {
        this.mSessionImpl.stopRepeating();
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void tearDown(Surface surface) {
        this.mSessionImpl.tearDown(surface);
    }

    @Override // android.hardware.camera2.CameraCaptureSession
    public void prepare(int i2, Surface surface) {
        this.mSessionImpl.prepare(i2, surface);
    }
}
