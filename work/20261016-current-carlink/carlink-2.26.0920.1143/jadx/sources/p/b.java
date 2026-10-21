package p;

import android.content.Context;
import android.telecom.Logging.Session;
import f0.g;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1101a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f1102b;

    public b(Context context, int i2) {
        t.b.h(context, "context");
        String packageName = context.getPackageName();
        t.b.g(packageName, "context.packageName");
        this.f1102b = context.getSharedPreferences(g.J(packageName, ".", Session.SESSION_SEPARATION_CHAR_CHILD), i2);
    }

    public final String toString() {
        switch (this.f1101a) {
            case 1:
                return "<" + ((String) this.f1102b) + '>';
            default:
                return super.toString();
        }
    }

    public /* synthetic */ b(Context context) {
        this(context, 0);
    }

    public b(String str) {
        this.f1102b = str;
    }
}
