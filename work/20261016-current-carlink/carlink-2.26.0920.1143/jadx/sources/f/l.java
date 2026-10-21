package f;

import android.os.Handler;
import android.os.SystemProperties;
import android.util.Log;
import com.google.android.projection.protocol.AndroidHeadUnitLogging;
import com.google.android.projection.protocol.AudioSink;
import com.google.android.projection.sink.audio.AudioPlayer;
import com.syu.carlink.CarLink;
import com.syu.carlink.auto.AutoFragment;

/* JADX INFO: loaded from: classes4.dex */
public final class l implements AudioSink.AudioListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AudioPlayer f848b;
    public final AutoFragment c;

    public l(AutoFragment autoFragment, AudioPlayer audioPlayer) {
        this.f848b = audioPlayer;
        this.c = autoFragment;
        new Handler();
    }

    @Override // com.google.android.projection.protocol.AudioSink.AudioListener
    public final void onAudioData(int i2, long j2, byte[] bArr) {
        AudioPlayer audioPlayer = this.f848b;
        if (audioPlayer != null) {
            audioPlayer.onAudioData(i2, i2, bArr);
        }
    }

    @Override // com.google.android.projection.protocol.AudioSink.AudioListener
    public final void onCodecConfig(byte[] bArr) {
        Log.e("AHU", "*****************************  onCodecConfig");
        AudioPlayer audioPlayer = this.f848b;
        if (audioPlayer != null) {
            audioPlayer.onCodecConfig(bArr);
        }
    }

    @Override // com.google.android.projection.protocol.AudioSink.AudioListener
    public final void onSetUp(int i2) {
        android.app.m.p("*****************************  onSetUp mediaCodecType = ", i2, "AHU");
        AudioPlayer audioPlayer = this.f848b;
        if (audioPlayer != null) {
            audioPlayer.onSetUp(i2);
        }
    }

    @Override // com.google.android.projection.protocol.AudioSink.AudioListener
    public final void onShutdown() {
        Log.e("AHU", "*****************************  onShutdown");
        AudioPlayer audioPlayer = this.f848b;
        if (audioPlayer != null) {
            audioPlayer.onShutdown();
            AutoFragment autoFragment = this.c;
            autoFragment.f659r.abandonAudioFocus(autoFragment.f661t);
            n.b.a(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, " AAuto keyboardController -------->>  false : ");
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0060  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.projection.protocol.AudioSink.AudioListener
    public final void onStart(int i2) {
        Log.e("AHU", "*****************************  onStart  appid : " + CarLink.f562i.a());
        AudioPlayer audioPlayer = this.f848b;
        if (audioPlayer != null) {
            audioPlayer.onStart(i2);
        }
        String strValueOf = String.valueOf(2);
        t.b.h(strValueOf, "value");
        SystemProperties.set("sys.carlink.type", strValueOf);
        AutoFragment autoFragment = this.c;
        if (autoFragment != null) {
            if (CarLink.f562i.a() != 0) {
                if (CarLink.f562i.a() != 10) {
                    CarLink.f562i.f().j(true);
                } else {
                    String str = (String) CarLink.f562i.j().f897q.getValue();
                    if (str == null) {
                        str = "";
                    }
                    if ("com.ex.dabplayer.pad".equals(str)) {
                        CarLink.f562i.f().j(true);
                    }
                }
            }
            autoFragment.e();
            CarLink.f562i.f().h(10, true);
        }
    }

    @Override // com.google.android.projection.protocol.AudioSink.AudioListener
    public final void onStop(int i2) {
        Log.e("AHU", "*****************************  onStop");
        AudioPlayer audioPlayer = this.f848b;
        if (audioPlayer != null) {
            audioPlayer.onStop(i2);
        }
    }
}
