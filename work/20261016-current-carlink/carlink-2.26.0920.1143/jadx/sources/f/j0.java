package f;

import android.util.Log;
import com.google.android.projection.protocol.AndroidHeadUnitLogging;
import com.google.android.projection.sink.audio.AudioPlayer;
import com.syu.carlink.CarLink;

/* JADX INFO: loaded from: classes4.dex */
public final class j0 implements AudioPlayer.Callback {
    @Override // com.google.android.projection.sink.audio.AudioPlayer.Callback
    public final void onStart() {
        Log.e(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "***************************** System onStart");
        o.e eVar = CarLink.f562i.f().f592l;
        eVar.getClass();
        eVar.c(0, 158, new int[]{1}, null, null);
    }

    @Override // com.google.android.projection.sink.audio.AudioPlayer.Callback
    public final void onStop() {
        Log.e(AndroidHeadUnitLogging.TAG_MAIN_ACTIVITY, "***************************** System onStart");
        o.e eVar = CarLink.f562i.f().f592l;
        eVar.getClass();
        eVar.c(0, 158, new int[]{0}, null, null);
    }
}
