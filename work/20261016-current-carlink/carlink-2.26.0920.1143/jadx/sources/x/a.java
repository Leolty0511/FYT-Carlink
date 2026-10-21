package x;

import android.os.Build;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Integer f1118a;

    static {
        Integer num;
        Integer num2 = null;
        try {
            String str = Build.VERSION.INCREMENTAL;
            Object obj = Build.VERSION.class.getField("SDK_INT").get(null);
            num = obj instanceof Integer ? (Integer) obj : null;
        } catch (Throwable unused) {
        }
        if (num != null) {
            if (num.intValue() > 0) {
                num2 = num;
            }
        }
        f1118a = num2;
    }
}
