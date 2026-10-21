package e;

import android.location.GpsStatus;
import android.location.OnNmeaMessageListener;
import com.syu.carlink.CarLinkService;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c implements OnNmeaMessageListener, GpsStatus.NmeaListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CarLinkService f757a;

    public /* synthetic */ c(CarLinkService carLinkService) {
        this.f757a = carLinkService;
    }

    @Override // android.location.OnNmeaMessageListener
    public final void onNmeaMessage(String str, long j2) {
        ArrayList arrayList = CarLinkService.n0;
        CarLinkService carLinkService = this.f757a;
        t.b.h(carLinkService, "this$0");
        h.c cVar = carLinkService.A;
        if (cVar != null) {
            t.b.g(str, "msg");
            cVar.n(228, new String[]{str}, new int[0]);
        }
    }

    @Override // android.location.GpsStatus.NmeaListener
    public final void onNmeaReceived(long j2, String str) {
        ArrayList arrayList = CarLinkService.n0;
        CarLinkService carLinkService = this.f757a;
        t.b.h(carLinkService, "this$0");
        h.c cVar = carLinkService.A;
        if (cVar != null) {
            t.b.g(str, "nmea");
            cVar.n(228, new String[]{str}, new int[0]);
        }
    }
}
