package android.security.keystore;

import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
abstract class Utils {
    private Utils() {
    }

    public static Date cloneIfNotNull(Date date) {
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public static byte[] cloneIfNotNull(byte[] bArr) {
        if (bArr != null) {
            return (byte[]) bArr.clone();
        }
        return null;
    }
}
