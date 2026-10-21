package k0;

import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class pb extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9140c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f9141d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 4}, new int[]{4, 3}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 54}, new int[]{9, 18}, new int[]{16, 13}, new int[]{17, 9}, new int[]{18, 6}, new int[]{19, 5}, new int[]{22, 12}, new int[]{31, 2}, new int[]{32, 32}, new int[]{33, 33}, new int[]{50, 1}, new int[]{128, 25}, new int[]{129, 7}, new int[]{130, 8}, new int[]{10, 27}, new int[]{11, 28}, new int[]{14, 34}, new int[]{15, 35}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9142e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f9143f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f9144g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f9145h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9146i = -1;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / DateUtils.MINUTE_IN_MILLIS;
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            if (pb.this.f9145h != millis || pb.this.f9146i != i2) {
                pb.this.f9145h = millis;
                pb.this.f9146i = i2;
                z.k.s(227, -90, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) (((i2 << 7) & 128) | ((byte) time.hour)), (byte) time.minute, 0, 0);
            }
            z.k.s(227, -18, 2, 81, 0);
        }
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8320o = 0;
        qt.z(this.f9144g);
        if (nt.a()) {
            a3(1);
        }
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        byte b2 = bArr[i2];
        if (b2 == 41) {
            if (this.f9143f) {
                return;
            }
            if (nt.f8637c == 1) {
                qt.m(bArr[i2 + 2], bArr[i2 + 3], 32768, true, 8180);
                return;
            }
            qt.m(bArr[i2 + 3], bArr[i2 + 2], 32768, true, 8180);
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 125) {
            int i5 = bArr[i2 + 2] & 255;
            if (i5 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i6 = i2 + 3;
                    l0.c0.b((bArr[i6] >> 3) & 1, (bArr[i6] >> 4) & 1, 0);
                    return;
                } else {
                    int i7 = i2 + 3;
                    l0.c0.a((bArr[i7] >> 3) & 1, (bArr[i7] >> 4) & 1, 0);
                    return;
                }
            }
            if (i5 == 3) {
                int i8 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i8);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i8}, null, null);
                return;
            } else {
                if (i5 != 8) {
                    return;
                }
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f9143f = true;
                return;
            }
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b3 = bArr[i2 + 2];
                    byte b4 = bArr[i2 + 3];
                    this.f9140c = b3 & 255;
                    int i9 = 0;
                    while (true) {
                        iArr = this.f9141d;
                        if (i9 < iArr.length) {
                            int i10 = this.f9140c;
                            if (i10 != iArr[i9][0]) {
                                i9++;
                            } else if (i10 != 0) {
                                this.f9139b = i9;
                            }
                        }
                    }
                    int i11 = this.f9140c;
                    if (i11 == 6) {
                        if ((b4 & 255) == 1) {
                            int i12 = h0.c.E;
                            if (i12 == 3 || i12 == 5) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                            } else {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                            }
                        }
                        break;
                    } else if (i11 == 32) {
                        for (int i13 = 0; i13 < (b4 & 255); i13++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                        break;
                    } else if (i11 == 33) {
                        for (int i14 = 0; i14 < (b4 & 255); i14++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                        break;
                    } else if (i11 == 129) {
                        for (int i15 = 0; i15 < (b4 & 255); i15++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                        break;
                    } else if (i11 == 130) {
                        for (int i16 = 0; i16 < (b4 & 255); i16++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                        break;
                    } else if ((b4 & 255) == 1 && i9 < iArr.length) {
                        l0.b0.l0(iArr[this.f9139b][1], 0);
                        l0.b0.l0(this.f9141d[this.f9139b][1], 1);
                        break;
                    }
                }
                break;
            case 33:
                byte b5 = bArr[i2 + 2];
                byte b6 = bArr[i2 + 3];
                byte b7 = bArr[i2 + 4];
                byte b8 = bArr[i2 + 6];
                qt.y0(10, (b5 >> 7) & 1);
                qt.y0(11, (b5 >> 6) & 1);
                qt.y0(12, (b5 >> 5) & 1);
                int i17 = ((b6 >> 7) & 1) == 1 ? 1 : 0;
                int i18 = i17;
                if (((b6 >> 6) & 1) == 1) {
                    i17 = 1;
                }
                if (((b6 >> 5) & 1) == 1) {
                    i18 = 1;
                }
                if (((b6 >> 4) & 1) == 1) {
                    i18 = 1;
                    i4 = 1;
                } else {
                    i4 = 0;
                }
                qt.y0(18, i4);
                qt.y0(19, i17);
                qt.y0(20, i18);
                qt.y0(21, b6 & DhcpPacket.DHCP_DOMAIN_NAME);
                qt.y0(65, (b8 >> 7) & 1);
                qt.y0(16, (b8 >> 6) & 1);
                int i19 = b7 & 255;
                int i20 = (b7 >> 7) & 1;
                if (i20 == 0) {
                    qt.y0(27, i19);
                } else {
                    int i21 = b7 & 127;
                    if (i21 == 0) {
                        qt.y0(27, -2);
                    } else if (i21 == 31) {
                        qt.y0(27, -3);
                    } else if (i21 >= 1 && i21 <= 28) {
                        qt.y0(27, i21 + 18);
                    }
                }
                qt.y0(37, i20);
                if (nt.a()) {
                    l0.f0.k(bArr[i2 + 7]);
                }
                break;
            case 34:
                if (nt.a()) {
                    int i22 = i2 + 2;
                    u0.d.R2(l0.e0.m(bArr[i22] & 255));
                    u0.d.S2(l0.e0.m(bArr[i22] & 255));
                    u0.d.T2(l0.e0.m(bArr[i22] & 255));
                    u0.d.U2(l0.e0.m(bArr[i22] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    int i23 = i2 + 2;
                    u0.d.D2(b3(bArr[i23] & 255));
                    u0.d.E2(b3(bArr[i23] & 255));
                    u0.d.F2(b3(bArr[i23] & 255));
                    u0.d.G2(b3(bArr[i23] & 255));
                }
                break;
            case 36:
                byte b9 = bArr[i2 + 2];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b9 >> 7) & 1);
                    qt.y0(2, (b9 >> 6) & 1);
                } else {
                    qt.y0(2, (b9 >> 7) & 1);
                    qt.y0(1, (b9 >> 6) & 1);
                }
                qt.y0(4, (b9 >> 5) & 1);
                qt.y0(3, (b9 >> 4) & 1);
                qt.y0(5, (b9 >> 3) & 1);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f9144g);
        if (nt.a()) {
            a3(0);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 97) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }

    public final void a3(int i2) {
        z.k.s(227, 129, 1, i2);
    }

    public final int b3(int i2) {
        if (i2 == 0) {
            return 15;
        }
        return i2;
    }
}
