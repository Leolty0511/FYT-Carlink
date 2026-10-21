package android.telephony.mbms;

import android.os.Handler;

/* JADX INFO: loaded from: classes2.dex */
public class InternalStreamingServiceCallback extends IStreamingServiceCallback.Stub {
    private final StreamingServiceCallback mAppCallback;
    private final Handler mHandler;
    private volatile boolean mIsStopped = false;

    public InternalStreamingServiceCallback(StreamingServiceCallback streamingServiceCallback, Handler handler) {
        this.mAppCallback = streamingServiceCallback;
        this.mHandler = handler;
    }

    @Override // android.telephony.mbms.IStreamingServiceCallback
    public void onBroadcastSignalStrengthUpdated(final int i2) {
        if (this.mIsStopped) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: android.telephony.mbms.InternalStreamingServiceCallback.4
            @Override // java.lang.Runnable
            public void run() {
                InternalStreamingServiceCallback.this.mAppCallback.onBroadcastSignalStrengthUpdated(i2);
            }
        });
    }

    @Override // android.telephony.mbms.IStreamingServiceCallback
    public void onError(final int i2, final String str) {
        if (this.mIsStopped) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: android.telephony.mbms.InternalStreamingServiceCallback.1
            @Override // java.lang.Runnable
            public void run() {
                InternalStreamingServiceCallback.this.mAppCallback.onError(i2, str);
            }
        });
    }

    @Override // android.telephony.mbms.IStreamingServiceCallback
    public void onMediaDescriptionUpdated() {
        if (this.mIsStopped) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: android.telephony.mbms.InternalStreamingServiceCallback.3
            @Override // java.lang.Runnable
            public void run() {
                InternalStreamingServiceCallback.this.mAppCallback.onMediaDescriptionUpdated();
            }
        });
    }

    @Override // android.telephony.mbms.IStreamingServiceCallback
    public void onStreamMethodUpdated(final int i2) {
        if (this.mIsStopped) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: android.telephony.mbms.InternalStreamingServiceCallback.5
            @Override // java.lang.Runnable
            public void run() {
                InternalStreamingServiceCallback.this.mAppCallback.onStreamMethodUpdated(i2);
            }
        });
    }

    @Override // android.telephony.mbms.IStreamingServiceCallback
    public void onStreamStateUpdated(final int i2, final int i3) {
        if (this.mIsStopped) {
            return;
        }
        this.mHandler.post(new Runnable() { // from class: android.telephony.mbms.InternalStreamingServiceCallback.2
            @Override // java.lang.Runnable
            public void run() {
                InternalStreamingServiceCallback.this.mAppCallback.onStreamStateUpdated(i2, i3);
            }
        });
    }

    public void stop() {
        this.mIsStopped = true;
    }
}
