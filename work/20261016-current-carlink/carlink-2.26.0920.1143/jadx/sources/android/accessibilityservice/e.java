package android.accessibilityservice;

import android.provider.FontsContract;
import androidx.core.content.res.ResourcesCompat;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f9b;
    public final /* synthetic */ int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f10d;

    public /* synthetic */ e(Object obj, int i2, int i3) {
        this.f9b = i3;
        this.f10d = obj;
        this.c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f9b;
        int i3 = this.c;
        Object obj = this.f10d;
        switch (i2) {
            case 0:
                ((FingerprintGestureController.FingerprintGestureCallback) obj).onGestureDetected(i3);
                break;
            case 1:
                ((FontsContract.FontRequestCallback) obj).onTypefaceRequestFailed(i3);
                break;
            default:
                ((ResourcesCompat.FontCallback) obj).lambda$callbackFailAsync$1(i3);
                break;
        }
    }
}
