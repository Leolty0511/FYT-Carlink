package k0;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.SystemProperties;
import android.provider.CalendarContract;
import app.App;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public class dk extends lt {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static Runnable f4513h = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f4515c = 255;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f4516d = {new int[]{1, 7}, new int[]{2, 8}, new int[]{3, 12}, new int[]{4, 13}, new int[]{5, 18}, new int[]{6, -1}, new int[]{7, -1}, new int[]{8, 4}, new int[]{9, 3}, new int[]{10, 5}, new int[]{11, 2}, new int[]{14, 34}, new int[]{15, 35}, new int[]{16, 63}, new int[]{26, 63}, new int[]{27, 54}, new int[]{28, 62}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f4517e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f4518f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Runnable f4519g = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(dk.this.f4519g);
            dk.this.f4517e = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0050  */
        /* JADX WARN: Code duplicated, block: B:17:0x0059  */
        /* JADX WARN: Code duplicated, block: B:18:0x0062  */
        /* JADX WARN: Code duplicated, block: B:19:0x006b  */
        /* JADX WARN: Code duplicated, block: B:20:0x0074  */
        /* JADX WARN: Code duplicated, block: B:21:0x007d  */
        @Override // java.lang.Runnable
        public void run() {
            dk dkVar = dk.this;
            int i2 = dkVar.f4517e - 1;
            dkVar.f4517e = i2;
            if (i2 <= 0) {
                l0.b0.p0(dkVar.f4519g);
                dk.this.f4517e = 5;
            }
            if (u0.b.f17306a0 == 1) {
                int i3 = nt.f8637c;
                switch (i3) {
                    case 111:
                        z.k.s(227, 2, 36, 1, 68);
                        break;
                    case 112:
                        z.k.s(227, 2, 36, 3, 68);
                        break;
                    case 113:
                        z.k.s(227, 2, 36, 5, 68);
                        break;
                    case 114:
                        z.k.s(227, 2, 36, 7, 68);
                        break;
                    case 115:
                        z.k.s(227, 2, 36, 9, 68);
                        break;
                    case 116:
                        z.k.s(227, 2, 36, 11, 68);
                        break;
                    default:
                        switch (i3) {
                            case 159:
                            case 171:
                                z.k.s(227, 2, 36, 2, 68);
                                break;
                            case 160:
                            case 172:
                                z.k.s(227, 2, 36, 4, 68);
                                break;
                            case 161:
                            case 173:
                                z.k.s(227, 2, 36, 6, 68);
                                break;
                            case 162:
                            case 174:
                                z.k.s(227, 2, 36, 8, 68);
                                break;
                            case 163:
                            case 175:
                                z.k.s(227, 2, 36, 10, 68);
                                break;
                            case 164:
                            case 176:
                                z.k.s(227, 2, 36, 12, 68);
                                break;
                            case 165:
                                z.k.s(227, 2, 36, 1, 68);
                                break;
                            case 166:
                                z.k.s(227, 2, 36, 3, 68);
                                break;
                            case 167:
                                z.k.s(227, 2, 36, 5, 68);
                                break;
                            case 168:
                                z.k.s(227, 2, 36, 7, 68);
                                break;
                            case 169:
                                z.k.s(227, 2, 36, 9, 68);
                                break;
                            case 170:
                                z.k.s(227, 2, 36, 11, 68);
                                break;
                        }
                        break;
                }
            }
        }
    }

    public class c implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            dk.a3();
        }
    }

    public static void a3() {
        int[] iArr = new int[28];
        int i2 = 0;
        for (int i3 = 0; i3 < 28; i3++) {
            iArr[i3] = 32;
        }
        iArr[0] = 26;
        iArr[1] = 145;
        int i4 = u0.b.D;
        if (i4 == 1) {
            int i5 = w0.d.f17796h;
            if (i5 - 65536 == 0) {
                iArr[2] = 1;
            } else if (i5 - 65536 == 0) {
                iArr[2] = 2;
            } else if (i5 - 65536 == 0) {
                iArr[2] = 3;
            } else if (i5 + 0 == 0) {
                iArr[2] = 4;
            } else if (1 == i5 + 0) {
                iArr[2] = 5;
            }
            if (i5 - 65536 == 0 || 1 == i5 - 65536 || 2 == i5 - 65536) {
                int i6 = w0.d.f17797i;
                iArr[4] = i6 / 10000 == 0 ? (i6 / 10000) + 32 : (i6 / 10000) + 48;
                iArr[5] = ((i6 % 10000) / 1000) + 48;
                iArr[6] = ((i6 % 1000) / 100) + 48;
                iArr[7] = 46;
                iArr[8] = ((i6 % 100) / 10) + 48;
                iArr[9] = (i6 % 10) + 48;
                iArr[10] = 77;
                iArr[11] = 104;
                iArr[12] = 122;
            } else {
                int i7 = w0.d.f17797i;
                iArr[4] = i7 / 10000 == 0 ? (i7 / 10000) + 32 : (i7 / 10000) + 48;
                iArr[5] = (i7 % 10000) / 1000 == 0 ? ((i7 % 10000) / 1000) + 32 : ((i7 % 10000) / 1000) + 48;
                iArr[6] = ((i7 % 1000) / 100) + 48;
                iArr[7] = ((i7 % 100) / 10) + 48;
                iArr[8] = (i7 % 10) + 48;
                iArr[9] = 75;
                iArr[10] = 104;
                iArr[11] = 122;
            }
        } else if (i4 == 2 || i4 == 3) {
            iArr[2] = 10;
            iArr[4] = 80;
            iArr[5] = 104;
            iArr[6] = 111;
            iArr[7] = 110;
            iArr[8] = 101;
        } else if (i4 != 5 && i4 != 13) {
            switch (i4) {
                case 8:
                case 9:
                case 10:
                    iArr[2] = 13;
                    if (u0.b.s3 != 0) {
                        int i8 = u0.b.r3 % 10000;
                        iArr[4] = (i8 / 1000) + 48;
                        int i9 = (i8 % 100) / 10;
                        int i10 = i8 % 1000;
                        if (i9 != 0) {
                            i10 /= 10;
                        }
                        iArr[5] = i10 + 48;
                        iArr[6] = i9 + 48;
                        iArr[7] = (i8 % 10) + 48;
                        int i11 = u0.b.t3;
                        int i12 = (i11 / 60) % 60;
                        iArr[8] = 32;
                        iArr[9] = (i12 / 10) + 48;
                        iArr[10] = (i12 % 10) + 48;
                        iArr[11] = 32;
                        int i13 = i11 % 60;
                        iArr[12] = (i13 / 10) + 48;
                        iArr[13] = (i13 % 10) + 48;
                    }
                    break;
                default:
                    iArr[2] = 13;
                    iArr[4] = 78;
                    iArr[5] = 65;
                    iArr[6] = 86;
                    iArr[7] = 73;
                    break;
            }
        } else {
            iArr[2] = 12;
            iArr[4] = 78;
            iArr[5] = 65;
            iArr[6] = 86;
            iArr[7] = 73;
        }
        if (u0.b.f17306a0 == 0) {
            iArr[2] = 0;
        }
        int[] iArr2 = new int[29];
        iArr2[0] = 227;
        while (i2 < 28) {
            int i14 = i2 + 1;
            iArr2[i14] = (byte) iArr[i2];
            i2 = i14;
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
            r3 = this;
            k0.mt r0 = r3.f7886a
            java.lang.String r1 = "com.syu.canbus"
            java.lang.String[] r1 = new java.lang.String[]{r1}
            r0.f8306a = r1
            r1 = 1
            r0.f8310e = r1
            r0.f8311f = r1
            r0.f8312g = r1
            r2 = 0
            r0.f8320o = r2
            r0.f8322q = r2
            r0.f8314i = r2
            int r2 = k0.nt.f8637c
            switch(r2) {
                case 111: goto L21;
                case 112: goto L21;
                case 113: goto L21;
                case 114: goto L21;
                case 115: goto L21;
                case 116: goto L21;
                default: goto L1d;
            }
        L1d:
            switch(r2) {
                case 159: goto L21;
                case 160: goto L21;
                case 161: goto L21;
                case 162: goto L21;
                case 163: goto L21;
                case 164: goto L21;
                default: goto L20;
            }
        L20:
            goto L23
        L21:
            r0.f8314i = r1
        L23:
            java.lang.Runnable r0 = k0.dk.f4513h
            k0.qt.z(r0)
            o1.y r0 = u0.c.f17386m
            java.lang.Runnable r2 = r3.f4518f
            r0.a(r2, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: k0.dk.S2():void");
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        byte b2;
        int[][] iArr;
        byte b3 = bArr[i2 + 1];
        if (b3 == -16) {
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        if (b3 == 21) {
            qt.y0(109, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(110, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(111, bArr[i2 + 10] & 255);
            qt.y0(112, (bArr[i2 + 12] & 255) | ((bArr[i2 + 11] << 8) & 65280));
            return;
        }
        if (b3 == 25) {
            qt.y0(101, ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255));
            qt.y0(102, ((bArr[i2 + 4] << 8) & 65280) | (bArr[i2 + 5] & 255));
            qt.y0(103, ((bArr[i2 + 6] << 8) & 65280) | (bArr[i2 + 7] & 255));
            qt.y0(104, ((bArr[i2 + 8] << 8) & 65280) | (bArr[i2 + 9] & 255));
            qt.y0(105, bArr[i2 + 10] & 255);
            qt.y0(106, ((bArr[i2 + 11] << 8) & 65280) | (bArr[i2 + 12] & 255));
            qt.y0(107, bArr[i2 + 13] & 255);
            qt.y0(108, (bArr[i2 + 14] >> 4) & 1);
            return;
        }
        if (b3 != 49) {
            if (b3 != 17) {
                if (b3 != 18) {
                    switch (b3) {
                        case PackageManager.INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION /* -102 */:
                            qt.x0(98, new String(bArr, i2 + 2, 12));
                            break;
                        case PackageManager.INSTALL_PARSE_FAILED_BAD_MANIFEST /* -101 */:
                            qt.x0(99, new String(bArr, i2 + 4, bArr[i2 + 3], Charset.forName("unicode")));
                            break;
                        case PackageManager.INSTALL_PARSE_FAILED_NOT_APK /* -100 */:
                            qt.x0(100, new String(bArr, i2 + 4, bArr[i2 + 3], Charset.forName("unicode")));
                            break;
                    }
                    return;
                }
                byte b4 = bArr[i2 + 4];
                if (SystemProperties.getBoolean("persist.syu.reversefrontdoor", false)) {
                    qt.y0(1, (b4 >> 6) & 1);
                    qt.y0(2, (b4 >> 7) & 1);
                } else {
                    qt.y0(1, (b4 >> 7) & 1);
                    qt.y0(2, (b4 >> 6) & 1);
                }
                qt.y0(3, (b4 >> 5) & 1);
                qt.y0(4, (b4 >> 4) & 1);
                qt.y0(5, (b4 >> 3) & 1);
                qt.y0(0, (b4 >> 2) & 1);
                return;
            }
            byte b5 = bArr[i2 + 5];
            this.f4515c = bArr[i2 + 4] & 255;
            int i8 = 0;
            while (true) {
                iArr = this.f4516d;
                if (i8 >= iArr.length) {
                    break;
                }
                int i9 = this.f4515c;
                if (i9 == iArr[i8][0]) {
                    if (i9 == 0) {
                        break;
                    }
                    this.f4514b = i8;
                    break;
                }
                i8++;
            }
            int i10 = this.f4515c;
            if (i10 != 16) {
                if (i10 != 26) {
                    int i11 = b5 & 255;
                    if (i11 == 1) {
                        if (i8 < iArr.length) {
                            l0.b0.l0(iArr[i8][1], 0);
                        }
                    } else if (i11 == 0) {
                        int i12 = this.f4514b;
                        if (i12 < iArr.length && i12 != 255) {
                            l0.b0.l0(iArr[i12][1], 1);
                        }
                        this.f4514b = 255;
                    }
                } else if ((b5 & 255) == 1 && !qt.i0().equals("com.syu.carinfo.opel.WCOPELCarListActivity")) {
                    Intent intent = new Intent();
                    intent.setClassName("com.syu.canbus", "com.syu.carinfo.opel.WCOPELCarListActivity");
                    intent.addCategory(Intent.CATEGORY_DEFAULT);
                    intent.setFlags(268435456);
                    App.c().startActivity(intent);
                }
            } else if ((b5 & 255) == 1 && !qt.i0().equals("com.syu.carinfo.opel.WCOPELCarInfoActivity")) {
                Intent intent2 = new Intent();
                intent2.setClassName("com.syu.canbus", "com.syu.carinfo.opel.WCOPELCarInfoActivity");
                intent2.addCategory(Intent.CATEGORY_DEFAULT);
                intent2.setFlags(268435456);
                App.c().startActivity(intent2);
            }
            qt.i(bArr[i2 + 9] & 255, bArr[i2 + 8] & 255, true, 540);
            return;
        }
        byte b6 = bArr[i2 + 2];
        byte b7 = bArr[i2 + 3];
        byte b8 = bArr[i2 + 4];
        byte b9 = bArr[i2 + 5];
        byte b10 = bArr[i2 + 6];
        byte b11 = bArr[i2 + 7];
        qt.y0(10, (b6 >> 6) & 1);
        qt.y0(53, (b6 >> 5) & 1);
        qt.y0(13, (b6 >> 3) & 1);
        qt.y0(62, (b6 >> 2) & 1);
        qt.y0(11, (b7 >> 6) & 1);
        qt.y0(12, (b7 >> 4) & 1);
        qt.y0(15, (b8 >> 4) & 1);
        qt.y0(16, (b8 >> 5) & 1);
        qt.y0(29, (b8 >> 0) & 3);
        qt.y0(30, (b8 >> 2) & 3);
        qt.y0(66, (b9 >> 4) & 1);
        qt.y0(69, (b9 >> 0) & 3);
        if (b10 == 1) {
            i4 = 0;
            i5 = 0;
            i6 = 0;
            i7 = 1;
        } else if (b10 != 3) {
            if (b10 == 5) {
                i4 = 0;
                i7 = 0;
                i5 = 1;
            } else if (b10 != 6) {
                switch (b10) {
                    case 11:
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        i4 = 1;
                        break;
                    case 12:
                        i5 = 0;
                        i7 = 0;
                        i4 = 1;
                        i6 = 1;
                        break;
                    case 13:
                        i6 = 0;
                        i7 = 0;
                        i4 = 1;
                        i5 = 1;
                        break;
                    case 14:
                        i7 = 0;
                        i4 = 1;
                        i5 = 1;
                        break;
                    default:
                        i4 = 0;
                        i5 = 0;
                        i6 = 0;
                        i7 = 0;
                        break;
                }
            } else {
                i4 = 0;
                i6 = 0;
                i7 = 0;
                i5 = 1;
            }
            i6 = i5;
        } else {
            i4 = 0;
            i5 = 0;
            i7 = 0;
            i6 = 1;
        }
        qt.y0(18, i4);
        qt.y0(19, i5);
        qt.y0(20, i6);
        qt.y0(49, i7);
        qt.y0(21, b11 & 255);
        if (SystemProperties.getBoolean("persist.fyt.reversetemp", false)) {
            int i13 = i2 + 8;
            b2 = 255;
            if ((bArr[i13] & 255) == 254) {
                qt.y0(28, -2);
            } else if ((bArr[i13] & 255) == 255) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, bArr[i13] & 255);
            }
            int i14 = i2 + 9;
            if ((bArr[i14] & 255) == 254) {
                qt.y0(27, -2);
            } else if ((bArr[i14] & 255) == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, bArr[i14] & 255);
            }
        } else {
            b2 = 255;
            int i15 = i2 + 8;
            if ((bArr[i15] & 255) == 254) {
                qt.y0(27, -2);
            } else if ((bArr[i15] & 255) == 255) {
                qt.y0(27, -3);
            } else {
                qt.y0(27, bArr[i15] & 255);
            }
            int i16 = i2 + 9;
            if ((bArr[i16] & 255) == 254) {
                qt.y0(28, -2);
            } else if ((bArr[i16] & 255) == 255) {
                qt.y0(28, -3);
            } else {
                qt.y0(28, bArr[i16] & 255);
            }
        }
        int i17 = bArr[i2 + 13] & b2;
        if (i17 == 0) {
            u0.d.A3(0);
        } else {
            u0.d.A3((i17 * 5) + CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR);
        }
    }

    @Override // k0.lt
    public void W2() {
        qt.q0(f4513h);
        u0.c.f17386m.d(this.f4518f);
        l0.b0.p0(this.f4519g);
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 113) {
            return;
        }
        y.e.a(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            z.k.s(227, 2, 61, iArr[0], iArr[1]);
        } else {
            if (i2 != 1) {
                return;
            }
            z.k.s(227, 2, 110, iArr[0], 0);
        }
    }
}
