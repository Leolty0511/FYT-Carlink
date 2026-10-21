package android.app.backup;

import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import android.util.Pair;

/* JADX INFO: loaded from: classes.dex */
public class BackupManager {
    public static final int ERROR_AGENT_FAILURE = -1003;
    public static final int ERROR_BACKUP_CANCELLED = -2003;
    public static final int ERROR_BACKUP_NOT_ALLOWED = -2001;
    public static final int ERROR_PACKAGE_NOT_FOUND = -2002;
    public static final int ERROR_TRANSPORT_ABORTED = -1000;
    public static final int ERROR_TRANSPORT_INVALID = -2;
    public static final int ERROR_TRANSPORT_PACKAGE_REJECTED = -1002;
    public static final int ERROR_TRANSPORT_QUOTA_EXCEEDED = -1005;
    public static final int ERROR_TRANSPORT_UNAVAILABLE = -1;
    public static final String EXTRA_BACKUP_SERVICES_AVAILABLE = "backup_services_available";
    public static final int FLAG_NON_INCREMENTAL_BACKUP = 1;
    public static final String PACKAGE_MANAGER_SENTINEL = "@pm@";
    public static final int SUCCESS = 0;
    private static final String TAG = "BackupManager";
    private static IBackupManager sService;
    private Context mContext;

    public class BackupManagerMonitorWrapper extends IBackupManagerMonitor.Stub {
        final BackupManagerMonitor mMonitor;

        public BackupManagerMonitorWrapper(BackupManagerMonitor backupManagerMonitor) {
            this.mMonitor = backupManagerMonitor;
        }

        @Override // android.app.backup.IBackupManagerMonitor
        public void onEvent(Bundle bundle) {
            this.mMonitor.onEvent(bundle);
        }
    }

    public class BackupObserverWrapper extends IBackupObserver.Stub {
        static final int MSG_FINISHED = 3;
        static final int MSG_RESULT = 2;
        static final int MSG_UPDATE = 1;
        final Handler mHandler;
        final BackupObserver mObserver;

        public BackupObserverWrapper(Context context, BackupObserver backupObserver) {
            this.mHandler = new Handler(context.getMainLooper()) { // from class: android.app.backup.BackupManager.BackupObserverWrapper.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    int i2 = message.what;
                    if (i2 == 1) {
                        Pair pair = (Pair) message.obj;
                        BackupObserverWrapper.this.mObserver.onUpdate((String) pair.first, (BackupProgress) pair.second);
                    } else if (i2 == 2) {
                        BackupObserverWrapper.this.mObserver.onResult((String) message.obj, message.arg1);
                    } else {
                        if (i2 == 3) {
                            BackupObserverWrapper.this.mObserver.backupFinished(message.arg1);
                            return;
                        }
                        Log.w(BackupManager.TAG, "Unknown message: " + message);
                    }
                }
            };
            this.mObserver = backupObserver;
        }

        @Override // android.app.backup.IBackupObserver
        public void backupFinished(int i2) {
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(3, i2, 0));
        }

        @Override // android.app.backup.IBackupObserver
        public void onResult(String str, int i2) {
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(2, i2, 0, str));
        }

        @Override // android.app.backup.IBackupObserver
        public void onUpdate(String str, BackupProgress backupProgress) {
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(1, Pair.create(str, backupProgress)));
        }
    }

    public class SelectTransportListenerWrapper extends ISelectBackupTransportCallback.Stub {
        private final Handler mHandler;
        private final SelectBackupTransportCallback mListener;

        public SelectTransportListenerWrapper(Context context, SelectBackupTransportCallback selectBackupTransportCallback) {
            this.mHandler = new Handler(context.getMainLooper());
            this.mListener = selectBackupTransportCallback;
        }

        @Override // android.app.backup.ISelectBackupTransportCallback
        public void onFailure(final int i2) {
            this.mHandler.post(new Runnable() { // from class: android.app.backup.BackupManager.SelectTransportListenerWrapper.2
                @Override // java.lang.Runnable
                public void run() {
                    SelectTransportListenerWrapper.this.mListener.onFailure(i2);
                }
            });
        }

        @Override // android.app.backup.ISelectBackupTransportCallback
        public void onSuccess(final String str) {
            this.mHandler.post(new Runnable() { // from class: android.app.backup.BackupManager.SelectTransportListenerWrapper.1
                @Override // java.lang.Runnable
                public void run() {
                    SelectTransportListenerWrapper.this.mListener.onSuccess(str);
                }
            });
        }
    }

    public BackupManager(Context context) {
        this.mContext = context;
    }

    private static void checkServiceBinder() {
        if (sService == null) {
            sService = IBackupManager.Stub.asInterface(ServiceManager.getService(Context.BACKUP_SERVICE));
        }
    }

    public void backupNow() {
        checkServiceBinder();
        IBackupManager iBackupManager = sService;
        if (iBackupManager != null) {
            try {
                iBackupManager.backupNow();
            } catch (RemoteException unused) {
                Log.e(TAG, "backupNow() couldn't connect");
            }
        }
    }

    public RestoreSession beginRestoreSession() {
        checkServiceBinder();
        IBackupManager iBackupManager = sService;
        if (iBackupManager == null) {
            return null;
        }
        try {
            IRestoreSession iRestoreSessionBeginRestoreSession = iBackupManager.beginRestoreSession(null, null);
            if (iRestoreSessionBeginRestoreSession != null) {
                return new RestoreSession(this.mContext, iRestoreSessionBeginRestoreSession);
            }
            return null;
        } catch (RemoteException unused) {
            Log.e(TAG, "beginRestoreSession() couldn't connect");
            return null;
        }
    }

    public void cancelBackups() {
        checkServiceBinder();
        IBackupManager iBackupManager = sService;
        if (iBackupManager != null) {
            try {
                iBackupManager.cancelBackups();
            } catch (RemoteException unused) {
                Log.e(TAG, "cancelBackups() couldn't connect.");
            }
        }
    }

    public void dataChanged() {
        checkServiceBinder();
        IBackupManager iBackupManager = sService;
        if (iBackupManager != null) {
            try {
                iBackupManager.dataChanged(this.mContext.getPackageName());
            } catch (RemoteException unused) {
                Log.d(TAG, "dataChanged() couldn't connect");
            }
        }
    }

    public long getAvailableRestoreToken(String str) {
        checkServiceBinder();
        IBackupManager iBackupManager = sService;
        if (iBackupManager == null) {
            return 0L;
        }
        try {
            return iBackupManager.getAvailableRestoreToken(str);
        } catch (RemoteException unused) {
            Log.e(TAG, "getAvailableRestoreToken() couldn't connect");
            return 0L;
        }
    }

    public String getCurrentTransport() {
        checkServiceBinder();
        IBackupManager iBackupManager = sService;
        if (iBackupManager == null) {
            return null;
        }
        try {
            return iBackupManager.getCurrentTransport();
        } catch (RemoteException unused) {
            Log.e(TAG, "getCurrentTransport() couldn't connect");
            return null;
        }
    }

    public boolean isAppEligibleForBackup(String str) {
        checkServiceBinder();
        IBackupManager iBackupManager = sService;
        if (iBackupManager == null) {
            return false;
        }
        try {
            return iBackupManager.isAppEligibleForBackup(str);
        } catch (RemoteException unused) {
            Log.e(TAG, "isAppEligibleForBackup(pkg) couldn't connect");
            return false;
        }
    }

    public boolean isBackupEnabled() {
        checkServiceBinder();
        IBackupManager iBackupManager = sService;
        if (iBackupManager == null) {
            return false;
        }
        try {
            return iBackupManager.isBackupEnabled();
        } catch (RemoteException unused) {
            Log.e(TAG, "isBackupEnabled() couldn't connect");
            return false;
        }
    }

    public String[] listAllTransports() {
        checkServiceBinder();
        IBackupManager iBackupManager = sService;
        if (iBackupManager == null) {
            return null;
        }
        try {
            return iBackupManager.listAllTransports();
        } catch (RemoteException unused) {
            Log.e(TAG, "listAllTransports() couldn't connect");
            return null;
        }
    }

    public int requestBackup(String[] strArr, BackupObserver backupObserver) {
        return requestBackup(strArr, backupObserver, null, 0);
    }

    public int requestRestore(RestoreObserver restoreObserver) {
        return requestRestore(restoreObserver, null);
    }

    @Deprecated
    public String selectBackupTransport(String str) {
        checkServiceBinder();
        IBackupManager iBackupManager = sService;
        if (iBackupManager == null) {
            return null;
        }
        try {
            return iBackupManager.selectBackupTransport(str);
        } catch (RemoteException unused) {
            Log.e(TAG, "selectBackupTransport() couldn't connect");
            return null;
        }
    }

    public void setAutoRestore(boolean z2) {
        checkServiceBinder();
        IBackupManager iBackupManager = sService;
        if (iBackupManager != null) {
            try {
                iBackupManager.setAutoRestore(z2);
            } catch (RemoteException unused) {
                Log.e(TAG, "setAutoRestore() couldn't connect");
            }
        }
    }

    public void setBackupEnabled(boolean z2) {
        checkServiceBinder();
        IBackupManager iBackupManager = sService;
        if (iBackupManager != null) {
            try {
                iBackupManager.setBackupEnabled(z2);
            } catch (RemoteException unused) {
                Log.e(TAG, "setBackupEnabled() couldn't connect");
            }
        }
    }

    public int requestBackup(String[] strArr, BackupObserver backupObserver, BackupManagerMonitor backupManagerMonitor, int i2) {
        BackupObserverWrapper backupObserverWrapper;
        checkServiceBinder();
        if (sService == null) {
            return -1;
        }
        BackupManagerMonitorWrapper backupManagerMonitorWrapper = null;
        if (backupObserver == null) {
            backupObserverWrapper = null;
        } else {
            try {
                backupObserverWrapper = new BackupObserverWrapper(this.mContext, backupObserver);
            } catch (RemoteException unused) {
                Log.e(TAG, "requestBackup() couldn't connect");
                return -1;
            }
        }
        if (backupManagerMonitor != null) {
            backupManagerMonitorWrapper = new BackupManagerMonitorWrapper(backupManagerMonitor);
        }
        return sService.requestBackup(strArr, backupObserverWrapper, backupManagerMonitorWrapper, i2);
    }

    public int requestRestore(RestoreObserver restoreObserver, BackupManagerMonitor backupManagerMonitor) throws Throwable {
        checkServiceBinder();
        IBackupManager iBackupManager = sService;
        int iRestorePackage = -1;
        if (iBackupManager != null) {
            RestoreSession restoreSession = null;
            try {
                try {
                    IRestoreSession iRestoreSessionBeginRestoreSession = iBackupManager.beginRestoreSession(this.mContext.getPackageName(), null);
                    if (iRestoreSessionBeginRestoreSession != null) {
                        RestoreSession restoreSession2 = new RestoreSession(this.mContext, iRestoreSessionBeginRestoreSession);
                        try {
                            iRestorePackage = restoreSession2.restorePackage(this.mContext.getPackageName(), restoreObserver, backupManagerMonitor);
                            restoreSession = restoreSession2;
                        } catch (RemoteException unused) {
                            restoreSession = restoreSession2;
                            Log.e(TAG, "restoreSelf() unable to contact service");
                            if (restoreSession != null) {
                            }
                            return iRestorePackage;
                        } catch (Throwable th) {
                            th = th;
                            restoreSession = restoreSession2;
                            if (restoreSession != null) {
                                restoreSession.endRestoreSession();
                            }
                            throw th;
                        }
                    }
                    if (restoreSession != null) {
                        restoreSession.endRestoreSession();
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (RemoteException unused2) {
            }
        }
        return iRestorePackage;
    }

    public static void dataChanged(String str) {
        checkServiceBinder();
        IBackupManager iBackupManager = sService;
        if (iBackupManager != null) {
            try {
                iBackupManager.dataChanged(str);
            } catch (RemoteException unused) {
                Log.e(TAG, "dataChanged(pkg) couldn't connect");
            }
        }
    }

    public void selectBackupTransport(ComponentName componentName, SelectBackupTransportCallback selectBackupTransportCallback) {
        SelectTransportListenerWrapper selectTransportListenerWrapper;
        checkServiceBinder();
        if (sService != null) {
            if (selectBackupTransportCallback == null) {
                selectTransportListenerWrapper = null;
            } else {
                try {
                    selectTransportListenerWrapper = new SelectTransportListenerWrapper(this.mContext, selectBackupTransportCallback);
                } catch (RemoteException unused) {
                    Log.e(TAG, "selectBackupTransportAsync() couldn't connect");
                    return;
                }
            }
            sService.selectBackupTransportAsync(componentName, selectTransportListenerWrapper);
        }
    }
}
