package f;

import android.util.Log;
import com.google.android.projection.proto.Protos;
import com.google.android.projection.protocol.AndroidHeadUnitLogging;
import com.google.android.projection.sink.audio.AudioPlayer;
import com.syu.carlink.CarLink;
import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class i0 implements AudioPlayer.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f822a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AutoFragment f823b;

    public i0(AutoFragment autoFragment) {
        this.f823b = autoFragment;
    }

    @Override // com.google.android.projection.sink.audio.AudioPlayer.Callback
    public final void onStart() {
        Log.e(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "***************************** TTS onStart");
        int i2 = this.f823b.H;
        this.f822a = !this.f823b.G && (i2 == Protos.NavigationStatus.NavigationStatusEnum.ACTIVE.getNumber() || i2 == Protos.NavigationStatus.NavigationStatusEnum.REROUTING.getNumber());
        Log.e(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "******mNavStatus : " + this.f823b.H + " mIsVoiceSession :" + this.f823b.G + " isNavigation:" + this.f822a);
        if (this.f822a) {
            AutoFragment autoFragment = this.f823b;
            if (autoFragment.f662u != 3 && CarLink.f562i.C() == 2) {
                autoFragment.f662u = autoFragment.f659r.requestAudioFocus(autoFragment.f663v, 5, 3);
            }
            o.e eVar = CarLink.f562i.f().f592l;
            eVar.getClass();
            eVar.c(0, 157, new int[]{1}, null, null);
        }
    }

    @Override // com.google.android.projection.sink.audio.AudioPlayer.Callback
    public final void onStop() {
        Log.e(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "***************************** TTS onStop");
        Log.e(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "******mNavStatus : " + this.f823b.H + " mIsVoiceSession :" + this.f823b.G + " isNavigation:" + this.f822a);
        if (this.f822a) {
            this.f822a = false;
            AutoFragment autoFragment = this.f823b;
            if (autoFragment.f662u != -1) {
                if (CarLink.f562i.C() == 2) {
                    autoFragment.f659r.abandonAudioFocus(autoFragment.f663v);
                }
                autoFragment.f662u = -1;
            }
            o.e eVar = CarLink.f562i.f().f592l;
            eVar.getClass();
            eVar.c(0, 157, new int[]{0}, null, null);
        }
    }
}
