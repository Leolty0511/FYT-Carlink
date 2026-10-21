package w0;

import o1.o0;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class a implements g {
    @Override // w0.g
    public void A(int i2) {
        if (i2 != 2) {
            return;
        }
        k.s(1, 3, 13);
    }

    @Override // w0.g
    public void B() {
        k.s(1, 3, 5);
    }

    @Override // w0.g
    public void C(int i2) {
        if (i2 == 0) {
            k.s(1, 0, 98);
            return;
        }
        if (i2 == 1) {
            k.s(1, 0, 99);
        } else {
            if (i2 != 2) {
                return;
            }
            if (d.C == 0) {
                C(1);
            } else {
                C(0);
            }
        }
    }

    public final void D() {
    }

    @Override // w0.g
    public void a() {
        D();
    }

    @Override // w0.g
    public void b() {
    }

    @Override // w0.g
    public void c() {
        k.s(1, 3, 10);
    }

    @Override // w0.g
    public void d() {
        k.s(1, 3, 16);
    }

    @Override // w0.g
    public void e(int i2) {
    }

    @Override // w0.g
    public void f(int i2) {
        if (i2 < 0 || i2 > 4) {
            return;
        }
        k.s(1, 3, i2 + 33);
    }

    @Override // w0.g
    public void g() {
        k.s(1, 3, 9);
    }

    @Override // w0.g
    public void h() {
        k.s(1, 3, 6);
    }

    @Override // w0.g
    public void i() {
        k.s(1, 3, 17);
    }

    @Override // w0.g
    public void j(int i2) {
        f.n(null);
        if (i2 >= 0 && i2 < 12) {
            k.s(1, 3, ((i2 + 64) - 0) + 19);
        } else {
            if (i2 < 65536 || i2 >= 65554) {
                return;
            }
            k.s(1, 3, ((i2 + 64) - 65536) + 1);
        }
    }

    @Override // w0.g
    public void k() {
        k.s(1, 3, 18);
    }

    @Override // w0.g
    public void l(int i2, int i3) {
        if (i2 == 0) {
            if (i3 < 0 || i3 > d.O) {
                return;
            }
            k.s(225, 5, i3 / 100, i3 % 100, 238, 238);
            return;
        }
        if (i2 == 1) {
            int i4 = d.M;
            int i5 = d.L;
            int i6 = i4 - i5;
            if (i6 == 0) {
                return;
            }
            l(0, ((i3 - i5) * d.O) / i6);
            return;
        }
        if (i2 == 2) {
            l(0, (i3 * d.O) / 65535);
        } else {
            if (i2 != 3) {
                return;
            }
            int iA = o0.a(i3, 0, 10800);
            k.s(37, (iA >> 8) & 255, iA & 255);
        }
    }

    @Override // w0.g
    public boolean m(y.b bVar, int i2) {
        return false;
    }

    @Override // w0.g
    public void n(int i2) {
        if (i2 != 2) {
            return;
        }
        k.s(1, 3, 23);
    }

    @Override // w0.g
    public void o(int i2) {
        if (i2 != 2) {
            return;
        }
        k.s(1, 3, 21);
    }

    @Override // w0.g
    public void p(int i2) {
        if (i2 != 2) {
            return;
        }
        k.s(1, 3, 11);
    }

    @Override // w0.g
    public void q(int i2) {
        if (i2 == 0) {
            k.s(1, 0, 187);
            return;
        }
        if (i2 == 1) {
            k.s(1, 0, 188);
        } else {
            if (i2 != 2) {
                return;
            }
            if (d.D == 0) {
                q(1);
            } else {
                q(0);
            }
        }
    }

    @Override // w0.g
    public void r(int i2) {
        if (i2 == 0) {
            if (d.B != 0) {
                k.s(1, 3, 128);
            }
        } else if (i2 == 1 && d.B != 1) {
            k.s(1, 3, 128);
        }
    }

    @Override // w0.g
    public void reset() {
    }

    @Override // w0.g
    public void s(int i2) {
        if (i2 == 0) {
            k.s(1, 0, 158);
            return;
        }
        if (i2 == 1) {
            k.s(1, 0, 159);
        } else {
            if (i2 != 2) {
                return;
            }
            if (d.f17811w == 0) {
                s(1);
            } else {
                s(0);
            }
        }
    }

    @Override // w0.g
    public void save() {
        k.s(1, 3, 8);
    }

    @Override // w0.g
    public void t(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    @Override // w0.g
    public void u(int i2) {
        if (i2 == 0) {
            k.s(1, 0, 96);
            return;
        }
        if (i2 == 1) {
            k.s(1, 0, 97);
        } else {
            if (i2 != 2) {
                return;
            }
            if (d.f17808t == 0) {
                u(1);
            } else {
                u(0);
            }
        }
    }

    @Override // w0.g
    public void v(int i2) {
        if (i2 != 2) {
            return;
        }
        k.s(1, 3, 4);
    }

    @Override // w0.g
    public void w(int i2) {
        if (i2 != 2) {
            return;
        }
        k.s(1, 3, 22);
    }

    @Override // w0.g
    public void x(int i2) {
        if (i2 == -3) {
            int i3 = d.f17796h + 1;
            if (i3 < 65536 || i3 >= 65539) {
                x(65536);
                return;
            } else {
                x(i3);
                return;
            }
        }
        if (i2 == -2) {
            if (d.f17796h != 0) {
                x(0);
                return;
            } else {
                x(1);
                return;
            }
        }
        if (i2 == -1) {
            k.s(1, 3, 24);
            return;
        }
        if (i2 >= 0 && i2 < 2) {
            k.s(1, 3, (i2 - 0) + 29);
        } else {
            if (i2 < 65536 || i2 >= 65539) {
                return;
            }
            k.s(1, 3, (i2 - 65536) + 26);
        }
    }

    @Override // w0.g
    public void y(int i2, int i3) {
        if (i2 == 0) {
            if (i3 == -2) {
                k.s(1, 0, 156);
                return;
            } else {
                if (i3 != -1) {
                    return;
                }
                k.s(1, 0, 157);
                return;
            }
        }
        if (i2 != 1) {
            return;
        }
        if (i3 == -2) {
            k.s(1, 0, 154);
        } else {
            if (i3 != -1) {
                return;
            }
            k.s(1, 0, 155);
        }
    }

    @Override // w0.g
    public void z(int i2) {
        if (i2 >= 0 && i2 < 12) {
            k.s(1, 3, ((i2 + 128) - 0) + 101);
        } else {
            if (i2 < 65536 || i2 >= 65554) {
                return;
            }
            k.s(1, 3, ((i2 + 128) - 65536) + 1);
        }
    }
}
