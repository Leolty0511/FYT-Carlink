package android.os;

import android.util.MutableInt;
import com.android.internal.annotations.GuardedBy;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class SystemProperties {
    public static final int PROP_NAME_MAX = Integer.MAX_VALUE;
    public static final int PROP_VALUE_MAX = 91;
    private static final String TAG = "SystemProperties";
    private static final boolean TRACK_KEY_ACCESS = false;
    private static final ArrayList<Runnable> sChangeCallbacks = new ArrayList<>();

    @GuardedBy("sRoReads")
    private static final HashMap<String, MutableInt> sRoReads = null;

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
        return native_get(str);
    }

    public static boolean getBoolean(String str, boolean z2) {
        return native_get_boolean(str, z2);
    }

    public static int getInt(String str, int i2) {
        return native_get_int(str, i2);
    }

    public static long getLong(String str, long j2) {
        return native_get_long(str, j2);
    }

    private static native void native_add_change_callback();

    private static native String native_get(String str);

    private static native String native_get(String str, String str2);

    private static native boolean native_get_boolean(String str, boolean z2);

    private static native int native_get_int(String str, int i2);

    private static native long native_get_long(String str, long j2);

    private static native void native_report_sysprop_change();

    private static native void native_set(String str, String str2);

    private static IllegalArgumentException newValueTooLargeException(String str, String str2) {
        return new IllegalArgumentException(android.accessibilityservice.c.l("value of system property '", str, "' is longer than 91 characters: ", str2));
    }

    private static void onKeyAccess(String str) {
    }

    public static void reportSyspropChanged() {
        native_report_sysprop_change();
    }

    public static void set(String str, String str2) {
        if (str2 != null && str2.length() > 91) {
            throw newValueTooLargeException(str, str2);
        }
        native_set(str, str2);
    }

    public static String get(String str, String str2) {
        return native_get(str, str2);
    }
}
