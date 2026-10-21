package f;

import android.util.Log;
import com.syu.carlink.CarLink;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f810b;
    public final /* synthetic */ k c;

    public /* synthetic */ b(k kVar, int i2) {
        this.f810b = i2;
        this.c = kVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f810b;
        k kVar = this.c;
        switch (i2) {
            case 0:
                CarLink.f562i.j().f899s.postValue(2);
                CarLink.f562i.j().f901u.postValue(5);
                break;
            case 1:
                CarLink.f562i.j().f899s.postValue(2);
                CarLink.f562i.j().f901u.postValue(4);
                break;
            case 2:
                Log.w("Auto", "=================>>> updateState2DisConnected");
                if (kVar.f831h >= 0) {
                    kVar.f831h = -1;
                }
                CarLink.f562i.j().f900t.postValue(-1);
                kVar.b();
                CarLink.f562i.j().f901u.postValue(3);
                CarLink.f562i.j().f899s.postValue(0);
                break;
            default:
                if (CarLink.f562i.B() != 5) {
                    kVar.n();
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                    kVar.o();
                    kVar.d();
                }
                break;
        }
    }
}
