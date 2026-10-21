package k0;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.drm.DrmManagerClient;
import android.net.dhcp.DhcpPacket;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import android.text.format.DateFormat;
import android.text.format.Time;
import app.App;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class qc extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9489b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9491d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f9495h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9490c = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9492e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[][] f9493f = {new int[]{6, 12}, new int[]{17, 7}, new int[]{18, 8}, new int[]{19, 3}, new int[]{20, 4}, new int[]{21, 2}, new int[]{22, 12}, new int[]{23, 13}, new int[]{24, 18}, new int[]{25, 26}, new int[]{26, 2}, new int[]{27, 21}, new int[]{28, 3}, new int[]{29, 4}, new int[]{30, 32}, new int[]{31, 33}, new int[]{32, 29}, new int[]{160, -1}};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f9494g = {new int[]{1, 25}, new int[]{2, 6}, new int[]{3, 12}, new int[]{4, 55}, new int[]{5, 8}, new int[]{6, 7}, new int[]{7, 30}, new int[]{8, 31}, new int[]{9, 25}, new int[]{10, 0}, new int[]{11, 63}};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f9496i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[][] f9497j = {new int[]{1, 0}, new int[]{2, 5}, new int[]{3, 21}, new int[]{4, 2}, new int[]{5, 1}, new int[]{6, 25}, new int[]{7, 3}, new int[]{8, 4}, new int[]{9, 7}, new int[]{10, 8}, new int[]{11, 29}, new int[]{12, 12}, new int[]{13, 18}, new int[]{14, 53}, new int[]{15, 18}, new int[]{16, 26}, new int[]{17, 13}, new int[]{18, 54}, new int[]{19, 6}, new int[]{20, 9}, new int[]{21, 62}, new int[]{22, -1}, new int[]{23, 63}, new int[]{24, -1}, new int[]{25, 55}, new int[]{255, 16}};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f9498k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f9499l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f9500m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f9501n = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte f9502o = 10;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f9503p = new b();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f9504q = new c();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f9505r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f9506s = new d();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Runnable f9507t = new e();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public float f9508u = 0.0f;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f9509v = 255;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f9510w = 255;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Runnable f9511x = new f();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public Runnable f9512y = new g();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.c0.l();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(qc.this.f9504q);
            qc.this.f9502o = (byte) 10;
            int i2 = nt.f8637c;
            if (i2 == 1 || i2 == 3 || i2 == 5 || i2 == 14 || i2 == 49 || i2 == 52 || i2 == 7 || i2 == 8 || i2 == 11 || i2 == 12 || i2 == 16 || i2 == 17 || i2 == 21 || i2 == 22 || i2 == 31 || i2 == 32 || i2 == 35 || i2 == 36) {
                z.k.s(227, 147, 2, 7, 1);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qc qcVar = qc.this;
            byte b2 = (byte) (qcVar.f9502o - 1);
            qcVar.f9502o = b2;
            if (b2 <= 0) {
                l0.b0.p0(qcVar.f9504q);
                qc.this.f9502o = (byte) 5;
                return;
            }
            z.k.s(227, 129, 1, u0.b.f17306a0);
            if (u0.b.f17306a0 == 1) {
                z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, 7);
                z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, 25);
                z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, 50);
                z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, 48);
                int i2 = nt.f8637c;
                if (i2 == 1 || i2 == 3 || i2 == 5 || i2 == 14 || i2 == 49 || i2 == 52 || i2 == 7 || i2 == 8 || i2 == 11 || i2 == 12 || i2 == 16 || i2 == 17 || i2 == 21 || i2 == 22 || i2 == 31 || i2 == 32 || i2 == 35 || i2 == 36) {
                    if (qc.this.f9502o <= 2) {
                        z.k.s(227, 147, 2, 7, 0);
                        z.k.s(227, 147, 2, 1, 30);
                    } else {
                        z.k.s(227, 147, 2, 7, 1);
                        z.k.s(227, 147, 2, 1, 0);
                    }
                }
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 0) {
                z.k.s(227, 239, 3, 125, i.a.Theme_actionModeShareDrawable, 0);
                return;
            }
            int i2 = u0.b.D;
            if (i2 == 5) {
                z.k.s(227, 239, 3, 125, i.a.Theme_actionModeShareDrawable, 1);
            } else if (i2 != 13) {
                z.k.s(227, 239, 3, 125, i.a.Theme_actionModeShareDrawable, 15);
            } else {
                z.k.s(227, 239, 3, 125, i.a.Theme_actionModeShareDrawable, 2);
            }
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z.k.s(227, 147, 2, 10, 1);
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            qc.this.f9508u = u0.b.f17359s0;
            if (qc.this.f9508u > 360.0f) {
                qc.e3(qc.this, 360.0f);
            }
            if (qc.this.f9508u < 0.0f) {
                qc.e3(qc.this, 360.0f);
                qc qcVar = qc.this;
                qcVar.f9508u = 360.0f - Math.abs(qcVar.f9508u);
            }
            if ((qc.this.f9508u <= 22.5d && qc.this.f9508u >= 0.0f) || (qc.this.f9508u >= 337.5d && qc.this.f9508u <= 360.0f)) {
                qc.this.f9510w = 0;
            } else if (qc.this.f9508u > 22.5d && qc.this.f9508u < 67.5d) {
                qc.this.f9510w = 1;
            } else if (qc.this.f9508u >= 67.5d && qc.this.f9508u <= 112.5d) {
                qc.this.f9510w = 2;
            } else if (qc.this.f9508u > 112.5d && qc.this.f9508u < 157.5d) {
                qc.this.f9510w = 3;
            } else if (qc.this.f9508u >= 157.5d && qc.this.f9508u <= 202.5d) {
                qc.this.f9510w = 4;
            } else if (qc.this.f9508u > 202.5d && qc.this.f9508u < 247.5d) {
                qc.this.f9510w = 5;
            } else if (qc.this.f9508u >= 247.5d && qc.this.f9508u <= 292.5d) {
                qc.this.f9510w = 6;
            } else if (qc.this.f9508u <= 292.5d || qc.this.f9508u >= 337.5d) {
                qc.this.f9510w = 15;
            } else {
                qc.this.f9510w = 7;
            }
            if (qc.this.f9510w != qc.this.f9509v) {
                z.k.s(227, PackageManager.INSTALL_PARSE_FAILED_MANIFEST_MALFORMED, 4, qc.this.f9510w, 0, 0, 0);
                qc qcVar2 = qc.this;
                qcVar2.f9509v = qcVar2.f9510w;
            }
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i2 = !DateFormat.is24HourFormat(App.c()) ? 1 : 0;
            z.k.s(227, -58, 7, 80, (i2 << 7) | ((byte) time.hour), (byte) time.minute, (byte) time.second, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay);
            switch (nt.f8637c) {
                case 0:
                case 2:
                case 3:
                case 4:
                case 6:
                case 9:
                case 10:
                case 13:
                case 17:
                case 18:
                case 22:
                case 25:
                case 26:
                case 27:
                case 39:
                case 41:
                case 43:
                case 45:
                case 47:
                    z.k.s(227, -18, 2, 96, 0);
                    break;
                case 1:
                case 5:
                case 7:
                case 8:
                case 11:
                case 12:
                case 14:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 40:
                case 42:
                case 44:
                case 46:
                case 48:
                    z.k.s(227, -18, 2, 96, 1);
                    break;
                case 20:
                case 29:
                case 50:
                    z.k.s(227, -18, 2, 97, 1);
                    break;
                case 21:
                case 31:
                case 52:
                    z.k.s(227, -18, 2, 97, 3);
                    break;
                case 28:
                case 30:
                case 51:
                    z.k.s(227, -18, 2, 97, 2);
                    break;
                case 49:
                    z.k.s(227, -18, 2, 98, 1);
                    break;
            }
        }
    }

    public static /* synthetic */ float e3(qc qcVar, float f2) {
        float f3 = qcVar.f9508u % f2;
        qcVar.f9508u = f3;
        return f3;
    }

    @Override // k0.lt
    public int[] K2() {
        return new int[]{8, 8};
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
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(16);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(9);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(17);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(17);
                }
                break;
            case 35:
                if (iArr[1] == 0) {
                    if (nt.f8645g[13] == 1) {
                        a3(20);
                    }
                } else if (nt.f8645g[13] == 0) {
                    a3(20);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[65] == 1) {
                        a3(21);
                    }
                } else if (nt.f8645g[65] == 0) {
                    a3(21);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[16] == 1) {
                        a3(22);
                    }
                } else if (nt.f8645g[16] == 0) {
                    a3(22);
                }
                break;
            case 38:
                if (iArr[1] == 1) {
                    if (nt.f8645g[12] == 0) {
                        a3(19);
                    }
                    break;
                } else if (iArr[1] == 0 && nt.f8645g[12] == 1) {
                    a3(19);
                    break;
                }
                break;
            case 39:
                if (iArr[1] != -1) {
                    a3(28);
                } else {
                    a3(29);
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(30);
                } else {
                    a3(31);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(32);
                } else {
                    a3(33);
                }
                break;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /*  JADX ERROR: UnsupportedOperationException in pass: RegionMakerVisitor
        java.lang.UnsupportedOperationException
        	at java.base/java.util.Collections$UnmodifiableCollection.add(Collections.java:1068)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker$1.leaveRegion(SwitchRegionMaker.java:419)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:31)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaksForCase(SwitchRegionMaker.java:399)
        	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.insertBreaks(SwitchRegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.leaveRegion(PostProcessRegions.java:31)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:91)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.PostProcessRegions.process(PostProcessRegions.java:21)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:31)
        */
    @Override // k0.lt
    public void S2() {
        /*
            Method dump skipped, instruction units count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k0.qc.S2():void");
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        int i4;
        int i5;
        int i6;
        int[][] iArr2;
        int i7;
        int i8;
        int[][] iArr3;
        int i9;
        int i10;
        int i11;
        byte b2 = bArr[i2 + 0];
        if (b2 == 1) {
            if (nt.a()) {
                byte b3 = bArr[i2 + 2];
                byte b4 = bArr[i2 + 3];
                this.f9490c = b3 & 255;
                int i12 = 0;
                while (true) {
                    iArr = this.f9493f;
                    if (i12 >= iArr.length) {
                        break;
                    }
                    int i13 = this.f9490c;
                    if (i13 == iArr[i12][0]) {
                        if (i13 == 0) {
                            break;
                        }
                        this.f9489b = i12;
                        break;
                    }
                    i12++;
                }
                int i14 = this.f9490c;
                if (i14 == 24) {
                    if ((b4 & 255) == 1) {
                        int i15 = h0.c.E;
                        if (i15 != 3 && i15 != 5) {
                            if (u0.i.l3().r3()) {
                                l0.b0.l0(26, 0);
                                l0.b0.l0(26, 1);
                                return;
                            } else {
                                l0.b0.l0(18, 0);
                                l0.b0.l0(18, 1);
                                return;
                            }
                        }
                        l0.b0.l0(26, 0);
                        l0.b0.l0(26, 1);
                    }
                    return;
                }
                if (i14 == 160) {
                    if ((b4 & 255) == 1) {
                        j3();
                        return;
                    }
                    return;
                }
                int i16 = b4 & 255;
                if (i16 == 1) {
                    if (i12 < iArr.length) {
                        l0.b0.l0(iArr[i12][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i16 == 0) {
                        int i17 = this.f9489b;
                        if (i17 < iArr.length) {
                            i4 = 255;
                            if (i17 != 255) {
                                l0.b0.l0(iArr[i17][1], 1);
                            }
                        } else {
                            i4 = 255;
                        }
                        this.f9489b = i4;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 21) {
            int i18 = bArr[i2 + 2] & 255;
            int i19 = nt.f8633a;
            if (i19 == 262517 || i19 == 328053 || i19 == 1442165 || i19 == 131445 || i19 == 2163061) {
                if (this.f9500m == 1 || SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                    i5 = (i18 * 18) - 210;
                    i6 = (i5 | 268435456) & (-1);
                } else {
                    i6 = (i18 * 10) + 150;
                }
            } else if (this.f9500m == 1 || SystemProperties.getInt("persist.fyt.temperature", 0) == 1) {
                i5 = (i18 * 18) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR;
                i6 = (i5 | 268435456) & (-1);
            } else {
                i6 = this.f9500m == 0 ? (i18 * 10) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR : 0;
            }
            if (i18 == 0) {
                u0.d.B3(0);
                return;
            } else {
                u0.d.B3(i6);
                return;
            }
        }
        if (b2 == 125) {
            int i20 = bArr[i2 + 2] & 255;
            if (i20 == 1) {
                if (SystemProperties.getInt("persist.fyt.leftrightlighttype", 0) == 0) {
                    int i21 = i2 + 3;
                    l0.c0.b((bArr[i21] >> 3) & 1, (bArr[i21] >> 4) & 1, 0);
                    return;
                } else {
                    int i22 = i2 + 3;
                    l0.c0.a((bArr[i22] >> 3) & 1, (bArr[i22] >> 4) & 1, 0);
                    return;
                }
            }
            if (i20 == 3) {
                int i23 = ((bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280)) / 100;
                qt.y0(1031, i23);
                o1.x.C(nt.f8643f, 1049, new int[]{1, i23}, null, null);
                return;
            }
            if (i20 == 8) {
                qt.i(bArr[i2 + 3], bArr[i2 + 4], true, 540);
                this.f9505r = true;
                return;
            }
            if (i20 == 10) {
                qt.y0(1032, (bArr[i2 + 3] & 255) | ((bArr[i2 + 4] << 8) & 65280));
                return;
            }
            if (i20 != 128) {
                if (i20 == 240) {
                    qt.y0(221, bArr[i2 + 4] & 255);
                    qt.y0(222, bArr[i2 + 5] & 255);
                    qt.y0(223, bArr[i2 + 6] & 255);
                    qt.y0(224, bArr[i2 + 7] & 255);
                    qt.y0(225, bArr[i2 + 8] & 255);
                    return;
                }
                if (i20 == 241 && this.f9498k != (i8 = bArr[i2 + 3] & 255)) {
                    this.f9498k = i8;
                    if (i8 == 17) {
                        if (o1.u.a0()) {
                            return;
                        }
                        this.f9499l = true;
                        o1.u.z();
                        return;
                    }
                    if (i8 == 1 && this.f9499l && o1.u.a0()) {
                        l0.b0.l0(6, 0);
                        l0.b0.l0(6, 1);
                        return;
                    }
                    return;
                }
                return;
            }
            byte b5 = bArr[i2 + 3];
            byte b6 = bArr[i2 + 4];
            this.f9496i = b5 & 255;
            int i24 = 0;
            while (true) {
                iArr2 = this.f9497j;
                if (i24 >= iArr2.length) {
                    break;
                }
                int i25 = this.f9496i;
                if (i25 == iArr2[i24][0]) {
                    if (i25 == 0) {
                        break;
                    }
                    this.f9495h = i24;
                    break;
                }
                i24++;
            }
            int i26 = b6 & 255;
            if (i26 == 1) {
                if (i24 < iArr2.length) {
                    l0.b0.l0(iArr2[i24][1], 0);
                    return;
                }
                return;
            } else {
                if (i26 == 0) {
                    int i27 = this.f9495h;
                    if (i27 < iArr2.length) {
                        i7 = 255;
                        if (i27 != 255) {
                            l0.b0.l0(iArr2[i27][1], 1);
                        }
                    } else {
                        i7 = 255;
                    }
                    this.f9495h = i7;
                    return;
                }
                return;
            }
        }
        if (b2 == 4) {
            if (nt.a()) {
                byte b7 = bArr[i2 + 2];
                byte b8 = bArr[i2 + 3];
                this.f9492e = b7 & 255;
                int i28 = 0;
                while (true) {
                    iArr3 = this.f9494g;
                    if (i28 >= iArr3.length) {
                        break;
                    }
                    int i29 = this.f9492e;
                    if (i29 == iArr3[i28][0]) {
                        if (i29 == 0) {
                            break;
                        }
                        this.f9491d = i28;
                        break;
                    }
                    i28++;
                }
                int i30 = b8 & 255;
                if (i30 == 1) {
                    if (i28 < iArr3.length) {
                        l0.b0.l0(iArr3[i28][1], 0);
                        return;
                    }
                    return;
                } else {
                    if (i30 == 0) {
                        int i31 = this.f9491d;
                        if (i31 < iArr3.length) {
                            i9 = 255;
                            if (i31 != 255) {
                                l0.b0.l0(iArr3[i31][1], 1);
                            }
                        } else {
                            i9 = 255;
                        }
                        this.f9491d = i9;
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (b2 == 5) {
            byte b9 = bArr[i2 + 2];
            byte b10 = bArr[i2 + 3];
            byte b11 = bArr[i2 + 4];
            byte b12 = bArr[i2 + 5];
            byte b13 = bArr[i2 + 6];
            byte b14 = bArr[i2 + 7];
            byte b15 = bArr[i2 + 8];
            qt.y0(10, (b9 >> 7) & 1);
            qt.y0(11, (b9 >> 6) & 1);
            qt.y0(53, (b9 >> 5) & 1);
            qt.y0(13, (b9 >> 4) & 1);
            qt.y0(12, (b9 >> 2) & 3);
            qt.y0(16, (b9 >> 1) & 1);
            qt.y0(65, (b9 >> 0) & 1);
            qt.y0(62, (b10 >> 6) & 1);
            qt.y0(15, (b10 >> 5) & 1);
            qt.y0(21, b10 & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(49, (b11 >> 7) & 1);
            qt.y0(18, (b11 >> 6) & 1);
            qt.y0(20, (b11 >> 5) & 1);
            qt.y0(19, (b11 >> 4) & 1);
            int i32 = !SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? b12 & 255 : b13 & 255;
            if (i32 == 0) {
                qt.y0(27, -2);
            } else if (i32 != 127) {
                int i33 = nt.f8633a;
                if (i33 == 262517 || i33 == 328053 || i33 == 655733 || i33 == 786805 || i33 == 983413 || i33 == 131445 || i33 == 2163061 || i33 == 852341 || i33 == 917877 || i33 == 1048949) {
                    if (i32 <= 31 && i32 >= 1) {
                        this.f9500m = 0;
                        qt.y0(37, 0);
                        qt.y0(27, (i32 * 5) + 155);
                    } else if (i32 >= 60) {
                        this.f9500m = 1;
                        qt.y0(37, 1);
                        qt.y0(27, i32 * 10);
                    } else {
                        qt.y0(27, -1);
                    }
                } else if (i33 != 393589 && i33 != 524661 && i33 != 590197 && i33 != 1900917 && i33 != 1966453 && i33 != 2031989 && i33 != 2818421 && i33 != 2883957 && i33 != 3080565 && i33 != 3146101 && i33 != 2556277 && i33 != 2621813 && i33 != 3211637 && i33 != 3277173) {
                    if (i32 < 60 || i32 > 84) {
                        this.f9500m = 0;
                        qt.y0(37, 0);
                    } else {
                        this.f9500m = 1;
                        qt.y0(37, 1);
                    }
                    qt.y0(27, i32 * 10);
                } else if (i32 < 60 || i32 > 84) {
                    this.f9500m = 0;
                    qt.y0(37, 0);
                    if (i32 >= 16) {
                        qt.y0(27, ((i32 - 15) * 5) + 155);
                    } else {
                        qt.y0(27, -1);
                    }
                } else {
                    this.f9500m = 1;
                    qt.y0(37, 1);
                    if (i32 >= 60) {
                        qt.y0(27, i32 * 10);
                    } else {
                        qt.y0(27, -1);
                    }
                }
            } else {
                qt.y0(27, -3);
            }
            int i34 = !SystemProperties.getBoolean("persist.fyt.reversetemp", false) ? 255 & b13 : 255 & b12;
            if (i34 == 0) {
                qt.y0(28, -2);
            } else if (i34 != 127) {
                int i35 = nt.f8633a;
                if (i35 == 262517 || i35 == 328053 || i35 == 655733 || i35 == 786805 || i35 == 983413 || i35 == 131445 || i35 == 2163061 || i35 == 852341 || i35 == 917877 || i35 == 1048949) {
                    if (i34 <= 31 && i34 >= 1) {
                        qt.y0(28, (i34 * 5) + 155);
                    } else if (i34 >= 60) {
                        qt.y0(28, i34 * 10);
                    } else {
                        qt.y0(28, -1);
                    }
                } else if (i35 != 393589 && i35 != 524661 && i35 != 590197 && i35 != 1900917 && i35 != 1966453 && i35 != 2031989 && i35 != 2818421 && i35 != 2883957 && i35 != 3080565 && i35 != 3146101 && i35 != 2556277 && i35 != 2621813 && i35 != 3211637 && i35 != 3277173) {
                    qt.y0(28, i34 * 10);
                } else if (i34 < 60 || i34 > 84) {
                    if (i34 >= 16) {
                        qt.y0(28, ((i34 - 15) * 5) + 155);
                    } else {
                        qt.y0(28, -1);
                    }
                } else if (i34 >= 60) {
                    qt.y0(28, i34 * 10);
                } else {
                    qt.y0(28, -1);
                }
            } else {
                qt.y0(28, -3);
            }
            qt.y0(29, (b14 >> 6) & 3);
            qt.y0(30, (b14 >> 2) & 3);
            qt.y0(31, (b14 >> 4) & 3);
            qt.y0(32, (b14 >> 0) & 3);
            qt.y0(66, (b15 >> 7) & 1);
            return;
        }
        if (b2 == 6) {
            int i36 = i2 + 2;
            qt.y0(42, (bArr[i36] >> 7) & 1);
            qt.y0(43, (bArr[i36] >> 6) & 1);
            qt.y0(86, (bArr[i36] >> 5) & 1);
            qt.y0(67, (bArr[i36] >> 4) & 1);
            int i37 = i2 + 3;
            int i38 = (bArr[i37] >> 4) & 15;
            if (i38 != 1) {
                if (i38 == 2) {
                    i11 = 1;
                } else if (i38 != 3) {
                    i11 = 0;
                } else {
                    i11 = 0;
                    i10 = 1;
                }
                i10 = i11;
            } else {
                i10 = 0;
                i11 = 1;
            }
            qt.y0(46, i11);
            qt.y0(47, i10);
            qt.y0(44, (bArr[i37] >> 0) & 15);
            int i39 = i2 + 4;
            int i40 = bArr[i39] & 255;
            if (i40 == 0) {
                qt.y0(40, -2);
                return;
            }
            if (i40 == 126) {
                qt.y0(40, -3);
                return;
            } else if ((bArr[i39] & 255) < 12 || (bArr[i39] & 255) > 44) {
                qt.y0(40, -1);
                return;
            } else {
                qt.y0(40, bArr[i39] & 255);
                return;
            }
        }
        if (b2 == 7) {
            byte b16 = bArr[i2 + 2];
            byte b17 = bArr[i2 + 3];
            byte b18 = bArr[i2 + 4];
            byte b19 = bArr[i2 + 5];
            byte b20 = bArr[i2 + 6];
            byte b21 = bArr[i2 + 7];
            byte b22 = bArr[i2 + 8];
            byte b23 = bArr[i2 + 9];
            byte b24 = bArr[i2 + 10];
            byte b25 = bArr[i2 + 11];
            byte b26 = bArr[i2 + 12];
            byte b27 = bArr[i2 + 13];
            qt.y0(109, (b16 >> 6) & 3);
            qt.y0(110, (b16 >> 4) & 3);
            qt.y0(111, (b16 >> 2) & 3);
            qt.y0(161, (b16 >> 1) & 1);
            qt.y0(120, (b16 >> 0) & 1);
            qt.y0(122, (b17 >> 7) & 1);
            qt.y0(99, (b17 >> 6) & 1);
            qt.y0(126, (b17 >> 4) & 3);
            qt.y0(106, (b18 >> 6) & 3);
            qt.y0(199, (b18 >> 5) & 1);
            qt.y0(198, (b18 >> 4) & 1);
            qt.y0(127, (b18 >> 3) & 1);
            qt.y0(101, (b18 >> 2) & 1);
            qt.y0(102, (b18 >> 1) & 1);
            qt.y0(182, (b18 >> 0) & 1);
            qt.y0(251, (b19 >> 7) & 1);
            qt.y0(104, (b19 >> 6) & 1);
            qt.y0(142, (b19 >> 5) & 1);
            qt.y0(143, (b19 >> 4) & 1);
            qt.y0(113, (b19 >> 3) & 1);
            qt.y0(105, (b19 >> 2) & 1);
            qt.y0(112, (b19 >> 1) & 1);
            qt.y0(144, b19 & 1);
            qt.y0(145, (b20 >> 7) & 1);
            qt.y0(108, (b20 >> 5) & 3);
            qt.y0(187, (b20 >> 4) & 1);
            qt.y0(188, (b20 >> 3) & 1);
            qt.y0(202, (b20 >> 1) & 3);
            qt.y0(252, (b20 >> 0) & 1);
            qt.y0(146, (b21 >> 7) & 1);
            qt.y0(147, (b21 >> 6) & 1);
            qt.y0(148, (b21 >> 5) & 1);
            qt.y0(149, (b21 >> 4) & 1);
            qt.y0(150, (b21 >> 3) & 1);
            qt.y0(183, (b21 >> 1) & 3);
            qt.y0(184, (b21 >> 0) & 1);
            qt.y0(131, (b22 >> 7) & 1);
            qt.y0(200, (b22 >> 6) & 1);
            qt.y0(203, (b22 >> 4) & 1);
            qt.y0(119, (b22 >> 2) & 3);
            qt.y0(204, (b22 >> 0) & 3);
            qt.y0(121, (b23 >> 7) & 1);
            qt.y0(118, (b23 >> 5) & 1);
            qt.y0(100, (b23 >> 4) & 1);
            qt.y0(125, b23 & 3);
            qt.y0(123, (b24 >> 5) & 1);
            qt.y0(128, (b24 >> 4) & 1);
            qt.y0(103, (b24 >> 3) & 1);
            qt.y0(129, (b24 >> 2) & 1);
            qt.y0(130, b24 & 3);
            qt.y0(107, (b25 >> 5) & 3);
            qt.y0(124, (b25 >> 3) & 3);
            qt.y0(98, (b25 >> 2) & 1);
            qt.y0(185, (b25 >> 1) & 1);
            qt.y0(140, (b25 >> 0) & 1);
            qt.y0(205, (b26 >> 7) & 1);
            qt.y0(152, (b26 >> 5) & 3);
            qt.y0(153, (b26 >> 4) & 1);
            qt.y0(206, (b26 >> 3) & 1);
            qt.y0(155, (b26 >> 2) & 1);
            qt.y0(116, (b26 >> 0) & 3);
            qt.y0(207, (b27 >> 7) & 1);
            qt.y0(158, (b27 >> 5) & 3);
            qt.y0(159, (b27 >> 3) & 3);
            qt.y0(160, (b27 >> 0) & 7);
            byte b28 = bArr[i2 + 14];
            byte b29 = bArr[i2 + 15];
            qt.y0(163, (b28 >> 7) & 1);
            qt.y0(164, (b28 >> 5) & 3);
            qt.y0(165, (b28 >> 4) & 1);
            qt.y0(166, (b28 >> 3) & 1);
            qt.y0(167, (b28 >> 2) & 1);
            qt.y0(151, (b28 >> 1) & 1);
            qt.y0(186, (b28 >> 0) & 1);
            qt.y0(168, (b29 >> 7) & 1);
            qt.y0(169, (b29 >> 6) & 1);
            qt.y0(117, bArr[i2 + 16] & 255);
            int i41 = i2 + 21;
            qt.y0(i.a.Theme_dialogTitleDecorLayout, (bArr[i41] >> 4) & 1);
            qt.y0(254, (bArr[i41] >> 3) & 1);
            qt.y0(255, (bArr[i41] >> 0) & 7);
            return;
        }
        if (b2 == 16) {
            byte b30 = bArr[i2 + 2];
            byte b31 = bArr[i2 + 3];
            byte b32 = bArr[i2 + 4];
            byte b33 = bArr[i2 + 5];
            byte b34 = bArr[i2 + 6];
            byte b35 = bArr[i2 + 7];
            byte b36 = bArr[i2 + 8];
            byte b37 = bArr[i2 + 9];
            byte b38 = bArr[i2 + 10];
            byte b39 = bArr[i2 + 11];
            qt.y0(134, (b30 >> 4) & 15);
            qt.y0(135, b30 & DhcpPacket.DHCP_DOMAIN_NAME);
            qt.y0(136, ((((b31 & 255) << 8) | (b32 & 255)) & 65535) | ((((b34 & 255) | ((b33 & 255) << 8)) & 65535) << 16));
            qt.y0(137, ((b35 << 8) & 65280) | (b36 & 255));
            int i42 = b37 & 255;
            int i43 = i42 > 18 ? 18 : i42;
            if (i43 < 0) {
                i43 = 0;
            }
            int i44 = b38 & 255;
            if (i44 > 59) {
                i44 = 59;
            }
            if (i44 < 0) {
                i44 = 0;
            }
            int i45 = b39 & 255;
            if (i45 > 59) {
                i45 = 59;
            }
            qt.x0(138, i43 + ":" + i44 + ":" + (i45 >= 0 ? i45 : 0));
            return;
        }
        if (b2 == 17) {
            int i46 = bArr[i2 + 2] & 255;
            int i47 = ((bArr[i2 + 3] & 65280) | (bArr[i2 + 4] & 255)) & 255;
            StringBuilder sb = new StringBuilder();
            int i48 = (i2 + i3) - 3;
            for (int i49 = i2 + 5; i49 < i48; i49 += 2) {
                sb.append((char) (((bArr[i49] & 255) << 8) | (bArr[i49 + 1] & 255)));
            }
            qt.z0(133, new int[]{i46, i47}, sb.toString());
            return;
        }
        if (b2 == 24) {
            byte b40 = bArr[i2 + 2];
            byte b41 = bArr[i2 + 3];
            byte b42 = bArr[i2 + 4];
            byte b43 = bArr[i2 + 5];
            qt.y0(119, (b40 >> 6) & 3);
            qt.y0(123, (b40 >> 4) & 3);
            qt.y0(124, (b40 >> 2) & 3);
            qt.y0(125, b40 & 3);
            qt.y0(126, (b41 >> 6) & 3);
            qt.y0(127, (b42 >> 7) & 1);
            qt.y0(128, (b42 >> 6) & 1);
            qt.y0(129, (b43 >> 7) & 1);
            return;
        }
        if (b2 == 25) {
            int i50 = i2 + 2;
            qt.y0(170, (bArr[i50] >> 7) & 1);
            qt.y0(171, (bArr[i50] >> 6) & 1);
            qt.y0(172, (bArr[i50] >> 5) & 1);
            qt.y0(173, (bArr[i50] >> 4) & 1);
            qt.y0(174, (bArr[i50] >> 3) & 1);
            qt.y0(175, (bArr[i50] >> 2) & 1);
            qt.y0(176, (bArr[i50] >> 1) & 1);
            qt.y0(177, (bArr[i50] >> 0) & 1);
            qt.y0(226, (bArr[i2 + 3] >> 7) & 1);
            return;
        }
        if (b2 == 34) {
            u0.d.R2(l0.c0.V0(bArr[i2 + 2] & 255));
            u0.d.S2(l0.c0.V0(bArr[i2 + 3] & 255));
            u0.d.T2(l0.c0.V0(bArr[i2 + 4] & 255));
            u0.d.U2(l0.c0.V0(bArr[i2 + 5] & 255));
            return;
        }
        if (b2 == 35) {
            int i51 = i2 + 2;
            int i52 = bArr[i51] & 255;
            int i53 = i2 + 3;
            int i54 = bArr[i53] & 255;
            int i55 = i2 + 4;
            int i56 = bArr[i55] & 255;
            int i57 = i2 + 5;
            int i58 = bArr[i57] & 255;
            if (i52 == 0 && i54 == 0 && i56 == 0 && i58 == 0) {
                u0.d.C2(0);
            } else if ((l0.c0.f13013g != i52 || l0.c0.f13014h != i54 || l0.c0.f13015i != i56 || l0.c0.f13016j != i58) && u0.b.f17347o == 0) {
                u0.d.C2(1);
                l0.c0.f13017k = 4;
                l0.b0.b(l0.c0.f13018l);
            }
            l0.c0.f13013g = i52;
            l0.c0.f13014h = i54;
            l0.c0.f13015i = i56;
            l0.c0.f13016j = i58;
            u0.d.D2(l0.c0.V0(bArr[i51] & 255));
            u0.d.E2(l0.c0.V0(bArr[i53] & 255));
            u0.d.F2(l0.c0.V0(bArr[i55] & 255));
            u0.d.G2(l0.c0.V0(bArr[i57] & 255));
            return;
        }
        if (b2 == 96) {
            qt.y0(201, bArr[i2 + 6] & 255);
            qt.y0(220, bArr[i2 + 7] & 255);
            return;
        }
        if (b2 == 97) {
            int i59 = i2 + 2;
            qt.y0(208, (bArr[i59] >> 7) & 1);
            qt.y0(209, (bArr[i59] >> 6) & 1);
            qt.y0(210, (bArr[i59] >> 5) & 1);
            qt.y0(211, (bArr[i59] >> 3) & 1);
            qt.y0(212, (bArr[i59] >> 2) & 1);
            qt.y0(213, (bArr[i59] >> 1) & 1);
            qt.y0(214, (bArr[i59] >> 0) & 1);
            int i60 = i2 + 3;
            qt.y0(215, (bArr[i60] >> 5) & 1);
            qt.y0(216, (bArr[i60] >> 4) & 1);
            qt.y0(217, (bArr[i60] >> 3) & 1);
            qt.y0(218, (bArr[i60] >> 2) & 1);
            qt.y0(219, (bArr[i60] >> 0) & 1);
            return;
        }
        switch (b2) {
            case 9:
                if (!this.f9505r) {
                    int i61 = nt.f8637c;
                    if (i61 == 4 || i61 == 5 || i61 == 2 || i61 == 33) {
                        qt.m(bArr[i2 + 3], bArr[i2 + 2], 1792, false, 1180);
                    } else {
                        qt.i(bArr[i2 + 3], bArr[i2 + 2], false, 540);
                    }
                }
                break;
            case 10:
                byte b44 = bArr[i2 + 3];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b44 >> 6) & 1);
                    qt.y0(2, (b44 >> 7) & 1);
                } else {
                    qt.y0(1, (b44 >> 7) & 1);
                    qt.y0(2, (b44 >> 6) & 1);
                }
                qt.y0(3, (b44 >> 5) & 1);
                qt.y0(4, (b44 >> 4) & 1);
                qt.y0(5, (b44 >> 3) & 1);
                break;
            case 11:
                int i62 = i2 + 3;
                if ((bArr[i62] >> 6) == 0 && (bArr[i62] >> 6) == 1) {
                    z.k.s(227, 151, 2, 86, 1);
                }
                qt.y0(114, 255 & bArr[i2 + 2]);
                qt.y0(115, bArr[i62] & DhcpPacket.DHCP_DOMAIN_NAME);
                break;
            case 12:
                if (nt.f8633a != 3211637) {
                    int i63 = i2 + 2;
                    if (((bArr[i63] >> 7) & 1) == 1) {
                        if (((bArr[i63] >> 6) & 1) == 1) {
                            qt.a(1);
                        } else {
                            qt.a(0);
                        }
                    }
                } else if (((bArr[i2 + 2] >> 5) & 1) == 1) {
                    qt.a(1);
                } else {
                    qt.a(0);
                }
                break;
            default:
                switch (b2) {
                    case 48:
                        qt.L(new String(bArr, i2 + 2, i3 - 2));
                        break;
                    case 49:
                        qt.y0(189, bArr[i2 + 2] & 127);
                        qt.y0(190, bArr[i2 + 3] & 255);
                        qt.y0(191, bArr[i2 + 4] & 255);
                        qt.y0(192, bArr[i2 + 5] & 255);
                        qt.y0(193, bArr[i2 + 6] & 255);
                        qt.y0(194, bArr[i2 + 7] & 255);
                        int i64 = i2 + 8;
                        qt.y0(195, (bArr[i64] >> 1) & 3);
                        qt.y0(196, (bArr[i64] >> 0) & 1);
                        qt.y0(197, (bArr[i2 + 9] >> 6) & 1);
                        break;
                    case 50:
                        qt.y0(178, bArr[i2 + 2] & 255);
                        qt.y0(179, bArr[i2 + 3] & 255);
                        qt.y0(180, bArr[i2 + 4] & 255);
                        qt.y0(181, bArr[i2 + 5] & 255);
                        break;
                    case 51:
                        int i65 = bArr[i2 + 2] & 255;
                        if (i65 == 0) {
                            qt.y0(227, bArr[i2 + 3] & 255);
                            qt.y0(228, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
                            qt.y0(229, bArr[i2 + 6] & 255);
                            qt.y0(230, 255 & bArr[i2 + 7]);
                            int i66 = i2 + 8;
                            qt.y0(231, (bArr[i66] >> 6) & 1);
                            qt.y0(232, (bArr[i66] >> 5) & 1);
                            qt.y0(233, (bArr[i66] >> 4) & 1);
                            break;
                        } else if (i65 == 1) {
                            qt.y0(234, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                            qt.y0(235, (bArr[i2 + 6] & 255) | ((bArr[i2 + 5] << 8) & 65280));
                            break;
                        } else if (i65 == 2) {
                            qt.y0(236, bArr[i2 + 3] & 255);
                            int i67 = i2 + 4;
                            qt.y0(237, (bArr[i67] >> 5) & 3);
                            qt.y0(238, (bArr[i67] >> 0) & 31);
                            int i68 = i2 + 5;
                            qt.y0(239, (bArr[i68] >> 7) & 1);
                            qt.y0(240, (bArr[i68] >> 5) & 3);
                            qt.y0(i.a.Theme_actionModeShareDrawable, (bArr[i68] >> 0) & 31);
                            int i69 = i2 + 6;
                            qt.y0(i.a.Theme_actionModeFindDrawable, (bArr[i69] >> 5) & 3);
                            qt.y0(i.a.Theme_actionModeWebSearchDrawable, (bArr[i69] >> 0) & 31);
                            int i70 = i2 + 7;
                            qt.y0(i.a.Theme_actionModePopupWindowStyle, (bArr[i70] >> 7) & 1);
                            qt.y0(i.a.Theme_preferenceFragmentStyle, (bArr[i70] >> 5) & 3);
                            qt.y0(i.a.Theme_preferencePanelStyle, 31 & (bArr[i70] >> 0));
                            qt.y0(i.a.Theme_preferenceHeaderPanelStyle, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
                            qt.y0(248, (bArr[i2 + 11] & 255) | ((bArr[i2 + 10] << 8) & 65280));
                            break;
                        } else if (i65 == 3) {
                            qt.y0(249, bArr[i2 + 3] & 255);
                            qt.y0(250, bArr[i2 + 4] & 255);
                            break;
                        }
                        break;
                }
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(this.f9512y);
        o1.h.f16865a.d(this.f9511x);
        w0.e.f17815a.d(this.f9501n);
        w0.e.f17819e.d(this.f9501n);
        u0.c.f17374a.d(this.f9501n);
        u0.c.f17393t.d(this.f9501n);
        u0.c.f17392s.d(this.f9501n);
        u0.c.f17386m.d(this.f9503p);
        l0.b0.p0(this.f9504q);
        l0.b0.p0(this.f9507t);
        l0.b0.p0(this.f9506s);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 256) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (T2(iArr, 2)) {
                if (!SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    z.k.s(227, 149, 2, iArr[0], iArr[1]);
                    return;
                }
                switch (iArr[0]) {
                    case 30:
                        z.k.s(227, 149, 2, 32, iArr[1]);
                        break;
                    case 31:
                        z.k.s(227, 149, 2, 33, iArr[1]);
                        break;
                    case 32:
                        z.k.s(227, 149, 2, 30, iArr[1]);
                        break;
                    case 33:
                        z.k.s(227, 149, 2, 31, iArr[1]);
                        break;
                    default:
                        z.k.s(227, 149, 2, iArr[0], iArr[1]);
                        break;
                }
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 252, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 2) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, 151, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 3) {
            z.k.s(227, 198, 7, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5], iArr[6]);
            return;
        }
        if (i2 == 4) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            if (iArr[0] == 15 || iArr[0] == 130) {
                z.k.s(227, 160, 3, iArr[0], (iArr[1] >> 8) & 255, iArr[1]);
                return;
            } else {
                z.k.s(227, 160, 3, (byte) iArr[0], 0, 0);
                return;
            }
        }
        if (i2 == 5) {
            if (iArr == null || iArr.length <= 1) {
                return;
            }
            z.k.s(227, 153, 2, iArr[0], iArr[1]);
            return;
        }
        if (i2 == 13) {
            if (iArr == null || iArr.length <= 0) {
                return;
            }
            z.k.s(227, 239, 11, 125, i.a.Theme_actionModeFindDrawable, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], 0, 0, 0, 0);
            return;
        }
        if (i2 == 1003) {
            a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CHANGE_PANORAMA == " + iArr[0]);
            int i3 = nt.f8637c;
            if (i3 == 49 || i3 == 8 || i3 == 46) {
                if (u0.b.f17347o == 0) {
                    qt.a(1);
                    return;
                } else {
                    qt.a(0);
                    return;
                }
            }
            if (u0.b.f17347o == 0) {
                z.k.s(227, 198, 7, 3, 1, 0, 0, 0, 0, 0);
                return;
            } else {
                z.k.s(227, 198, 7, 3, 0, 0, 0, 0, 0, 0);
                return;
            }
        }
        if (i2 == 1029) {
            if (T2(iArr, 2)) {
                int iW = (iArr[1] * 1080) / a.f.w();
                int i4 = (iArr[2] * 800) / a.f.i();
                if (iArr[0] == 0) {
                    z.k.s(227, 198, 7, 2, (iW >> 8) & 255, iW & 255, (i4 >> 8) & 255, i4 & 255, 0, 0);
                    return;
                }
                return;
            }
            return;
        }
        if (i2 != 1040) {
            switch (i2) {
                case 7:
                    if (iArr != null && iArr.length > 0) {
                        z.k.s(227, 238, 2, 96, iArr[0]);
                        break;
                    }
                    break;
                case 8:
                    if (iArr != null && iArr.length > 0) {
                        z.k.s(227, 147, 2, iArr[0], iArr[1]);
                        break;
                    }
                    break;
                case 9:
                    if (iArr != null && iArr.length > 0) {
                        z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, iArr[0]);
                        break;
                    }
                    break;
                case 10:
                    if (iArr != null && iArr.length > 0) {
                        z.k.s(227, 150, 2, iArr[0], iArr[1]);
                        break;
                    }
                    break;
                case 11:
                    if (iArr != null && iArr.length > 0) {
                        z.k.s(227, 239, 8, 125, 240, iArr[0], iArr[1], iArr[2], iArr[3], iArr[4], iArr[5]);
                        break;
                    }
                    break;
            }
            return;
        }
        a.f.p().t(LogType.CANBUS, "FinalCanbus.C_CMD_6606 --- " + o1.b0.e(iArr, 0, iArr.length));
        if (iArr[0] != 0) {
            return;
        }
        int i5 = iArr[1];
        if (i5 == 1) {
            if (iArr[2] == 1) {
                a3(29);
                return;
            } else {
                if (iArr[2] == 2) {
                    a3(28);
                    return;
                }
                return;
            }
        }
        if (i5 == 2) {
            if (iArr[2] == 1) {
                a3(31);
                return;
            } else {
                if (iArr[2] == 2) {
                    a3(30);
                    return;
                }
                return;
            }
        }
        if (i5 != 3) {
            return;
        }
        if (iArr[2] == 1) {
            a3(33);
        } else if (iArr[2] == 2) {
            a3(32);
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 149, 2, i2, 1);
        a.i.a0(200L);
        z.k.s(227, 149, 2, i2, 0);
    }

    public final void j3() {
        try {
            if (qt.i0().equals("com.syu.carinfo.oudi.RZC_Jeep_PanelButton")) {
                l0.b0.l0(6, 0);
                l0.b0.l0(6, 1);
            } else {
                Intent intent = new Intent();
                intent.setClassName("com.syu.canbus", "com.syu.carinfo.oudi.RZC_Jeep_PanelButton");
                intent.addCategory(Intent.CATEGORY_DEFAULT);
                intent.setFlags(268435456);
                App.c().startActivity(intent);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
