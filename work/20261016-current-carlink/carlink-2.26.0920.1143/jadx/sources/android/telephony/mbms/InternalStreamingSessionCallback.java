package android.telephony.mbms;

import android.os.Handler;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class InternalStreamingSessionCallback extends IMbmsStreamingSessionCallback.Stub {
    private final MbmsStreamingSessionCallback mAppCallback;
    private final Handler mHandler;
    private volatile boolean mIsStopped = false;

    public InternalStreamingSessionCallback(MbmsStreamingSessionCallback mbmsStreamingSessionCallback, Handler handler) {
        this.mAppCallback = mbmsStreamingSessionCallback;
        this.mHandler = handler;
    }

    public Handler getHandler() {
        return this.mHandler;
    }

    @Override // android.telephony.mbms.IMbmsStreamingSessionCallback
    public void onError(final int i2, final String str) {
        if (this.mIsStopped) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: android.telephony.mbms.InternalStreamingSessionCallback.1
            @Override // java.lang.Runnable
            public void run() {
                InternalStreamingSessionCallback.this.mAppCallback.onError(i2, str);
            }
        });
    }

    @Override // android.telephony.mbms.IMbmsStreamingSessionCallback
    public void onMiddlewareReady() {
        if (this.mIsStopped) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: android.telephony.mbms.InternalStreamingSessionCallback.3
            @Override // java.lang.Runnable
            public void run() {
                InternalStreamingSessionCallback.this.mAppCallback.onMiddlewareReady();
            }
        });
    }

    @Override // android.telephony.mbms.IMbmsStreamingSessionCallback
    public void onStreamingServicesUpdated(final List<StreamingServiceInfo> list) {
        if (this.mIsStopped) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: android.telephony.mbms.InternalStreamingSessionCallback.2
            @Override // java.lang.Runnable
            public void run() {
                InternalStreamingSessionCallback.this.mAppCallback.onStreamingServicesUpdated(list);
            }
        });
    }

    public void stop() {
        this.mIsStopped = true;
    }
}
