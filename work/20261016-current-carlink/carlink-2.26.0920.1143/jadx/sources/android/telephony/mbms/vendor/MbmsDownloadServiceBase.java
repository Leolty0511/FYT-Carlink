package android.telephony.mbms.vendor;

import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.telephony.mbms.DownloadRequest;
import android.telephony.mbms.DownloadStateCallback;
import android.telephony.mbms.FileInfo;
import android.telephony.mbms.FileServiceInfo;
import android.telephony.mbms.IDownloadStateCallback;
import android.telephony.mbms.IMbmsDownloadSessionCallback;
import android.telephony.mbms.MbmsDownloadSessionCallback;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class MbmsDownloadServiceBase extends IMbmsDownloadService.Stub {
    private final Map<IBinder, DownloadStateCallback> mDownloadCallbackBinderMap = new HashMap();
    private final Map<IBinder, IBinder.DeathRecipient> mDownloadCallbackDeathRecipients = new HashMap();

    public static abstract class FilteredDownloadStateCallback extends DownloadStateCallback {
        private final IDownloadStateCallback mCallback;

        public FilteredDownloadStateCallback(IDownloadStateCallback iDownloadStateCallback, int i2) {
            super(i2);
            this.mCallback = iDownloadStateCallback;
        }

        @Override // android.telephony.mbms.DownloadStateCallback
        public void onProgressUpdated(DownloadRequest downloadRequest, FileInfo fileInfo, int i2, int i3, int i4, int i5) {
            if (isFilterFlagSet(1)) {
                try {
                    this.mCallback.onProgressUpdated(downloadRequest, fileInfo, i2, i3, i4, i5);
                } catch (RemoteException e2) {
                    onRemoteException(e2);
                }
            }
        }

        public abstract void onRemoteException(RemoteException remoteException);

        @Override // android.telephony.mbms.DownloadStateCallback
        public void onStateUpdated(DownloadRequest downloadRequest, FileInfo fileInfo, int i2) {
            if (isFilterFlagSet(2)) {
                try {
                    this.mCallback.onStateUpdated(downloadRequest, fileInfo, i2);
                } catch (RemoteException e2) {
                    onRemoteException(e2);
                }
            }
        }
    }

    @Override // android.telephony.mbms.vendor.IMbmsDownloadService
    public int cancelDownload(DownloadRequest downloadRequest) {
        return 0;
    }

    @Override // android.telephony.mbms.vendor.IMbmsDownloadService
    public void dispose(int i2) {
    }

    @Override // android.telephony.mbms.vendor.IMbmsDownloadService
    public int download(DownloadRequest downloadRequest) {
        return 0;
    }

    @Override // android.telephony.mbms.vendor.IMbmsDownloadService
    public int getDownloadStatus(DownloadRequest downloadRequest, FileInfo fileInfo) {
        return 0;
    }

    public int initialize(int i2, MbmsDownloadSessionCallback mbmsDownloadSessionCallback) {
        return 0;
    }

    @Override // android.telephony.mbms.vendor.IMbmsDownloadService
    public List<DownloadRequest> listPendingDownloads(int i2) {
        return null;
    }

    public void onAppCallbackDied(int i2, int i3) {
    }

    public int registerStateCallback(DownloadRequest downloadRequest, DownloadStateCallback downloadStateCallback) {
        return 0;
    }

    @Override // android.telephony.mbms.vendor.IMbmsDownloadService
    public int requestUpdateFileServices(int i2, List<String> list) {
        return 0;
    }

    @Override // android.telephony.mbms.vendor.IMbmsDownloadService
    public int resetDownloadKnowledge(DownloadRequest downloadRequest) {
        return 0;
    }

    @Override // android.telephony.mbms.vendor.IMbmsDownloadService
    public int setTempFileRootDirectory(int i2, String str) {
        return 0;
    }

    public int unregisterStateCallback(DownloadRequest downloadRequest, DownloadStateCallback downloadStateCallback) {
        return 0;
    }

    @Override // android.telephony.mbms.vendor.IMbmsDownloadService
    public final int initialize(final int i2, final IMbmsDownloadSessionCallback iMbmsDownloadSessionCallback) {
        final int callingUid = Binder.getCallingUid();
        iMbmsDownloadSessionCallback.asBinder().linkToDeath(new IBinder.DeathRecipient() { // from class: android.telephony.mbms.vendor.MbmsDownloadServiceBase.1
            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                MbmsDownloadServiceBase.this.onAppCallbackDied(callingUid, i2);
            }
        }, 0);
        return initialize(i2, new MbmsDownloadSessionCallback() { // from class: android.telephony.mbms.vendor.MbmsDownloadServiceBase.2
            @Override // android.telephony.mbms.MbmsDownloadSessionCallback
            public void onError(int i3, String str) {
                try {
                    iMbmsDownloadSessionCallback.onError(i3, str);
                } catch (RemoteException unused) {
                    MbmsDownloadServiceBase.this.onAppCallbackDied(callingUid, i2);
                }
            }

            @Override // android.telephony.mbms.MbmsDownloadSessionCallback
            public void onFileServicesUpdated(List<FileServiceInfo> list) {
                try {
                    iMbmsDownloadSessionCallback.onFileServicesUpdated(list);
                } catch (RemoteException unused) {
                    MbmsDownloadServiceBase.this.onAppCallbackDied(callingUid, i2);
                }
            }

            @Override // android.telephony.mbms.MbmsDownloadSessionCallback
            public void onMiddlewareReady() {
                try {
                    iMbmsDownloadSessionCallback.onMiddlewareReady();
                } catch (RemoteException unused) {
                    MbmsDownloadServiceBase.this.onAppCallbackDied(callingUid, i2);
                }
            }
        });
    }

    @Override // android.telephony.mbms.vendor.IMbmsDownloadService
    public final int registerStateCallback(final DownloadRequest downloadRequest, final IDownloadStateCallback iDownloadStateCallback, int i2) {
        final int callingUid = Binder.getCallingUid();
        IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() { // from class: android.telephony.mbms.vendor.MbmsDownloadServiceBase.3
            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                MbmsDownloadServiceBase.this.onAppCallbackDied(callingUid, downloadRequest.getSubscriptionId());
                MbmsDownloadServiceBase.this.mDownloadCallbackBinderMap.remove(iDownloadStateCallback.asBinder());
                MbmsDownloadServiceBase.this.mDownloadCallbackDeathRecipients.remove(iDownloadStateCallback.asBinder());
            }
        };
        this.mDownloadCallbackDeathRecipients.put(iDownloadStateCallback.asBinder(), deathRecipient);
        iDownloadStateCallback.asBinder().linkToDeath(deathRecipient, 0);
        FilteredDownloadStateCallback filteredDownloadStateCallback = new FilteredDownloadStateCallback(iDownloadStateCallback, i2) { // from class: android.telephony.mbms.vendor.MbmsDownloadServiceBase.4
            @Override // android.telephony.mbms.vendor.MbmsDownloadServiceBase.FilteredDownloadStateCallback
            public void onRemoteException(RemoteException remoteException) {
                MbmsDownloadServiceBase.this.onAppCallbackDied(callingUid, downloadRequest.getSubscriptionId());
            }
        };
        this.mDownloadCallbackBinderMap.put(iDownloadStateCallback.asBinder(), filteredDownloadStateCallback);
        return registerStateCallback(downloadRequest, filteredDownloadStateCallback);
    }

    @Override // android.telephony.mbms.vendor.IMbmsDownloadService
    public final int unregisterStateCallback(DownloadRequest downloadRequest, IDownloadStateCallback iDownloadStateCallback) {
        IBinder.DeathRecipient deathRecipientRemove = this.mDownloadCallbackDeathRecipients.remove(iDownloadStateCallback.asBinder());
        if (deathRecipientRemove == null) {
            throw new IllegalArgumentException("Unknown callback");
        }
        iDownloadStateCallback.asBinder().unlinkToDeath(deathRecipientRemove, 0);
        DownloadStateCallback downloadStateCallbackRemove = this.mDownloadCallbackBinderMap.remove(iDownloadStateCallback.asBinder());
        if (downloadStateCallbackRemove != null) {
            return unregisterStateCallback(downloadRequest, downloadStateCallbackRemove);
        }
        throw new IllegalArgumentException("Unknown callback");
    }
}
