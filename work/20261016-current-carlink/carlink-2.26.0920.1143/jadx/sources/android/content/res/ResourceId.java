package android.content.res;

/* JADX INFO: loaded from: classes.dex */
public final class ResourceId {
    public static final int ID_NULL = 0;

    public static boolean isValid(int i2) {
        return (i2 == -1 || ((-16777216) & i2) == 0 || (i2 & 16711680) == 0) ? false : true;
    }
}
