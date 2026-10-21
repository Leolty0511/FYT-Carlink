package android.media;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static void a(AudioTrack.OnRoutingChangedListener onRoutingChangedListener, AudioRouting audioRouting) {
        if (audioRouting instanceof AudioTrack) {
            onRoutingChangedListener.onRoutingChanged((AudioTrack) audioRouting);
        }
    }
}
