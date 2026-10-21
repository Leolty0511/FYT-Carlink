package android.telecom;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.view.Surface;
import com.android.internal.os.SomeArgs;
import com.android.internal.telecom.IInCallAdapter;
import com.android.internal.telecom.IInCallService;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class InCallService extends Service {
    private static final int MSG_ADD_CALL = 2;
    private static final int MSG_BRING_TO_FOREGROUND = 6;
    private static final int MSG_ON_CALL_AUDIO_STATE_CHANGED = 5;
    private static final int MSG_ON_CAN_ADD_CALL_CHANGED = 7;
    private static final int MSG_ON_CONNECTION_EVENT = 9;
    private static final int MSG_ON_RTT_INITIATION_FAILURE = 11;
    private static final int MSG_ON_RTT_UPGRADE_REQUEST = 10;
    private static final int MSG_SET_IN_CALL_ADAPTER = 1;
    private static final int MSG_SET_POST_DIAL_WAIT = 4;
    private static final int MSG_SILENCE_RINGER = 8;
    private static final int MSG_UPDATE_CALL = 3;
    public static final String SERVICE_INTERFACE = "android.telecom.InCallService";
    private Phone mPhone;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: android.telecom.InCallService.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (InCallService.this.mPhone != null || message.what == 1) {
                switch (message.what) {
                    case 1:
                        InCallService.this.mPhone = new Phone(new InCallAdapter((IInCallAdapter) message.obj), InCallService.this.getApplicationContext().getOpPackageName(), InCallService.this.getApplicationContext().getApplicationInfo().targetSdkVersion);
                        InCallService.this.mPhone.addListener(InCallService.this.mPhoneListener);
                        InCallService inCallService = InCallService.this;
                        inCallService.onPhoneCreated(inCallService.mPhone);
                        return;
                    case 2:
                        InCallService.this.mPhone.internalAddCall((ParcelableCall) message.obj);
                        return;
                    case 3:
                        InCallService.this.mPhone.internalUpdateCall((ParcelableCall) message.obj);
                        return;
                    case 4:
                        SomeArgs someArgs = (SomeArgs) message.obj;
                        try {
                            InCallService.this.mPhone.internalSetPostDialWait((String) someArgs.arg1, (String) someArgs.arg2);
                            return;
                        } finally {
                            someArgs.recycle();
                        }
                    case 5:
                        InCallService.this.mPhone.internalCallAudioStateChanged((CallAudioState) message.obj);
                        return;
                    case 6:
                        InCallService.this.mPhone.internalBringToForeground(message.arg1 == 1);
                        return;
                    case 7:
                        InCallService.this.mPhone.internalSetCanAddCall(message.arg1 == 1);
                        return;
                    case 8:
                        InCallService.this.mPhone.internalSilenceRinger();
                        return;
                    case 9:
                        SomeArgs someArgs2 = (SomeArgs) message.obj;
                        try {
                            InCallService.this.mPhone.internalOnConnectionEvent((String) someArgs2.arg1, (String) someArgs2.arg2, (Bundle) someArgs2.arg3);
                            return;
                        } finally {
                            someArgs2.recycle();
                        }
                    case 10:
                        InCallService.this.mPhone.internalOnRttUpgradeRequest((String) message.obj, message.arg1);
                        return;
                    case 11:
                        InCallService.this.mPhone.internalOnRttInitiationFailure((String) message.obj, message.arg1);
                        return;
                    default:
                        return;
                }
            }
        }
    };
    private Phone.Listener mPhoneListener = new Phone.Listener() { // from class: android.telecom.InCallService.2
        @Override // android.telecom.Phone.Listener
        public void onAudioStateChanged(Phone phone, AudioState audioState) {
            InCallService.this.onAudioStateChanged(audioState);
        }

        @Override // android.telecom.Phone.Listener
        public void onBringToForeground(Phone phone, boolean z2) {
            InCallService.this.onBringToForeground(z2);
        }

        @Override // android.telecom.Phone.Listener
        public void onCallAdded(Phone phone, Call call) {
            InCallService.this.onCallAdded(call);
        }

        @Override // android.telecom.Phone.Listener
        public void onCallAudioStateChanged(Phone phone, CallAudioState callAudioState) {
            InCallService.this.onCallAudioStateChanged(callAudioState);
        }

        @Override // android.telecom.Phone.Listener
        public void onCallRemoved(Phone phone, Call call) {
            InCallService.this.onCallRemoved(call);
        }

        @Override // android.telecom.Phone.Listener
        public void onCanAddCallChanged(Phone phone, boolean z2) {
            InCallService.this.onCanAddCallChanged(z2);
        }

        @Override // android.telecom.Phone.Listener
        public void onSilenceRinger(Phone phone) {
            InCallService.this.onSilenceRinger();
        }
    };

    public final class InCallServiceBinder extends IInCallService.Stub {
        private InCallServiceBinder() {
        }

        @Override // com.android.internal.telecom.IInCallService
        public void addCall(ParcelableCall parcelableCall) {
            InCallService.this.mHandler.obtainMessage(2, parcelableCall).sendToTarget();
        }

        @Override // com.android.internal.telecom.IInCallService
        public void bringToForeground(boolean z2) {
            InCallService.this.mHandler.obtainMessage(6, z2 ? 1 : 0, 0).sendToTarget();
        }

        @Override // com.android.internal.telecom.IInCallService
        public void onCallAudioStateChanged(CallAudioState callAudioState) {
            InCallService.this.mHandler.obtainMessage(5, callAudioState).sendToTarget();
        }

        @Override // com.android.internal.telecom.IInCallService
        public void onCanAddCallChanged(boolean z2) {
            InCallService.this.mHandler.obtainMessage(7, z2 ? 1 : 0, 0).sendToTarget();
        }

        @Override // com.android.internal.telecom.IInCallService
        public void onConnectionEvent(String str, String str2, Bundle bundle) {
            SomeArgs someArgsObtain = SomeArgs.obtain();
            someArgsObtain.arg1 = str;
            someArgsObtain.arg2 = str2;
            someArgsObtain.arg3 = bundle;
            InCallService.this.mHandler.obtainMessage(9, someArgsObtain).sendToTarget();
        }

        @Override // com.android.internal.telecom.IInCallService
        public void onRttInitiationFailure(String str, int i2) {
            InCallService.this.mHandler.obtainMessage(11, i2, 0, str).sendToTarget();
        }

        @Override // com.android.internal.telecom.IInCallService
        public void onRttUpgradeRequest(String str, int i2) {
            InCallService.this.mHandler.obtainMessage(10, i2, 0, str).sendToTarget();
        }

        @Override // com.android.internal.telecom.IInCallService
        public void setInCallAdapter(IInCallAdapter iInCallAdapter) {
            InCallService.this.mHandler.obtainMessage(1, iInCallAdapter).sendToTarget();
        }

        @Override // com.android.internal.telecom.IInCallService
        public void setPostDial(String str, String str2) {
        }

        @Override // com.android.internal.telecom.IInCallService
        public void setPostDialWait(String str, String str2) {
            SomeArgs someArgsObtain = SomeArgs.obtain();
            someArgsObtain.arg1 = str;
            someArgsObtain.arg2 = str2;
            InCallService.this.mHandler.obtainMessage(4, someArgsObtain).sendToTarget();
        }

        @Override // com.android.internal.telecom.IInCallService
        public void silenceRinger() {
            InCallService.this.mHandler.obtainMessage(8).sendToTarget();
        }

        @Override // com.android.internal.telecom.IInCallService
        public void updateCall(ParcelableCall parcelableCall) {
            InCallService.this.mHandler.obtainMessage(3, parcelableCall).sendToTarget();
        }
    }

    public static abstract class VideoCall {

        public static abstract class Callback {
            public abstract void onCallDataUsageChanged(long j2);

            public abstract void onCallSessionEvent(int i2);

            public abstract void onCameraCapabilitiesChanged(VideoProfile.CameraCapabilities cameraCapabilities);

            public abstract void onPeerDimensionsChanged(int i2, int i3);

            public abstract void onSessionModifyRequestReceived(VideoProfile videoProfile);

            public abstract void onSessionModifyResponseReceived(int i2, VideoProfile videoProfile, VideoProfile videoProfile2);

            public abstract void onVideoQualityChanged(int i2);
        }

        public abstract void destroy();

        public abstract void registerCallback(Callback callback);

        public abstract void registerCallback(Callback callback, Handler handler);

        public abstract void requestCallDataUsage();

        public abstract void requestCameraCapabilities();

        public abstract void sendSessionModifyRequest(VideoProfile videoProfile);

        public abstract void sendSessionModifyResponse(VideoProfile videoProfile);

        public abstract void setCamera(String str);

        public abstract void setDeviceOrientation(int i2);

        public abstract void setDisplaySurface(Surface surface);

        public abstract void setPauseImage(Uri uri);

        public abstract void setPreviewSurface(Surface surface);

        public abstract void setZoom(float f2);

        public abstract void unregisterCallback(Callback callback);
    }

    public final boolean canAddCall() {
        Phone phone = this.mPhone;
        if (phone == null) {
            return false;
        }
        return phone.canAddCall();
    }

    @Deprecated
    public final AudioState getAudioState() {
        Phone phone = this.mPhone;
        if (phone == null) {
            return null;
        }
        return phone.getAudioState();
    }

    public final CallAudioState getCallAudioState() {
        Phone phone = this.mPhone;
        if (phone == null) {
            return null;
        }
        return phone.getCallAudioState();
    }

    public final List<Call> getCalls() {
        Phone phone = this.mPhone;
        return phone == null ? Collections.emptyList() : phone.getCalls();
    }

    @Deprecated
    public Phone getPhone() {
        return this.mPhone;
    }

    @Deprecated
    public void onAudioStateChanged(AudioState audioState) {
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new InCallServiceBinder();
    }

    public void onBringToForeground(boolean z2) {
    }

    public void onCallAdded(Call call) {
    }

    public void onCallAudioStateChanged(CallAudioState callAudioState) {
    }

    public void onCallRemoved(Call call) {
    }

    public void onCanAddCallChanged(boolean z2) {
    }

    public void onConnectionEvent(Call call, String str, Bundle bundle) {
    }

    @Deprecated
    public void onPhoneCreated(Phone phone) {
    }

    @Deprecated
    public void onPhoneDestroyed(Phone phone) {
    }

    public void onSilenceRinger() {
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        Phone phone = this.mPhone;
        if (phone == null) {
            return false;
        }
        this.mPhone = null;
        phone.destroy();
        phone.removeListener(this.mPhoneListener);
        onPhoneDestroyed(phone);
        return false;
    }

    public final void setAudioRoute(int i2) {
        Phone phone = this.mPhone;
        if (phone != null) {
            phone.setAudioRoute(i2);
        }
    }

    public final void setMuted(boolean z2) {
        Phone phone = this.mPhone;
        if (phone != null) {
            phone.setMuted(z2);
        }
    }
}
