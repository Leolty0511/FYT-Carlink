package m0;

import android.util.Log;
import java.io.FileInputStream;
import java.io.InputStream;
import o1.e0;

/* JADX INFO: loaded from: classes2.dex */
public class m extends a implements o1.q {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte[] f13300k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f13302m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13290a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f13291b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13292c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13293d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13294e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13295f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13296g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13297h = 128;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f13298i = new byte[128 + 2];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f13299j = new byte[64];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public byte[] f13301l = new byte[10];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13303n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte[] f13304o = {0};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f13305p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f13306q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f13307r = 0;

    public static void Q2(int... iArr) {
        byte[] bArrB = z.k.b(iArr);
        if (bArrB != null) {
            z.a.f18151b.i(bArrB);
        }
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        this.f13295f = -1;
        this.f13300k = null;
        b.f13172e = 0;
    }

    public final void N2() {
        e0 e0Var = z.a.f18151b;
        e0Var.i(z.k.b(1, 86, 170));
        e0Var.i(z.k.b(1, 86, 85));
    }

    public void O2(byte[] bArr, int i2, int i3) {
        if (bArr[i2] != -29) {
            return;
        }
        this.f13295f = 1;
        P2(bArr, i2 + 1, i3 - 1);
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
    public final void P2(byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instruction units count: 574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: m0.m.P2(byte[], int, int):void");
    }

    public final void R2(int i2, int i3, byte[] bArr) {
        int[] iArr = new int[bArr.length + 2 + 1];
        iArr[0] = -29;
        iArr[1] = (byte) i2;
        iArr[2] = (byte) bArr.length;
        int length = bArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            iArr[3 + i4] = bArr[i4];
        }
        Q2(iArr);
    }

    /* JADX WARN: Code duplicated, block: B:73:0x0118 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // m0.a, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) throws Throwable {
        Throwable th;
        FileInputStream fileInputStream;
        Exception e2;
        if (i2 != 0) {
            return;
        }
        Log.d("LG", "C_UP_FILE_PATH");
        N2();
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        InputStream inputStream = null;
        try {
            try {
                fileInputStream = new FileInputStream(strArr[0]);
                try {
                    this.f13305p = fileInputStream.available();
                    Log.d("CAN", "size = " + this.f13305p);
                    int i3 = this.f13305p;
                    if (i3 == 0) {
                        d.j(2, 5);
                        try {
                            fileInputStream.close();
                            return;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return;
                        }
                    }
                    if (i3 > 2097152) {
                        d.j(2, 6);
                        try {
                            fileInputStream.close();
                            return;
                        } catch (Exception e4) {
                            e4.printStackTrace();
                            return;
                        }
                    }
                    if (i3 % 128 == 0) {
                        this.f13302m = (i3 / 128) * 128;
                    } else {
                        this.f13302m = ((i3 / 128) + 1) * 128;
                    }
                    byte[] bArr = new byte[this.f13302m];
                    this.f13300k = bArr;
                    fileInputStream.read(bArr);
                    for (int i4 = this.f13305p; i4 < this.f13302m; i4++) {
                        this.f13300k[i4] = 0;
                    }
                    for (int i5 = 0; i5 < 10; i5++) {
                        this.f13301l[i5] = this.f13300k[(this.f13305p - 10) + i5];
                    }
                    this.f13303n = this.f13302m / 128;
                    this.f13306q = 0;
                    for (int i6 = 0; i6 < this.f13305p; i6++) {
                        this.f13306q += this.f13300k[i6] & 255;
                    }
                    Q2(227, 232, 1, 1);
                    this.f13295f = 0;
                    d.j(1, 100);
                    d.j(0, 100 / this.f13303n);
                    try {
                        fileInputStream.close();
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    b.f13172e = 0;
                    a.i.a0(100L);
                    this.f13296g = 0;
                } catch (Exception e6) {
                    e2 = e6;
                    e2.printStackTrace();
                    d.j(2, 4);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e7) {
                            e7.printStackTrace();
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (Exception e8) {
                        e8.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e9) {
            fileInputStream = null;
            e2 = e9;
        } catch (Throwable th3) {
            th = th3;
            if (0 != 0) {
                inputStream.close();
            }
            throw th;
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            a.f.p().s("MCU DATA IS NULL");
            return;
        }
        if (this.f13292c + bArr.length > 1024) {
            this.f13292c = 0;
            this.f13293d = 0;
            this.f13294e = 0;
        }
        System.arraycopy(bArr, 0, this.f13291b, this.f13292c, bArr.length);
        int length = this.f13292c + bArr.length;
        this.f13292c = length;
        int i5 = this.f13294e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13291b[2];
            int i6 = 3;
            while (true) {
                i4 = this.f13294e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 ^ this.f13291b[i6]);
                i6++;
            }
            byte[] bArr2 = this.f13291b;
            if (b2 == bArr2[i4]) {
                O2(bArr2, 4, i4 - 4);
                this.f13293d = this.f13294e + 1;
            } else {
                this.f13293d = 2;
            }
            this.f13294e = 0;
        }
        int i7 = this.f13292c - 3;
        while (true) {
            i2 = this.f13293d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13291b;
            if (bArr3[i2] == -120 && bArr3[i2 + 1] == 85) {
                int i8 = ((bArr3[i2 + 2] << 8) & 65280) | (bArr3[i2 + 3] & 255);
                this.f13294e = i8;
                if (i8 > 512) {
                    this.f13294e = 0;
                } else {
                    int i9 = i8 + i2 + 4;
                    this.f13294e = i9;
                    if (i9 >= this.f13292c) {
                        this.f13294e = i9 - i2;
                        break;
                    }
                    byte b3 = bArr3[i2 + 2];
                    int i10 = i2 + 3;
                    while (true) {
                        i3 = this.f13294e;
                        if (i10 >= i3) {
                            break;
                        }
                        b3 = (byte) (b3 ^ this.f13291b[i10]);
                        i10++;
                    }
                    byte[] bArr4 = this.f13291b;
                    if (b3 == bArr4[i3]) {
                        int i11 = this.f13293d;
                        O2(bArr4, i11 + 4, (i3 - i11) - 4);
                        this.f13293d = this.f13294e;
                    } else {
                        this.f13293d++;
                    }
                    this.f13294e = 0;
                }
            }
            this.f13293d++;
        }
        if (i2 != 0) {
            int i12 = this.f13292c - i2;
            this.f13292c = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f13291b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f13293d = 0;
        }
    }
}
