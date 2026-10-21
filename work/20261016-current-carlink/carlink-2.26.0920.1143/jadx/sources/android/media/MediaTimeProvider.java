package android.media;

/* JADX INFO: loaded from: classes.dex */
public interface MediaTimeProvider {
    public static final long NO_TIME = -1;

    public interface OnMediaTimeListener {
        void onSeek(long j2);

        void onStop();

        void onTimedEvent(long j2);
    }

    void cancelNotifications(OnMediaTimeListener onMediaTimeListener);

    long getCurrentTimeUs(boolean z2, boolean z3);

    void notifyAt(long j2, OnMediaTimeListener onMediaTimeListener);

    void scheduleUpdate(OnMediaTimeListener onMediaTimeListener);
}
