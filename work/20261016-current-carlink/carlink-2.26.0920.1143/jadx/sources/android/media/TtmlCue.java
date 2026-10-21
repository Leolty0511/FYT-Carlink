package android.media;

/* JADX INFO: loaded from: classes.dex */
class TtmlCue extends SubtitleTrack.Cue {
    public String mText;
    public String mTtmlFragment;

    public TtmlCue(long j2, long j3, String str, String str2) {
        this.mStartTimeMs = j2;
        this.mEndTimeMs = j3;
        this.mText = str;
        this.mTtmlFragment = str2;
    }
}
