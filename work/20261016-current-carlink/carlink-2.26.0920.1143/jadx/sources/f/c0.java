package f;

import android.util.Log;
import com.google.android.projection.protocol.AndroidHeadUnitLogging;
import com.google.android.projection.protocol.GalReceiver;
import com.google.android.projection.protocol.Transport;
import com.google.android.projection.sink.GalIntegration;
import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class c0 implements GalReceiver.ByeByeHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AutoFragment f813a;

    public c0(AutoFragment autoFragment) {
        this.f813a = autoFragment;
    }

    @Override // com.google.android.projection.protocol.GalReceiver.ByeByeHandler
    public final void onByeByeRequest(int i2) {
        GalReceiver galReceiver;
        Log.i(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "received ByeByeRequest with reason " + i2);
        AutoFragment autoFragment = this.f813a;
        GalIntegration galIntegration = autoFragment.f647e;
        if (galIntegration != null && (galReceiver = galIntegration.galReceiver) != null) {
            galReceiver.sendByeByeResponse();
        }
        GalIntegration galIntegration2 = autoFragment.f647e;
        if (galIntegration2 != null) {
            galIntegration2.stop(Transport.StopReason.MD_BYEBYE);
        }
        k.f825y.e(0L);
    }

    @Override // com.google.android.projection.protocol.GalReceiver.ByeByeHandler
    public final void onByeByeResponse() {
        Log.i(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "received ByeByeResponse");
        GalIntegration galIntegration = this.f813a.f647e;
        if (galIntegration != null) {
            galIntegration.stop(Transport.StopReason.HU_BYEBYE);
        }
    }
}
