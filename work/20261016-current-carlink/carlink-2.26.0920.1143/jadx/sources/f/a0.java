package f;

import android.media.AudioManager;
import com.google.android.projection.protocol.AndroidHeadUnitLogging;
import com.google.android.projection.sink.audio.AudioFocusManager;
import com.syu.carlink.CarLink;
import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class a0 implements AudioManager.OnAudioFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AutoFragment f809a;

    public a0(AutoFragment autoFragment) {
        this.f809a = autoFragment;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i2) {
        AutoFragment autoFragment = this.f809a;
        AudioFocusManager audioFocusManager = autoFragment.f648f;
        if (audioFocusManager == null) {
            return;
        }
        autoFragment.f660s = i2;
        if (i2 != -1) {
            if (i2 != 1) {
                return;
            }
            android.app.m.q("001 =================>>>   Auto Audio Focus : ", i2, "   enablePhoneFocus()", AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY);
            autoFragment.f648f.enablePhoneFocus();
            CarLink.f562i.f().t(k.f825y);
            return;
        }
        if (!CarLink.f562i.f564d) {
            audioFocusManager.disablePhoneFocus();
            return;
        }
        int iRequestAudioFocus = autoFragment.f659r.requestAudioFocus(autoFragment.f661t, 3, 1);
        if (iRequestAudioFocus == 1) {
            android.app.m.q("onAudioFocusChange Auto Audio Focus : ", iRequestAudioFocus, "   enablePhoneFocus()", AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY);
            autoFragment.f648f.enablePhoneFocus();
            CarLink.f562i.f().t(k.f825y);
        }
    }
}
