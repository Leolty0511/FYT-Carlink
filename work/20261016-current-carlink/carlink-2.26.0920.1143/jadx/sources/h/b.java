package h;

import android.media.AudioManager;
import android.mtp.MtpConstants;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements AudioManager.OnAudioFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f912a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f913b;

    public b(c cVar) {
        this.f913b = cVar;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i2) {
        c cVar;
        CarLinkService carLinkServiceF;
        c cVar2;
        c cVar3;
        StringBuilder sbS = android.accessibilityservice.c.s("===========================>>>>  onAudioFocusChange  focusChange:", i2, "  isShowing: ");
        sbS.append(e.b.b().f564d);
        n.b.a("HDL", sbS.toString());
        this.f912a = i2;
        if (i2 != -1) {
            if (i2 != 1) {
                return;
            }
            e.b.b();
            boolean zF = CarLink.F();
            n.b.a("HDL", "============>>>>01  onAudioFocusChange CARPLAY_C2S_AUDIO_CTRL 3 noMix: " + zF + "  isMediaAudio: " + e.b.b().t());
            if (zF) {
                CarLinkService carLinkServiceF2 = e.b.b().f();
                if (carLinkServiceF2 == null || (cVar3 = carLinkServiceF2.A) == null) {
                    return;
                }
                cVar3.j(true);
                return;
            }
            if (e.b.b().t() || (carLinkServiceF = e.b.b().f()) == null || (cVar2 = carLinkServiceF.A) == null) {
                return;
            }
            cVar2.j(true);
            return;
        }
        boolean z2 = e.b.b().f564d;
        c cVar4 = this.f913b;
        if (z2) {
            cVar4.e().postDelayed(new android.net.b(this, 10), 300L);
            return;
        }
        e.b.b();
        boolean zF2 = CarLink.F();
        n.b.a("HDL", "============>>>>00  onAudioFocusChange CARPLAY_C2S_AUDIO_CTRL 2 noMix: " + zF2 + "  isMediaAudio: " + e.b.b().t());
        if (!zF2) {
            if (e.b.b().t()) {
                cVar4.a(MtpConstants.OPERATION_GET_OBJECT_HANDLES);
            }
        } else {
            CarLinkService carLinkServiceF3 = e.b.b().f();
            if (carLinkServiceF3 == null || (cVar = carLinkServiceF3.A) == null) {
                return;
            }
            cVar.j(false);
        }
    }
}
