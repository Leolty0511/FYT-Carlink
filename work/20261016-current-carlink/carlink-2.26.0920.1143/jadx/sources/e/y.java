package e;

import com.syu.carlink.CarLink;
import com.syu.carlink.UsbScanner;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f787b;
    public final /* synthetic */ int c;

    public /* synthetic */ y(int i2, int i3) {
        this.f787b = i3;
        this.c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.c;
        switch (this.f787b) {
            case 0:
                UsbScanner usbScanner = UsbScanner.f635j;
                CarLink carLink = CarLink.f562i;
                if (carLink == null) {
                    t.b.B("me");
                    throw null;
                }
                if (carLink.B() == 3) {
                    s.a aVar = com.syu.carlink.base.a.c;
                    b.a().b(new g.a(i2, 7, 0, null, null, 24));
                    return;
                }
                return;
            case 1:
                CarLink carLink2 = CarLink.f562i;
                if (carLink2 == null) {
                    t.b.B("me");
                    throw null;
                }
                carLink2.j().f903w.postValue(Integer.valueOf((i2 <= 0 || i2 > 2) ? 0 : i2));
                CarLink carLink3 = CarLink.f562i;
                if (carLink3 != null) {
                    carLink3.j().f902v.postValue(Boolean.valueOf(i2 > 0));
                    return;
                } else {
                    t.b.B("me");
                    throw null;
                }
            default:
                CarLink carLink4 = CarLink.f562i;
                if (carLink4 != null) {
                    carLink4.j().f904x.postValue(Boolean.valueOf(i2 == 1));
                    return;
                } else {
                    t.b.B("me");
                    throw null;
                }
        }
    }
}
