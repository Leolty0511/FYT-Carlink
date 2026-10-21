package android.telephony.mbms;

import android.os.Handler;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class InternalDownloadSessionCallback extends IMbmsDownloadSessionCallback.Stub {
    private final MbmsDownloadSessionCallback mAppCallback;
    private final Handler mHandler;
    private volatile boolean mIsStopped = false;

    public InternalDownloadSessionCallback(MbmsDownloadSessionCallback mbmsDownloadSessionCallback, Handler handler) {
        this.mAppCallback = mbmsDownloadSessionCallback;
        this.mHandler = handler;
    }

    public Handler getHandler() {
        return this.mHandler;
    }

    @Override // android.telephony.mbms.IMbmsDownloadSessionCallback
    public void onError(final int i2, final String str) {
        if (this.mIsStopped) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: android.telephony.mbms.InternalDownloadSessionCallback.1
            @Override // java.lang.Runnable
            public void run() {
                InternalDownloadSessionCallback.this.mAppCallback.onError(i2, str);
            }
        });
    }

    @Override // android.telephony.mbms.IMbmsDownloadSessionCallback
    public void onFileServicesUpdated(final List<FileServiceInfo> list) {
        if (this.mIsStopped) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: android.telephony.mbms.InternalDownloadSessionCallback.2
            @Override // java.lang.Runnable
            public void run() {
                InternalDownloadSessionCallback.this.mAppCallback.onFileServicesUpdated(list);
            }
        });
    }

    @Override // android.telephony.mbms.IMbmsDownloadSessionCallback
    public void onMiddlewareReady() {
        if (this.mIsStopped) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: android.telephony.mbms.InternalDownloadSessionCallback.3
            @Override // java.lang.Runnable
            public void run() {
                InternalDownloadSessionCallback.this.mAppCallback.onMiddlewareReady();
            }
        });
    }

    public void stop() {
        this.mIsStopped = true;
    }
}
