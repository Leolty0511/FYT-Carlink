package android.net.lowpan;

import android.net.IpPrefix;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f100b;
    public final /* synthetic */ LowpanInterface.Callback c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ IpPrefix f101d;

    public /* synthetic */ f(LowpanInterface.Callback callback, IpPrefix ipPrefix, int i2) {
        this.f100b = i2;
        this.c = callback;
        this.f101d = ipPrefix;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f100b;
        IpPrefix ipPrefix = this.f101d;
        LowpanInterface.Callback callback = this.c;
        switch (i2) {
            case 0:
                callback.onLinkNetworkAdded(ipPrefix);
                break;
            default:
                callback.onLinkNetworkRemoved(ipPrefix);
                break;
        }
    }
}
