package k0;

import android.content.Intent;
import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.Process;
import android.os.SystemProperties;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class hf extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5950c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f5951d = {new int[]{1, 7}, new int[]{4, 8}, new int[]{7, 20}, new int[]{8, 68}, new int[]{10, 19}, new int[]{11, 67}, new int[]{12, 18}, new int[]{13, 18}, new int[]{14, 38}, new int[]{15, 38}, new int[]{16, 2}, new int[]{17, 2}, new int[]{19, 13}, new int[]{20, 13}, new int[]{21, 5}, new int[]{22, 5}, new int[]{23, 6}, new int[]{24, 6}, new int[]{25, 0}, new int[]{26, 0}, new int[]{27, 25}, new int[]{29, 26}, new int[]{30, 26}, new int[]{31, 62}, new int[]{32, 12}, new int[]{33, 12}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5952e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f5953f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f5954g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f5955h = new c();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f5956i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f5957j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f5958k = 0.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5959l = 255;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f5960m = 255;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f5961n = new d();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f5962o = new e();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2 = u0.b.K3;
            if (i2 == 1 || i2 == 2) {
                z.k.s(227, 117, 2, 20, 0);
            } else {
                z.k.s(227, 117, 2, 20, 1);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hf hfVar = hf.this;
            int[] iArr = new int[1];
            iArr[0] = u0.b.f17347o == 1 ? 64 : 0;
            hfVar.o3(9, 1, iArr);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            long millis = time.toMillis(false) / 10000;
            byte b2 = DateFormat.is24HourFormat(App.c()) ? (byte) 1 : (byte) 0;
            if (hf.this.f5956i == millis && hf.this.f5957j == b2) {
                return;
            }
            hf.this.f5956i = millis;
            hf.this.f5957j = b2;
            hf.this.o3(118, 7, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second, (((byte) time.weekDay) & DhcpPacket.DHCP_DOMAIN_NAME) | 224);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hf.this.f5958k = u0.b.f17359s0;
            if (hf.this.f5958k > 360.0f) {
                hf.i3(hf.this, 360.0f);
            }
            if (hf.this.f5958k < 0.0f) {
                hf.i3(hf.this, 360.0f);
                hf hfVar = hf.this;
                hfVar.f5958k = 360.0f - Math.abs(hfVar.f5958k);
            }
            if ((hf.this.f5958k <= 22.5d && hf.this.f5958k >= 0.0f) || (hf.this.f5958k >= 337.5d && hf.this.f5958k <= 360.0f)) {
                hf.this.f5960m = 0;
            } else if (hf.this.f5958k > 22.5d && hf.this.f5958k < 67.5d) {
                hf.this.f5960m = 1;
            } else if (hf.this.f5958k >= 67.5d && hf.this.f5958k <= 112.5d) {
                hf.this.f5960m = 2;
            } else if (hf.this.f5958k > 112.5d && hf.this.f5958k < 157.5d) {
                hf.this.f5960m = 3;
            } else if (hf.this.f5958k >= 157.5d && hf.this.f5958k <= 202.5d) {
                hf.this.f5960m = 4;
            } else if (hf.this.f5958k > 202.5d && hf.this.f5958k < 247.5d) {
                hf.this.f5960m = 5;
            } else if (hf.this.f5958k >= 247.5d && hf.this.f5958k <= 292.5d) {
                hf.this.f5960m = 6;
            } else if (hf.this.f5958k <= 292.5d || hf.this.f5958k >= 337.5d) {
                hf.this.f5960m = 15;
            } else {
                hf.this.f5960m = 7;
            }
            if (hf.this.f5960m != hf.this.f5959l) {
                hf.this.o3(202, 4, (int) hf.this.f5958k, (int) ((hf.this.f5958k * 10.0f) % 10.0f), 0, 128);
                hf hfVar2 = hf.this;
                hfVar2.f5959l = hfVar2.f5960m;
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            hf.this.o3(129, 1, u0.b.f17306a0);
        }
    }

    public static /* synthetic */ float i3(hf hfVar, float f2) {
        float f3 = hfVar.f5958k % f2;
        hfVar.f5958k = f3;
        return f3;
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void S2() {
        qt.y0(1029, 1);
        mt mtVar = this.f7886a;
        mtVar.f8306a = new String[]{"com.syu.canbus"};
        mtVar.f8310e = 1;
        mtVar.f8311f = 1;
        mtVar.f8312g = 1;
        mtVar.f8314i = 1;
        o1.h.f16865a.a(this.f5961n, 1);
        u0.c.f17379f.a(this.f5954g, 1);
        qt.z(this.f5955h);
        u0.c.f17386m.a(this.f5962o, 1);
        u0.c.f17397x.a(this.f5953f, 1);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        byte b2 = bArr[i2];
        if (b2 == 6) {
            int i7 = i2 + 2;
            qt.y0(106, bArr[i7] & 255);
            switch (bArr[i7] & 255) {
                case 0:
                    p3();
                    break;
                case 1:
                    n3("蓄电池电压低，三分钟后将关闭多媒体系统");
                    break;
                case 2:
                    n3("请长按启动按钮启动");
                    break;
                case 3:
                    n3("请将档位切换至 P 档域");
                    break;
                case 4:
                    n3("请常按启动按钮退电");
                    break;
                case 5:
                    n3("请停止车辆再按启动按钮");
                    break;
                case 6:
                    n3("请将钥匙紧贴启动按钮");
                    break;
                case 7:
                    n3("请确认钥匙是否在车内");
                    break;
                case 8:
                    n3("为了您的爱车，请解除驻车制动");
                    break;
                case 9:
                    n3("请关好车门");
                    break;
                case 10:
                    n3("钥匙电池电量低，请及时更换");
                    break;
                case 11:
                    n3("请轻轻转动方向盘，再尝试启动");
                    break;
                case 12:
                    n3("请专心驾驶");
                    break;
                case 13:
                    n3("自动灯光已开启");
                    break;
                case 14:
                    n3("自动灯光已关闭");
                    break;
                case 15:
                    n3("疲劳预警系统已开启");
                    break;
                case 16:
                    n3("疲劳预警系统已关闭");
                    break;
                case 17:
                    n3("疲劳预警系统已进入演示模式");
                    break;
                case 18:
                    n3("疲劳预警系统已进入工作模式");
                    break;
                case 19:
                    n3("学习完毕");
                    break;
                case 20:
                    n3("为了您的安全，请系好安全带");
                    break;
                case 21:
                    n3("燃油不足，是否导航至加油站");
                    break;
                case 22:
                    n3("无法启动，请联系服务店维修");
                    break;
            }
        }
        if (b2 == 23) {
            int i8 = bArr[i2 + 2] & 255;
            int i9 = (i8 >> 7) & 1;
            if (u0.b.f17347o == 0) {
                if (i9 != 0) {
                    if (!o1.u.T(a.b.O)) {
                        qt.t();
                    }
                } else if (o1.u.T(a.b.O)) {
                    qt.f();
                }
            }
            if (((i8 >> 6) & 1) != 0) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        if (b2 == 25) {
            int i10 = i2 + 2;
            qt.y0(118, (bArr[i10] >> 0) & 3);
            qt.y0(119, (bArr[i10] >> 2) & 1);
            qt.y0(120, (bArr[i10] >> 3) & 1);
            qt.y0(122, bArr[i2 + 3] & 255);
            return;
        }
        if (b2 == 32) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f5950c = b3 & 255;
            int i11 = 0;
            while (true) {
                iArr = this.f5951d;
                if (i11 >= iArr.length) {
                    break;
                }
                int i12 = this.f5950c;
                if (i12 == iArr[i11][0]) {
                    if (i12 == 0) {
                        break;
                    }
                    this.f5949b = i11;
                    break;
                }
                i11++;
            }
            if (this.f5950c == 31) {
                if (this.f5952e == 0) {
                    this.f5952e = 1;
                } else {
                    this.f5952e = 0;
                }
                qt.y0(146, this.f5952e);
                return;
            }
            if ((b4 & 255) != 0) {
                if (i11 < iArr.length) {
                    l0.b0.l0(iArr[i11][1], 0);
                    return;
                }
                return;
            }
            int i13 = this.f5949b;
            if (i13 < iArr.length) {
                i4 = 255;
                if (i13 != 255) {
                    l0.b0.l0(iArr[i13][1], 1);
                }
            } else {
                i4 = 255;
            }
            this.f5949b = i4;
            return;
        }
        if (b2 == 36) {
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
            return;
        }
        if (b2 == 20) {
            byte b6 = bArr[i2 + 2];
            byte b7 = bArr[i2 + 3];
            byte b8 = bArr[i2 + 4];
            byte b9 = bArr[i2 + 5];
            byte b10 = bArr[i2 + 6];
            byte b11 = bArr[i2 + 7];
            qt.y0(105, b6);
            qt.y0(101, (b7 & 255) | ((b8 & DhcpPacket.DHCP_DOMAIN_NAME) << 8));
            qt.y0(102, ((b8 >> 4) & 15) | ((b9 & 255) << 4));
            qt.y0(103, b10 & 7);
            qt.y0(104, (b10 >> 3) & 7);
            qt.y0(113, (b10 >> 6) & 1);
            qt.y0(114, (b10 >> 7) & 1);
            qt.y0(115, b11 & 7);
            return;
        }
        if (b2 == 21) {
            int i14 = bArr[i2 + 2] & 255;
            qt.y0(Process.MEDIA_UID, i14 & 15);
            if (i14 != 0) {
                qt.a(1);
                return;
            } else {
                qt.a(0);
                return;
            }
        }
        if (b2 == 29) {
            byte b12 = bArr[i2 + 2];
            byte b13 = bArr[i2 + 3];
            byte b14 = bArr[i2 + 4];
            byte b15 = bArr[i2 + 5];
            u0.d.D2(a3(b12 & 255));
            u0.d.E2(a3(b13 & 255));
            u0.d.F2(a3(b14 & 255));
            u0.d.G2(a3(b15 & 255));
            return;
        }
        if (b2 == 30) {
            byte b16 = bArr[i2 + 2];
            byte b17 = bArr[i2 + 3];
            byte b18 = bArr[i2 + 4];
            byte b19 = bArr[i2 + 5];
            u0.d.R2(a3(b16 & 255));
            u0.d.S2(a3(b17 & 255));
            u0.d.T2(a3(b18 & 255));
            u0.d.U2(a3(b19 & 255));
            return;
        }
        switch (b2) {
            case 39:
                qt.y0(123, bArr[i2 + 2] & 255);
                int i15 = i2 + 3;
                qt.y0(124, (bArr[i15] >> 7) & 1);
                qt.y0(125, (bArr[i15] >> 6) & 1);
                int i16 = i2 + 4;
                qt.y0(126, (bArr[i16] >> 7) & 1);
                qt.y0(127, (bArr[i16] >> 6) & 1);
                qt.y0(128, (bArr[i16] >> 5) & 1);
                qt.y0(129, (bArr[i16] >> 4) & 1);
                qt.y0(130, (bArr[i16] >> 3) & 1);
                qt.y0(131, (bArr[i16] >> 2) & 1);
                int i17 = i2 + 5;
                qt.y0(132, (bArr[i17] >> 6) & 3);
                qt.y0(133, (bArr[i17] >> 5) & 1);
                qt.y0(134, (bArr[i17] >> 3) & 3);
                qt.y0(135, (bArr[i17] >> 2) & 1);
                qt.y0(136, bArr[i2 + 6] & 255);
                qt.y0(137, (((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255)) & 65535);
                qt.y0(138, bArr[i2 + 9] & 255);
                qt.y0(139, bArr[i2 + 10] & 255);
                qt.y0(140, bArr[i2 + 11] & 255);
                qt.y0(141, bArr[i2 + 12] & 255);
                qt.y0(142, bArr[i2 + 13] & 255);
                int i18 = i2 + 14;
                qt.y0(143, (bArr[i18] >> 7) & 1);
                qt.y0(144, (bArr[i18] >> 5) & 3);
                qt.y0(145, (bArr[i18] >> 3) & 3);
                break;
            case 40:
                int i19 = bArr[i2 + 2] & 255;
                int i20 = bArr[i2 + 3] & 255;
                int i21 = i2 + 4;
                int i22 = bArr[i21] & 255;
                int i23 = i2 + 5;
                int i24 = bArr[i23] & 255;
                int i25 = bArr[i2 + 6] & 255;
                int i26 = bArr[i2 + 7] & 255;
                int i27 = bArr[i2 + 8] & 255;
                int i28 = bArr[i2 + 9] & 255;
                qt.y0(10, (i19 >> 7) & 1);
                qt.y0(11, (i19 >> 6) & 1);
                qt.y0(12, (i19 >> 5) & 1);
                qt.y0(13, (i19 >> 3) & 1);
                qt.y0(14, (i19 >> 2) & 1);
                qt.y0(65, (i19 >> 1) & 1);
                qt.y0(16, i19 & 1);
                qt.y0(18, (i20 >> 7) & 1);
                qt.y0(19, (i20 >> 6) & 1);
                qt.y0(20, (i20 >> 5) & 1);
                qt.y0(21, i20 & 15);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    i22 = bArr[i23] & 255;
                    i24 = bArr[i21] & 255;
                }
                int i29 = -1;
                if (i22 == 0) {
                    i5 = -2;
                } else if (i22 != 31) {
                    i5 = (i22 < 1 || i22 > 29) ? -1 : ((i22 - 1) * 5) + 180;
                } else {
                    i5 = -3;
                }
                qt.y0(27, i5);
                if (i24 == 0) {
                    i6 = -2;
                } else if (i24 != 31) {
                    i6 = (i24 < 1 || i24 > 29) ? -1 : ((i24 - 1) * 5) + 180;
                } else {
                    i6 = -3;
                }
                qt.y0(28, i6);
                qt.y0(49, (i25 >> 7) & 1);
                qt.y0(67, (i25 >> 2) & 1);
                qt.y0(38, (i25 >> 1) & 1);
                qt.y0(37, (i25 >> 0) & 1);
                u0.d.A3((((255 & i26) * 5) - 400) + 1000);
                if (i27 == 0) {
                    i29 = -2;
                } else if (i27 == 31) {
                    i29 = -3;
                } else if (i27 >= 1 && i27 <= 29) {
                    i29 = ((i27 - 1) * 5) + 180;
                }
                qt.y0(40, i29);
                qt.y0(42, (i28 >> 7) & 1);
                qt.y0(46, (i28 >> 6) & 1);
                qt.y0(47, (i28 >> 5) & 1);
                qt.y0(43, (i28 >> 4) & 1);
                qt.y0(44, i28 & 15);
                break;
            case 41:
                qt.i(bArr[i2 + 2], bArr[i2 + 3], true, 7800);
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f5962o);
        o1.h.f16865a.d(this.f5961n);
        qt.q0(this.f5955h);
        u0.c.f17397x.d(this.f5953f);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 147) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (T2(iArr, 2)) {
                o3(224, 2, iArr);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (T2(iArr, 1)) {
                o3(121, 1, iArr);
                return;
            }
            return;
        }
        if (i2 == 3) {
            if (T2(iArr, 1)) {
                o3(120, 1, iArr);
                return;
            }
            return;
        }
        if (i2 == 4) {
            if (T2(iArr, 2)) {
                o3(130, 2, iArr);
            }
        } else if (i2 == 5) {
            if (T2(iArr, 2)) {
                o3(117, 2, iArr);
            }
        } else if (i2 == 1016 && T2(iArr, 1)) {
            int[] iArr2 = new int[1];
            iArr2[0] = iArr[0] == 1 ? 128 : 0;
            o3(9, 1, iArr2);
        }
    }

    public final int a3(int i2) {
        return l0.c0.E0(i2);
    }

    public final void n3(String str) {
        Intent intent = new Intent("com.syu.execute_tts");
        intent.putExtra("raw_text", str);
        intent.setPackage("com.syu.voice");
        App.c().startService(intent);
    }

    public final void o3(int i2, int i3, int... iArr) {
        int[] iArr2 = new int[iArr.length + 4];
        iArr2[0] = 227;
        iArr2[1] = i2;
        iArr2[2] = i3;
        byte b2 = (byte) (i2 + i3);
        for (int i4 = 0; i4 < iArr.length; i4++) {
            b2 = (byte) (b2 + iArr[i4]);
            iArr2[i4 + 3] = iArr[i4];
        }
        iArr2[iArr.length + 3] = b2 ^ 255;
        z.k.s(iArr2);
    }

    public void p3() {
        Intent intent = new Intent("com.syu.cancle_tts");
        intent.setPackage("com.syu.voice");
        App.c().startService(intent);
    }
}
