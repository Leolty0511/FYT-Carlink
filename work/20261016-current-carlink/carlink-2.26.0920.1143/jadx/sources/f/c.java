package f;

import android.os.Handler;
import android.util.Log;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f811b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f812d;

    public c(k kVar) {
        this.f811b = 0;
        this.f812d = kVar;
        this.c = 60;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f811b;
        Object obj = this.f812d;
        switch (i2) {
            case 0:
                k kVar = (k) obj;
                CarLinkService carLinkServiceF = kVar.f();
                if (carLinkServiceF != null) {
                    Log.i("Auto", "Wirelessed Auto linking ----->>>  linkState: " + CarLink.f562i.B() + " cnt :" + kVar.f843u);
                    Handler handler = carLinkServiceF.f581f;
                    handler.removeCallbacks(this);
                    if (CarLink.f562i.B() == 4) {
                        int i3 = kVar.f843u;
                        if (i3 < 60) {
                            kVar.f843u = i3 + 1;
                            handler.postDelayed(this, 900L);
                        } else if (i3 == 60) {
                            kVar.f843u = 0;
                            int i4 = kVar.f844v;
                            if (i4 >= 1) {
                                n.b.a("Auto", "Wirelessed Auto connect timeout after " + kVar.f844v + " resets, give up");
                                kVar.f844v = 0;
                                kVar.n();
                                kVar.e(1000L);
                            } else {
                                kVar.f844v = i4 + 1;
                                b bVar = kVar.f842t;
                                handler.removeCallbacks(bVar);
                                handler.postDelayed(bVar, 500L);
                            }
                        }
                    } else if (CarLink.f562i.B() == 5) {
                        kVar.f843u = 0;
                        kVar.f844v = 0;
                    }
                    break;
                }
                break;
            default:
                ((y) obj).f868a.f649g.handleNavigationFocusRequest(this.c);
                break;
        }
    }

    public c(y yVar, int i2) {
        this.f811b = 1;
        this.f812d = yVar;
        this.c = i2;
    }
}
