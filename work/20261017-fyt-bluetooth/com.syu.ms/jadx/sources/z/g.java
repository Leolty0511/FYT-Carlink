package z;

import android.content.pm.PackageManager;
import android.os.Process;
import android.util.TimedRemoteCaller;
import java.io.UnsupportedEncodingException;
import o1.b0;
import o1.l0;
import o1.p0;
import o1.q;
import o1.r;
import o1.u;

/* JADX INFO: loaded from: classes.dex */
public class g implements q {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f18209g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f18203a = new byte[1024];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18204b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18205c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f18206d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public l0 f18207e = new l0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public l0 f18208f = new l0();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f18210h = new int[14];

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.e.f16777g0 = 0;
            o0.g.T(37, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.e.f16777g0 = 0;
            o0.g.T(37, 0);
        }
    }

    public final void a(byte[] bArr, int i2, int i3) {
        String str;
        int i4;
        int i5 = ((bArr[i2 + 2] << 16) & 16777215) | ((bArr[i2 + 3] << 8) & 65535) | (bArr[i2 + 4] & 255);
        int i6 = (16777215 & (bArr[i2 + 5] << 16)) | ((bArr[i2 + 6] << 8) & 65535) | (bArr[i2 + 7] & 255);
        try {
            str = new String(bArr, i2 + 8, i3 - 8, o0.e.f16786l);
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            str = null;
        }
        byte b2 = bArr[i2];
        if (b2 != 0) {
            if (b2 == 1 && (i4 = i5 - 1) >= 0 && i4 < 2048) {
                byte b3 = bArr[i2 + 1];
                if (b3 == 1) {
                    o0.e.X[i4] = str;
                    int[] iArr = o0.e.f16765a0;
                    iArr[i4] = i6 + (i4 != 0 ? iArr[i4 - 1] : 0);
                    int i7 = i4 + 1;
                    if (i7 > o0.e.f16799w) {
                        o0.g.c(i7);
                        return;
                    }
                    return;
                }
                if (b3 == 2) {
                    o0.e.Y[i4] = str;
                    int[] iArr2 = o0.e.f16767b0;
                    iArr2[i4] = i6 + (i4 != 0 ? iArr2[i4 - 1] : 0);
                    int i8 = i4 + 1;
                    if (i8 > o0.e.f16800x) {
                        o0.g.B(i8);
                        return;
                    }
                    return;
                }
                if (b3 != 4) {
                    return;
                }
                o0.e.Z[i4] = str;
                int[] iArr3 = o0.e.f16769c0;
                iArr3[i4] = i6 + (i4 != 0 ? iArr3[i4 - 1] : 0);
                int i9 = i4 + 1;
                if (i9 > o0.e.f16801y) {
                    o0.g.Z(i9);
                    return;
                }
                return;
            }
            return;
        }
        int i10 = i5 - 1;
        int i11 = i6 - 1;
        if (i10 < 0 || i11 < 0 || i11 >= 2048) {
            return;
        }
        byte b4 = bArr[i2 + 1];
        if (b4 == 1) {
            int i12 = i10 + (i11 != 0 ? o0.e.f16765a0[i11 - 1] : 0);
            if (i12 >= 10240) {
                return;
            }
            o0.e.U[i12] = str;
            int i13 = i12 + 1;
            if (i13 > o0.e.f16796t) {
                o0.g.b(i13);
            }
            int i14 = o0.e.f16802z;
            return;
        }
        if (b4 == 2) {
            int i15 = i10 + (i11 != 0 ? o0.e.f16767b0[i11 - 1] : 0);
            if (i15 >= 10240) {
                return;
            }
            o0.e.V[i15] = str;
            int i16 = i15 + 1;
            if (i16 > o0.e.f16797u) {
                o0.g.A(i16);
            }
            int i17 = o0.e.f16802z;
            return;
        }
        if (b4 != 4) {
            return;
        }
        int i18 = i10 + (i11 != 0 ? o0.e.f16769c0[i11 - 1] : 0);
        if (i18 >= 10240) {
            return;
        }
        o0.e.W[i18] = str;
        int i19 = i18 + 1;
        if (i19 > o0.e.f16798v) {
            o0.g.Y(i19);
        }
        int i20 = o0.e.f16802z;
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr == null || bArr.length <= 0) {
            try {
                Thread.sleep(100L);
                return;
            } catch (InterruptedException e2) {
                e2.printStackTrace();
                return;
            }
        }
        if (this.f18204b + bArr.length > 1024) {
            this.f18204b = 0;
            this.f18205c = 0;
            this.f18206d = 0;
        }
        System.arraycopy(bArr, 0, this.f18203a, this.f18204b, bArr.length);
        int length = this.f18204b + bArr.length;
        this.f18204b = length;
        int i5 = this.f18206d;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            int i6 = 4;
            byte b2 = 0;
            while (true) {
                i4 = this.f18206d;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f18203a[i6]);
                i6++;
            }
            byte b3 = (byte) (~b2);
            byte[] bArr2 = this.f18203a;
            if (b3 == bArr2[i4]) {
                e(bArr2, 4, i4 - 4);
                this.f18205c = this.f18206d + 1;
            } else {
                this.f18205c = 2;
            }
            this.f18206d = 0;
        }
        int i7 = this.f18204b - 3;
        while (true) {
            i2 = this.f18205c;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f18203a;
            if (bArr3[i2] == -1 && bArr3[i2 + 1] == 85) {
                int i8 = (bArr3[i2 + 3] & 255) | ((bArr3[i2 + 2] << 8) & 65280);
                this.f18206d = i8;
                if (i8 > 512) {
                    this.f18206d = 0;
                } else {
                    int i9 = i8 + i2 + 4;
                    this.f18206d = i9;
                    if (i9 >= this.f18204b) {
                        this.f18206d = i9 - i2;
                        break;
                    }
                    int i10 = i2 + 4;
                    byte b4 = 0;
                    while (true) {
                        i3 = this.f18206d;
                        if (i10 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f18203a[i10]);
                        i10++;
                    }
                    byte b5 = (byte) (~b4);
                    byte[] bArr4 = this.f18203a;
                    if (b5 == bArr4[i3]) {
                        int i11 = this.f18205c;
                        e(bArr4, i11 + 4, (i3 - i11) - 4);
                        this.f18205c = this.f18206d;
                    } else {
                        this.f18205c++;
                    }
                    this.f18206d = 0;
                }
            }
            this.f18205c++;
        }
        if (i2 != 0) {
            int i12 = this.f18204b - i2;
            this.f18204b = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f18203a;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f18205c = 0;
        }
    }

    public final void c(byte[] bArr, int i2, int i3) {
        int i4 = bArr[i2 + 2] & 255;
        int i5 = ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255);
        int i6 = ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255);
        int i7 = ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255);
        int i8 = ((bArr[i2 + 10] << 8) & 65280) | (bArr[i2 + 11] & 255);
        int i9 = ((bArr[i2 + 12] << 8) & 65280) | (bArr[i2 + 13] & 255);
        int i10 = (bArr[i2 + 15] & 255) | (65280 & (bArr[i2 + 14] << 8));
        o0.g.Q(i4);
        if (i5 <= i6) {
            o0.g.G(i5);
            o0.g.O(i6);
        }
        o0.g.I(i7 - 1);
        o0.g.P(i8);
        o0.g.C(i9 - 1);
        int i11 = o0.e.f16771d0;
        if (i11 == 1) {
            if (i8 > 10240) {
                i8 = 10240;
            }
            if (o0.e.f16799w != 1 && i8 != 0) {
                o0.e.X[0] = "1.\\";
                o0.e.f16765a0[0] = i8;
                o0.g.c(1);
            }
            if (o0.e.f16796t != i8) {
                int i12 = 0;
                while (i12 < i8) {
                    int i13 = i12 + 1;
                    o0.e.U[i12] = String.format("CD Track %d ", Integer.valueOf(i13));
                    i12 = i13;
                }
                o0.g.b(i8);
            }
            o0.g.R(String.format("%d/%d CD Track %d ", Integer.valueOf(i7), Integer.valueOf(i8), Integer.valueOf(i7)));
            return;
        }
        if (i11 == 3 || i11 == 4 || i11 == 5) {
            o0.g.R(String.format("%d/%d", Integer.valueOf(i7), Integer.valueOf(i8)));
            return;
        }
        if (i11 == 6) {
            o0.g.R(String.format("%s %d/%d %s %d/%d", "/^_^ChApTeR^_^/", Integer.valueOf(i7), Integer.valueOf(i8), "/^-^LiSt^_^/", Integer.valueOf(i9), Integer.valueOf(i10)));
            return;
        }
        int i14 = o0.e.E;
        if (i14 == 1) {
            if (i9 < 1 || i9 > 2048) {
                return;
            }
            int i15 = i7 + (i9 == 1 ? 0 : o0.e.f16765a0[i9 - 2]);
            if (i15 < 1 || i15 > 10240) {
                return;
            }
            o0.g.R(String.format("%d/%d %s", Integer.valueOf(i15), Integer.valueOf(o0.e.f16796t), o0.e.U[i15 - 1]));
            return;
        }
        if (i14 == 2) {
            if (i9 < 1 || i9 > 2048) {
                return;
            }
            int i16 = i7 + (i9 == 1 ? 0 : o0.e.f16767b0[i9 - 2]);
            if (i16 < 1 || i16 > 10240) {
                return;
            }
            o0.g.R(String.format("%d/%d %s", Integer.valueOf(i16), Integer.valueOf(o0.e.f16797u), o0.e.V[i16 - 1]));
            return;
        }
        if (i14 == 3 && i9 >= 1 && i9 <= 2048) {
            int i17 = i7 + (i9 == 1 ? 0 : o0.e.f16769c0[i9 - 2]);
            if (i17 < 1 || i17 > 10240) {
                return;
            }
            o0.g.R(String.format("%d/%d %s", Integer.valueOf(i17), Integer.valueOf(o0.e.f16798v), o0.e.W[i17 - 1]));
        }
    }

    public final void d(byte[] bArr, int i2, int i3) {
        int i4 = bArr[i2] & 255;
        if ((bArr[i2 + 6] & 255) != 0) {
            o0.g.D(1);
        } else if (i4 == 0) {
            o0.g.D(2);
        } else if (i4 == 1) {
            o0.g.D(1);
        } else if (i4 == 2) {
            o0.g.D(3);
        }
        if (i4 == 0) {
            o0.g.w(2);
        } else if (i4 == 1) {
            o0.g.w(1);
        } else {
            if (i4 != 2) {
                return;
            }
            o0.g.w(3);
        }
    }

    public final void e(byte[] bArr, int i2, int i3) {
        o0.e.f16775f0 = 0;
        a.f.p().s(b0.d(bArr, i2, i3));
        if (bArr[i2] != 0) {
            return;
        }
        f(bArr, i2 + 1, i3 - 1);
    }

    public final void f(byte[] bArr, int i2, int i3) {
        String str;
        String str2 = null;
        switch (bArr[i2]) {
            case -128:
                c(bArr, i2 + 1, i3 - 1);
                return;
            case PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION /* -102 */:
                synchronized (o0.e.f16770d) {
                    a(bArr, i2 + 1, i3 - 1);
                    break;
                }
                return;
            case -96:
                o0.g.U(33, new int[]{bArr[i2 + 1] & 255, bArr[i2 + 2] & 255, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255), bArr[i2 + 5] & 255}, null, null);
                return;
            case -83:
                y0.f.S0 = bArr[i2 + 1];
                return;
            case -76:
                p0.c(bArr[i2 + 1], bArr[i2 + 2]);
                p0.c(bArr[i2 + 3], bArr[i2 + 4]);
                return;
            case -63:
                r rVar = z.a.B;
                if (rVar != null) {
                    rVar.z1(bArr, i2 + 1, i3 - 1);
                    return;
                }
                return;
            case -42:
                byte[] bArr2 = o0.e.f16781i0;
                if (bArr2 != null) {
                    int i4 = i2 + 1;
                    int i5 = i2 + 2;
                    int iC = p0.c(bArr[i4], bArr[i5]);
                    int length = (bArr2.length + Process.MEDIA_RW_GID) >> 10;
                    int i6 = (iC - 1) << 10;
                    int length2 = bArr2.length - i6;
                    if (length2 <= 0) {
                        o0.e.f16781i0 = null;
                        if (iC == 65535) {
                            o0.e.f16777g0 = 5;
                            o0.g.T(37, 5);
                            return;
                        } else {
                            if (iC == 65518) {
                                o0.e.f16777g0 = 7;
                                o0.g.T(37, 7);
                                o1.k.a().postDelayed(new a(), TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
                                return;
                            }
                            return;
                        }
                    }
                    if (length2 > 1024) {
                        length2 = 1024;
                    }
                    int[] iArr = new int[length2 + 4];
                    iArr[0] = 0;
                    iArr[1] = 214;
                    iArr[2] = bArr[i4];
                    iArr[3] = bArr[i5];
                    for (int i7 = 0; i7 < length2; i7++) {
                        iArr[i7 + 4] = bArr2[i6 + i7];
                    }
                    o0.e.f16777g0 = 4;
                    o0.g.T(37, 4, iC, length);
                    k.o(iArr);
                    return;
                }
                return;
            case -16:
                if (i3 > 1) {
                    try {
                        o0.g.j(new String(bArr, i2 + 1, i3 - 1, o0.e.f16786l));
                        return;
                    } catch (Exception e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                return;
            case -15:
                if (o0.e.f16779h0 == null) {
                    o0.e.f16779h0 = new byte[184];
                }
                byte b2 = bArr[i2 + 1];
                if (b2 == 0) {
                    System.arraycopy(bArr, i2 + 2, o0.e.f16779h0, 0, 36);
                } else if (b2 == 1) {
                    System.arraycopy(bArr, i2 + 2, o0.e.f16779h0, 36, 36);
                } else if (b2 == 2) {
                    System.arraycopy(bArr, i2 + 2, o0.e.f16779h0, 72, 36);
                } else if (b2 == 3) {
                    System.arraycopy(bArr, i2 + 2, o0.e.f16779h0, 108, 60);
                } else if (b2 == 4) {
                    System.arraycopy(bArr, i2 + 2, o0.e.f16779h0, 168, 16);
                }
                if (u0.b.f17320f == 0) {
                    o0.f.f16804b.c();
                    return;
                }
                return;
            case -1:
                if (bArr[i2 + 1] == -2) {
                    int i8 = o0.e.f16777g0;
                    if (i8 == 5) {
                        o0.e.f16777g0 = 6;
                        o0.g.T(37, 6);
                        o1.k.a().postDelayed(new b(), TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
                    } else if (i8 != 7 && i8 != 0) {
                        o0.e.f16777g0 = 0;
                        o0.g.T(37, 0);
                    }
                    o0.e.f16766b.m();
                    k.o(0, 255, 255);
                    y0.h.P();
                    return;
                }
                return;
            case 64:
                if (this.f18207e.c(10000)) {
                    this.f18207e.a();
                    k.o(0, 112, 1);
                }
                h(bArr, i2 + 1, i3 - 1);
                return;
            case 80:
            case 81:
            case 82:
                if (i3 > 2) {
                    byte b3 = bArr[i2 + 1];
                    if (b3 == 1) {
                        str2 = (i3 > 4 && bArr[i2 + 2] == -1 && bArr[i2 + 3] == -2) ? new String(bArr, i2 + 4, i3 - 4) : new String(bArr, i2 + 2, i3 - 2);
                    } else if (b3 != 2) {
                        if (b3 != 3) {
                            try {
                                str = new String(bArr, i2 + 2, i3 - 2, o0.e.f16786l);
                            } catch (UnsupportedEncodingException e3) {
                                e3.printStackTrace();
                            }
                        } else {
                            try {
                                str = new String(bArr, i2 + 2, i3 - 2, "UTF-8");
                            } catch (UnsupportedEncodingException e4) {
                                e4.printStackTrace();
                            }
                        }
                        str2 = str;
                    } else {
                        str2 = new String(bArr, i2 + 2, i3 - 2);
                    }
                }
                switch (bArr[i2]) {
                    case 80:
                        o0.g.v(str2);
                        return;
                    case 81:
                        o0.g.u(str2);
                        return;
                    case 82:
                        o0.g.t(str2);
                        return;
                    default:
                        return;
                }
                break;
            case 85:
                d(bArr, i2 + 1, i3 - 1);
                return;
            case 96:
                byte b4 = bArr[i2 + 7];
                if (b4 == 0) {
                    o0.g.M(1);
                } else if (b4 == 1) {
                    o0.g.M(3);
                } else if (b4 == 2) {
                    o0.g.M(4);
                } else if (b4 == 3) {
                    o0.g.M(5);
                } else if (b4 == 4) {
                    o0.g.M(2);
                }
                o0.g.K(bArr[i2 + 9] & 1);
                return;
            case 112:
                this.f18207e.a();
                g(bArr, i2 + 1, i3 - 1);
                return;
            default:
                return;
        }
    }

    public final void g(byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < 14; i4++) {
            this.f18210h[i4] = bArr[i2 + i4] & 255;
        }
        y0.h.j0(this.f18210h);
    }

    public final void h(byte[] bArr, int i2, int i3) {
        this.f18209g = bArr[i2 + 1] & 255;
        int i4 = bArr[i2 + 3] & 255;
        int i5 = bArr[i2 + 4] & 255;
        int i6 = bArr[i2 + 5] & 255;
        o0.e.f16771d0 = i4;
        if (i6 == 176) {
            u.G("com.syu.dvd.usb");
        } else if (i6 == 177) {
            u.G("com.syu.dvd.sd");
        }
        int i7 = this.f18209g;
        if (i7 == 3) {
            o0.g.z(1);
        } else if (i7 == 13) {
            o0.g.z(4);
        } else if (i7 == 18) {
            o0.g.z(5);
        } else if (i7 == 20) {
            o0.g.z(3);
        } else if (i7 == 9 || i7 == 10) {
            o0.g.z(0);
        }
        if (i5 == 2) {
            o0.g.E(1);
            if (this.f18209g != 13) {
                o0.g.z(0);
            }
        } else if (i5 == 3) {
            o0.g.E(5);
        } else if (i5 == 4) {
            o0.g.E(4);
        } else if (i5 == 5) {
            o0.g.E(2);
        } else if (i5 != 11) {
            if (i5 == 13) {
                o0.g.E(3);
            }
        } else if (this.f18209g != 20) {
            o0.g.z(2);
        }
        switch (i4) {
            case 0:
                o0.g.f(0);
                break;
            case 1:
                o0.g.f(1);
                break;
            case 2:
                o0.g.f(4);
                break;
            case 3:
                o0.g.f(2);
                break;
            case 4:
                o0.g.f(2);
                break;
            case 5:
                o0.g.f(2);
                break;
            case 6:
                o0.g.f(3);
                break;
            case 7:
                o0.g.f(2);
                break;
            case 8:
                o0.g.f(2);
                break;
            case 9:
                o0.g.f(4);
                break;
            case 10:
                o0.g.f(4);
                break;
            case 11:
                o0.g.f(4);
                break;
        }
        if (i4 == 0) {
            o0.g.D(0);
            o0.g.w(0);
            return;
        }
        if (i4 == 1) {
            o0.g.D(1);
            o0.g.w(1);
        } else if (i4 == 3 || i4 == 4 || i4 == 5 || i4 == 6) {
            o0.g.D(3);
            o0.g.w(0);
        }
    }
}
