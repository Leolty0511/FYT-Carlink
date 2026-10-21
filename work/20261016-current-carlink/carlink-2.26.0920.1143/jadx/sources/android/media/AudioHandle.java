package android.media;

/* JADX INFO: loaded from: classes.dex */
class AudioHandle {
    private final int mId;

    public AudioHandle(int i2) {
        this.mId = i2;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof AudioHandle) && this.mId == ((AudioHandle) obj).id();
    }

    public int hashCode() {
        return this.mId;
    }

    public int id() {
        return this.mId;
    }

    public String toString() {
        return Integer.toString(this.mId);
    }
}
