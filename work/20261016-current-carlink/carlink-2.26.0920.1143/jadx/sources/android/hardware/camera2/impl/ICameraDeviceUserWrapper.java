package android.hardware.camera2.impl;

import android.hardware.camera2.CameraManager;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.ICameraDeviceUser;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.utils.SubmitInfo;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.Surface;

/* JADX INFO: loaded from: classes.dex */
public class ICameraDeviceUserWrapper {
    protected final ICameraDeviceUser mRemoteDevice;

    public ICameraDeviceUserWrapper(ICameraDeviceUser iCameraDeviceUser) {
        if (iCameraDeviceUser == null) {
            throw new NullPointerException("Remote device may not be null");
        }
        this.mRemoteDevice = iCameraDeviceUser;
    }

    public void beginConfigure() {
        try {
            this.mRemoteDevice.beginConfigure();
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }

    public long cancelRequest(int i2) {
        try {
            return this.mRemoteDevice.cancelRequest(i2);
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }

    public CameraMetadataNative createDefaultRequest(int i2) {
        try {
            return this.mRemoteDevice.createDefaultRequest(i2);
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }

    public int createInputStream(int i2, int i3, int i4) {
        try {
            return this.mRemoteDevice.createInputStream(i2, i3, i4);
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }

    public int createStream(OutputConfiguration outputConfiguration) {
        try {
            return this.mRemoteDevice.createStream(outputConfiguration);
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }

    public void deleteStream(int i2) {
        try {
            this.mRemoteDevice.deleteStream(i2);
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }

    public void disconnect() {
        try {
            this.mRemoteDevice.disconnect();
        } catch (RemoteException unused) {
        }
    }

    public void endConfigure(int i2) {
        try {
            this.mRemoteDevice.endConfigure(i2);
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }

    public void finalizeOutputConfigurations(int i2, OutputConfiguration outputConfiguration) {
        try {
            this.mRemoteDevice.finalizeOutputConfigurations(i2, outputConfiguration);
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }

    public long flush() {
        try {
            return this.mRemoteDevice.flush();
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }

    public CameraMetadataNative getCameraInfo() {
        try {
            return this.mRemoteDevice.getCameraInfo();
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }

    public Surface getInputSurface() {
        try {
            return this.mRemoteDevice.getInputSurface();
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }

    public void prepare(int i2) {
        try {
            this.mRemoteDevice.prepare(i2);
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }

    public void prepare2(int i2, int i3) {
        try {
            this.mRemoteDevice.prepare2(i2, i3);
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }

    public SubmitInfo submitRequest(CaptureRequest captureRequest, boolean z2) {
        try {
            return this.mRemoteDevice.submitRequest(captureRequest, z2);
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }

    public SubmitInfo submitRequestList(CaptureRequest[] captureRequestArr, boolean z2) {
        try {
            return this.mRemoteDevice.submitRequestList(captureRequestArr, z2);
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }

    public void tearDown(int i2) {
        try {
            this.mRemoteDevice.tearDown(i2);
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }

    public void unlinkToDeath(IBinder.DeathRecipient deathRecipient, int i2) {
        if (this.mRemoteDevice.asBinder() != null) {
            this.mRemoteDevice.asBinder().unlinkToDeath(deathRecipient, i2);
        }
    }

    public void waitUntilIdle() {
        try {
            this.mRemoteDevice.waitUntilIdle();
        } catch (Throwable th) {
            CameraManager.throwAsPublicException(th);
            throw new UnsupportedOperationException("Unexpected exception", th);
        }
    }
}
