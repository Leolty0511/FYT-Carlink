package android.database;

/* JADX INFO: loaded from: classes.dex */
public final class CharArrayBuffer {
    public char[] data;
    public int sizeCopied;

    public CharArrayBuffer(int i2) {
        this.data = new char[i2];
    }

    public CharArrayBuffer(char[] cArr) {
        this.data = cArr;
    }
}
