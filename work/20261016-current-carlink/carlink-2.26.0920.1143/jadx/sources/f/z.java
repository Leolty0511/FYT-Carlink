package f;

import android.util.Log;
import com.google.android.projection.protocol.AndroidHeadUnitLogging;
import com.google.android.projection.protocol.GalReceiver;
import com.syu.carlink.CarLink;
import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class z implements GalReceiver.AudioFocusListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AutoFragment f869a;

    public z(AutoFragment autoFragment) {
        this.f869a = autoFragment;
    }

    @Override // com.google.android.projection.protocol.GalReceiver.AudioFocusListener
    public final void onAudioFocusRequest(int i2) {
        StringBuilder sbS = android.accessibilityservice.c.s("=============>>>>  onAudioFocusRequest request: ", i2, "  appid : ");
        sbS.append(CarLink.f562i.a());
        sbS.append("  isShow : ");
        sbS.append(CarLink.f562i.f564d);
        Log.w(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, sbS.toString());
        AutoFragment autoFragment = this.f869a;
        if (i2 == 1) {
            if (CarLink.f562i.a() != 10) {
                CarLink.f562i.f().h(10, true);
                if (CarLink.f562i.a() != 0) {
                    CarLink.f562i.f().j(true);
                }
            }
            autoFragment.e();
        }
        autoFragment.f648f.handleAudioFocusRequest(i2);
    }
}
