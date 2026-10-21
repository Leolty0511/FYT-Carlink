package k0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class ml extends lt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8214b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public c f8218f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8215c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[][] f8216d = {new int[]{4, 5}, new int[]{5, 6}, new int[]{16, 0}, new int[]{17, 34}, new int[]{18, 35}, new int[]{19, 32}, new int[]{20, 33}, new int[]{21, 34}, new int[]{22, 35}, new int[]{23, 32}, new int[]{24, 33}, new int[]{25, 30}, new int[]{26, 31}, new int[]{64, 31}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f8217e = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8219g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f8220h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f8221i = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(ml.this.f8221i);
            ml.this.f8219g = 5;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ml mlVar = ml.this;
            int i2 = mlVar.f8219g - 1;
            mlVar.f8219g = i2;
            if (i2 > 0) {
                z.k.s(227, i.a.Theme_actionModeShareDrawable, 1, 113);
            } else {
                l0.b0.p0(mlVar.f8221i);
                ml.this.f8219g = 5;
            }
        }
    }

    public class c extends BroadcastReceiver {
        public c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            if (!"FOURCAMERA2_BROADCAST_RECV".equals(action) || extras == null) {
                return;
            }
            try {
                if (extras.getBoolean("Show")) {
                    ml.this.f8217e = true;
                } else {
                    ml.this.f8217e = false;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        public /* synthetic */ c(ml mlVar, a aVar) {
            this();
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
        mtVar.f8311f = 0;
        mtVar.f8314i = 0;
        mtVar.f8317l = 0;
        mtVar.f8312g = 0;
        mtVar.f8320o = 0;
        u0.c.f17386m.a(this.f8220h, 1);
        this.f8218f = new c(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("FOURCAMERA2_BROADCAST_RECV");
        App.c().registerReceiver(this.f8218f, intentFilter);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        int[][] iArr;
        byte b2 = bArr[i2];
        if (b2 == 2) {
            byte b3 = bArr[i2 + 2];
            byte b4 = bArr[i2 + 3];
            this.f8215c = b3 & 255;
            int i4 = 0;
            while (true) {
                iArr = this.f8216d;
                if (i4 >= iArr.length) {
                    break;
                }
                int i5 = this.f8215c;
                if (i5 == iArr[i4][0]) {
                    if (i5 == 0) {
                        break;
                    }
                    this.f8214b = i4;
                    break;
                }
                i4++;
            }
            int i6 = this.f8215c;
            if (i6 == 25) {
                for (int i7 = 0; i7 < (b4 & 255); i7++) {
                    l0.b0.l0(8, 0);
                }
                l0.b0.l0(8, 1);
                return;
            }
            if (i6 == 26) {
                for (int i8 = 0; i8 < (b4 & 255); i8++) {
                    l0.b0.l0(7, 0);
                }
                l0.b0.l0(7, 1);
                return;
            }
            if (i6 == 64) {
                if ((b4 & 255) == 1) {
                    if (this.f8217e) {
                        u0.d.b0(1);
                        return;
                    } else {
                        u0.d.b0(0);
                        return;
                    }
                }
                return;
            }
            int i9 = b4 & 255;
            if (i9 == 1) {
                if (i4 < iArr.length) {
                    l0.b0.l0(iArr[i4][1], 0);
                    return;
                }
                return;
            } else {
                if (i9 == 0) {
                    int i10 = this.f8214b;
                    if (i10 < iArr.length && i10 != 255) {
                        l0.b0.l0(iArr[i10][1], 1);
                    }
                    this.f8214b = 255;
                    return;
                }
                return;
            }
        }
        if (b2 != 3) {
            if (b2 != 113) {
                return;
            }
            qt.L("Bagoo_" + ((bArr[i2 + 4] + 2000) & 255) + "_" + (bArr[i2 + 5] & 255) + "_" + (bArr[i2 + 6] & 255) + ".V" + ((int) bArr[i2 + 8]) + ((int) bArr[i2 + 9]) + ((int) bArr[i2 + 10]));
            return;
        }
        qt.m(bArr[i2 + 5], 0, 128, true, 127);
        int i11 = i2 + 7;
        u0.d.R2(l0.c0.s1((bArr[i11] >> 0) & 3));
        u0.d.S2(l0.c0.s1((bArr[i11] >> 2) & 3));
        u0.d.T2(l0.c0.s1((bArr[i11] >> 4) & 3));
        u0.d.U2(l0.c0.s1((bArr[i11] >> 6) & 3));
        int i12 = i2 + 6;
        int i13 = (bArr[i12] >> 0) & 3;
        int i14 = (bArr[i12] >> 2) & 3;
        int i15 = (bArr[i12] >> 4) & 3;
        int i16 = (bArr[i12] >> 6) & 3;
        if (i13 == 0 && i14 == 0 && i15 == 0 && i16 == 0) {
            u0.d.C2(0);
        } else if ((l0.c0.f13013g != i13 || l0.c0.f13014h != i14 || l0.c0.f13015i != i15 || l0.c0.f13016j != i16) && u0.b.f17347o == 0) {
            u0.d.C2(1);
            l0.c0.f13017k = 4;
            l0.b0.b(l0.c0.f13018l);
        }
        l0.c0.f13013g = i13;
        l0.c0.f13014h = i14;
        l0.c0.f13015i = i15;
        l0.c0.f13016j = i16;
        u0.d.D2(l0.c0.s1(i13));
        u0.d.E2(l0.c0.s1(i14));
        u0.d.F2(l0.c0.s1(i15));
        u0.d.G2(l0.c0.s1(i16));
        int i17 = bArr[i2 + 8] & 255;
        if (nt.W == 0) {
            qt.y0(1, (i17 >> 0) & 1);
            qt.y0(2, (i17 >> 1) & 1);
        } else {
            qt.y0(1, (i17 >> 1) & 1);
            qt.y0(2, (i17 >> 0) & 1);
        }
        qt.y0(4, (i17 >> 3) & 1);
        qt.y0(3, (i17 >> 2) & 1);
        qt.y0(5, (i17 >> 4) & 1);
        qt.y0(0, (i17 >> 5) & 1);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f8220h);
        l0.b0.p0(this.f8221i);
        if (this.f8218f != null) {
            App.c().unregisterReceiver(this.f8218f);
        }
    }

    @Override // k0.lt, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 < 0 || i2 >= 7) {
            return;
        }
        y.e.a(bVar, i2, nt.f8645g[i2]);
    }

    @Override // k0.lt, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
    }
}
