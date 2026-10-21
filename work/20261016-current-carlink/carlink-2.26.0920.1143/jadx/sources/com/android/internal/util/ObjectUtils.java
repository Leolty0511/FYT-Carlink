package com.android.internal.util;

/* JADX INFO: loaded from: classes3.dex */
public class ObjectUtils {
    private ObjectUtils() {
    }

    public static <T extends Comparable> int compare(T t2, T t3) {
        if (t2 == null) {
            return t3 != null ? -1 : 0;
        }
        if (t3 != null) {
            return t2.compareTo(t3);
        }
        return 1;
    }

    public static <T> T firstNotNull(T t2, T t3) {
        return t2 != null ? t2 : (T) Preconditions.checkNotNull(t3);
    }
}
