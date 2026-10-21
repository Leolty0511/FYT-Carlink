package d1;

import android.media.videoeditor.MediaProperties;
import android.source.Util;
import k0.nt;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class a implements g {
    @Override // d1.g
    public void a() {
        if (g.e.a() == 1 && g.e.e() == 3) {
            d.f1578k = Util.openDev(3);
        }
    }

    @Override // d1.g
    public void b() {
    }

    @Override // d1.g
    public void c() {
        k.s(1, 2, 10);
    }

    @Override // d1.g
    public void d() {
        k.s(1, 2, 16);
    }

    @Override // d1.g
    public void f(int i2) {
        if (i2 != 1) {
            k.s(67, 0);
        } else {
            k.s(67, 1);
        }
    }

    @Override // d1.g
    public void g() {
        k.s(1, 2, 9);
    }

    @Override // d1.g
    public void h(int i2) {
        switch (i2) {
            case 0:
                k.s(1, 2, 37);
                break;
            case 1:
                k.s(1, 2, 38);
                break;
            case 2:
                k.s(1, 2, 39);
                break;
            case 3:
                k.s(1, 2, 40);
                break;
            case 4:
                k.s(1, 2, 41);
                break;
            case 5:
                k.s(1, 2, 48);
                break;
            case 6:
                k.s(1, 2, 49);
                break;
            case 11:
                k.s(1, 4, 49);
                break;
            case 12:
                k.s(1, 4, 50);
                break;
            case 13:
                k.s(1, 4, 51);
                break;
            case 14:
                k.s(1, 4, 52);
                break;
            case 15:
                k.s(1, 4, 53);
                break;
            case 16:
                k.s(1, 4, 54);
                break;
            case 17:
                k.s(1, 4, 55);
                break;
            case 18:
                k.s(1, 4, 56);
                break;
            case 19:
                k.s(1, 4, 57);
                break;
            case 20:
                k.s(1, 4, 48);
                break;
            case 21:
                k.s(1, 2, 2);
                break;
            case 22:
                k.s(1, 2, 0);
                break;
            case 23:
                k.s(1, 2, 19);
                break;
            case 24:
                k.s(1, 2, 18);
                break;
            case 25:
                k.s(1, 2, 10);
                break;
            case 26:
                k.s(1, 2, 9);
                break;
        }
    }

    @Override // d1.g
    public void i() {
        k.s(1, 2, 17);
    }

    @Override // d1.g
    public void j(int i2, int i3, int i4) {
        int i5 = nt.f8633a;
        if ((i5 & 65535) == 309 || (i5 & 65535) == 61) {
            i3 = (i3 * 1280) / 800;
            i4 = (i4 * MediaProperties.HEIGHT_720) / 480;
            if (i2 == 0) {
                k.s(227, 160, 5, i3 & 255, (i3 >> 8) & 255, i4 & 255, (i4 >> 8) & 255, 1);
            } else if (i2 == 1) {
                k.s(227, 160, 5, i3 & 255, (i3 >> 8) & 255, i4 & 255, (i4 >> 8) & 255, 0);
            }
        }
        if (i2 == 0 || i2 == 2) {
            k.s(230, (i3 >> 8) & 255, i3 & 255, (i4 >> 8) & 255, i4 & 255);
        } else if (i2 == 1) {
            k.s(230, 170, 170, 170, 170);
        }
    }

    @Override // d1.g
    public void k(int i2) {
        if (i2 == 0) {
            k.s(1, 2, 160);
            return;
        }
        if (i2 == 1) {
            k.s(1, 2, 161);
        } else if (i2 == 2) {
            k.s(1, 2, 162);
        } else {
            if (i2 != 3) {
                return;
            }
            k.s(1, 2, 163);
        }
    }

    @Override // d1.g
    public void l() {
        k.s(1, 2, 2);
    }

    @Override // d1.g
    public void m(int i2) {
        k.s(66, i2);
    }

    @Override // d1.g
    public void n() {
        k.s(1, 2, 11);
    }
}
