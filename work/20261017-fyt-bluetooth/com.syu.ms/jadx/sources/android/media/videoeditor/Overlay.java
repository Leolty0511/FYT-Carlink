package android.media.videoeditor;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class Overlay {
    public long mDurationMs;
    private final MediaItem mMediaItem;
    public long mStartTimeMs;
    private final String mUniqueId;
    private final Map<String, String> mUserAttributes;

    private Overlay() {
        this(null, null, 0L, 0L);
    }

    public boolean equals(Object obj) {
        if (obj instanceof Overlay) {
            return this.mUniqueId.equals(((Overlay) obj).mUniqueId);
        }
        return false;
    }

    public long getDuration() {
        return this.mDurationMs;
    }

    public String getId() {
        return this.mUniqueId;
    }

    public MediaItem getMediaItem() {
        return this.mMediaItem;
    }

    public long getStartTime() {
        return this.mStartTimeMs;
    }

    public Map<String, String> getUserAttributes() {
        return this.mUserAttributes;
    }

    public int hashCode() {
        return this.mUniqueId.hashCode();
    }

    public void setDuration(long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("Invalid duration");
        }
        if (this.mStartTimeMs + j2 > this.mMediaItem.getDuration()) {
            throw new IllegalArgumentException("Duration is too large");
        }
        getMediaItem().getNativeContext().setGeneratePreview(true);
        long j3 = this.mDurationMs;
        this.mDurationMs = j2;
        MediaItem mediaItem = this.mMediaItem;
        long j4 = this.mStartTimeMs;
        mediaItem.invalidateTransitions(j4, j3, j4, j2);
    }

    public void setStartTime(long j2) {
        if (this.mDurationMs + j2 > this.mMediaItem.getDuration()) {
            throw new IllegalArgumentException("Start time is too large");
        }
        getMediaItem().getNativeContext().setGeneratePreview(true);
        long j3 = this.mStartTimeMs;
        this.mStartTimeMs = j2;
        MediaItem mediaItem = this.mMediaItem;
        long j4 = this.mDurationMs;
        mediaItem.invalidateTransitions(j3, j4, j2, j4);
    }

    public void setStartTimeAndDuration(long j2, long j3) {
        if (j2 + j3 > this.mMediaItem.getDuration()) {
            throw new IllegalArgumentException("Invalid start time or duration");
        }
        getMediaItem().getNativeContext().setGeneratePreview(true);
        long j4 = this.mStartTimeMs;
        long j5 = this.mDurationMs;
        this.mStartTimeMs = j2;
        this.mDurationMs = j3;
        this.mMediaItem.invalidateTransitions(j4, j5, j2, j3);
    }

    public void setUserAttribute(String str, String str2) {
        this.mUserAttributes.put(str, str2);
    }

    public Overlay(MediaItem mediaItem, String str, long j2, long j3) {
        if (mediaItem == null) {
            throw new IllegalArgumentException("Media item cannot be null");
        }
        if (j2 < 0 || j3 < 0) {
            throw new IllegalArgumentException("Invalid start time and/OR duration");
        }
        if (j2 + j3 > mediaItem.getDuration()) {
            throw new IllegalArgumentException("Invalid start time and duration");
        }
        this.mMediaItem = mediaItem;
        this.mUniqueId = str;
        this.mStartTimeMs = j2;
        this.mDurationMs = j3;
        this.mUserAttributes = new HashMap();
    }
}
