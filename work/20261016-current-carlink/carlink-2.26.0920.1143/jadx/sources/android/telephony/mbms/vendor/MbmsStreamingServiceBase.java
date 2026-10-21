package android.telephony.mbms.vendor;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.telephony.mbms.IMbmsStreamingSessionCallback;
import android.telephony.mbms.IStreamingServiceCallback;
import android.telephony.mbms.MbmsStreamingSessionCallback;
import android.telephony.mbms.StreamingServiceCallback;
import android.telephony.mbms.StreamingServiceInfo;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MbmsStreamingServiceBase extends IMbmsStreamingService.Stub {
    @Override // android.telephony.mbms.vendor.IMbmsStreamingService
    public void dispose(int i2) {
    }

    @Override // android.telephony.mbms.vendor.IMbmsStreamingService
    public Uri getPlaybackUri(int i2, String str) {
        return null;
    }

    public int initialize(MbmsStreamingSessionCallback mbmsStreamingSessionCallback, int i2) {
        return 0;
    }

    public void onAppCallbackDied(int i2, int i3) {
    }

    @Override // android.telephony.mbms.vendor.IMbmsStreamingService
    public int requestUpdateStreamingServices(int i2, List<String> list) {
        return 0;
    }

    public int startStreaming(int i2, String str, StreamingServiceCallback streamingServiceCallback) {
        return 0;
    }

    @Override // android.telephony.mbms.vendor.IMbmsStreamingService
    public void stopStreaming(int i2, String str) {
    }

    @Override // android.telephony.mbms.vendor.IMbmsStreamingService
    public final int initialize(final IMbmsStreamingSessionCallback iMbmsStreamingSessionCallback, final int i2) {
        final int callingUid = Binder.getCallingUid();
        iMbmsStreamingSessionCallback.asBinder().linkToDeath(new IBinder.DeathRecipient() { // from class: android.telephony.mbms.vendor.MbmsStreamingServiceBase.1
            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                MbmsStreamingServiceBase.this.onAppCallbackDied(callingUid, i2);
            }
        }, 0);
        return initialize(new MbmsStreamingSessionCallback() { // from class: android.telephony.mbms.vendor.MbmsStreamingServiceBase.2
            @Override // android.telephony.mbms.MbmsStreamingSessionCallback
            public void onError(int i3, String str) {
                try {
                    iMbmsStreamingSessionCallback.onError(i3, str);
                } catch (RemoteException unused) {
                    MbmsStreamingServiceBase.this.onAppCallbackDied(callingUid, i2);
                }
            }

            @Override // android.telephony.mbms.MbmsStreamingSessionCallback
            public void onMiddlewareReady() {
                try {
                    iMbmsStreamingSessionCallback.onMiddlewareReady();
                } catch (RemoteException unused) {
                    MbmsStreamingServiceBase.this.onAppCallbackDied(callingUid, i2);
                }
            }

            @Override // android.telephony.mbms.MbmsStreamingSessionCallback
            public void onStreamingServicesUpdated(List<StreamingServiceInfo> list) {
                try {
                    iMbmsStreamingSessionCallback.onStreamingServicesUpdated(list);
                } catch (RemoteException unused) {
                    MbmsStreamingServiceBase.this.onAppCallbackDied(callingUid, i2);
                }
            }
        }, i2);
    }

    @Override // android.telephony.mbms.vendor.IMbmsStreamingService
    public int startStreaming(final int i2, String str, final IStreamingServiceCallback iStreamingServiceCallback) {
        final int callingUid = Binder.getCallingUid();
        iStreamingServiceCallback.asBinder().linkToDeath(new IBinder.DeathRecipient() { // from class: android.telephony.mbms.vendor.MbmsStreamingServiceBase.3
            @Override // android.os.IBinder.DeathRecipient
            public void binderDied() {
                MbmsStreamingServiceBase.this.onAppCallbackDied(callingUid, i2);
            }
        }, 0);
        return startStreaming(i2, str, new StreamingServiceCallback() { // from class: android.telephony.mbms.vendor.MbmsStreamingServiceBase.4
            @Override // android.telephony.mbms.StreamingServiceCallback
            public void onBroadcastSignalStrengthUpdated(int i3) {
                try {
                    iStreamingServiceCallback.onBroadcastSignalStrengthUpdated(i3);
                } catch (RemoteException unused) {
                    MbmsStreamingServiceBase.this.onAppCallbackDied(callingUid, i2);
                }
            }

            @Override // android.telephony.mbms.StreamingServiceCallback
            public void onError(int i3, String str2) {
                try {
                    iStreamingServiceCallback.onError(i3, str2);
                } catch (RemoteException unused) {
                    MbmsStreamingServiceBase.this.onAppCallbackDied(callingUid, i2);
                }
            }

            @Override // android.telephony.mbms.StreamingServiceCallback
            public void onMediaDescriptionUpdated() {
                try {
                    iStreamingServiceCallback.onMediaDescriptionUpdated();
                } catch (RemoteException unused) {
                    MbmsStreamingServiceBase.this.onAppCallbackDied(callingUid, i2);
                }
            }

            @Override // android.telephony.mbms.StreamingServiceCallback
            public void onStreamMethodUpdated(int i3) {
                try {
                    iStreamingServiceCallback.onStreamMethodUpdated(i3);
                } catch (RemoteException unused) {
                    MbmsStreamingServiceBase.this.onAppCallbackDied(callingUid, i2);
                }
            }

            @Override // android.telephony.mbms.StreamingServiceCallback
            public void onStreamStateUpdated(int i3, int i4) {
                try {
                    iStreamingServiceCallback.onStreamStateUpdated(i3, i4);
                } catch (RemoteException unused) {
                    MbmsStreamingServiceBase.this.onAppCallbackDied(callingUid, i2);
                }
            }
        });
    }
}
