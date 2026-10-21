package androidx.core.location;

import android.location.Location;
import androidx.core.util.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f303b;
    public final /* synthetic */ Consumer c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Location f304d;

    public /* synthetic */ f(Consumer consumer, Location location, int i2) {
        this.f303b = i2;
        this.c = consumer;
        this.f304d = location;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f303b;
        Location location = this.f304d;
        Consumer consumer = this.c;
        switch (i2) {
            case 0:
                consumer.accept(location);
                break;
            default:
                consumer.accept(location);
                break;
        }
    }
}
