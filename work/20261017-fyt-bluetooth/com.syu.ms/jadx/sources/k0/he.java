package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class he extends lt {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5935d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5936e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f5937f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5933b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5934c = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5938g = 255;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[][] f5939h = {new int[]{1, 0}, new int[]{2, 5}, new int[]{3, 6}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, 21}, new int[]{7, 2}, new int[]{8, 1}, new int[]{9, 25}, new int[]{10, 7}, new int[]{11, 8}, new int[]{12, 3}, new int[]{13, 4}, new int[]{14, 12}, new int[]{15, 16}, new int[]{16, 1}, new int[]{17, 24}, new int[]{18, -1}, new int[]{19, -1}, new int[]{20, -1}, new int[]{22, 18}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[][] f5940i = {new int[]{1, 0}, new int[]{2, 3}, new int[]{3, 4}, new int[]{4, 55}, new int[]{6, 6}, new int[]{9, 12}, new int[]{16, 16}, new int[]{25, 3}, new int[]{26, 4}, new int[]{32, 1}, new int[]{36, 54}, new int[]{42, 29}, new int[]{43, 5}, new int[]{44, 2}, new int[]{47, 9}, new int[]{48, 18}, new int[]{51, 24}, new int[]{52, 18}, new int[]{53, 26}, new int[]{57, 25}, new int[]{59, 2}, new int[]{66, 38}, new int[]{75, 21}, new int[]{99, 13}};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f5941j = new a();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Runnable f5942k = new b();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f5943l = new c();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[] f5944m = {34, 204};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5945n = 0;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            he.this.V2();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            he heVar = he.this;
            heVar.f5933b = 0;
            heVar.f5934c = 0;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            z.k.s(227, 133, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second, (byte) time.weekDay);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        if (nt.a()) {
            l0.g.i();
            l0.b0.a(this.f5941j);
        }
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        mtVar.f8310e = 1;
        mtVar.f8314i = 0;
        int i2 = nt.f8633a;
        if (i2 == 65953 || i2 == 197025) {
            if (App.c().getResources().getConfiguration().orientation == 1) {
                this.f7886a.f8306a = new String[]{"com.syu.canbus"};
            } else {
                this.f7886a.f8306a = null;
            }
            this.f7886a.f8314i = 0;
        } else if (i2 == 262561 || i2 == 459169 || i2 == 524705 || i2 == 328097 || i2 == 393633) {
            mtVar.f8306a = new String[]{"com.syu.canbus"};
            if (App.c().getResources().getConfiguration().orientation == 1) {
                this.f7886a.f8314i = 0;
            } else {
                this.f7886a.f8314i = 1;
            }
        }
        int i3 = nt.f8633a;
        if (i3 == 65953) {
            this.f7886a.f8322q = 1;
        } else {
            this.f7886a.f8322q = 0;
        }
        if (i3 == 393633) {
            qt.z(this.f5943l);
        }
        u0.c.f17386m.a(this.f5942k, 1);
    }

    /* JADX WARN: Code duplicated, block: B:182:0x03b0  */
    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int[][] iArr;
        int i10;
        int[][] iArr2;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16 = nt.f8633a;
        if (i16 == 417) {
            int i17 = i2 + 1;
            byte b2 = bArr[i17];
            int i18 = i2 + 2;
            byte b3 = bArr[i18];
            byte b4 = bArr[i2 + 3];
            byte b5 = bArr[i2 + 4];
            byte b6 = bArr[i2 + 5];
            byte b7 = bArr[i2 + 6];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b2 = bArr[i18];
                b3 = bArr[i17];
            }
            byte b8 = b3;
            int i19 = b2 & 255;
            if (b2 == 36) {
                qt.y0(27, -2);
            } else if (b2 == 64) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i19);
            }
            int i20 = b8 & 255;
            if (b8 == 36) {
                qt.y0(28, -2);
            } else if (b8 == 64) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i20);
            }
            qt.y0(21, b4 & 7);
            int i21 = b5 & DhcpPacket.DHCP_DOMAIN_NAME;
            if (i21 != 1) {
                if (i21 == 2) {
                    i13 = 0;
                    i15 = 1;
                } else if (i21 == 3) {
                    i13 = 0;
                    i15 = 0;
                    i14 = 1;
                } else if (i21 != 4) {
                    i13 = 0;
                    i15 = 0;
                } else {
                    i15 = 0;
                    i13 = 1;
                    i14 = 1;
                }
                i14 = i15;
            } else {
                i13 = 0;
                i14 = 0;
                i15 = 1;
            }
            qt.y0(18, i13);
            qt.y0(19, i15);
            qt.y0(20, i14);
            qt.y0(13, (b6 >> 0) & 1);
            qt.y0(11, (b6 >> 1) & 1);
            qt.y0(12, (b6 >> 2) & 1);
            qt.y0(14, (b6 >> 4) & 1);
            qt.y0(65, (b6 >> 5) & 1);
            qt.y0(16, (b6 >> 6) & 1);
            if (nt.a()) {
                int i22 = 255 & b7;
                boolean z2 = i22 < 200;
                if (!z2) {
                    i22 = 256 - i22;
                }
                if (z2) {
                    if (i22 >= 0 && i22 <= 85) {
                        i22 = (i22 * 10) + 1000;
                    }
                } else if (i22 <= 85) {
                    i22 = 1000 - (i22 * 10);
                }
                if (i22 > 600) {
                    u0.d.A3(i22);
                    return;
                }
                return;
            }
            return;
        }
        byte b9 = bArr[i2];
        if (b9 == 3) {
            byte b10 = bArr[i2 + 2];
            byte b11 = bArr[i2 + 3];
            byte b12 = bArr[i2 + 4];
            byte b13 = bArr[i2 + 5];
            byte b14 = bArr[i2 + 6];
            byte b15 = bArr[i2 + 7];
            byte b16 = bArr[i2 + 8];
            byte b17 = bArr[i2 + 9];
            u0.d.R2(a3(b14 & 255));
            u0.d.S2(a3(b15 & 255));
            u0.d.T2(a3(b16 & 255));
            u0.d.U2(a3(b17 & 255));
            u0.d.D2(a3(b10 & 255));
            u0.d.E2(a3(b11 & 255));
            u0.d.F2(a3(b12 & 255));
            u0.d.G2(a3(b13 & 255));
            return;
        }
        if (b9 == 36) {
            int i23 = bArr[i2 + 2] & 255;
            if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                qt.y0(1, (i23 >> 1) & 1);
                qt.y0(2, (i23 >> 0) & 1);
            } else {
                qt.y0(1, (i23 >> 0) & 1);
                qt.y0(2, (i23 >> 1) & 1);
            }
            qt.y0(3, (i23 >> 2) & 1);
            qt.y0(4, (i23 >> 3) & 1);
            qt.y0(5, (i23 >> 4) & 1);
            qt.y0(0, (i23 >> 5) & 1);
            return;
        }
        if (b9 == 38) {
            int i24 = i2 + 3;
            qt.j(bArr[i2 + 2], bArr[i24] & 7, (bArr[i24] >> 3) & 1, 380);
            return;
        }
        if (b9 == 53) {
            byte b18 = bArr[i2 + 2];
            byte b19 = bArr[i2 + 3];
            qt.y0(29, b18 & 255);
            qt.y0(30, b19 & 255);
            return;
        }
        if (b9 != 85) {
            if (b9 == 87) {
                String str = bArr[i2 + 3] == 4 ? "Honda_Yage8_" : "Honda_Yage7_";
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append("20");
                int i25 = i2 + 4;
                sb.append(bArr[i25] / 10);
                sb.append(bArr[i25] % 10);
                String string = sb.toString();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(string);
                sb2.append("_");
                int i26 = i2 + 5;
                sb2.append(bArr[i26] / 10);
                sb2.append(bArr[i26] % 10);
                String string2 = sb2.toString();
                StringBuilder sb3 = new StringBuilder();
                sb3.append(string2);
                sb3.append("_");
                int i27 = i2 + 6;
                sb3.append(bArr[i27] / 10);
                sb3.append(bArr[i27] % 10);
                qt.L(sb3.toString() + "_V" + ((int) bArr[i2 + 7]));
                return;
            }
            switch (b9) {
                case 32:
                    byte b20 = bArr[i2 + 2];
                    byte b21 = bArr[i2 + 3];
                    this.f5936e = b20 & 255;
                    int i28 = 0;
                    while (true) {
                        iArr = this.f5939h;
                        if (i28 < iArr.length) {
                            int i29 = this.f5936e;
                            if (i29 != iArr[i28][0]) {
                                i28++;
                            } else if (i29 != 0) {
                                this.f5935d = i28;
                            }
                        }
                    }
                    int i30 = b21 & 255;
                    if (i30 == 1) {
                        if (i28 < iArr.length) {
                            l0.b0.l0(iArr[i28][1], 0);
                        }
                    } else if (i30 == 0) {
                        int i31 = this.f5935d;
                        if (i31 < iArr.length) {
                            i10 = 255;
                            if (i31 != 255) {
                                l0.b0.l0(iArr[i31][1], 1);
                            }
                        } else {
                            i10 = 255;
                        }
                        this.f5935d = i10;
                    }
                    break;
                case 33:
                    byte b22 = bArr[i2 + 2];
                    byte b23 = bArr[i2 + 3];
                    this.f5937f = b22 & 255;
                    int i32 = 0;
                    while (true) {
                        iArr2 = this.f5940i;
                        if (i32 < iArr2.length) {
                            int i33 = this.f5937f;
                            if (i33 != iArr2[i32][0]) {
                                i32++;
                            } else if (i33 != 0) {
                                this.f5938g = i32;
                            }
                        }
                    }
                    int i34 = b23 & 255;
                    if (i34 == 1) {
                        if (i32 < iArr2.length) {
                            l0.b0.l0(iArr2[i32][1], 0);
                        }
                    } else if (i34 == 0) {
                        int i35 = this.f5938g;
                        if (i35 < iArr2.length) {
                            i11 = 255;
                            if (i35 != 255) {
                                l0.b0.l0(iArr2[i35][1], 1);
                            }
                        } else {
                            i11 = 255;
                        }
                        this.f5938g = i11;
                    }
                    break;
                case 34:
                    byte b24 = bArr[i2 + 2];
                    byte b25 = bArr[i2 + 3];
                    if (b24 == 1) {
                        int i36 = this.f5933b;
                        if (b25 != i36) {
                            if (b25 > i36) {
                                for (int i37 = 0; i37 < b25 - this.f5933b; i37++) {
                                    l0.b0.l0(7, 0);
                                }
                                l0.b0.l0(7, 1);
                            } else if (b25 < i36) {
                                for (int i38 = 0; i38 < this.f5933b - b25; i38++) {
                                    l0.b0.l0(8, 0);
                                }
                                l0.b0.l0(8, 1);
                            }
                            this.f5933b = b25;
                        }
                    } else if (b24 == 2 && b25 != (i12 = this.f5934c)) {
                        if (b25 > i12) {
                            for (int i39 = 0; i39 < b25 - this.f5934c; i39++) {
                                l0.b0.l0(31, 0);
                            }
                            l0.b0.l0(31, 1);
                        } else if (b25 < i12) {
                            for (int i40 = 0; i40 < this.f5934c - b25; i40++) {
                                l0.b0.l0(30, 0);
                            }
                            l0.b0.l0(30, 1);
                        }
                        this.f5934c = b25;
                    }
                    break;
            }
            return;
        }
        if (i16 != 197025 && i16 != 262561 && i16 != 459169 && i16 != 524705 && i16 != 328097 && i16 != 393633) {
            int i41 = i2 + 2;
            byte b26 = bArr[i41];
            int i42 = i2 + 3;
            byte b27 = bArr[i42];
            byte b28 = bArr[i2 + 4];
            byte b29 = bArr[i2 + 5];
            byte b30 = bArr[i2 + 6];
            byte b31 = bArr[i2 + 7];
            byte b32 = bArr[i2 + 8];
            int i43 = i2 + 9;
            byte b33 = bArr[i43];
            if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                b26 = bArr[i42];
                b27 = bArr[i41];
            }
            int i44 = b26 & 255;
            if (b26 <= 16) {
                qt.y0(27, -2);
            } else if (b26 >= 80) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, i44);
            }
            int i45 = b27 & 255;
            if (b27 <= 16) {
                qt.y0(28, -2);
            } else if (b27 >= 80) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, i45);
            }
            qt.y0(21, b28 & DhcpPacket.DHCP_DOMAIN_NAME);
            int i46 = (b28 & 240) >> 4;
            if (i46 == 0) {
                i7 = 0;
                i8 = 0;
                i9 = i8;
            } else if (i46 == 1) {
                i7 = 0;
                i9 = 0;
                i8 = 1;
            } else if (i46 == 2) {
                i7 = 0;
                i8 = 1;
                i9 = i8;
            } else if (i46 == 3) {
                i7 = 0;
                i8 = 0;
                i9 = 1;
            } else if (i46 == 4) {
                i8 = 0;
                i7 = 1;
                i9 = 1;
            } else if (i46 != 6) {
                i7 = 0;
                i8 = 0;
                i9 = i8;
            } else {
                i8 = 0;
                i9 = 0;
                i7 = 1;
            }
            qt.y0(18, i7);
            qt.y0(65, i7);
            qt.y0(19, i8);
            qt.y0(20, i9);
            qt.y0(77, i46);
            qt.y0(29, b29 & 3);
            qt.y0(31, (b29 >> 2) & 3);
            qt.y0(30, (b29 >> 4) & 3);
            qt.y0(32, (b29 >> 6) & 3);
            qt.y0(13, b30 & 1);
            qt.y0(11, (b30 >> 1) & 1);
            qt.y0(14, (b30 >> 2) & 1);
            qt.y0(16, (b30 >> 6) & 1);
            int[] iArr3 = new int[1];
            iArr3[0] = (b31 & 3) == 1 ? 1 : 0;
            qt.y0(12, iArr3);
            qt.y0(38, (b31 >> 3) & 1);
            int i47 = bArr[i43] & 255;
            if (i47 != 255) {
                u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((i47 * 18) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i47 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
                return;
            } else {
                u0.d.A3(0);
                return;
            }
        }
        int i48 = i2 + 2;
        byte b34 = bArr[i48];
        int i49 = i2 + 3;
        byte b35 = bArr[i49];
        byte b36 = bArr[i2 + 4];
        byte b37 = bArr[i2 + 5];
        byte b38 = bArr[i2 + 6];
        byte b39 = bArr[i2 + 7];
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            b34 = bArr[i49];
            b35 = bArr[i48];
        }
        int i50 = b34 & 255;
        if (b34 == 16) {
            qt.y0(27, -2);
        } else if (b34 == 80) {
            qt.y0(27, -3);
        } else {
            qt.y0(27, i50);
        }
        int i51 = b35 & 255;
        if (b35 == 16) {
            qt.y0(28, -2);
        } else if (b35 == 80) {
            qt.y0(28, -3);
        } else {
            qt.y0(28, i51);
        }
        qt.y0(21, (b36 >> 0) & 15);
        int i52 = (b36 >> 4) & 15;
        qt.y0(77, i52);
        switch (i52) {
            case 1:
                i4 = 0;
                i5 = 0;
                i6 = 1;
                break;
            case 2:
                i4 = 0;
                i6 = 1;
                i5 = i6;
                break;
            case 3:
                i4 = 0;
                i6 = 0;
                i5 = 1;
                break;
            case 4:
                i6 = 0;
                i4 = 1;
                i5 = 1;
                break;
            case 5:
                i5 = 0;
                i4 = 1;
                i6 = 1;
                break;
            case 6:
                i6 = 0;
                i5 = 0;
                i4 = 1;
                break;
            case 7:
                i4 = 1;
                i6 = i4;
                i5 = i6;
                break;
            default:
                i4 = 0;
                i6 = i4;
                i5 = i6;
                break;
        }
        qt.y0(18, i4);
        qt.y0(19, i6);
        qt.y0(20, i5);
        qt.y0(13, (b38 >> 0) & 1);
        qt.y0(11, (b38 >> 1) & 1);
        int i53 = (b38 >> 2) & 1;
        if (i53 == 1) {
            qt.y0(14, 0);
        } else if (i53 == 0) {
            qt.y0(14, 1);
        }
        qt.y0(65, (b38 >> 5) & 1);
        qt.y0(16, (b38 >> 6) & 1);
        int[] iArr4 = new int[1];
        iArr4[0] = (b39 & 3) == 1 ? 1 : 0;
        qt.y0(12, iArr4);
        qt.y0(76, (b39 >> 2) & 1);
        qt.y0(38, (b39 >> 3) & 1);
        int i54 = bArr[i2 + 9] & 255;
        if (i54 != 255) {
            u0.d.B3(SystemProperties.getInt("persist.fyt.temperature", 0) == 1 ? (((i54 * 18) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) | 268435456) & (-1) : (i54 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        } else {
            u0.d.A3(0);
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f5943l);
        u0.c.f17386m.d(this.f5942k);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 98) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 != 22) {
            return;
        }
        z.k.s(227, 51, 5, iArr[0], this.f5944m[this.f5945n % 2], 37, 3, 170);
        z.k.s(227, 51, 5, iArr[0], this.f5944m[this.f5945n % 2], 37, 3, 170);
        z.k.s(227, 51, 5, iArr[0], this.f5944m[this.f5945n % 2], 37, 3, 170);
        int i3 = this.f5945n + 1;
        this.f5945n = i3;
        this.f5945n = i3 % 2;
    }

    public int a3(int i2) {
        if (i2 == 1) {
            return 0;
        }
        if (i2 == 2) {
            return 3;
        }
        if (i2 != 3) {
            return i2 != 4 ? 10 : 8;
        }
        return 6;
    }
}
