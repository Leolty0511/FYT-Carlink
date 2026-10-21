package android.hardware.camera2;

import android.app.ActivityThread;
import android.content.Context;
import android.hardware.Camera;
import android.hardware.CameraStatus;
import android.hardware.ICameraService;
import android.hardware.ICameraServiceListener;
import android.hardware.camera2.impl.CameraDeviceImpl;
import android.hardware.camera2.impl.CameraMetadataNative;
import android.hardware.camera2.legacy.CameraDeviceUserShim;
import android.hardware.camera2.legacy.LegacyMetadataMapper;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Binder;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.ServiceSpecificException;
import android.os.SystemProperties;
import android.util.ArrayMap;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class CameraManager {
    private static final int API_VERSION_1 = 1;
    private static final int API_VERSION_2 = 2;
    private static final int CAMERA_TYPE_ALL = 1;
    private static final int CAMERA_TYPE_BACKWARD_COMPATIBLE = 0;
    private static final String TAG = "CameraManager";
    private static final int USE_CALLING_UID = -1;
    private static final String[] privateList = {"com.android.camera2", "com.sprd.validationtools", "com.android.gallery3d"};
    private final boolean DEBUG = false;
    private final Context mContext;
    private ArrayList<String> mDeviceIdList;
    private final Object mLock;

    public static abstract class AvailabilityCallback {
        public void onCameraAvailable(String str) {
        }

        public void onCameraUnavailable(String str) {
        }
    }

    public static final class CameraManagerGlobal extends ICameraServiceListener.Stub implements IBinder.DeathRecipient {
        private static final String CAMERA_SERVICE_BINDER_NAME = "media.camera";
        private static final String TAG = "CameraManagerGlobal";
        private static final CameraManagerGlobal gCameraManager = new CameraManagerGlobal();
        public static final boolean sCameraServiceDisabled = SystemProperties.getBoolean("config.disable_cameraservice", false);
        private ICameraService mCameraService;
        private final boolean DEBUG = false;
        private final int CAMERA_SERVICE_RECONNECT_DELAY_MS = 1000;
        private final ArrayMap<String, Integer> mDeviceStatus = new ArrayMap<>();
        private final ArrayMap<AvailabilityCallback, Handler> mCallbackMap = new ArrayMap<>();
        private Binder mTorchClientBinder = new Binder();
        private final ArrayMap<String, Integer> mTorchStatus = new ArrayMap<>();
        private final ArrayMap<TorchCallback, Handler> mTorchCallbackMap = new ArrayMap<>();
        private final Object mLock = new Object();

        private CameraManagerGlobal() {
        }

        private void connectCameraServiceLocked() {
            if (this.mCameraService != null || sCameraServiceDisabled) {
                return;
            }
            Log.i(TAG, "Connecting to camera service");
            IBinder service = ServiceManager.getService(CAMERA_SERVICE_BINDER_NAME);
            if (service == null) {
                return;
            }
            try {
                service.linkToDeath(this, 0);
                ICameraService iCameraServiceAsInterface = ICameraService.Stub.asInterface(service);
                try {
                    CameraMetadataNative.setupGlobalVendorTagDescriptor();
                } catch (ServiceSpecificException e2) {
                    handleRecoverableSetupErrors(e2);
                }
                try {
                    for (CameraStatus cameraStatus : iCameraServiceAsInterface.addListener(this)) {
                        onStatusChangedLocked(cameraStatus.status, cameraStatus.cameraId);
                    }
                    this.mCameraService = iCameraServiceAsInterface;
                } catch (RemoteException unused) {
                } catch (ServiceSpecificException e3) {
                    throw new IllegalStateException("Failed to register a camera service listener", e3);
                }
            } catch (RemoteException unused2) {
            }
        }

        public static CameraManagerGlobal get() {
            return gCameraManager;
        }

        private void handleRecoverableSetupErrors(ServiceSpecificException serviceSpecificException) {
            if (serviceSpecificException.errorCode != 4) {
                throw new IllegalStateException(serviceSpecificException);
            }
            Log.w(TAG, serviceSpecificException.getMessage());
        }

        private boolean isAvailable(int i2) {
            return i2 == 1;
        }

        private void onStatusChangedLocked(int i2, String str) {
            if (!validStatus(i2)) {
                Log.e(TAG, String.format("Ignoring invalid device %s status 0x%x", str, Integer.valueOf(i2)));
                return;
            }
            Integer numPut = this.mDeviceStatus.put(str, Integer.valueOf(i2));
            if (numPut == null || numPut.intValue() != i2) {
                if (numPut == null || isAvailable(i2) != isAvailable(numPut.intValue())) {
                    int size = this.mCallbackMap.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        postSingleUpdate(this.mCallbackMap.keyAt(i3), this.mCallbackMap.valueAt(i3), str, i2);
                    }
                }
            }
        }

        private void onTorchStatusChangedLocked(int i2, String str) {
            if (!validTorchStatus(i2)) {
                Log.e(TAG, String.format("Ignoring invalid device %s torch status 0x%x", str, Integer.valueOf(i2)));
                return;
            }
            Integer numPut = this.mTorchStatus.put(str, Integer.valueOf(i2));
            if (numPut == null || numPut.intValue() != i2) {
                int size = this.mTorchCallbackMap.size();
                for (int i3 = 0; i3 < size; i3++) {
                    postSingleTorchUpdate(this.mTorchCallbackMap.keyAt(i3), this.mTorchCallbackMap.valueAt(i3), str, i2);
                }
            }
        }

        private void postSingleTorchUpdate(final TorchCallback torchCallback, Handler handler, final String str, final int i2) {
            if (i2 == 1 || i2 == 2) {
                handler.post(new Runnable() { // from class: android.hardware.camera2.CameraManager.CameraManagerGlobal.3
                    @Override // java.lang.Runnable
                    public void run() {
                        torchCallback.onTorchModeChanged(str, i2 == 2);
                    }
                });
            } else {
                handler.post(new Runnable() { // from class: android.hardware.camera2.CameraManager.CameraManagerGlobal.4
                    @Override // java.lang.Runnable
                    public void run() {
                        torchCallback.onTorchModeUnavailable(str);
                    }
                });
            }
        }

        private void postSingleUpdate(final AvailabilityCallback availabilityCallback, Handler handler, final String str, int i2) {
            if (Integer.parseInt(str) < Camera.getNumberOfCameras() || CameraManager.isPrivatePackage()) {
                if (Integer.parseInt(str) < Camera.getNumberOfCameras() || Integer.parseInt(str) == 12 || Integer.parseInt(str) == 15) {
                    if (isAvailable(i2)) {
                        handler.post(new Runnable() { // from class: android.hardware.camera2.CameraManager.CameraManagerGlobal.1
                            @Override // java.lang.Runnable
                            public void run() {
                                availabilityCallback.onCameraAvailable(str);
                            }
                        });
                    } else {
                        handler.post(new Runnable() { // from class: android.hardware.camera2.CameraManager.CameraManagerGlobal.2
                            @Override // java.lang.Runnable
                            public void run() {
                                availabilityCallback.onCameraUnavailable(str);
                            }
                        });
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void scheduleCameraServiceReconnectionLocked() {
            Handler handlerValueAt;
            if (this.mCallbackMap.size() > 0) {
                handlerValueAt = this.mCallbackMap.valueAt(0);
            } else if (this.mTorchCallbackMap.size() <= 0) {
                return;
            } else {
                handlerValueAt = this.mTorchCallbackMap.valueAt(0);
            }
            handlerValueAt.postDelayed(new Runnable() { // from class: android.hardware.camera2.CameraManager.CameraManagerGlobal.5
                @Override // java.lang.Runnable
                public void run() {
                    if (CameraManagerGlobal.this.getCameraService() == null) {
                        synchronized (CameraManagerGlobal.this.mLock) {
                            CameraManagerGlobal.this.scheduleCameraServiceReconnectionLocked();
                        }
                    }
                }
            }, 1000L);
        }

        private void updateCallbackLocked(AvailabilityCallback availabilityCallback, Handler handler) {
            for (int i2 = 0; i2 < this.mDeviceStatus.size(); i2++) {
                postSingleUpdate(availabilityCallback, handler, this.mDeviceStatus.keyAt(i2), this.mDeviceStatus.valueAt(i2).intValue());
            }
        }

        private void updateTorchCallbackLocked(TorchCallback torchCallback, Handler handler) {
            for (int i2 = 0; i2 < this.mTorchStatus.size(); i2++) {
                postSingleTorchUpdate(torchCallback, handler, this.mTorchStatus.keyAt(i2), this.mTorchStatus.valueAt(i2).intValue());
            }
        }

        private boolean validStatus(int i2) {
            return i2 == -2 || i2 == 0 || i2 == 1 || i2 == 2;
        }

        private boolean validTorchStatus(int i2) {
            return i2 == 0 || i2 == 1 || i2 == 2;
        }

        @Override // android.hardware.ICameraServiceListener.Stub, android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            synchronized (this.mLock) {
                if (this.mCameraService == null) {
                    return;
                }
                this.mCameraService = null;
                for (int i2 = 0; i2 < this.mDeviceStatus.size(); i2++) {
                    onStatusChangedLocked(0, this.mDeviceStatus.keyAt(i2));
                }
                for (int i3 = 0; i3 < this.mTorchStatus.size(); i3++) {
                    onTorchStatusChangedLocked(0, this.mTorchStatus.keyAt(i3));
                }
                scheduleCameraServiceReconnectionLocked();
            }
        }

        public String[] getCameraIdList() {
            String[] strArr;
            synchronized (this.mLock) {
                connectCameraServiceLocked();
                int numberOfCameras = 0;
                for (int i2 = 0; i2 < this.mDeviceStatus.size(); i2++) {
                    int iIntValue = this.mDeviceStatus.valueAt(i2).intValue();
                    if (iIntValue != 0 && iIntValue != 2) {
                        numberOfCameras++;
                    }
                }
                if (numberOfCameras > Camera.getNumberOfCameras()) {
                    numberOfCameras = Camera.getNumberOfCameras();
                }
                strArr = new String[numberOfCameras];
                int i3 = 0;
                for (int i4 = 0; i4 < this.mDeviceStatus.size(); i4++) {
                    int iIntValue2 = this.mDeviceStatus.valueAt(i4).intValue();
                    if (iIntValue2 != 0 && iIntValue2 != 2 && Integer.parseInt(this.mDeviceStatus.keyAt(i4)) < Camera.getNumberOfCameras()) {
                        strArr[i3] = this.mDeviceStatus.keyAt(i4);
                        i3++;
                    }
                }
            }
            return strArr;
        }

        public ICameraService getCameraService() {
            ICameraService iCameraService;
            synchronized (this.mLock) {
                connectCameraServiceLocked();
                if (this.mCameraService == null && !sCameraServiceDisabled) {
                    Log.e(TAG, "Camera service is unavailable");
                }
                iCameraService = this.mCameraService;
            }
            return iCameraService;
        }

        @Override // android.hardware.ICameraServiceListener
        public void onStatusChanged(int i2, String str) {
            synchronized (this.mLock) {
                onStatusChangedLocked(i2, str);
            }
        }

        @Override // android.hardware.ICameraServiceListener
        public void onTorchStatusChanged(int i2, String str) {
            synchronized (this.mLock) {
                onTorchStatusChangedLocked(i2, str);
            }
        }

        public void registerAvailabilityCallback(AvailabilityCallback availabilityCallback, Handler handler) {
            synchronized (this.mLock) {
                connectCameraServiceLocked();
                if (this.mCallbackMap.put(availabilityCallback, handler) == null) {
                    updateCallbackLocked(availabilityCallback, handler);
                }
                if (this.mCameraService == null) {
                    scheduleCameraServiceReconnectionLocked();
                }
            }
        }

        public void registerTorchCallback(TorchCallback torchCallback, Handler handler) {
            synchronized (this.mLock) {
                connectCameraServiceLocked();
                if (this.mTorchCallbackMap.put(torchCallback, handler) == null) {
                    updateTorchCallbackLocked(torchCallback, handler);
                }
                if (this.mCameraService == null) {
                    scheduleCameraServiceReconnectionLocked();
                }
            }
        }

        public void setTorchMode(String str, boolean z2) {
            synchronized (this.mLock) {
                try {
                    if (str == null) {
                        throw new IllegalArgumentException("cameraId was null");
                    }
                    ICameraService cameraService = getCameraService();
                    if (cameraService == null) {
                        throw new CameraAccessException(2, "Camera service is currently unavailable");
                    }
                    try {
                        cameraService.setTorchMode(str, z2, this.mTorchClientBinder);
                    } catch (RemoteException unused) {
                        throw new CameraAccessException(2, "Camera service is currently unavailable");
                    } catch (ServiceSpecificException e2) {
                        CameraManager.throwAsPublicException(e2);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void unregisterAvailabilityCallback(AvailabilityCallback availabilityCallback) {
            synchronized (this.mLock) {
                this.mCallbackMap.remove(availabilityCallback);
            }
        }

        public void unregisterTorchCallback(TorchCallback torchCallback) {
            synchronized (this.mLock) {
                this.mTorchCallbackMap.remove(torchCallback);
            }
        }
    }

    public static abstract class TorchCallback {
        public void onTorchModeChanged(String str, boolean z2) {
        }

        public void onTorchModeUnavailable(String str) {
        }
    }

    public CameraManager(Context context) {
        Object obj = new Object();
        this.mLock = obj;
        synchronized (obj) {
            this.mContext = context;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isPrivatePackage() {
        for (String str : privateList) {
            if (str.equals(ActivityThread.currentOpPackageName())) {
                return true;
            }
        }
        return false;
    }

    private CameraDevice openCameraDeviceUserAsync(String str, CameraDevice.StateCallback stateCallback, Handler handler, int i2) {
        CameraDeviceImpl cameraDeviceImpl;
        ICameraDeviceUser iCameraDeviceUserConnectBinderShim;
        CameraCharacteristics cameraCharacteristics = getCameraCharacteristics(str);
        synchronized (this.mLock) {
            cameraDeviceImpl = new CameraDeviceImpl(str, stateCallback, handler, cameraCharacteristics, this.mContext.getApplicationInfo().targetSdkVersion);
            CameraDeviceImpl.CameraDeviceCallbacks callbacks = cameraDeviceImpl.getCallbacks();
            ICameraDeviceUser iCameraDeviceUser = null;
            try {
                try {
                    if (SystemProperties.get("service.project.sec").equals(WifiEnterpriseConfig.ENGINE_ENABLE)) {
                        if (Binder.dojudge(Binder.getCallingUid(), "camera.camera", 8, 0, null) <= 0) {
                            Log.e(TAG, "openCameraDeviceUserAsync reject");
                            throw new SecurityException("openCameraDeviceUserAsync reject");
                        }
                        Log.e(TAG, "openCameraDeviceUserAsync allow");
                    }
                    if (supportsCamera2ApiLocked(str)) {
                        ICameraService cameraService = CameraManagerGlobal.get().getCameraService();
                        if (cameraService == null) {
                            throw new ServiceSpecificException(4, "Camera service is currently unavailable");
                        }
                        iCameraDeviceUserConnectBinderShim = cameraService.connectDevice(callbacks, str, this.mContext.getOpPackageName(), i2);
                    } else {
                        try {
                            int i3 = Integer.parseInt(str);
                            Log.i(TAG, "Using legacy camera HAL.");
                            iCameraDeviceUserConnectBinderShim = CameraDeviceUserShim.connectBinderShim(callbacks, i3);
                        } catch (NumberFormatException unused) {
                            throw new IllegalArgumentException("Expected cameraId to be numeric, but it was: " + str);
                        }
                    }
                    iCameraDeviceUser = iCameraDeviceUserConnectBinderShim;
                } catch (RemoteException unused2) {
                    ServiceSpecificException serviceSpecificException = new ServiceSpecificException(4, "Camera service is currently unavailable");
                    cameraDeviceImpl.setRemoteFailure(serviceSpecificException);
                    throwAsPublicException(serviceSpecificException);
                }
            } catch (ServiceSpecificException e2) {
                int i4 = e2.errorCode;
                if (i4 == 9) {
                    throw new AssertionError("Should've gone down the shim path");
                }
                if (i4 == 7 || i4 == 8 || i4 == 6 || i4 == 4 || i4 == 10) {
                    cameraDeviceImpl.setRemoteFailure(e2);
                    int i5 = e2.errorCode;
                    if (i5 == 6 || i5 == 4 || i5 == 7) {
                        throwAsPublicException(e2);
                    }
                } else {
                    throwAsPublicException(e2);
                }
            }
            cameraDeviceImpl.setRemoteDevice(iCameraDeviceUser);
        }
        return cameraDeviceImpl;
    }

    private boolean supportsCamera2ApiLocked(String str) {
        return supportsCameraApiLocked(str, 2);
    }

    private boolean supportsCameraApiLocked(String str, int i2) {
        try {
            ICameraService cameraService = CameraManagerGlobal.get().getCameraService();
            if (cameraService == null) {
                return false;
            }
            return cameraService.supportsCameraApi(str, i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public static void throwAsPublicException(Throwable th) {
        int i2 = 2;
        if (!(th instanceof ServiceSpecificException)) {
            if (th instanceof DeadObjectException) {
                throw new CameraAccessException(2, "Camera service has died unexpectedly", th);
            }
            if (th instanceof RemoteException) {
                throw new UnsupportedOperationException("An unknown RemoteException was thrown which should never happen.", th);
            }
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            }
            return;
        }
        ServiceSpecificException serviceSpecificException = (ServiceSpecificException) th;
        switch (serviceSpecificException.errorCode) {
            case 1:
                throw new SecurityException(serviceSpecificException.getMessage(), serviceSpecificException);
            case 2:
            case 3:
                throw new IllegalArgumentException(serviceSpecificException.getMessage(), serviceSpecificException);
            case 4:
                break;
            case 5:
            default:
                i2 = 3;
                break;
            case 6:
                i2 = 1;
                break;
            case 7:
                i2 = 4;
                break;
            case 8:
                i2 = 5;
                break;
            case 9:
                i2 = 1000;
                break;
        }
        throw new CameraAccessException(i2, serviceSpecificException.getMessage(), serviceSpecificException);
    }

    public CameraCharacteristics getCameraCharacteristics(String str) {
        CameraCharacteristics cameraCharacteristics;
        if (CameraManagerGlobal.sCameraServiceDisabled) {
            throw new IllegalArgumentException("No cameras available on device");
        }
        synchronized (this.mLock) {
            if (!Arrays.asList(getCameraIdList()).contains(str) && !isPrivatePackage()) {
                throw new IllegalArgumentException(String.format("Camera id %s does not match any currently connected camera device", str));
            }
            ICameraService cameraService = CameraManagerGlobal.get().getCameraService();
            if (cameraService == null) {
                throw new CameraAccessException(2, "Camera service is currently unavailable");
            }
            try {
                try {
                    if (supportsCamera2ApiLocked(str)) {
                        cameraCharacteristics = new CameraCharacteristics(cameraService.getCameraCharacteristics(str));
                    } else {
                        int i2 = Integer.parseInt(str);
                        cameraCharacteristics = LegacyMetadataMapper.createCharacteristics(cameraService.getLegacyParameters(i2), cameraService.getCameraInfo(i2));
                    }
                } catch (ServiceSpecificException e2) {
                    throwAsPublicException(e2);
                    cameraCharacteristics = null;
                }
            } catch (RemoteException e3) {
                throw new CameraAccessException(2, "Camera service is currently unavailable", e3);
            }
        }
        return cameraCharacteristics;
    }

    public String[] getCameraIdList() {
        return CameraManagerGlobal.get().getCameraIdList();
    }

    public void openCamera(String str, CameraDevice.StateCallback stateCallback, Handler handler) {
        openCameraForUid(str, stateCallback, handler, -1);
    }

    public void openCameraForUid(String str, CameraDevice.StateCallback stateCallback, Handler handler, int i2) {
        if (str == null) {
            throw new IllegalArgumentException("cameraId was null");
        }
        if (stateCallback == null) {
            throw new IllegalArgumentException("callback was null");
        }
        if (handler == null) {
            if (Looper.myLooper() == null) {
                throw new IllegalArgumentException("Handler argument is null, but no looper exists in the calling thread");
            }
            handler = new Handler();
        }
        if (CameraManagerGlobal.sCameraServiceDisabled) {
            throw new IllegalArgumentException("No cameras available on device");
        }
        openCameraDeviceUserAsync(str, stateCallback, handler, i2);
    }

    public void registerAvailabilityCallback(AvailabilityCallback availabilityCallback, Handler handler) {
        if (handler == null) {
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper == null) {
                throw new IllegalArgumentException("No handler given, and current thread has no looper!");
            }
            handler = new Handler(looperMyLooper);
        }
        CameraManagerGlobal.get().registerAvailabilityCallback(availabilityCallback, handler);
    }

    public void registerTorchCallback(TorchCallback torchCallback, Handler handler) {
        if (handler == null) {
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper == null) {
                throw new IllegalArgumentException("No handler given, and current thread has no looper!");
            }
            handler = new Handler(looperMyLooper);
        }
        CameraManagerGlobal.get().registerTorchCallback(torchCallback, handler);
    }

    public void setTorchMode(String str, boolean z2) {
        if (CameraManagerGlobal.sCameraServiceDisabled) {
            throw new IllegalArgumentException("No cameras available on device");
        }
        CameraManagerGlobal.get().setTorchMode(str, z2);
    }

    public void unregisterAvailabilityCallback(AvailabilityCallback availabilityCallback) {
        CameraManagerGlobal.get().unregisterAvailabilityCallback(availabilityCallback);
    }

    public void unregisterTorchCallback(TorchCallback torchCallback) {
        CameraManagerGlobal.get().unregisterTorchCallback(torchCallback);
    }
}
