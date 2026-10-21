package android.media;

/* JADX INFO: loaded from: classes.dex */
public class MediaSyncEvent {
    public static final int SYNC_EVENT_NONE = 0;
    public static final int SYNC_EVENT_PRESENTATION_COMPLETE = 1;
    private int mAudioSession = 0;
    private final int mType;

    private MediaSyncEvent(int i2) {
        this.mType = i2;
    }

    public static MediaSyncEvent createEvent(int i2) {
        if (isValidType(i2)) {
            return new MediaSyncEvent(i2);
        }
        throw new IllegalArgumentException(i2 + "is not a valid MediaSyncEvent type.");
    }

    private static boolean isValidType(int i2) {
        return i2 == 0 || i2 == 1;
    }

    public int getAudioSessionId() {
        return this.mAudioSession;
    }

    public int getType() {
        return this.mType;
    }

    public MediaSyncEvent setAudioSessionId(int i2) {
        if (i2 > 0) {
            this.mAudioSession = i2;
            return this;
        }
        throw new IllegalArgumentException(i2 + " is not a valid session ID.");
    }
}
