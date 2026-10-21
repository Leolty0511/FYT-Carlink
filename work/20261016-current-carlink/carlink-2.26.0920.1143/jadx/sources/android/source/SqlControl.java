package android.source;

/* JADX INFO: loaded from: classes2.dex */
public class SqlControl {
    public static native int BcbReboot2Rcovery(int i2, int i3, int i4);

    public static native int BcbSetting(int i2);

    public static native int BcbStateClean();

    public static native int BcbStateGet(int[] iArr);

    public static native int ReadSqlData(char[] cArr, int i2, int i3);

    public static native int WriteSqlData(char[] cArr, int i2, int i3);
}
