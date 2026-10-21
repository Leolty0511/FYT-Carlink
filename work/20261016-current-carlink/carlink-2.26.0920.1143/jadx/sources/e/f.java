package e;

import android.os.Binder;
import com.syu.carlink.CarLinkService;

/* JADX INFO: loaded from: classes4.dex */
public final class f extends Binder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CarLinkService f763b;

    public f(CarLinkService carLinkService) {
        t.b.h(carLinkService, "service");
        this.f763b = carLinkService;
    }
}
