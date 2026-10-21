package f;

import android.content.Intent;
import android.util.Log;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.google.android.projection.proto.Protos;
import com.google.android.projection.protocol.AndroidHeadUnitLogging;
import com.google.android.projection.protocol.GalReceiver;
import com.google.android.projection.protocol.Transport;
import com.google.android.projection.sink.GalIntegration;
import com.syu.carlink.CarLink;
import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class y implements GalReceiver.AppMessageListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AutoFragment f868a;

    public y(AutoFragment autoFragment) {
        this.f868a = autoFragment;
    }

    @Override // com.google.android.projection.protocol.GalReceiver.AppMessageListener
    public final void onBatteryStatusNotification(int i2, int i3, boolean z2) {
        Log.d(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, android.app.m.f("Battery status: ", i2, " percent remaining/", i3, " seconds remaining"));
    }

    @Override // com.google.android.projection.protocol.GalReceiver.AppMessageListener
    public final void onDisconnected(Transport.StopReason stopReason) {
        Log.i(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "Shutting down GAL/transport: " + stopReason);
        AutoFragment autoFragment = this.f868a;
        autoFragment.f647e.stop(stopReason);
        autoFragment.onDisconnected();
        k.f825y.e(200L);
        autoFragment.c();
        k kVar = k.f825y;
        if (kVar.f831h != 2) {
            LocalBroadcastManager.getInstance(kVar.f833j).sendBroadcast(new Intent(GalIntegration.USB_DISCONNECT_INTENT));
        }
    }

    @Override // com.google.android.projection.protocol.GalReceiver.AppMessageListener
    public final void onNavigationFocusRequest(int i2) {
        Log.i(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "=====>>  onNavigationFocusRequest: " + i2);
        this.f868a.getActivity().runOnUiThread(new c(this, i2));
    }

    @Override // com.google.android.projection.protocol.GalReceiver.AppMessageListener
    public final void onPoorWirelessNetworkConnectivity() {
        Log.w(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "Wireless connectivity is poor");
    }

    @Override // com.google.android.projection.protocol.GalReceiver.AppMessageListener
    public final void onUnrecoverableError(Protos.MessageStatus messageStatus) {
        Log.e(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "Received unrecoverable error " + messageStatus + ". Shutting down.");
        this.f868a.f647e.stop(Transport.StopReason.CONNECTION_ERROR);
    }

    @Override // com.google.android.projection.protocol.GalReceiver.AppMessageListener
    public final void onVoiceSessionNotification(int i2) {
        Log.i(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "onVoiceSessionNotification, state:" + i2);
        this.f868a.G = i2 == GalReceiver.VOICE_RECOGNITION_STATE_STARTED;
        if (CarLink.f562i.l()) {
            CarLink.f562i.j().f904x.postValue(Boolean.valueOf(this.f868a.G));
            if (this.f868a.G) {
                AutoFragment autoFragment = this.f868a;
                if (autoFragment.f664w != 2 && CarLink.f562i.C() == 2) {
                    autoFragment.f664w = autoFragment.f659r.requestAudioFocus(autoFragment.f665x, 0, 2);
                }
                o.e eVar = CarLink.f562i.f().f592l;
                eVar.getClass();
                eVar.c(0, 156, new int[]{1}, null, null);
                return;
            }
            AutoFragment autoFragment2 = this.f868a;
            if (autoFragment2.f664w != -1) {
                if (CarLink.f562i.C() == 2) {
                    autoFragment2.f659r.abandonAudioFocus(autoFragment2.f665x);
                }
                autoFragment2.f664w = -1;
            }
            o.e eVar2 = CarLink.f562i.f().f592l;
            eVar2.getClass();
            eVar2.c(0, 156, new int[]{0}, null, null);
        }
    }
}
