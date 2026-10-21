package l;

import android.net.ConnectivityManager;
import z.p;

/* JADX INFO: loaded from: classes4.dex */
public final class d extends ConnectivityManager.OnStartTetheringCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f1064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f1065b;

    public d(p pVar, e eVar) {
        this.f1064a = pVar;
        this.f1065b = eVar;
    }

    @Override // android.net.ConnectivityManager.OnStartTetheringCallback
    public final void onTetheringFailed() {
        super.onTetheringFailed();
        n.b.a("HDL", "=============>>> onTetheringFailed");
        p pVar = this.f1064a;
        if (pVar != null) {
            pVar.invoke(Boolean.FALSE, null);
        }
    }

    @Override // android.net.ConnectivityManager.OnStartTetheringCallback
    public final void onTetheringStarted() {
        super.onTetheringStarted();
        n.b.a("HDL", "=============>>> onTetheringStarted");
        p pVar = this.f1064a;
        if (pVar != null) {
            pVar.invoke(Boolean.TRUE, this.f1065b.c);
        }
    }
}
