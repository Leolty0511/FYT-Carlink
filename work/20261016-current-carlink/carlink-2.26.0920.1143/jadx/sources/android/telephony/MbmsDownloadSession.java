package android.telephony;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.content.a;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.telephony.mbms.DownloadRequest;
import android.telephony.mbms.DownloadStateCallback;
import android.telephony.mbms.FileInfo;
import android.telephony.mbms.InternalDownloadSessionCallback;
import android.telephony.mbms.InternalDownloadStateCallback;
import android.telephony.mbms.MbmsDownloadReceiver;
import android.telephony.mbms.MbmsDownloadSessionCallback;
import android.telephony.mbms.MbmsTempFileProvider;
import android.telephony.mbms.MbmsUtils;
import android.telephony.mbms.vendor.IMbmsDownloadService;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public class MbmsDownloadSession implements AutoCloseable {
    public static final String DEFAULT_TOP_LEVEL_TEMP_DIRECTORY = "androidMbmsTempFileRoot";
    public static final String EXTRA_MBMS_COMPLETED_FILE_URI = "android.telephony.extra.MBMS_COMPLETED_FILE_URI";
    public static final String EXTRA_MBMS_DOWNLOAD_REQUEST = "android.telephony.extra.MBMS_DOWNLOAD_REQUEST";
    public static final String EXTRA_MBMS_DOWNLOAD_RESULT = "android.telephony.extra.MBMS_DOWNLOAD_RESULT";
    public static final String EXTRA_MBMS_FILE_INFO = "android.telephony.extra.MBMS_FILE_INFO";
    private static final String LOG_TAG = "MbmsDownloadSession";
    public static final String MBMS_DOWNLOAD_SERVICE_ACTION = "android.telephony.action.EmbmsDownload";
    public static final int RESULT_CANCELLED = 2;
    public static final int RESULT_EXPIRED = 3;
    public static final int RESULT_IO_ERROR = 4;
    public static final int RESULT_SUCCESSFUL = 1;
    public static final int STATUS_ACTIVELY_DOWNLOADING = 1;
    public static final int STATUS_PENDING_DOWNLOAD = 2;
    public static final int STATUS_PENDING_DOWNLOAD_WINDOW = 4;
    public static final int STATUS_PENDING_REPAIR = 3;
    public static final int STATUS_UNKNOWN = 0;
    private static AtomicBoolean sIsInitialized = new AtomicBoolean(false);
    private final Context mContext;
    private final InternalDownloadSessionCallback mInternalCallback;
    private int mSubscriptionId;
    private IBinder.DeathRecipient mDeathRecipient = new IBinder.DeathRecipient() { // from class: android.telephony.MbmsDownloadSession.1
        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            MbmsDownloadSession.this.sendErrorToApp(3, "Received death notification");
        }
    };
    private AtomicReference<IMbmsDownloadService> mService = new AtomicReference<>(null);
    private final Map<DownloadStateCallback, InternalDownloadStateCallback> mInternalDownloadCallbacks = new HashMap();

    @Retention(RetentionPolicy.SOURCE)
    public @interface DownloadStatus {
    }

    private MbmsDownloadSession(Context context, MbmsDownloadSessionCallback mbmsDownloadSessionCallback, int i2, Handler handler) {
        this.mSubscriptionId = -1;
        this.mContext = context;
        this.mSubscriptionId = i2;
        this.mInternalCallback = new InternalDownloadSessionCallback(mbmsDownloadSessionCallback, handler == null ? new Handler(Looper.getMainLooper()) : handler);
    }

    private int bindAndInitialize() {
        return MbmsUtils.startBinding(this.mContext, MBMS_DOWNLOAD_SERVICE_ACTION, new ServiceConnection() { // from class: android.telephony.MbmsDownloadSession.3
            @Override // android.content.ServiceConnection
            public final /* synthetic */ void onBindingDied(ComponentName componentName) {
                a.a(this, componentName);
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                IMbmsDownloadService iMbmsDownloadServiceAsInterface = IMbmsDownloadService.Stub.asInterface(iBinder);
                try {
                    int iInitialize = iMbmsDownloadServiceAsInterface.initialize(MbmsDownloadSession.this.mSubscriptionId, MbmsDownloadSession.this.mInternalCallback);
                    if (iInitialize != 0) {
                        MbmsDownloadSession.this.sendErrorToApp(iInitialize, "Error returned during initialization");
                        MbmsDownloadSession.sIsInitialized.set(false);
                        return;
                    }
                    try {
                        iMbmsDownloadServiceAsInterface.asBinder().linkToDeath(MbmsDownloadSession.this.mDeathRecipient, 0);
                        MbmsDownloadSession.this.mService.set(iMbmsDownloadServiceAsInterface);
                    } catch (RemoteException unused) {
                        MbmsDownloadSession.this.sendErrorToApp(3, "Middleware lost during initialization");
                        MbmsDownloadSession.sIsInitialized.set(false);
                    }
                } catch (RemoteException unused2) {
                    Log.e(MbmsDownloadSession.LOG_TAG, "Service died before initialization");
                    MbmsDownloadSession.sIsInitialized.set(false);
                } catch (RuntimeException e2) {
                    Log.e(MbmsDownloadSession.LOG_TAG, "Runtime exception during initialization");
                    MbmsDownloadSession.this.sendErrorToApp(103, e2.toString());
                    MbmsDownloadSession.sIsInitialized.set(false);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                MbmsDownloadSession.sIsInitialized.set(false);
                MbmsDownloadSession.this.mService.set(null);
            }
        });
    }

    public static MbmsDownloadSession create(Context context, MbmsDownloadSessionCallback mbmsDownloadSessionCallback, Handler handler) {
        return create(context, mbmsDownloadSessionCallback, SubscriptionManager.getDefaultSubscriptionId(), handler);
    }

    private void deleteDownloadRequestToken(DownloadRequest downloadRequest) {
        File downloadRequestTokenPath = getDownloadRequestTokenPath(downloadRequest);
        if (!downloadRequestTokenPath.isFile()) {
            Log.w(LOG_TAG, "Attempting to delete non-existent download token at " + downloadRequestTokenPath);
            return;
        }
        if (downloadRequestTokenPath.delete()) {
            return;
        }
        Log.w(LOG_TAG, "Couldn't delete download token at " + downloadRequestTokenPath);
    }

    private File getDownloadRequestTokenPath(DownloadRequest downloadRequest) {
        return new File(MbmsUtils.getEmbmsTempFileDirForService(this.mContext, downloadRequest.getFileServiceId()), downloadRequest.getHash() + MbmsDownloadReceiver.DOWNLOAD_TOKEN_SUFFIX);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendErrorToApp(int i2, String str) {
        try {
            this.mInternalCallback.onError(i2, str);
        } catch (RemoteException unused) {
        }
    }

    private void validateTempFileRootSanity(File file) throws IOException {
        if (!file.exists()) {
            throw new IllegalArgumentException("Provided directory does not exist");
        }
        if (!file.isDirectory()) {
            throw new IllegalArgumentException("Provided File is not a directory");
        }
        String canonicalPath = file.getCanonicalPath();
        if (this.mContext.getDataDir().getCanonicalPath().equals(canonicalPath)) {
            throw new IllegalArgumentException("Temp file root cannot be your data dir");
        }
        if (this.mContext.getCacheDir().getCanonicalPath().equals(canonicalPath)) {
            throw new IllegalArgumentException("Temp file root cannot be your cache dir");
        }
        if (this.mContext.getFilesDir().getCanonicalPath().equals(canonicalPath)) {
            throw new IllegalArgumentException("Temp file root cannot be your files dir");
        }
    }

    private void writeDownloadRequestToken(DownloadRequest downloadRequest) {
        File downloadRequestTokenPath = getDownloadRequestTokenPath(downloadRequest);
        if (!downloadRequestTokenPath.getParentFile().exists()) {
            downloadRequestTokenPath.getParentFile().mkdirs();
        }
        if (downloadRequestTokenPath.exists()) {
            Log.w(LOG_TAG, "Download token " + downloadRequestTokenPath.getName() + " already exists");
            return;
        }
        try {
            if (downloadRequestTokenPath.createNewFile()) {
                return;
            }
            throw new RuntimeException("Failed to create download token for request " + downloadRequest);
        } catch (IOException e2) {
            throw new RuntimeException("Failed to create download token for request " + downloadRequest + " due to IOException " + e2);
        }
    }

    public void cancelDownload(DownloadRequest downloadRequest) {
        IMbmsDownloadService iMbmsDownloadService = this.mService.get();
        if (iMbmsDownloadService == null) {
            throw new IllegalStateException("Middleware not yet bound");
        }
        try {
            int iCancelDownload = iMbmsDownloadService.cancelDownload(downloadRequest);
            if (iCancelDownload == 0) {
                deleteDownloadRequestToken(downloadRequest);
            } else {
                if (iCancelDownload == 402) {
                    throw new IllegalArgumentException("Unknown download request.");
                }
                sendErrorToApp(iCancelDownload, null);
            }
        } catch (RemoteException unused) {
            this.mService.set(null);
            sendErrorToApp(3, null);
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        try {
            try {
                IMbmsDownloadService iMbmsDownloadService = this.mService.get();
                if (iMbmsDownloadService == null) {
                    Log.i(LOG_TAG, "Service already dead");
                } else {
                    iMbmsDownloadService.dispose(this.mSubscriptionId);
                }
            } catch (RemoteException unused) {
                Log.i(LOG_TAG, "Remote exception while disposing of service");
            }
        } finally {
            this.mService.set(null);
            sIsInitialized.set(false);
            this.mInternalCallback.stop();
        }
    }

    public void download(DownloadRequest downloadRequest) {
        IMbmsDownloadService iMbmsDownloadService = this.mService.get();
        if (iMbmsDownloadService == null) {
            throw new IllegalStateException("Middleware not yet bound");
        }
        if (this.mContext.getSharedPreferences(MbmsTempFileProvider.TEMP_FILE_ROOT_PREF_FILE_NAME, 0).getString(MbmsTempFileProvider.TEMP_FILE_ROOT_PREF_NAME, null) == null) {
            File file = new File(this.mContext.getFilesDir(), DEFAULT_TOP_LEVEL_TEMP_DIRECTORY);
            file.mkdirs();
            setTempFileRootDirectory(file);
        }
        writeDownloadRequestToken(downloadRequest);
        try {
            iMbmsDownloadService.download(downloadRequest);
        } catch (RemoteException unused) {
            this.mService.set(null);
            sendErrorToApp(3, null);
        }
    }

    public int getDownloadStatus(DownloadRequest downloadRequest, FileInfo fileInfo) {
        IMbmsDownloadService iMbmsDownloadService = this.mService.get();
        if (iMbmsDownloadService == null) {
            throw new IllegalStateException("Middleware not yet bound");
        }
        try {
            return iMbmsDownloadService.getDownloadStatus(downloadRequest, fileInfo);
        } catch (RemoteException unused) {
            this.mService.set(null);
            sendErrorToApp(3, null);
            return 0;
        }
    }

    public File getTempFileRootDirectory() {
        String string = this.mContext.getSharedPreferences(MbmsTempFileProvider.TEMP_FILE_ROOT_PREF_FILE_NAME, 0).getString(MbmsTempFileProvider.TEMP_FILE_ROOT_PREF_NAME, null);
        if (string != null) {
            return new File(string);
        }
        return null;
    }

    public List<DownloadRequest> listPendingDownloads() {
        IMbmsDownloadService iMbmsDownloadService = this.mService.get();
        if (iMbmsDownloadService == null) {
            throw new IllegalStateException("Middleware not yet bound");
        }
        try {
            return iMbmsDownloadService.listPendingDownloads(this.mSubscriptionId);
        } catch (RemoteException unused) {
            this.mService.set(null);
            sendErrorToApp(3, null);
            return Collections.emptyList();
        }
    }

    public void registerStateCallback(DownloadRequest downloadRequest, DownloadStateCallback downloadStateCallback, Handler handler) {
        IMbmsDownloadService iMbmsDownloadService = this.mService.get();
        if (iMbmsDownloadService == null) {
            throw new IllegalStateException("Middleware not yet bound");
        }
        InternalDownloadStateCallback internalDownloadStateCallback = new InternalDownloadStateCallback(downloadStateCallback, handler);
        try {
            int iRegisterStateCallback = iMbmsDownloadService.registerStateCallback(downloadRequest, internalDownloadStateCallback, downloadStateCallback.getCallbackFilterFlags());
            if (iRegisterStateCallback == 0) {
                this.mInternalDownloadCallbacks.put(downloadStateCallback, internalDownloadStateCallback);
            } else {
                if (iRegisterStateCallback == 402) {
                    throw new IllegalArgumentException("Unknown download request.");
                }
                sendErrorToApp(iRegisterStateCallback, null);
            }
        } catch (RemoteException unused) {
            this.mService.set(null);
            sendErrorToApp(3, null);
        }
    }

    public void requestUpdateFileServices(List<String> list) {
        IMbmsDownloadService iMbmsDownloadService = this.mService.get();
        if (iMbmsDownloadService == null) {
            throw new IllegalStateException("Middleware not yet bound");
        }
        try {
            int iRequestUpdateFileServices = iMbmsDownloadService.requestUpdateFileServices(this.mSubscriptionId, list);
            if (iRequestUpdateFileServices != 0) {
                sendErrorToApp(iRequestUpdateFileServices, null);
            }
        } catch (RemoteException unused) {
            Log.w(LOG_TAG, "Remote process died");
            this.mService.set(null);
            sendErrorToApp(3, null);
        }
    }

    public void resetDownloadKnowledge(DownloadRequest downloadRequest) {
        IMbmsDownloadService iMbmsDownloadService = this.mService.get();
        if (iMbmsDownloadService == null) {
            throw new IllegalStateException("Middleware not yet bound");
        }
        try {
            int iResetDownloadKnowledge = iMbmsDownloadService.resetDownloadKnowledge(downloadRequest);
            if (iResetDownloadKnowledge != 0) {
                if (iResetDownloadKnowledge == 402) {
                    throw new IllegalArgumentException("Unknown download request.");
                }
                sendErrorToApp(iResetDownloadKnowledge, null);
            }
        } catch (RemoteException unused) {
            this.mService.set(null);
            sendErrorToApp(3, null);
        }
    }

    public void setTempFileRootDirectory(File file) {
        IMbmsDownloadService iMbmsDownloadService = this.mService.get();
        if (iMbmsDownloadService == null) {
            throw new IllegalStateException("Middleware not yet bound");
        }
        try {
            validateTempFileRootSanity(file);
            try {
                String canonicalPath = file.getCanonicalPath();
                try {
                    int tempFileRootDirectory = iMbmsDownloadService.setTempFileRootDirectory(this.mSubscriptionId, canonicalPath);
                    if (tempFileRootDirectory != 0) {
                        sendErrorToApp(tempFileRootDirectory, null);
                    }
                    this.mContext.getSharedPreferences(MbmsTempFileProvider.TEMP_FILE_ROOT_PREF_FILE_NAME, 0).edit().putString(MbmsTempFileProvider.TEMP_FILE_ROOT_PREF_NAME, canonicalPath).apply();
                } catch (RemoteException unused) {
                    this.mService.set(null);
                    sendErrorToApp(3, null);
                }
            } catch (IOException e2) {
                throw new IllegalArgumentException("Unable to canonicalize the provided path: " + e2);
            }
        } catch (IOException unused2) {
            throw new IllegalStateException("Got IOException checking directory sanity");
        }
    }

    public void unregisterStateCallback(DownloadRequest downloadRequest, DownloadStateCallback downloadStateCallback) {
        try {
            IMbmsDownloadService iMbmsDownloadService = this.mService.get();
            if (iMbmsDownloadService == null) {
                throw new IllegalStateException("Middleware not yet bound");
            }
            try {
                int iUnregisterStateCallback = iMbmsDownloadService.unregisterStateCallback(downloadRequest, this.mInternalDownloadCallbacks.get(downloadStateCallback));
                if (iUnregisterStateCallback != 0) {
                    if (iUnregisterStateCallback == 402) {
                        throw new IllegalArgumentException("Unknown download request.");
                    }
                    sendErrorToApp(iUnregisterStateCallback, null);
                }
            } catch (RemoteException unused) {
                this.mService.set(null);
                sendErrorToApp(3, null);
            }
            InternalDownloadStateCallback internalDownloadStateCallbackRemove = this.mInternalDownloadCallbacks.remove(downloadStateCallback);
            if (internalDownloadStateCallbackRemove != null) {
                internalDownloadStateCallbackRemove.stop();
            }
        } catch (Throwable th) {
            InternalDownloadStateCallback internalDownloadStateCallbackRemove2 = this.mInternalDownloadCallbacks.remove(downloadStateCallback);
            if (internalDownloadStateCallbackRemove2 != null) {
                internalDownloadStateCallbackRemove2.stop();
            }
            throw th;
        }
    }

    public static MbmsDownloadSession create(Context context, final MbmsDownloadSessionCallback mbmsDownloadSessionCallback, int i2, Handler handler) {
        if (!sIsInitialized.compareAndSet(false, true)) {
            throw new IllegalStateException("Cannot have two active instances");
        }
        MbmsDownloadSession mbmsDownloadSession = new MbmsDownloadSession(context, mbmsDownloadSessionCallback, i2, handler);
        final int iBindAndInitialize = mbmsDownloadSession.bindAndInitialize();
        if (iBindAndInitialize == 0) {
            return mbmsDownloadSession;
        }
        sIsInitialized.set(false);
        handler.post(new Runnable() { // from class: android.telephony.MbmsDownloadSession.2
            @Override // java.lang.Runnable
            public void run() {
                mbmsDownloadSessionCallback.onError(iBindAndInitialize, null);
            }
        });
        return null;
    }
}
