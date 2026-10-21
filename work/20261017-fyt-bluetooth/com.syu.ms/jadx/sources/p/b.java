package p;

import android.content.Context;
import android.view.FallbackEventHandler;
import android.view.LayoutInflater;
import android.view.Window;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f17018a;

    static {
        try {
            f17018a = (a) Class.forName("com.android.internal.policy.impl.Policy").newInstance();
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("com.android.internal.policy.impl.Policy could not be loaded", e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("com.android.internal.policy.impl.Policy could not be instantiated", e3);
        } catch (InstantiationException e4) {
            throw new RuntimeException("com.android.internal.policy.impl.Policy could not be instantiated", e4);
        }
    }

    public static FallbackEventHandler a(Context context) {
        return f17018a.c(context);
    }

    public static LayoutInflater b(Context context) {
        return f17018a.a(context);
    }

    public static Window c(Context context) {
        return f17018a.b(context);
    }
}
