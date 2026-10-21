package e;

import android.content.ContextWrapper;
import android.os.SystemProperties;
import androidx.lifecycle.Observer;
import com.syu.carlink.CarLink;
import com.syu.carlink.CarLinkService;
import com.syu.carlink.MainActivity;

/* JADX INFO: loaded from: classes4.dex */
public final class j implements Observer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f768b;
    public final /* synthetic */ ContextWrapper c;

    public j(CarLinkService carLinkService) {
        this.f767a = 0;
        this.c = carLinkService;
    }

    public final void a(int i2) {
        switch (this.f767a) {
            case 0:
                int i3 = this.f768b;
                if (i2 != i3) {
                    ((CarLinkService) this.c).G = i3;
                    this.f768b = i2;
                    CarLinkService carLinkService = (CarLinkService) this.c;
                    carLinkService.f581f.removeCallbacks(carLinkService.M);
                    CarLinkService carLinkService2 = (CarLinkService) this.c;
                    carLinkService2.f581f.postDelayed(carLinkService2.M, 200L);
                }
                int i4 = 1;
                if (i2 != 1) {
                    i4 = 2;
                    if (i2 != 2) {
                        CarLink carLink = CarLink.f562i;
                        if (carLink == null) {
                            t.b.B("me");
                            throw null;
                        }
                        carLink.j().f900t.postValue(-1);
                        i4 = 0;
                    }
                }
                String strValueOf = String.valueOf(i4);
                t.b.h(strValueOf, "value");
                SystemProperties.set("sys.carlink.type", strValueOf);
                return;
            default:
                if (this.f768b == i2) {
                    return;
                }
                this.f768b = i2;
                ContextWrapper contextWrapper = this.c;
                if (i2 == -2) {
                    MainActivity mainActivity = (MainActivity) contextWrapper;
                    com.syu.carlink.ui.a aVar = mainActivity.f629l;
                    if (aVar != null) {
                        aVar.a();
                    }
                    mainActivity.f629l = null;
                    mainActivity.i().postDelayed(new com.syu.carlink.e(mainActivity, 8), 300L);
                    return;
                }
                if (i2 == -1) {
                    MainActivity mainActivity2 = (MainActivity) contextWrapper;
                    com.syu.carlink.ui.a aVar2 = mainActivity2.f629l;
                    if (aVar2 != null) {
                        aVar2.a();
                    }
                    mainActivity2.f629l = null;
                    mainActivity2.i().postDelayed(new com.syu.carlink.e(mainActivity2, 9), 300L);
                    return;
                }
                if (i2 != 0) {
                    com.syu.carlink.ui.a aVar3 = ((MainActivity) contextWrapper).f629l;
                    if (aVar3 != null) {
                        aVar3.a();
                        return;
                    }
                    return;
                }
                MainActivity mainActivity3 = (MainActivity) contextWrapper;
                com.syu.carlink.ui.a aVar4 = mainActivity3.f629l;
                if (aVar4 != null) {
                    aVar4.a();
                }
                mainActivity3.f629l = null;
                mainActivity3.i().postDelayed(new com.syu.carlink.e(mainActivity3, 10), 300L);
                return;
        }
    }

    @Override // androidx.lifecycle.Observer
    public final /* bridge */ /* synthetic */ void onChanged(Object obj) {
        switch (this.f767a) {
            case 0:
                a(((Number) obj).intValue());
                break;
            default:
                a(((Number) obj).intValue());
                break;
        }
    }

    public j(MainActivity mainActivity) {
        this.f767a = 1;
        this.c = mainActivity;
        this.f768b = Integer.MIN_VALUE;
    }
}
