package android.os;

/* JADX INFO: loaded from: classes.dex */
public class PooledStringReader {
    private final Parcel mIn;
    private final String[] mPool;

    public PooledStringReader(Parcel parcel) {
        this.mIn = parcel;
        this.mPool = new String[parcel.readInt()];
    }

    public int getStringCount() {
        return this.mPool.length;
    }

    public String readString() {
        int i2 = this.mIn.readInt();
        if (i2 >= 0) {
            return this.mPool[i2];
        }
        String string = this.mIn.readString();
        this.mPool[(-i2) - 1] = string;
        return string;
    }
}
