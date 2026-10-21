package android.telephony.mbms;

import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
public class InternalDownloadStateCallback extends IDownloadStateCallback.Stub {
    private final DownloadStateCallback mAppCallback;
    private final Handler mHandler;
    private volatile boolean mIsStopped = false;

    public InternalDownloadStateCallback(DownloadStateCallback downloadStateCallback, Handler handler) {
        this.mAppCallback = downloadStateCallback;
        this.mHandler = handler;
    }

    @Override // android.telephony.mbms.IDownloadStateCallback
    public void onProgressUpdated(final DownloadRequest downloadRequest, final FileInfo fileInfo, final int i2, final int i3, final int i4, final int i5) {
        if (this.mIsStopped) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: android.telephony.mbms.InternalDownloadStateCallback.1
            @Override // java.lang.Runnable
            public void run() {
                InternalDownloadStateCallback.this.mAppCallback.onProgressUpdated(downloadRequest, fileInfo, i2, i3, i4, i5);
            }
        });
    }

    @Override // android.telephony.mbms.IDownloadStateCallback
    public void onStateUpdated(final DownloadRequest downloadRequest, final FileInfo fileInfo, final int i2) {
        if (this.mIsStopped) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: android.telephony.mbms.InternalDownloadStateCallback.2
            @Override // java.lang.Runnable
            public void run() {
                InternalDownloadStateCallback.this.mAppCallback.onStateUpdated(downloadRequest, fileInfo, i2);
            }
        });
    }

    public void stop() {
        this.mIsStopped = true;
    }
}
