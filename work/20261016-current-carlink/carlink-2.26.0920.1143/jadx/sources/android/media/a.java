package android.media;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static void a(AudioRecord.OnRoutingChangedListener onRoutingChangedListener, AudioRouting audioRouting) {
        if (audioRouting instanceof AudioRecord) {
            onRoutingChangedListener.onRoutingChanged((AudioRecord) audioRouting);
        }
    }
}
