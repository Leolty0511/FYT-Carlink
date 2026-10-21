package android.os;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class SystemProperties {
    public static final int PROP_NAME_MAX = 31;
    public static final int PROP_VALUE_MAX = 91;
    private static final ArrayList<Runnable> sChangeCallbacks = new ArrayList<>();

    public static void addChangeCallback(Runnable runnable) {
        ArrayList<Runnable> arrayList = sChangeCallbacks;
        synchronized (arrayList) {
            if (arrayList.size() == 0) {
                native_add_change_callback();
            }
            arrayList.add(runnable);
        }
    }

    public static void callChangeCallbacks() {
        ArrayList<Runnable> arrayList = sChangeCallbacks;
        synchronized (arrayList) {
            if (arrayList.size() == 0) {
                return;
            }
            ArrayList arrayList2 = new ArrayList(arrayList);
            for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                ((Runnable) arrayList2.get(i2)).run();
            }
        }
    }

    public static String get(String str) {
        if (str.length() <= 31) {
            return native_get(str);
        }
        throw new IllegalArgumentException("key.length > 31");
    }

    public static boolean getBoolean(String str, boolean z2) {
        if (str.length() <= 31) {
            return native_get_boolean(str, z2);
        }
        throw new IllegalArgumentException("key.length > 31");
    }

    public static int getInt(String str, int i2) {
        if (str.length() <= 31) {
            return native_get_int(str, i2);
        }
        throw new IllegalArgumentException("key.length > 31");
    }

    public static long getLong(String str, long j2) {
        if (str.length() <= 31) {
            return native_get_long(str, j2);
        }
        throw new IllegalArgumentException("key.length > 31");
    }

    private static native void native_add_change_callback();

    private static native String native_get(String str);

    private static native String native_get(String str, String str2);

    private static native boolean native_get_boolean(String str, boolean z2);

    private static native int native_get_int(String str, int i2);

    private static native long native_get_long(String str, long j2);

    private static native void native_set(String str, String str2);

    public static void set(String str, String str2) {
        if (str.length() > 31) {
            throw new IllegalArgumentException("key.length > 31");
        }
        if (str2 != null && str2.length() > 91) {
            throw new IllegalArgumentException("val.length > 91");
        }
        native_set(str, str2);
    }

    public static String get(String str, String str2) {
        if (str.length() <= 31) {
            return native_get(str, str2);
        }
        throw new IllegalArgumentException("key.length > 31");
    }
}
