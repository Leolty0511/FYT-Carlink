package android.source;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class SyuPrivate {
    public static String getAppToken(Context context) {
        if (isFytApp(context)) {
            return new String("ff3d280adb4a267c7b02231e801951b7589e6efd");
        }
        return null;
    }

    public static String getAppid(Context context) {
        if (isFytApp(context)) {
            return new String("67335ac5c5fdece7bfa2edcb82b42921");
        }
        return null;
    }

    public static String getCompanyName(Context context) {
        if (isFytApp(context)) {
            return new String("fyttekc354241f7b");
        }
        return null;
    }

    private static boolean isFytApp(Context context) {
        return context.getPackageName() != null && context.getPackageName().equals("com.syu.voice");
    }
}
