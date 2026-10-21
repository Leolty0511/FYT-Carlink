package androidx.appcompat.app;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f271b;
    public final /* synthetic */ Context c;

    public /* synthetic */ a(Context context, int i2) {
        this.f271b = i2;
        this.c = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f271b;
        Context context = this.c;
        switch (i2) {
            case 0:
                AppCompatDelegate.syncRequestedAndStoredLocales(context);
                break;
            default:
                AppCompatDelegate.lambda$syncRequestedAndStoredLocales$1(context);
                break;
        }
    }
}
