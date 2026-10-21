package n;

import android.util.Log;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f1082a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f1083b = false;
    public static int c = 2;

    public static void a(String str, String str2) {
        Boolean boolValueOf;
        if (!f1083b || c > 6) {
            boolValueOf = Boolean.FALSE;
        } else {
            Boolean bool = (Boolean) f1082a.get(str);
            boolValueOf = Boolean.valueOf(bool == null ? false : bool.booleanValue());
        }
        if (boolValueOf.booleanValue()) {
            Log.e(str, str2);
        }
    }
}
