package android.os;

/* JADX INFO: loaded from: classes.dex */
public class UpdateEngine {
    private static final String TAG = "UpdateEngine";
    private static final String UPDATE_ENGINE_SERVICE = "android.os.UpdateEngineService";
    private IUpdateEngineCallback mUpdateEngineCallback = null;
    private final Object mUpdateEngineCallbackLock = new Object();
    private IUpdateEngine mUpdateEngine = IUpdateEngine.Stub.asInterface(ServiceManager.getService(UPDATE_ENGINE_SERVICE));

    public static final class ErrorCodeConstants {
        public static final int DOWNLOAD_PAYLOAD_VERIFICATION_ERROR = 12;
        public static final int DOWNLOAD_TRANSFER_ERROR = 9;
        public static final int ERROR = 1;
        public static final int FILESYSTEM_COPIER_ERROR = 4;
        public static final int INSTALL_DEVICE_OPEN_ERROR = 7;
        public static final int KERNEL_DEVICE_OPEN_ERROR = 8;
        public static final int PAYLOAD_HASH_MISMATCH_ERROR = 10;
        public static final int PAYLOAD_MISMATCHED_TYPE_ERROR = 6;
        public static final int PAYLOAD_SIZE_MISMATCH_ERROR = 11;
        public static final int POST_INSTALL_RUNNER_ERROR = 5;
        public static final int SUCCESS = 0;
    }

    public static final class UpdateStatusConstants {
        public static final int ATTEMPTING_ROLLBACK = 8;
        public static final int CHECKING_FOR_UPDATE = 1;
        public static final int DISABLED = 9;
        public static final int DOWNLOADING = 3;
        public static final int FINALIZING = 5;
        public static final int IDLE = 0;
        public static final int REPORTING_ERROR_EVENT = 7;
        public static final int UPDATED_NEED_REBOOT = 6;
        public static final int UPDATE_AVAILABLE = 2;
        public static final int VERIFYING = 4;
    }

    public void applyPayload(String str, long j2, long j3, String[] strArr) {
        try {
            this.mUpdateEngine.applyPayload(str, j2, j3, strArr);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean bind(final UpdateEngineCallback updateEngineCallback, final Handler handler) {
        boolean zBind;
        synchronized (this.mUpdateEngineCallbackLock) {
            IUpdateEngineCallback.Stub stub = new IUpdateEngineCallback.Stub() { // from class: android.os.UpdateEngine.1
                @Override // android.os.IUpdateEngineCallback
                public void onPayloadApplicationComplete(final int i2) {
                    Handler handler2 = handler;
                    if (handler2 != null) {
                        handler2.post(new Runnable() { // from class: android.os.UpdateEngine.1.2
                            @Override // java.lang.Runnable
                            public void run() {
                                updateEngineCallback.onPayloadApplicationComplete(i2);
                            }
                        });
                    } else {
                        updateEngineCallback.onPayloadApplicationComplete(i2);
                    }
                }

                @Override // android.os.IUpdateEngineCallback
                public void onStatusUpdate(final int i2, final float f2) {
                    Handler handler2 = handler;
                    if (handler2 != null) {
                        handler2.post(new Runnable() { // from class: android.os.UpdateEngine.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                updateEngineCallback.onStatusUpdate(i2, f2);
                            }
                        });
                    } else {
                        updateEngineCallback.onStatusUpdate(i2, f2);
                    }
                }
            };
            this.mUpdateEngineCallback = stub;
            try {
                zBind = this.mUpdateEngine.bind(stub);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        return zBind;
    }

    public void cancel() {
        try {
            this.mUpdateEngine.cancel();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void resetStatus() {
        try {
            this.mUpdateEngine.resetStatus();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void resume() {
        try {
            this.mUpdateEngine.resume();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void suspend() {
        try {
            this.mUpdateEngine.suspend();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean unbind() {
        synchronized (this.mUpdateEngineCallbackLock) {
            IUpdateEngineCallback iUpdateEngineCallback = this.mUpdateEngineCallback;
            if (iUpdateEngineCallback == null) {
                return true;
            }
            try {
                boolean zUnbind = this.mUpdateEngine.unbind(iUpdateEngineCallback);
                this.mUpdateEngineCallback = null;
                return zUnbind;
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public boolean bind(UpdateEngineCallback updateEngineCallback) {
        return bind(updateEngineCallback, null);
    }
}
