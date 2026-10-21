package d1;

import android.os.SystemProperties;
import android.util.Log;
import base.Configure;
import module.tv.TvStore;
import o1.h0;

/* JADX INFO: loaded from: classes2.dex */
public class h extends base.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static h f1581g;

    public h() {
        this.f331f.n("Tv-TRAN");
        this.f331f.f17001d = Configure.Property.MODULE_DEBUG_PREFIX.c("tv", false);
        P2("TV");
    }

    public static synchronized h X2() {
        if (f1581g == null) {
            f1581g = new h();
        }
        return f1581g;
    }

    @Override // y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 0) {
            if (i2 != 1) {
                return null;
            }
            return new y.f(d.f1570c);
        }
        if (!Y2(iArr, 1) || iArr[0] < 0) {
            return null;
        }
        int i3 = iArr[0];
        int[] iArr2 = d.f1577j;
        if (i3 < iArr2.length) {
            return new y.f(iArr2[iArr[0]]);
        }
        return null;
    }

    @Override // base.b
    public void N2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                d.f1569b.g();
                break;
            case 1:
                d.f1569b.c();
                break;
            case 2:
                d.f1569b.i();
                break;
            case 3:
                d.f1569b.d();
                break;
            case 4:
                if (Y2(iArr, 1)) {
                    Log.e("tv", "----------  >>>UI SET  TV TYPE : " + iArr[0]);
                    d.f1569b.k(iArr[0]);
                }
                break;
            case 5:
                d.f1569b.l();
                break;
            case 6:
                d.f1569b.n();
                break;
            case 7:
                if (Y2(iArr, 3)) {
                    d.f1569b.j(iArr[0], iArr[1], iArr[2]);
                }
                break;
            case 8:
                if (Y2(iArr, 1)) {
                    d.f1569b.h(iArr[0]);
                }
                break;
            case 9:
                if (Y2(iArr, 1)) {
                    d.f1569b.f(iArr[0]);
                }
                break;
            case 10:
                if (Y2(iArr, 1)) {
                    d.f1569b.m(iArr[0]);
                }
                break;
        }
    }

    @Override // base.b
    public void O2(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // y.c
    public void P0(y.b bVar, int i2) {
        if (bVar == null) {
            return;
        }
        this.f331f.p(bVar, i2);
    }

    @Override // base.b
    public void Q2(h0 h0Var) {
        int i2 = SystemProperties.getInt("syu.tv.type", 0);
        int iH = h0Var.h(TvStore.TYPE.ordinal(), i2);
        Log.e("tv", "==================>>>> tv def == " + i2);
        d.f1569b.k(iH);
        if (iH != d.f1570c) {
            f.h(iH);
        }
    }

    @Override // base.b, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (bVar == null) {
        }
        this.f331f.m(bVar, i2);
        if (i3 == 0) {
            return;
        }
        switch (i2) {
            case 0:
                this.f331f.G(bVar, i2, d.f1570c);
                break;
            case 1:
                this.f331f.G(bVar, i2, d.f1571d);
                break;
            case 2:
                this.f331f.G(bVar, i2, d.f1572e);
                break;
            case 3:
                this.f331f.G(bVar, i2, d.f1573f);
                break;
            case 4:
                this.f331f.G(bVar, i2, d.f1574g);
                break;
            case 5:
                this.f331f.G(bVar, i2, d.f1575h);
                break;
            case 6:
                this.f331f.G(bVar, i2, d.f1576i);
                break;
        }
    }

    public final boolean Y2(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }
}
