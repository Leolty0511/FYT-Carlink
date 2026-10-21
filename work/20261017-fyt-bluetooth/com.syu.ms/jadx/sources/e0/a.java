package e0;

import android.net.ProxyProperties;
import base.Configure;
import base.b;
import java.util.Arrays;
import o1.h0;
import o1.s0;
import y.f;

/* JADX INFO: loaded from: classes.dex */
public class a extends b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static a f1653i;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f1654g = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f1655h = null;

    public a() {
        this.f331f.n("Adas-TRAN");
        this.f331f.f17001d = Configure.Property.MODULE_DEBUG_PREFIX.c("adas", false);
        P2("adas");
    }

    public static synchronized a X2() {
        if (f1653i == null) {
            f1653i = new a();
        }
        return f1653i;
    }

    @Override // y.c
    public f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // base.b
    public void N2(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            this.f331f.s(i2, iArr, fArr, strArr);
            return;
        }
        if (i2 == 2) {
            this.f331f.s(i2, iArr, fArr, strArr);
            return;
        }
        if (i2 == 3) {
            if (!s0.i(strArr, 0) || s0.j(this.f1654g, strArr[0])) {
                return;
            }
            String str = strArr[0];
            this.f1654g = str;
            Y2(i2, str);
            return;
        }
        if (i2 != 4) {
            if (i2 != 5) {
                return;
            }
            this.f331f.s(i2, iArr, fArr, strArr);
        } else {
            if (Arrays.equals(iArr, this.f1655h)) {
                return;
            }
            this.f1655h = iArr;
            H0(i2, iArr, null, null);
        }
    }

    @Override // base.b
    public void O2(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // y.c
    public void P0(y.b bVar, int i2) {
        if (bVar != null) {
            this.f331f.p(bVar, i2);
        }
    }

    @Override // base.b
    public void Q2(h0 h0Var) {
    }

    @Override // base.b, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        int[] iArr;
        super.Y1(bVar, i2, i3);
        if (bVar != null) {
            this.f331f.m(bVar, i2);
            if (i3 == 0) {
                return;
            }
            if (i2 == 3) {
                this.f331f.F(bVar, i2, this.f1654g);
            } else if (i2 == 4 && (iArr = this.f1655h) != null) {
                this.f331f.G(bVar, i2, iArr);
            }
        }
    }

    public void Y2(int i2, String... strArr) {
        this.f331f.s(i2, null, null, strArr);
    }
}
