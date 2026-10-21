package android.media;

/* JADX INFO: loaded from: classes.dex */
class TextTrackCueSpan {
    boolean mEnabled;
    String mText;
    long mTimestampMs;

    public TextTrackCueSpan(String str, long j2) {
        this.mTimestampMs = j2;
        this.mText = str;
        this.mEnabled = j2 < 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TextTrackCueSpan)) {
            return false;
        }
        TextTrackCueSpan textTrackCueSpan = (TextTrackCueSpan) obj;
        return this.mTimestampMs == textTrackCueSpan.mTimestampMs && this.mText.equals(textTrackCueSpan.mText);
    }
}
