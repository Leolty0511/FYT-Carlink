package h0;

import android.os.Handler;
import android.os.Looper;
import g0.c;
import g0.d;
import g0.f;
import java.util.concurrent.CancellationException;
import u.g;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends f implements c {
    private volatile a _immediate;
    public final Handler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f954d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f955e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a f956f;

    public a(Handler handler, String str, boolean z2) {
        this.c = handler;
        this.f954d = str;
        this.f955e = z2;
        this._immediate = z2 ? this : null;
        a aVar = this._immediate;
        if (aVar == null) {
            aVar = new a(handler, str, true);
            this._immediate = aVar;
        }
        this.f956f = aVar;
    }

    @Override // kotlinx.coroutines.b
    public final void a(g gVar, Runnable runnable) {
        if (this.c.post(runnable)) {
            return;
        }
        c(gVar, runnable);
    }

    @Override // kotlinx.coroutines.b
    public final boolean b() {
        return (this.f955e && t.b.a(Looper.myLooper(), this.c.getLooper())) ? false : true;
    }

    public final void c(g gVar, Runnable runnable) {
        new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed");
        android.renderscript.a.h(gVar.get(e.b.f753b));
        d.f909a.a(gVar, runnable);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && ((a) obj).c == this.c;
    }

    public final int hashCode() {
        return System.identityHashCode(this.c);
    }

    @Override // kotlinx.coroutines.b
    public final String toString() {
        a aVar;
        String str;
        kotlinx.coroutines.scheduling.d dVar = d.f909a;
        f fVar = k0.f.f990a;
        if (this == fVar) {
            str = "Dispatchers.Main";
        } else {
            try {
                aVar = ((a) fVar).f956f;
            } catch (UnsupportedOperationException unused) {
                aVar = null;
            }
            str = this == aVar ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        String string = this.f954d;
        if (string == null) {
            string = this.c.toString();
        }
        return this.f955e ? t.b.y(".immediate", string) : string;
    }

    public a(Handler handler) {
        this(handler, null, false);
    }
}
