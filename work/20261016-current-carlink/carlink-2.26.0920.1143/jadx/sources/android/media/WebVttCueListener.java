package android.media;

/* JADX INFO: loaded from: classes.dex */
interface WebVttCueListener {
    void onCueParsed(TextTrackCue textTrackCue);

    void onRegionParsed(TextTrackRegion textTrackRegion);
}
