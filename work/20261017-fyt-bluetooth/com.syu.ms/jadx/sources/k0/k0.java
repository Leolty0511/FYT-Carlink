package k0;

import android.net.ProxyProperties;
import android.os.SystemProperties;
import android.text.Spanned;
import android.text.format.Time;

/* JADX INFO: loaded from: classes2.dex */
public class k0 extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f7131b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7132c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f7133d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 3}, new int[]{4, 4}, new int[]{5, 18}, new int[]{6, 12}, new int[]{7, 2}, new int[]{8, 29}, new int[]{9, 18}, new int[]{10, 26}, new int[]{11, 74}, new int[]{12, 54}, new int[]{13, 1}, new int[]{14, 5}, new int[]{15, 6}, new int[]{16, 13}, new int[]{17, 21}, new int[]{18, 13}, new int[]{19, 25}, new int[]{128, 0}, new int[]{240, 29}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Runnable f7134e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7135f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f7136g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f7137h = ProxyProperties.LOCAL_EXCL_LIST;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f7138i = 0.0f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7139j = 255;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f7140k = 255;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f7141l = new b();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f7142m = new c();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte f7143n = 5;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f7144o = new d();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f7145p = new e();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f7146q = new f();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3;
            boolean z2;
            int i4 = h0.c.E;
            boolean z3 = true;
            boolean z4 = i4 == 5 || i4 == 3 || i4 == 4;
            switch (i4) {
                case 1:
                case 2:
                case 6:
                    i2 = 0;
                    i3 = 1;
                    break;
                case 3:
                    i3 = 1;
                    i2 = 2;
                    break;
                case 4:
                    i2 = 1;
                    i3 = i2;
                    break;
                case 5:
                    i2 = 4;
                    i3 = 1;
                    break;
                default:
                    i2 = 0;
                    i3 = i2;
                    break;
            }
            if (k0.this.f7135f != i2) {
                k0.this.f7135f = i2;
                z.k.s(227, 197, 2, 0, i2 | (i3 << 4));
                z2 = true;
            } else {
                z2 = false;
            }
            if (k0.this.f7137h.equals(h0.c.f2437h)) {
                z3 = z2;
            } else {
                k0.this.f7137h = h0.c.f2437h;
                if (k0.this.f7137h == null) {
                    k0.this.f7137h = ProxyProperties.LOCAL_EXCL_LIST;
                    z3 = z2;
                }
            }
            if (!z3 || k0.this.f7136g == z4) {
                return;
            }
            k0.this.f7136g = z4;
            k0.this.f7135f = 0;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k0.this.f7138i = u0.b.f17359s0;
            if ((k0.this.f7138i <= 22.5d && k0.this.f7138i >= 0.0f) || (k0.this.f7138i >= 337.5d && k0.this.f7138i <= 360.0f)) {
                k0.this.f7140k = 0;
            } else if (k0.this.f7138i > 22.5d && k0.this.f7138i < 67.5d) {
                k0.this.f7140k = 1;
            } else if (k0.this.f7138i >= 67.5d && k0.this.f7138i <= 112.5d) {
                k0.this.f7140k = 2;
            } else if (k0.this.f7138i > 112.5d && k0.this.f7138i < 157.5d) {
                k0.this.f7140k = 3;
            } else if (k0.this.f7138i >= 157.5d && k0.this.f7138i <= 202.5d) {
                k0.this.f7140k = 4;
            } else if (k0.this.f7138i > 202.5d && k0.this.f7138i < 247.5d) {
                k0.this.f7140k = 5;
            } else if (k0.this.f7138i >= 247.5d && k0.this.f7138i <= 292.5d) {
                k0.this.f7140k = 6;
            } else if (k0.this.f7138i <= 292.5d || k0.this.f7138i >= 337.5d) {
                k0.this.f7140k = 0;
            } else {
                k0.this.f7140k = 7;
            }
            if (k0.this.f7140k != k0.this.f7139j) {
                z.k.s(227, 148, 2, k0.this.f7140k, 0);
                k0 k0Var = k0.this;
                k0Var.f7139j = k0Var.f7140k;
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            int i2 = time.year;
            z.k.s(227, 167, 7, l0.c0.L1(i2 / 100), l0.c0.L1(i2 % 100), l0.c0.L1(time.month + 1), l0.c0.L1(time.monthDay), l0.c0.L1(time.hour), l0.c0.L1(time.minute), l0.c0.L1(time.second));
            switch (nt.f8637c) {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 11:
                case 14:
                case 15:
                case 16:
                case 17:
                case 48:
                case 51:
                    z.k.s(227, 238, 2, 102, 0);
                    z.k.s(227, 128, 2, i.a.Theme_actionModePopupWindowStyle, 0);
                    break;
                case 12:
                case 18:
                case 20:
                case 22:
                case 24:
                case 26:
                case 28:
                case 30:
                case 32:
                case 34:
                case 36:
                case 38:
                case 40:
                case 42:
                case 44:
                case 46:
                case 49:
                case 52:
                    z.k.s(227, 238, 2, 102, 1);
                    z.k.s(227, 128, 2, i.a.Theme_actionModePopupWindowStyle, 1);
                    break;
                case 13:
                case 19:
                case 21:
                case 23:
                case 25:
                case 27:
                case 29:
                case 31:
                case 33:
                case 35:
                case 37:
                case 39:
                case 41:
                case 43:
                case 45:
                case 47:
                case 50:
                case 53:
                    z.k.s(227, 238, 2, 102, 2);
                    z.k.s(227, 128, 2, i.a.Theme_actionModePopupWindowStyle, 2);
                    break;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(k0.this.f7145p);
            qt.y0(147, 0);
            k0.this.f7143n = (byte) 5;
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k0 k0Var = k0.this;
            byte b2 = (byte) (k0Var.f7143n - 1);
            k0Var.f7143n = b2;
            if (b2 > 0) {
                z.k.s(227, 129, 1, u0.b.f17306a0);
                int i2 = u0.b.f17306a0;
            } else {
                l0.b0.p0(k0Var.f7145p);
                k0.this.f7143n = (byte) 5;
            }
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            k0.a3();
        }
    }

    public static void a3() {
        int[] iArr = new int[8];
        int i2 = 0;
        iArr[0] = 192;
        iArr[1] = 6;
        int i3 = u0.b.D;
        if (i3 == 1) {
            int i4 = w0.d.f17798j;
            int i5 = w0.d.f17796h;
            if (i5 == 65536 || i5 == 65537 || i5 == 65538) {
                if (i4 >= 65536) {
                    i4 -= 65536;
                }
                iArr[2] = 1;
                int i6 = w0.d.f17797i;
                iArr[3] = (i6 >> 8) & 255;
                iArr[4] = i6 & 255;
                iArr[6] = (w0.d.f17796h - 65536) + 1;
            } else if (i5 == 0 || i5 == 1) {
                iArr[2] = 2;
                int i7 = w0.d.f17797i;
                iArr[3] = (i7 >> 8) & 255;
                iArr[4] = i7 & 255;
                iArr[6] = (w0.d.f17796h - 0) + 1;
            }
            int i8 = i4 % 6;
            if (i8 != 0 || i4 == 0) {
                iArr[5] = i8;
            } else {
                iArr[5] = 6;
            }
            iArr[7] = 0;
        } else if (i3 == 2 || i3 == 3) {
            iArr[2] = 5;
            int i9 = u0.b.s3;
            iArr[3] = (i9 >> 8) & 255;
            iArr[4] = i9 & 255;
            int i10 = u0.b.r3;
            iArr[5] = (i10 >> 8) & 255;
            iArr[6] = i10 & 255;
            int i11 = u0.b.m3;
            if (i11 == 0) {
                iArr[7] = 1;
            } else if (i11 == 2) {
                iArr[7] = 0;
            } else if (i11 == 7) {
                iArr[7] = 3;
            } else if (i11 == 6) {
                iArr[7] = 2;
            } else {
                iArr[7] = 0;
            }
        } else if (i3 == 4) {
            iArr[2] = 3;
            int i12 = o0.e.C;
            iArr[3] = (i12 >> 8) & 255;
            iArr[4] = i12 & 255;
            int i13 = o0.e.B;
            iArr[5] = (i13 >> 8) & 255;
            iArr[6] = i13 & 255;
            int i14 = o0.e.A;
            if (i14 == 1) {
                iArr[7] = 1;
            } else if (i14 == 2) {
                iArr[7] = 0;
            } else if (i14 == 4) {
                iArr[7] = 3;
            } else if (i14 == 5) {
                iArr[7] = 2;
            } else {
                iArr[7] = 0;
            }
        } else if (i3 == 8 || i3 == 10) {
            iArr[2] = 4;
            int i15 = u0.b.s3;
            iArr[3] = (i15 >> 8) & 255;
            iArr[4] = i15 & 255;
            int i16 = u0.b.r3;
            iArr[5] = (i16 >> 8) & 255;
            iArr[6] = i16 & 255;
            int i17 = u0.b.m3;
            if (i17 == 0) {
                iArr[7] = 1;
            } else if (i17 == 2) {
                iArr[7] = 0;
            } else if (i17 == 7) {
                iArr[7] = 3;
            } else if (i17 == 6) {
                iArr[7] = 2;
            } else {
                iArr[7] = 0;
            }
        } else {
            iArr[2] = 7;
        }
        if (u0.b.f17306a0 == 0) {
            iArr[2] = 0;
        }
        int[] iArr2 = new int[9];
        iArr2[0] = 227;
        while (i2 < 8) {
            int i18 = i2 + 1;
            iArr2[i18] = iArr[i2];
            i2 = i18;
        }
        z.k.s(iArr2);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

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
            Method dump skipped, instruction units count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k0.k0.S2():void");
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 40) {
            int i4 = bArr[i2 + 2] & 255;
            int i5 = i4 & 127;
            u0.d.A3((i4 & 128) != 0 ? 1000 - (i5 * 10) : (i5 * 10) + 1000);
        }
        if (b2 == 41) {
            qt.i(bArr[i2 + 3] & 255, bArr[i2 + 2] & 255, true, 540);
            return;
        }
        if (b2 == 48) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b2 == 64) {
            int i6 = bArr[i2 + 2] & 255;
            if (i6 == 0) {
                qt.y0(99, bArr[i2 + 3] & 255);
                return;
            }
            if (i6 == 1) {
                qt.y0(100, bArr[i2 + 3] & 255);
                return;
            }
            if (i6 == 2) {
                qt.y0(101, bArr[i2 + 3] & 255);
                return;
            }
            if (i6 == 3) {
                qt.y0(102, bArr[i2 + 3] & 255);
                return;
            }
            if (i6 == 4) {
                qt.y0(103, bArr[i2 + 3] & 255);
                return;
            }
            if (i6 == 240) {
                qt.y0(111, bArr[i2 + 3] & 255);
                return;
            }
            if (i6 == 243) {
                qt.y0(112, bArr[i2 + 3] & 255);
                return;
            }
            if (i6 == 244) {
                qt.y0(113, bArr[i2 + 3] & 255);
                return;
            }
            switch (i6) {
                case 16:
                    qt.y0(104, bArr[i2 + 3] & 255);
                    break;
                case 17:
                    qt.y0(105, bArr[i2 + 3] & 255);
                    break;
                case 18:
                    qt.y0(106, bArr[i2 + 3] & 255);
                    break;
                case 19:
                    qt.y0(107, bArr[i2 + 3] & 255);
                    break;
                case 20:
                    qt.y0(126, bArr[i2 + 3] & 255);
                    break;
                case 21:
                    qt.y0(132, bArr[i2 + 3] & 255);
                    break;
                default:
                    switch (i6) {
                        case 32:
                            qt.y0(108, bArr[i2 + 3] & 255);
                            break;
                        case 33:
                            qt.y0(133, bArr[i2 + 3] & 255);
                            break;
                        case 34:
                            qt.y0(136, bArr[i2 + 3] & 255);
                            break;
                        case 35:
                            qt.y0(137, bArr[i2 + 3] & 255);
                            break;
                        default:
                            switch (i6) {
                                case 48:
                                    qt.y0(109, bArr[i2 + 3] & 255);
                                    break;
                                case 49:
                                    qt.y0(110, bArr[i2 + 3] & 255);
                                    break;
                                case 50:
                                    qt.y0(127, bArr[i2 + 3] & 255);
                                    break;
                                case 51:
                                    qt.y0(128, bArr[i2 + 3] & 255);
                                    break;
                                case 52:
                                    qt.y0(129, bArr[i2 + 3] & 255);
                                    break;
                                case 53:
                                    qt.y0(130, bArr[i2 + 3] & 255);
                                    break;
                                case 54:
                                    qt.y0(131, bArr[i2 + 3] & 255);
                                    break;
                                case 55:
                                    qt.y0(134, bArr[i2 + 3] & 255);
                                    break;
                                case 56:
                                    qt.y0(135, bArr[i2 + 3] & 255);
                                    break;
                                case 57:
                                    qt.y0(138, bArr[i2 + 3] & 255);
                                    break;
                                case 58:
                                    qt.y0(139, bArr[i2 + 3] & 255);
                                    break;
                                case 59:
                                    qt.y0(140, bArr[i2 + 3] & 255);
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        if (b2 == 96) {
            qt.y0(147, 1);
            qt.y0(141, bArr[i2 + 2] & 255);
            int i7 = i2 + 3;
            qt.y0(142, (bArr[i7] >> 4) & 15);
            qt.y0(143, (bArr[i7] >> 1) & 7);
            qt.y0(144, (bArr[i7] >> 0) & 1);
            int i8 = i2 + 4;
            qt.y0(145, (bArr[i8] >> 4) & 15);
            qt.y0(146, (bArr[i8] >> 0) & 15);
            return;
        }
        if (b2 == 80) {
            int i9 = bArr[i2 + 2] & 255;
            if (i9 == 0) {
                qt.y0(116, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                qt.y0(117, (bArr[i2 + 6] & 255) | (65280 & (bArr[i2 + 5] << 8)));
                return;
            }
            if (i9 == 1) {
                qt.y0(118, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
                qt.y0(119, bArr[i2 + 5] & 255);
                qt.y0(120, ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
                qt.y0(121, (bArr[i2 + 10] & 255) | (65280 & (bArr[i2 + 9] << 8)) | (16711680 & (bArr[i2 + 11] << 16)));
                return;
            }
            if (i9 != 2) {
                return;
            }
            qt.y0(122, ((bArr[i2 + 3] << 8) & 65280) | (bArr[i2 + 4] & 255));
            qt.y0(123, bArr[i2 + 5] & 255);
            qt.y0(124, ((bArr[i2 + 6] << 16) & Spanned.SPAN_PRIORITY) | ((bArr[i2 + 7] << 8) & 65280) | (bArr[i2 + 8] & 255));
            qt.y0(125, (bArr[i2 + 10] & 255) | (65280 & (bArr[i2 + 9] << 8)) | (16711680 & (bArr[i2 + 11] << 16)));
            return;
        }
        if (b2 == 81) {
            qt.y0(148, bArr[i2 + 2] & 255);
            return;
        }
        switch (b2) {
            case 32:
                if (nt.a()) {
                    byte b3 = bArr[i2 + 2];
                    byte b4 = bArr[i2 + 3];
                    this.f7132c = b3 & 255;
                    int i10 = 0;
                    while (true) {
                        iArr = this.f7133d;
                        if (i10 < iArr.length) {
                            int i11 = this.f7132c;
                            if (i11 != iArr[i10][0]) {
                                i10++;
                            } else if (i11 != 0) {
                                this.f7131b = i10;
                            }
                        }
                    }
                    int i12 = this.f7132c;
                    if (i12 == 129) {
                        for (int i13 = 0; i13 < (b4 & 255); i13++) {
                            l0.b0.l0(7, 0);
                        }
                        l0.b0.l0(7, 1);
                    } else if (i12 == 130) {
                        for (int i14 = 0; i14 < (b4 & 255); i14++) {
                            l0.b0.l0(8, 0);
                        }
                        l0.b0.l0(8, 1);
                    } else if (i12 == 241) {
                        for (int i15 = 0; i15 < (b4 & 255); i15++) {
                            l0.b0.l0(31, 0);
                        }
                        l0.b0.l0(31, 1);
                    } else if (i12 != 242) {
                        int i16 = b4 & 255;
                        if (i16 == 1) {
                            if (i10 < iArr.length) {
                                l0.b0.l0(iArr[i10][1], 0);
                            }
                        } else if (i16 == 0) {
                            int i17 = this.f7131b;
                            if (i17 < iArr.length && i17 != 255) {
                                l0.b0.l0(iArr[i17][1], 1);
                            }
                            this.f7131b = 255;
                        }
                    } else {
                        for (int i18 = 0; i18 < (b4 & 255); i18++) {
                            l0.b0.l0(30, 0);
                        }
                        l0.b0.l0(30, 1);
                    }
                }
                break;
            case 33:
                int i19 = bArr[i2 + 2] & 255;
                int i20 = bArr[i2 + 3] & 255;
                int i21 = bArr[i2 + 4] & 255;
                int i22 = bArr[i2 + 5] & 255;
                int i23 = bArr[i2 + 6] & 255;
                int i24 = bArr[i2 + 7] & 255;
                qt.y0(10, (i19 >> 7) & 1);
                qt.y0(11, (i19 >> 6) & 1);
                qt.y0(12, (i19 >> 5) & 1);
                qt.y0(65, (i19 >> 4) & 1);
                qt.y0(13, (i19 >> 3) & 1);
                qt.y0(62, (i19 >> 2) & 1);
                qt.y0(15, (i19 >> 1) & 1);
                qt.y0(16, i19 & 1);
                qt.y0(18, (i20 >> 7) & 1);
                qt.y0(19, (i20 >> 6) & 1);
                qt.y0(20, (i20 >> 5) & 1);
                qt.y0(21, i20 & 15);
                if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
                    qt.y0(27, i22 & 255);
                    qt.y0(28, i21 & 255);
                } else {
                    qt.y0(27, i21 & 255);
                    qt.y0(28, i22 & 255);
                }
                qt.y0(53, (i23 >> 6) & 1);
                qt.y0(29, (i24 >> 4) & 15);
                qt.y0(30, i24 & 15);
                break;
            case 34:
                if (nt.a()) {
                    u0.d.R2(l0.c0.u1(bArr[i2 + 2] & 255));
                    u0.d.S2(l0.c0.u1(bArr[i2 + 3] & 255));
                    u0.d.T2(l0.c0.u1(bArr[i2 + 4] & 255));
                    u0.d.U2(l0.c0.u1(bArr[i2 + 5] & 255));
                }
                break;
            case 35:
                if (nt.a()) {
                    u0.d.D2(l0.c0.u1(bArr[i2 + 2] & 255));
                    u0.d.E2(l0.c0.u1(bArr[i2 + 3] & 255));
                    u0.d.F2(l0.c0.u1(bArr[i2 + 4] & 255));
                    u0.d.G2(l0.c0.u1(bArr[i2 + 5] & 255));
                }
                break;
            case 36:
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
                break;
        }
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f7144o);
        l0.b0.p0(this.f7145p);
        qt.q0(this.f7142m);
        o1.h.f16865a.d(this.f7141l);
        w0.e.f17815a.d(this.f7146q);
        w0.e.f17819e.d(this.f7146q);
        u0.c.f17393t.d(this.f7146q);
        u0.c.f17392s.d(this.f7146q);
        u0.c.f17374a.d(this.f7146q);
        l0.b0.p0(this.f7146q);
        h0.d.f2464c.d(this.f7134e);
        h0.d.f2462a.d(this.f7134e);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 149) {
            return;
        }
        o1.x.v(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 128, 2, iArr[0], iArr[1]);
        } else if (i2 == 1) {
            z.k.s(227, 144, 2, iArr[0], iArr[1]);
        } else {
            if (i2 != 2) {
                return;
            }
            z.k.s(227, 138, 2, iArr[0], iArr[1]);
        }
    }
}
