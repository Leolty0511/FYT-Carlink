package android.net.lowpan;

import android.net.LinkAddress;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f94b;
    public final /* synthetic */ LowpanInterface.Callback c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ LinkAddress f95d;

    public /* synthetic */ c(LowpanInterface.Callback callback, LinkAddress linkAddress, int i2) {
        this.f94b = i2;
        this.c = callback;
        this.f95d = linkAddress;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f94b;
        LinkAddress linkAddress = this.f95d;
        LowpanInterface.Callback callback = this.c;
        switch (i2) {
            case 0:
                callback.onLinkAddressRemoved(linkAddress);
                break;
            default:
                callback.onLinkAddressAdded(linkAddress);
                break;
        }
    }
}
