package android.hardware.camera2;

import android.content.Context;
import android.hardware.ICameraService;
import android.hardware.ICameraServiceListener;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.hardware.camera2.utils.BinderHolder;
import android.hardware.camera2.utils.CameraBinderDecorator;
import android.hardware.camera2.utils.CameraRuntimeException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.ArrayMap;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class CameraManager {
    private static final String CAMERA_SERVICE_BINDER_NAME = "media.camera";
    private static final int USE_CALLING_UID = -1;
    private final ICameraService mCameraService;
    private final Context mContext;
    private ArrayList<String> mDeviceIdList;
    private final ArrayMap<AvailabilityListener, Handler> mListenerMap = new ArrayMap<>();
    private final Object mLock = new Object();

    public static abstract class AvailabilityListener {
        public void onCameraAvailable(String str) {
        }

        public void onCameraUnavailable(String str) {
        }
    }

    public class CameraServiceListener extends ICameraServiceListener.Stub {
        public static final int STATUS_ENUMERATING = 2;
        public static final int STATUS_NOT_AVAILABLE = Integer.MIN_VALUE;
        public static final int STATUS_NOT_PRESENT = 0;
        public static final int STATUS_PRESENT = 1;
        private static final String TAG = "CameraServiceListener";
        private final ArrayMap<String, Integer> mDeviceStatus;

        private CameraServiceListener() {
            this.mDeviceStatus = new ArrayMap<>();
        }

        private boolean isAvailable(int i2) {
            return i2 == 1;
        }

        private boolean validStatus(int i2) {
            return i2 == Integer.MIN_VALUE || i2 == 0 || i2 == 1 || i2 == 2;
        }

        @Override // android.hardware.ICameraServiceListener.Stub, android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.hardware.ICameraServiceListener
        public void onStatusChanged(int i2, int i3) {
            synchronized (CameraManager.this.mLock) {
                Log.v(TAG, String.format("Camera id %d has status changed to 0x%x", Integer.valueOf(i3), Integer.valueOf(i2)));
                final String strValueOf = String.valueOf(i3);
                if (!validStatus(i2)) {
                    Log.e(TAG, String.format("Ignoring invalid device %d status 0x%x", Integer.valueOf(i3), Integer.valueOf(i2)));
                    return;
                }
                Integer numPut = this.mDeviceStatus.put(strValueOf, Integer.valueOf(i2));
                if (numPut != null && numPut.intValue() == i2) {
                    Log.v(TAG, String.format("Device status changed to 0x%x, which is what it already was", Integer.valueOf(i2)));
                    return;
                }
                if (numPut != null && isAvailable(i2) == isAvailable(numPut.intValue())) {
                    Log.v(TAG, String.format("Device status was previously available (%d),  and is now again available (%d)so no new client visible update will be sent", Boolean.valueOf(isAvailable(i2)), Boolean.valueOf(isAvailable(i2))));
                    return;
                }
                int size = CameraManager.this.mListenerMap.size();
                for (int i4 = 0; i4 < size; i4++) {
                    Handler handler = (Handler) CameraManager.this.mListenerMap.valueAt(i4);
                    final AvailabilityListener availabilityListener = (AvailabilityListener) CameraManager.this.mListenerMap.keyAt(i4);
                    if (isAvailable(i2)) {
                        handler.post(new Runnable() { // from class: android.hardware.camera2.CameraManager.CameraServiceListener.1
                            @Override // java.lang.Runnable
                            public void run() {
                                availabilityListener.onCameraAvailable(strValueOf);
                            }
                        });
                    } else {
                        handler.post(new Runnable() { // from class: android.hardware.camera2.CameraManager.CameraServiceListener.2
                            @Override // java.lang.Runnable
                            public void run() {
                                availabilityListener.onCameraUnavailable(strValueOf);
                            }
                        });
                    }
                }
            }
        }
    }

    public CameraManager(Context context) {
        this.mContext = context;
        ICameraService iCameraService = (ICameraService) CameraBinderDecorator.newInstance(ICameraService.Stub.asInterface(ServiceManager.getService(CAMERA_SERVICE_BINDER_NAME)));
        this.mCameraService = iCameraService;
        try {
            iCameraService.addListener(new CameraServiceListener());
        } catch (CameraRuntimeException e2) {
            throw new IllegalStateException("Failed to register a camera service listener", e2.asChecked());
        } catch (RemoteException unused) {
        }
    }

    private ArrayList<String> getOrCreateDeviceIdListLocked() throws CameraAccessException {
        boolean z2;
        if (this.mDeviceIdList == null) {
            try {
                int numberOfCameras = this.mCameraService.getNumberOfCameras();
                this.mDeviceIdList = new ArrayList<>();
                CameraMetadataNative cameraMetadataNative = new CameraMetadataNative();
                for (int i2 = 0; i2 < numberOfCameras; i2++) {
                    try {
                        this.mCameraService.getCameraCharacteristics(i2, cameraMetadataNative);
                        if (cameraMetadataNative.isEmpty()) {
                            throw new AssertionError("Expected to get non-empty characteristics");
                        }
                        z2 = true;
                        if (z2) {
                            this.mDeviceIdList.add(String.valueOf(i2));
                        }
                    } catch (CameraRuntimeException e2) {
                        throw e2.asChecked();
                    } catch (RemoteException | IllegalArgumentException unused) {
                        z2 = false;
                    }
                }
            } catch (CameraRuntimeException e3) {
                throw e3.asChecked();
            } catch (RemoteException unused2) {
                return null;
            }
        }
        return this.mDeviceIdList;
    }

    private void openCameraDeviceUserAsync(String str, CameraDevice.StateListener stateListener, Handler handler) throws CameraAccessException {
        try {
            synchronized (this.mLock) {
                try {
                    android.hardware.camera2.impl.CameraDevice cameraDevice = new android.hardware.camera2.impl.CameraDevice(str, stateListener, handler);
                    BinderHolder binderHolder = new BinderHolder();
                    this.mCameraService.connectDevice(cameraDevice.getCallbacks(), Integer.parseInt(str), this.mContext.getPackageName(), -1, binderHolder);
                    cameraDevice.setRemoteDevice(ICameraDeviceUser.Stub.asInterface(binderHolder.getBinder()));
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (CameraRuntimeException e2) {
            throw e2.asChecked();
        } catch (RemoteException unused) {
        } catch (NumberFormatException unused2) {
            throw new IllegalArgumentException("Expected cameraId to be numeric, but it was: " + str);
        }
    }

    public void addAvailabilityListener(AvailabilityListener availabilityListener, Handler handler) {
        if (handler == null) {
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper == null) {
                throw new IllegalArgumentException("No handler given, and current thread has no looper!");
            }
            handler = new Handler(looperMyLooper);
        }
        synchronized (this.mLock) {
            this.mListenerMap.put(availabilityListener, handler);
        }
    }

    public CameraCharacteristics getCameraCharacteristics(String str) throws CameraAccessException {
        synchronized (this.mLock) {
            if (!getOrCreateDeviceIdListLocked().contains(str)) {
                throw new IllegalArgumentException(String.format("Camera id %s does not match any currently connected camera device", str));
            }
        }
        CameraMetadataNative cameraMetadataNative = new CameraMetadataNative();
        try {
            this.mCameraService.getCameraCharacteristics(Integer.valueOf(str).intValue(), cameraMetadataNative);
            return new CameraCharacteristics(cameraMetadataNative);
        } catch (CameraRuntimeException e2) {
            throw e2.asChecked();
        } catch (RemoteException unused) {
            return null;
        }
    }

    public String[] getCameraIdList() {
        String[] strArr;
        synchronized (this.mLock) {
            try {
                try {
                    strArr = (String[]) getOrCreateDeviceIdListLocked().toArray(new String[0]);
                } catch (CameraAccessException e2) {
                    throw new IllegalStateException("Failed to query camera service for device ID list", e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return strArr;
    }

    public void openCamera(String str, CameraDevice.StateListener stateListener, Handler handler) throws CameraAccessException {
        if (str == null) {
            throw new IllegalArgumentException("cameraId was null");
        }
        if (stateListener == null) {
            throw new IllegalArgumentException("listener was null");
        }
        if (handler == null) {
            if (Looper.myLooper() == null) {
                throw new IllegalArgumentException("Looper doesn't exist in the calling thread");
            }
            handler = new Handler();
        }
        openCameraDeviceUserAsync(str, stateListener, handler);
    }

    public void removeAvailabilityListener(AvailabilityListener availabilityListener) {
        synchronized (this.mLock) {
            this.mListenerMap.remove(availabilityListener);
        }
    }
}
