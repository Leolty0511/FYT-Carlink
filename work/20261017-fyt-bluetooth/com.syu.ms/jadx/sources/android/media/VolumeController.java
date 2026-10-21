package android.media;

/* JADX INFO: loaded from: classes.dex */
public interface VolumeController {
    void postHasNewRemotePlaybackInfo();

    void postRemoteSliderVisibility(boolean z2);

    void postRemoteVolumeChanged(int i2, int i3);
}
