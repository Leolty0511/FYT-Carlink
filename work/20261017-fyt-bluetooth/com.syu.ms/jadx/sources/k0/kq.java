package k0;

import android.bluetooth.BluetoothClass;
import android.content.Intent;
import android.drm.DrmManagerClient;
import android.media.TextTrackRegion;
import android.media.videoeditor.MediaProperties;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.Spanned;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class kq extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7388c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7389d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{5, 2}, new int[]{6, 12}, new int[]{7, 18}, new int[]{8, 18}, new int[]{9, 26}, new int[]{10, 34}, new int[]{11, 35}, new int[]{12, 5}, new int[]{13, 29}, new int[]{14, 33}, new int[]{15, 32}, new int[]{16, 6}, new int[]{17, 7}, new int[]{18, 8}, new int[]{19, 31}, new int[]{20, 30}, new int[]{21, 24}, new int[]{22, 1}, new int[]{23, 54}, new int[]{24, 0}, new int[]{25, 13}, new int[]{26, 6}, new int[]{27, 5}, new int[]{28, 13}, new int[]{32, 58}, new int[]{33, 38}, new int[]{34, 11}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7390e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f7391f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f7392g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f7393h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f7394i = new b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f7395j = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.F();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(kq.this.f7395j);
            kq.this.f7393h = 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            kq kqVar = kq.this;
            int i2 = kqVar.f7393h - 1;
            kqVar.f7393h = i2;
            if (i2 <= 0) {
                l0.b0.p0(kqVar.f7395j);
                kq.this.f7393h = 5;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            z.k.s(227, 131, 1, u0.b.f17306a0);
            z.k.s(227, 144, 1, 48);
            switch (nt.f8633a) {
                case 12124614:
                case 13369797:
                    z.k.s(227, 209, 2, 1, 13);
                    kq.d3(new byte[]{46, -47, 2, 1, 13, 0});
                    break;
                case 12190150:
                case 13435333:
                    z.k.s(227, 209, 2, 1, 14);
                    kq.d3(new byte[]{46, -47, 2, 1, 14, 0});
                    break;
                case 12255686:
                case 13500869:
                    z.k.s(227, 209, 2, 1, 17);
                    kq.d3(new byte[]{46, -47, 2, 1, 17, 0});
                    break;
                case 12321222:
                case 13566405:
                    z.k.s(227, 209, 2, 1, 255);
                    kq.d3(new byte[]{46, -47, 2, 1, -1, 0});
                    break;
                case 12386758:
                case 13631941:
                    z.k.s(227, 209, 2, 2, 10);
                    kq.d3(new byte[]{46, -47, 2, 2, 10, 0});
                    break;
                case 12452294:
                case 13697477:
                    z.k.s(227, 209, 2, 2, 14);
                    kq.d3(new byte[]{46, -47, 2, 2, 14, 0});
                    break;
                case 12517830:
                case 13763013:
                    z.k.s(227, 209, 2, 2, 17);
                    kq.d3(new byte[]{46, -47, 2, 2, 17, 0});
                    break;
                case 12583366:
                case 13828549:
                    z.k.s(227, 209, 2, 2, 255);
                    kq.d3(new byte[]{46, -47, 2, 2, -1, 0});
                    break;
                case 12648902:
                case 13894085:
                    z.k.s(227, 209, 2, 3, 12);
                    kq.d3(new byte[]{46, -47, 2, 3, DhcpPacket.DHCP_HOST_NAME, 0});
                    break;
                case 12714438:
                case 13959621:
                    z.k.s(227, 209, 2, 3, 13);
                    kq.d3(new byte[]{46, -47, 2, 3, 13, 0});
                    break;
                case 12779974:
                case 14025157:
                    z.k.s(227, 209, 2, 3, 16);
                    kq.d3(new byte[]{46, -47, 2, 3, 16, 0});
                    break;
                case 12845510:
                case 14090693:
                    z.k.s(227, 209, 2, 3, 17);
                    kq.d3(new byte[]{46, -47, 2, 3, 17, 0});
                    break;
                case 12911046:
                case 14156229:
                    z.k.s(227, 209, 2, 3, 255);
                    kq.d3(new byte[]{46, -47, 2, 3, -1, 0});
                    break;
                case 12976582:
                case 14221765:
                    z.k.s(227, 209, 2, 4, 0);
                    kq.d3(new byte[]{46, -47, 2, 4, 0, 0});
                    break;
                case 14287301:
                    z.k.s(227, 209, 2, 5, 10);
                    break;
                case 14352837:
                    z.k.s(227, 209, 2, 5, 255);
                    break;
                case 14418373:
                    z.k.s(227, 209, 2, 6, 0);
                    break;
                case 14483909:
                    z.k.s(227, 209, 2, 7, 15);
                    break;
                case 14549445:
                    z.k.s(227, 209, 2, 7, 17);
                    break;
                case 14614981:
                    z.k.s(227, 209, 2, 7, 255);
                    break;
                case 14680517:
                    z.k.s(227, 209, 2, 8, 0);
                    break;
                case 14746053:
                    z.k.s(227, 209, 2, 9, 0);
                    break;
                case 14811589:
                    z.k.s(227, 209, 2, 10, 0);
                    break;
                case 14877125:
                    z.k.s(227, 209, 2, 96, 0);
                    break;
                case 14942661:
                    z.k.s(227, 209, 2, 97, 0);
                    break;
                case 15008197:
                    z.k.s(227, 209, 2, 98, 0);
                    break;
                case 15073733:
                    z.k.s(227, 209, 2, 99, 0);
                    break;
                case 15139269:
                    z.k.s(227, 209, 2, 100, 0);
                    break;
                case 15204805:
                    z.k.s(227, 209, 2, 101, 0);
                    break;
                case 15270341:
                    z.k.s(227, 209, 2, 102, 12);
                    break;
                case 15335877:
                    z.k.s(227, 209, 2, 102, 14);
                    break;
                case 15401413:
                    z.k.s(227, 209, 2, 102, 16);
                    break;
                case 15466949:
                    z.k.s(227, 209, 2, 102, 255);
                    break;
            }
        }
    }

    public static void d3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        int length = bArr.length - 1;
        byte b2 = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            b2 = (byte) (b2 + bArr[i2]);
        }
        bArr[length] = (byte) (((byte) (b2 & 255)) ^ 255);
        z.k.q(bArr);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        int i2 = iArr[0];
        if (i2 == 41) {
            if (iArr[1] != 0) {
                a3(13, 255);
                return;
            }
            a3(13, 254);
        }
        if (i2 == 42) {
            if (iArr[1] != 0) {
                a3(14, 255);
                return;
            } else {
                a3(14, 254);
                return;
            }
        }
        if (i2 == 55) {
            if (iArr[1] <= 15) {
                a3(13, 0);
                return;
            } else if (iArr[1] >= 32) {
                a3(13, 127);
                return;
            } else {
                a3(13, iArr[1] * 2);
                return;
            }
        }
        if (i2 == 56) {
            if (iArr[1] <= 15) {
                a3(14, 0);
                return;
            } else if (iArr[1] >= 32) {
                a3(14, 127);
                return;
            } else {
                a3(14, iArr[1] * 2);
                return;
            }
        }
        switch (i2) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(1, 0);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(1, 1);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(9, 0);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(9, 1);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(44, 0);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(44, 1);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[15] == 1) {
                        a3(4, 0);
                    }
                } else if (nt.f8645g[15] == 0) {
                    a3(4, 1);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(5, 0);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(5, 1);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(12, 1);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(11, 1);
                }
                break;
            case 39:
                int i3 = iArr[1];
                if (i3 == -2) {
                    a3(17, 254);
                } else if (i3 == -1) {
                    a3(17, 255);
                } else {
                    a3(17, iArr[1]);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        u0.c.f17386m.a(this.f7394i, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8313h = 2;
        mtVar.f8314i = 1;
        mtVar.f8315j = 0;
        mtVar.f8320o = 0;
        mtVar.f8317l = 0;
        switch (nt.f8633a) {
            case 12124614:
            case 12190150:
            case 12255686:
            case 12321222:
            case 12386758:
            case 12452294:
            case 12517830:
            case 12583366:
            case 12648902:
            case 12714438:
            case 12779974:
            case 12845510:
            case 12911046:
            case 12976582:
                mtVar.f8317l = 1;
                break;
        }
        w0.e.f17815a.a(this.f7392g, 1);
        w0.e.f17819e.a(this.f7392g, 1);
        u0.c.f17374a.a(this.f7392g, 1);
        u0.c.f17392s.a(this.f7392g, 1);
        this.f7886a.f8318m = new int[]{33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 55, 56, 59};
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        byte b2 = bArr[i2];
        if (b2 == 10) {
            int i13 = i2 + 2;
            int i14 = i2 + 4;
            int i15 = i2 + 3;
            qt.y0(307, (65280 & (bArr[i14] << 8)) | ((1 & bArr[i13]) << 16) | (bArr[i15] & 255));
            qt.j(bArr[i15] & 255, bArr[i14] & 255, bArr[i13], 480);
        }
        if (b2 == 11) {
            int i16 = i2 + 2;
            qt.y0(98, (bArr[i16] >> 0) & 1);
            qt.y0(99, (bArr[i16] >> 1) & 1);
            qt.y0(100, (bArr[i16] >> 2) & 3);
            qt.y0(101, (bArr[i16] >> 4) & 3);
            qt.y0(102, (bArr[i16] >> 6) & 3);
            int i17 = i2 + 3;
            qt.y0(103, (bArr[i17] >> 0) & 3);
            qt.y0(104, (bArr[i17] >> 2) & 3);
            qt.y0(105, (bArr[i17] >> 7) & 1);
            int i18 = i2 + 4;
            qt.y0(106, (bArr[i18] >> 0) & 1);
            qt.y0(107, (bArr[i18] >> 1) & 1);
            qt.y0(108, (bArr[i18] >> 2) & 1);
            qt.y0(109, (bArr[i18] >> 3) & 1);
            qt.y0(110, (bArr[i18] >> 4) & 1);
            qt.y0(111, (bArr[i18] >> 5) & 1);
            qt.y0(112, (bArr[i18] >> 6) & 1);
            qt.y0(113, (bArr[i18] >> 7) & 1);
            qt.y0(114, (bArr[i2 + 5] >> 0) & 1);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 112) {
            int i19 = i2 + 2;
            if (bArr[i19] == 1) {
                l0.b0.l0(62, 0);
                l0.b0.l0(62, 1);
                return;
            } else {
                if (bArr[i19] == 2) {
                    b3();
                    return;
                }
                return;
            }
        }
        if (b2 == 114) {
            int i20 = i2 + 3;
            if (this.f7390e != ((bArr[i20] >> 2) & 1)) {
                int i21 = (bArr[i20] >> 2) & 1;
                this.f7390e = i21;
                if (i21 == 1) {
                    if (o1.u.a0()) {
                        return;
                    }
                    this.f7391f = true;
                    o1.u.z();
                    return;
                }
                if (i21 == 0) {
                    if (this.f7391f && o1.u.a0()) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                    }
                    this.f7391f = false;
                    return;
                }
                return;
            }
            return;
        }
        switch (b2) {
            case 1:
                int i22 = i2 + 5;
                qt.y0(312, (bArr[i22] >> 7) & 1);
                qt.y0(313, (bArr[i22] >> 6) & 1);
                break;
            case 2:
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f7388c = b3 & 255;
                int i23 = 0;
                while (true) {
                    iArr = this.f7389d;
                    if (i23 < iArr.length) {
                        int i24 = this.f7388c;
                        if (i24 != iArr[i23][0]) {
                            i23++;
                        } else if (i24 != 0) {
                            this.f7387b = i23;
                        }
                    }
                }
                switch (this.f7388c) {
                    case 17:
                        for (int i25 = 0; i25 < (b4 & 255); i25++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        break;
                    case 18:
                        for (int i26 = 0; i26 < (b4 & 255); i26++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                        break;
                    case 19:
                        for (int i27 = 0; i27 < (b4 & 255); i27++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                        break;
                    case 20:
                        for (int i28 = 0; i28 < (b4 & 255); i28++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                        break;
                    default:
                        int i29 = b4 & 255;
                        if (i29 == 1) {
                            if (i23 < iArr.length) {
                                l0.b0.l0(iArr[i23][1], 0);
                            }
                        } else if (i29 == 0) {
                            int i30 = this.f7387b;
                            if (i30 < iArr.length) {
                                i4 = 255;
                                if (i30 != 255) {
                                    l0.b0.l0(iArr[i30][1], 1);
                                }
                            } else {
                                i4 = 255;
                            }
                            this.f7387b = i4;
                        }
                        break;
                }
                break;
            case 3:
                int i31 = i2 + 2;
                qt.y0(10, (bArr[i31] >> 7) & 1);
                qt.y0(11, (bArr[i31] >> 6) & 1);
                qt.y0(12, (bArr[i31] >> 4) & 3);
                qt.y0(62, (bArr[i31] >> 2) & 1);
                qt.y0(15, (bArr[i31] >> 1) & 1);
                qt.y0(53, (bArr[i31] >> 0) & 1);
                qt.y0(21, (bArr[i2 + 3] >> 0) & 15);
                int i32 = i2 + 6;
                qt.y0(37, (bArr[i32] >> 3) & 1);
                int i33 = i2 + 4;
                int i34 = bArr[i33] & 255;
                int i35 = i2 + 5;
                int i36 = bArr[i35] & 255;
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i34 = bArr[i35] & 255;
                    i36 = bArr[i33] & 255;
                }
                int i37 = (bArr[i32] >> 3) & 1;
                if (i34 == 0) {
                    qt.y0(27, -2);
                } else if (i34 == 127) {
                    qt.y0(27, -3);
                } else if (i37 == 1) {
                    if (i34 < 1 || i34 > 90) {
                        qt.y0(27, -1);
                    } else {
                        qt.y0(27, i34);
                    }
                } else if (i34 < 30 || i34 > 64) {
                    qt.y0(27, -1);
                } else {
                    qt.y0(27, i34);
                }
                if (i36 == 0) {
                    qt.y0(28, -2);
                } else if (i36 == 127) {
                    qt.y0(28, -3);
                } else if (i37 == 1) {
                    if (i36 < 1 || i36 > 90) {
                        qt.y0(28, -1);
                    } else {
                        qt.y0(28, i36);
                    }
                } else if (i36 < 30 || i36 > 64) {
                    qt.y0(28, -1);
                } else {
                    qt.y0(28, i36);
                }
                qt.y0(17, (bArr[i32] >> 7) & 1);
                qt.y0(16, (bArr[i32] >> 6) & 1);
                qt.y0(54, (bArr[i32] >> 4) & 3);
                qt.y0(36, (bArr[i32] >> 2) & 1);
                int i38 = bArr[i2 + 7] & 255;
                if (i38 == 255 || i38 == 0) {
                    u0.d.A3(0);
                } else {
                    u0.d.B3(i37 == 1 ? (((i38 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i38 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                }
                int i39 = i2 + 8;
                qt.y0(42, (bArr[i39] >> 7) & 1);
                qt.y0(44, (bArr[i39] >> 0) & 15);
                int i40 = bArr[i2 + 9] & 255;
                int i41 = 255 & bArr[i2 + 10];
                if (i40 == 0) {
                    qt.y0(40, -2);
                } else if (i40 == 127) {
                    qt.y0(40, -3);
                } else if (i37 == 1) {
                    if (i40 < 1 || i40 > 90) {
                        qt.y0(40, -1);
                    } else {
                        qt.y0(40, i40);
                    }
                } else if (i40 < 30 || i40 > 64) {
                    qt.y0(40, -1);
                } else {
                    qt.y0(40, i40);
                }
                if (i41 == 0) {
                    qt.y0(41, -2);
                } else if (i41 == 127) {
                    qt.y0(41, -3);
                } else if (i37 == 1) {
                    if (i41 < 1 || i41 > 90) {
                        qt.y0(41, -1);
                    } else {
                        qt.y0(41, i41);
                    }
                } else if (i41 < 30 || i41 > 64) {
                    qt.y0(41, -1);
                } else {
                    qt.y0(41, i41);
                }
                int i42 = i2 + 11;
                int i43 = (bArr[i42] >> 0) & 3;
                if (i43 != 1) {
                    if (i43 == 2) {
                        i6 = 1;
                    } else if (i43 != 3) {
                        i6 = 0;
                    } else {
                        i6 = 0;
                        i5 = 1;
                    }
                    i5 = i6;
                } else {
                    i5 = 0;
                    i6 = 1;
                }
                qt.y0(18, (bArr[i42] >> 4) & 1);
                qt.y0(19, i6);
                qt.y0(20, i5);
                int i44 = (bArr[i42] >> 2) & 3;
                if (i44 != 1) {
                    if (i44 == 2) {
                        i8 = 1;
                    } else if (i44 != 3) {
                        i8 = 0;
                    } else {
                        i8 = 0;
                        i7 = 1;
                    }
                    i7 = i8;
                } else {
                    i7 = 0;
                    i8 = 1;
                }
                qt.y0(22, (bArr[i42] >> 4) & 1);
                qt.y0(23, i8);
                qt.y0(24, i7);
                qt.y0(45, (bArr[i42] >> 5) & 1);
                qt.y0(13, (bArr[i42] >> 6) & 1);
                qt.y0(26, (bArr[i42] >> 7) & 1);
                int i45 = i2 + 12;
                int i46 = (bArr[i45] >> 0) & 3;
                if (i46 != 1) {
                    if (i46 == 2) {
                        i10 = 1;
                    } else if (i46 != 3) {
                        i10 = 0;
                    } else {
                        i10 = 0;
                        i9 = 1;
                    }
                    i9 = i10;
                } else {
                    i9 = 0;
                    i10 = 1;
                }
                qt.y0(46, i10);
                qt.y0(47, i9);
                int i47 = (bArr[i45] >> 2) & 3;
                if (i47 != 1) {
                    if (i47 == 2) {
                        i12 = 1;
                    } else if (i47 != 3) {
                        i12 = 0;
                    } else {
                        i12 = 0;
                        i11 = 1;
                    }
                    i11 = i12;
                } else {
                    i11 = 0;
                    i12 = 1;
                }
                qt.y0(82, i12);
                qt.y0(83, i11);
                qt.y0(43, (bArr[i45] >> 6) & 1);
                qt.y0(81, (bArr[i45] >> 7) & 1);
                qt.y0(67, (bArr[i45] >> 5) & 1);
                int i48 = i2 + 13;
                qt.y0(52, (bArr[i48] >> 1) & 1);
                qt.y0(55, (bArr[i48] >> 2) & 1);
                qt.y0(34, (bArr[i48] >> 3) & 1);
                break;
            case 4:
                u0.d.R2(l0.c0.u1(bArr[i2 + 2] & 255));
                u0.d.S2(l0.c0.u1(bArr[i2 + 3] & 255));
                u0.d.T2(l0.c0.u1(bArr[i2 + 4] & 255));
                u0.d.U2(l0.c0.u1(bArr[i2 + 5] & 255));
                break;
            case 5:
                int i49 = i2 + 2;
                int i50 = bArr[i49] & 255;
                int i51 = i2 + 3;
                int i52 = bArr[i51] & 255;
                int i53 = i2 + 4;
                int i54 = bArr[i53] & 255;
                int i55 = i2 + 5;
                int i56 = bArr[i55] & 255;
                if (i50 == 0 && i52 == 0 && i54 == 0 && i56 == 0) {
                    u0.d.C2(0);
                } else if ((l0.c0.f13013g != i50 || l0.c0.f13014h != i52 || l0.c0.f13015i != i54 || l0.c0.f13016j != i56) && u0.b.f17347o == 0) {
                    u0.d.C2(1);
                    l0.c0.f13017k = 4;
                    l0.b0.b(l0.c0.f13018l);
                }
                l0.c0.f13013g = i50;
                l0.c0.f13014h = i52;
                l0.c0.f13015i = i54;
                l0.c0.f13016j = i56;
                u0.d.D2(l0.c0.u1(bArr[i49] & 255));
                u0.d.E2(l0.c0.u1(bArr[i51] & 255));
                u0.d.F2(l0.c0.u1(bArr[i53] & 255));
                u0.d.G2(l0.c0.u1(bArr[i55] & 255));
                break;
            case 6:
                byte b5 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b5 >> 7) & 1);
                    qt.y0(2, (b5 >> 6) & 1);
                } else {
                    qt.y0(1, (b5 >> 6) & 1);
                    qt.y0(2, (b5 >> 7) & 1);
                }
                qt.y0(3, (b5 >> 4) & 1);
                qt.y0(4, (b5 >> 5) & 1);
                qt.y0(5, (b5 >> 3) & 1);
                qt.y0(0, (b5 >> 2) & 1);
                break;
            case 7:
                int i57 = i2 + 2;
                qt.y0(299, (bArr[i57] >> 0) & 3);
                qt.y0(300, (bArr[i57] >> 2) & 3);
                qt.y0(TextTrackRegion.SCROLL_VALUE_SCROLL_UP, (bArr[i57] >> 4) & 3);
                qt.y0(302, (bArr[i57] >> 6) & 3);
                int i58 = i2 + 3;
                qt.y0(303, (bArr[i58] >> 0) & 3);
                qt.y0(304, (bArr[i58] >> 2) & 3);
                qt.y0(305, (bArr[i58] >> 4) & 3);
                qt.y0(306, (bArr[i58] >> 6) & 3);
                int i59 = i2 + 4;
                qt.y0(115, (bArr[i59] >> 0) & 3);
                qt.y0(116, (bArr[i59] >> 2) & 3);
                qt.y0(117, (bArr[i59] >> 4) & 3);
                qt.y0(118, (bArr[i59] >> 6) & 3);
                int i60 = i2 + 5;
                qt.y0(119, (bArr[i60] >> 0) & 7);
                qt.y0(120, (bArr[i60] >> 3) & 1);
                qt.y0(121, (bArr[i60] >> 4) & 7);
                qt.y0(122, (bArr[i60] >> 7) & 1);
                int i61 = i2 + 6;
                qt.y0(123, (bArr[i61] >> 0) & 7);
                qt.y0(124, (bArr[i61] >> 4) & 7);
                int i62 = i2 + 7;
                qt.y0(125, (bArr[i62] >> 0) & 7);
                qt.y0(126, (bArr[i62] >> 3) & 1);
                qt.y0(127, (bArr[i62] >> 4) & 7);
                qt.y0(128, (bArr[i62] >> 7) & 1);
                int i63 = i2 + 8;
                qt.y0(129, (bArr[i63] >> 0) & 7);
                qt.y0(130, (bArr[i63] >> 4) & 7);
                int i64 = i2 + 9;
                qt.y0(131, (bArr[i64] >> 0) & 127);
                qt.y0(132, (bArr[i64] >> 7) & 1);
                break;
            case 8:
                qt.y0(308, (bArr[i2 + 5] >> 7) & 1);
                qt.y0(309, bArr[i2 + 8] & 127);
                break;
            default:
                switch (b2) {
                    case 53:
                        int i65 = i2 + 2;
                        l0.c0.N1((bArr[i65] >> 5) & 1, (bArr[i65] >> 4) & 1, 0);
                        qt.y0(133, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(134, (bArr[i2 + 12] & 255) | (65280 & (bArr[i2 + 11] << 8)) | ((bArr[i2 + 10] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 9] << 24) & (-16777216)));
                        break;
                    case 54:
                        int i66 = i2 + 2;
                        qt.y0(310, (bArr[i66] >> 4) & 15);
                        qt.y0(311, (bArr[i66] >> 0) & 15);
                        break;
                    case 55:
                        qt.y0(135, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
                        qt.y0(136, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                        qt.y0(137, (bArr[i2 + 7] & 255) | (65280 & (bArr[i2 + 6] << 8)));
                        break;
                    case 56:
                        qt.y0(138, bArr[i2 + 2] & 255);
                        int i67 = i2 + 3;
                        qt.y0(139, (bArr[i67] >> 7) & 1);
                        qt.y0(140, (bArr[i67] >> 6) & 1);
                        qt.y0(141, (bArr[i67] >> 4) & 3);
                        qt.y0(142, (bArr[i67] >> 3) & 1);
                        qt.y0(143, (bArr[i67] >> 2) & 1);
                        qt.y0(144, (bArr[i67] >> 0) & 3);
                        int i68 = i2 + 4;
                        qt.y0(145, (bArr[i68] >> 7) & 1);
                        qt.y0(146, (bArr[i68] >> 6) & 1);
                        qt.y0(147, (bArr[i68] >> 5) & 1);
                        qt.y0(148, (bArr[i68] >> 4) & 1);
                        qt.y0(149, (bArr[i68] >> 3) & 1);
                        qt.y0(150, (bArr[i68] >> 2) & 1);
                        qt.y0(151, (bArr[i68] >> 1) & 1);
                        qt.y0(152, (bArr[i2 + 5] >> 0) & 255);
                        int i69 = i2 + 6;
                        qt.y0(153, (bArr[i69] >> 4) & 15);
                        qt.y0(154, (bArr[i69] >> 0) & 15);
                        qt.y0(155, (bArr[i2 + 7] >> 0) & 255);
                        qt.y0(156, (bArr[i2 + 8] >> 0) & 255);
                        qt.y0(157, (bArr[i2 + 9] >> 0) & 255);
                        qt.y0(158, (bArr[i2 + 10] >> 0) & 255);
                        qt.y0(159, (bArr[i2 + 11] >> 0) & 255);
                        int i70 = i2 + 12;
                        qt.y0(160, (bArr[i70] >> 4) & 15);
                        qt.y0(161, (bArr[i70] >> 0) & 15);
                        int i71 = i2 + 13;
                        qt.y0(162, (bArr[i71] >> 7) & 1);
                        qt.y0(163, (bArr[i71] >> 6) & 1);
                        qt.y0(164, (bArr[i71] >> 5) & 1);
                        qt.y0(165, (bArr[i71] >> 4) & 1);
                        qt.y0(166, (bArr[i71] >> 0) & 15);
                        int i72 = i2 + 14;
                        qt.y0(167, (bArr[i72] >> 6) & 3);
                        qt.y0(168, (bArr[i72] >> 4) & 3);
                        qt.y0(169, (bArr[i72] >> 3) & 1);
                        break;
                    default:
                        switch (b2) {
                            case 101:
                                int i73 = i2 + 2;
                                qt.y0(170, (bArr[i73] >> 7) & 1);
                                qt.y0(171, (bArr[i73] >> 6) & 1);
                                qt.y0(172, (bArr[i73] >> 5) & 1);
                                qt.y0(173, (bArr[i73] >> 4) & 1);
                                qt.y0(174, (bArr[i73] >> 3) & 1);
                                qt.y0(175, (bArr[i73] >> 2) & 1);
                                int i74 = i2 + 3;
                                qt.y0(176, (bArr[i74] >> 7) & 1);
                                qt.y0(177, (bArr[i74] >> 6) & 1);
                                qt.y0(178, (bArr[i74] >> 5) & 1);
                                qt.y0(179, (bArr[i74] >> 4) & 1);
                                qt.y0(180, bArr[i2 + 4] & 255);
                                break;
                            case 102:
                                qt.y0(181, (bArr[i2 + 2] >> 0) & 63);
                                qt.y0(182, (bArr[i2 + 3] >> 0) & 63);
                                qt.y0(183, (bArr[i2 + 4] >> 0) & 63);
                                int i75 = i2 + 5;
                                qt.y0(184, (bArr[i75] >> 7) & 1);
                                qt.y0(185, (bArr[i75] >> 0) & 127);
                                qt.y0(186, (bArr[i2 + 6] >> 0) & 63);
                                qt.y0(187, (bArr[i2 + 7] >> 0) & 63);
                                qt.y0(188, (bArr[i2 + 8] >> 0) & 63);
                                break;
                            case 103:
                                int i76 = i2 + 2;
                                qt.y0(189, (bArr[i76] >> 6) & 1);
                                qt.y0(190, (bArr[i76] >> 5) & 1);
                                qt.y0(191, (bArr[i76] >> 4) & 1);
                                qt.y0(192, (bArr[i76] >> 2) & 3);
                                qt.y0(193, ((bArr[i76] & 3) << 16) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                int i77 = i2 + 5;
                                qt.y0(194, (bArr[i77] >> 1) & 127);
                                qt.y0(195, ((bArr[i77] & 1) << 8) | (bArr[i2 + 6] & 255));
                                qt.y0(196, ((bArr[i2 + 7] & 3) << 8) | (bArr[i2 + 8] & 255));
                                qt.y0(197, (65280 & (bArr[i2 + 10] << 8)) | ((bArr[i2 + 9] & 63) << 16) | (bArr[i2 + 11] & 255));
                                qt.y0(198, bArr[i2 + 12] & 63);
                                qt.y0(199, bArr[i2 + 13] & 63);
                                qt.y0(200, bArr[i2 + 14] & 63);
                                qt.y0(201, bArr[i2 + 15] & 127);
                                qt.y0(202, (bArr[i2 + 17] & 255) | ((bArr[i2 + 16] & 3) << 8));
                                break;
                            case 104:
                                int i78 = i2 + 2;
                                qt.y0(203, (bArr[i78] >> 5) & 1);
                                qt.y0(204, (bArr[i78] >> 4) & 1);
                                qt.y0(205, (bArr[i78] >> 2) & 3);
                                qt.y0(206, ((bArr[i78] & 3) << 16) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                int i79 = i2 + 5;
                                qt.y0(207, (bArr[i79] >> 1) & 127);
                                qt.y0(208, ((bArr[i79] & 1) << 8) | (bArr[i2 + 6] & 255));
                                qt.y0(209, ((3 & bArr[i2 + 7]) << 8) | (bArr[i2 + 8] & 255));
                                qt.y0(210, (65280 & (bArr[i2 + 10] << 8)) | ((bArr[i2 + 9] & 63) << 16) | (bArr[i2 + 11] & 255));
                                qt.y0(211, bArr[i2 + 12] & 63);
                                qt.y0(212, bArr[i2 + 13] & 63);
                                qt.y0(213, bArr[i2 + 14] & 63);
                                qt.y0(214, bArr[i2 + 15] & 127);
                                qt.y0(215, bArr[i2 + 16] & DhcpPacket.DHCP_DOMAIN_NAME);
                                qt.y0(216, bArr[i2 + 17] & 63);
                                qt.y0(217, bArr[i2 + 18] & 63);
                                qt.y0(218, bArr[i2 + 19] & 63);
                                break;
                            case 105:
                                int i80 = i2 + 2;
                                qt.y0(219, (bArr[i80] >> 5) & 1);
                                qt.y0(220, (bArr[i80] >> 4) & 1);
                                qt.y0(221, (bArr[i80] >> 2) & 3);
                                qt.y0(222, ((bArr[i80] & 3) << 16) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                int i81 = i2 + 5;
                                qt.y0(223, (bArr[i81] >> 1) & 127);
                                qt.y0(224, ((bArr[i81] & 1) << 8) | (bArr[i2 + 6] & 255));
                                qt.y0(225, ((3 & bArr[i2 + 7]) << 8) | (bArr[i2 + 8] & 255));
                                qt.y0(226, (65280 & (bArr[i2 + 10] << 8)) | ((bArr[i2 + 9] & 63) << 16) | (bArr[i2 + 11] & 255));
                                qt.y0(227, bArr[i2 + 12] & 63);
                                qt.y0(228, bArr[i2 + 13] & 63);
                                qt.y0(229, bArr[i2 + 14] & 63);
                                qt.y0(230, bArr[i2 + 15] & 127);
                                qt.y0(231, bArr[i2 + 16] & DhcpPacket.DHCP_DOMAIN_NAME);
                                qt.y0(232, bArr[i2 + 17] & 63);
                                qt.y0(233, bArr[i2 + 18] & 63);
                                qt.y0(234, bArr[i2 + 19] & 63);
                                break;
                            case 106:
                                int i82 = i2 + 2;
                                qt.y0(235, (bArr[i82] >> 5) & 1);
                                qt.y0(236, (bArr[i82] >> 4) & 1);
                                qt.y0(237, (bArr[i82] >> 2) & 3);
                                qt.y0(238, ((bArr[i82] & 3) << 16) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                int i83 = i2 + 5;
                                qt.y0(239, (bArr[i83] >> 1) & 127);
                                qt.y0(240, ((bArr[i83] & 1) << 8) | (bArr[i2 + 6] & 255));
                                qt.y0(i.a.Theme_actionModeShareDrawable, ((3 & bArr[i2 + 7]) << 8) | (bArr[i2 + 8] & 255));
                                qt.y0(i.a.Theme_actionModeFindDrawable, (65280 & (bArr[i2 + 10] << 8)) | ((bArr[i2 + 9] & 63) << 16) | (bArr[i2 + 11] & 255));
                                qt.y0(i.a.Theme_actionModeWebSearchDrawable, bArr[i2 + 12] & 63);
                                qt.y0(i.a.Theme_actionModePopupWindowStyle, bArr[i2 + 13] & 63);
                                qt.y0(i.a.Theme_preferenceFragmentStyle, bArr[i2 + 14] & 63);
                                qt.y0(i.a.Theme_preferencePanelStyle, bArr[i2 + 15] & 127);
                                qt.y0(i.a.Theme_preferenceHeaderPanelStyle, bArr[i2 + 16] & DhcpPacket.DHCP_DOMAIN_NAME);
                                qt.y0(248, bArr[i2 + 17] & 63);
                                qt.y0(249, bArr[i2 + 18] & 63);
                                qt.y0(250, bArr[i2 + 19] & 63);
                                break;
                            case 107:
                                int i84 = i2 + 2;
                                qt.y0(251, (bArr[i84] >> 5) & 1);
                                qt.y0(252, (bArr[i84] >> 4) & 1);
                                qt.y0(i.a.Theme_dialogTitleDecorLayout, (bArr[i84] >> 2) & 3);
                                qt.y0(254, ((bArr[i84] & 3) << 16) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                int i85 = i2 + 5;
                                qt.y0(255, (bArr[i85] >> 1) & 127);
                                qt.y0(256, ((bArr[i85] & 1) << 8) | (bArr[i2 + 6] & 255));
                                qt.y0(257, ((3 & bArr[i2 + 7]) << 8) | (bArr[i2 + 8] & 255));
                                qt.y0(258, (65280 & (bArr[i2 + 10] << 8)) | ((bArr[i2 + 9] & 63) << 16) | (bArr[i2 + 11] & 255));
                                qt.y0(259, bArr[i2 + 12] & 63);
                                qt.y0(260, bArr[i2 + 13] & 63);
                                qt.y0(261, bArr[i2 + 14] & 63);
                                qt.y0(262, bArr[i2 + 15] & 127);
                                qt.y0(263, bArr[i2 + 16] & DhcpPacket.DHCP_DOMAIN_NAME);
                                qt.y0(264, bArr[i2 + 17] & 63);
                                qt.y0(265, bArr[i2 + 18] & 63);
                                qt.y0(266, bArr[i2 + 19] & 63);
                                break;
                            case 108:
                                int i86 = i2 + 2;
                                qt.y0(267, (bArr[i86] >> 5) & 1);
                                qt.y0(268, (bArr[i86] >> 4) & 1);
                                qt.y0(i.a.Theme_findOnPageNextDrawable, (bArr[i86] >> 2) & 3);
                                qt.y0(i.a.Theme_findOnPagePreviousDrawable, ((bArr[i86] & 3) << 16) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                int i87 = i2 + 5;
                                qt.y0(271, (bArr[i87] >> 1) & 127);
                                qt.y0(BluetoothClass.Device.COMPUTER_HANDHELD_PC_PDA, ((bArr[i87] & 1) << 8) | (bArr[i2 + 6] & 255));
                                qt.y0(273, ((3 & bArr[i2 + 7]) << 8) | (bArr[i2 + 8] & 255));
                                qt.y0(274, (65280 & (bArr[i2 + 10] << 8)) | ((bArr[i2 + 9] & 63) << 16) | (bArr[i2 + 11] & 255));
                                qt.y0(275, bArr[i2 + 12] & 63);
                                qt.y0(BluetoothClass.Device.COMPUTER_PALM_SIZE_PC_PDA, bArr[i2 + 13] & 63);
                                qt.y0(277, bArr[i2 + 14] & 63);
                                qt.y0(278, bArr[i2 + 15] & 127);
                                qt.y0(279, bArr[i2 + 16] & DhcpPacket.DHCP_DOMAIN_NAME);
                                qt.y0(BluetoothClass.Device.COMPUTER_WEARABLE, bArr[i2 + 17] & 63);
                                qt.y0(281, bArr[i2 + 18] & 63);
                                qt.y0(282, bArr[i2 + 19] & 63);
                                break;
                            case 109:
                                int i88 = i2 + 2;
                                qt.y0(283, (bArr[i88] >> 5) & 1);
                                qt.y0(284, (bArr[i88] >> 4) & 1);
                                qt.y0(285, (bArr[i88] >> 2) & 3);
                                qt.y0(286, ((bArr[i88] & 3) << 16) | ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                                int i89 = i2 + 5;
                                qt.y0(287, (bArr[i89] >> 1) & 127);
                                qt.y0(MediaProperties.HEIGHT_288, ((bArr[i89] & 1) << 8) | (bArr[i2 + 6] & 255));
                                qt.y0(289, ((3 & bArr[i2 + 7]) << 8) | (bArr[i2 + 8] & 255));
                                qt.y0(290, (65280 & (bArr[i2 + 10] << 8)) | ((bArr[i2 + 9] & 63) << 16) | (bArr[i2 + 11] & 255));
                                qt.y0(291, bArr[i2 + 12] & 63);
                                qt.y0(292, bArr[i2 + 13] & 63);
                                qt.y0(293, bArr[i2 + 14] & 63);
                                qt.y0(294, bArr[i2 + 15] & 127);
                                qt.y0(295, bArr[i2 + 16] & DhcpPacket.DHCP_DOMAIN_NAME);
                                qt.y0(296, bArr[i2 + 17] & 63);
                                qt.y0(297, bArr[i2 + 18] & 63);
                                qt.y0(298, bArr[i2 + 19] & 63);
                                break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f7394i);
        l0.b0.p0(this.f7395j);
        w0.e.f17819e.d(this.f7392g);
        w0.e.f17815a.d(this.f7392g);
        u0.c.f17374a.d(this.f7392g);
        u0.c.f17392s.d(this.f7392g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 314) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 1003) {
            c3(18);
        }
        if (i2 == 1005) {
            if (iArr[0] == 0) {
                c3(15);
                return;
            } else if (iArr[0] == 1) {
                c3(16);
                return;
            } else {
                if (iArr[0] == 2) {
                    c3(17);
                    return;
                }
                return;
            }
        }
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                int iW = (iArr[1] * 255) / a.f.w();
                int i3 = 255 - ((iArr[2] * 255) / a.f.i());
                if (iArr[0] == 0) {
                    z.k.s(227, 167, 5, 1, 0, iW, 0, i3);
                    return;
                } else {
                    if (iArr[0] == 1) {
                        z.k.s(227, 167, 5, 0, 0, iW, 0, i3);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        switch (i2) {
            case 0:
                z.k.s(227, 144, 1, iArr[0]);
                break;
            case 1:
                z.k.s(227, 224, 2, iArr[0], iArr[1]);
                break;
            case 2:
                z.k.s(227, 208, 2, iArr[0], iArr[1]);
                break;
            case 3:
                if (iArr[0] == 255) {
                    Time time = new Time(Time.getCurrentTimezone());
                    time.setToNow();
                    z.k.s(227, 198, 6, 1, time.year + DrmManagerClient.ERROR_UNKNOWN, time.month + 1, time.monthDay, time.hour, time.minute);
                } else {
                    z.k.s(227, 198, 2, iArr[0], iArr[1]);
                }
                break;
            case 4:
                z.k.s(227, 198, 6, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                break;
            case 5:
                z.k.s(227, 225, 2, iArr[0], iArr[1]);
                break;
            case 6:
                d3(new byte[]{46, -89, 5, (byte) iArr[0], (byte) iArr[1], (byte) iArr[2], (byte) iArr[3], (byte) iArr[4], 0});
                z.k.s(227, 167, 5, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4]);
                break;
            case 7:
                z.k.s(227, 130, 3, iArr[0], iArr[1], iArr[1]);
                break;
            case 8:
                z.k.s(227, 210, 2, iArr[0], iArr[1]);
                break;
            case 9:
                z.k.s(227, 166, 2, iArr[0], iArr[1]);
                break;
            case 10:
                z.k.s(227, 168, 2, iArr[0], iArr[1]);
                break;
        }
    }

    public final void a3(int i2, int i3) {
        z.k.s(227, -30, 2, i2, i3);
    }

    public final void b3() {
        if (qt.i0().equals("com.syu.carinfo.lz.jaguar.TDLandRoverCarSeatSet")) {
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.syu.canbus", "com.syu.carinfo.lz.jaguar.TDLandRoverCarSeatSet");
        intent.addCategory(Intent.CATEGORY_DEFAULT);
        intent.setFlags(268435456);
        App.c().startActivity(intent);
    }

    public final void c3(int i2) {
        byte b2 = (byte) i2;
        z.k.s(227, 168, 2, b2, 1);
        a.i.a0(100L);
        z.k.s(227, 168, 2, b2, 0);
    }
}
