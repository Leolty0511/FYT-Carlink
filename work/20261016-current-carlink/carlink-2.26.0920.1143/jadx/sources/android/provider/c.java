package android.provider;

import android.graphics.Typeface;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f122b;
    public final /* synthetic */ FontsContract.FontRequestCallback c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Typeface f123d;

    public /* synthetic */ c(FontsContract.FontRequestCallback fontRequestCallback, Typeface typeface, int i2) {
        this.f122b = i2;
        this.c = fontRequestCallback;
        this.f123d = typeface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f122b;
        Typeface typeface = this.f123d;
        FontsContract.FontRequestCallback fontRequestCallback = this.c;
        switch (i2) {
            case 0:
                fontRequestCallback.onTypefaceRetrieved(typeface);
                break;
            case 1:
                fontRequestCallback.onTypefaceRetrieved(typeface);
                break;
            default:
                fontRequestCallback.onTypefaceRetrieved(typeface);
                break;
        }
    }
}
