package e1;

import android.os.Handler;
import android.util.Log;
import com.syu.jni.ToolsJni;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class f extends c {
    public final int A;
    public final int B;
    public int[] C;
    public final Runnable D;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final boolean f1702x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final String f1703y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final int f1704z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f fVar = f.this;
            fVar.f1676r = true;
            fVar.f1664f = 2;
            fVar.w(fVar.F(fVar.C));
            f fVar2 = f.this;
            Handler handler = fVar2.f1668j;
            if (handler != null) {
                handler.removeCallbacks(fVar2.D);
            }
            f fVar3 = f.this;
            if (fVar3.f1667i) {
                int i2 = fVar3.f1663e;
                if (i2 != 1 && i2 != 0) {
                    fVar3.a();
                    f.this.c(i2);
                }
                f.this.C();
                return;
            }
            Log.e("V2854", " ========>>  flushParams  error " + f.this.f1664f + " loaded:" + f.this.f1667i);
            f fVar4 = f.this;
            fVar4.f1664f = -1;
            Handler handler2 = fVar4.f1668j;
            if (handler2 != null) {
                handler2.postDelayed(fVar4.D, 500L);
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.e("V2854", " ========>>  flushParams  success!! ");
            if (f.this.f1667i) {
                u0.d.I3(137, 1);
            }
        }
    }

    public f(String str, int i2, Handler handler) {
        super(str, i2, handler);
        this.f1702x = true;
        this.f1703y = "V2854";
        this.f1704z = 16;
        this.A = 18;
        this.B = 17;
        this.C = new int[]{64, 4, 2, 198, 7, 64, 11, 64, 12, 19, 13, 113, 21, 19, 22, 21, 23, 0, 24, 25, 25, 208, 26, 37, 28, 7, 29, 188, 33, 132, 34, 54, 35, 60, 42, 52, 43, 96, 44, 58, 45, 90, 46, 64, 48, 158, 49, 32, 50, 16, 51, 144, 53, 37, 56, 0, 57, 8, 78, 0, i.a.Theme_preferenceFragmentStyle, 240, 64, 8, 1, 248, 2, 1, 8, 15, 19, 36, 20, 4, 21, 0, 32, 68, 52, 27, 35, 2, 255, 255};
        this.D = new a();
        this.f1664f = 2;
        u0.b.s4 = 2;
    }

    @Override // e1.c
    public int E(int i2, int i3, int i4) {
        Log.e("V2854", String.format("[%02X - %02X,  %02X]", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)));
        return super.E(i2, i3, i4);
    }

    public boolean F(int[] iArr) {
        boolean z2;
        if (iArr == null || iArr.length < 2) {
            throw new RuntimeException("flushParams  data is NULL  or  data  size < 2 !!!! ");
        }
        Log.e("V2854", "flushParams =============>> i2cInvalid : " + this.f1673o);
        if (this.f1673o) {
            return false;
        }
        synchronized (this.f1671m) {
            int length = iArr.length / 2;
            Log.e("V2854", "flushParams  START  data  length = " + iArr.length);
            int i2 = 0;
            z2 = true;
            while (i2 < length) {
                int i3 = i2 * 2;
                int i4 = iArr[i3];
                int i5 = iArr[i3 + 1];
                int iD = D(i4, i5);
                boolean z3 = iD >= 0;
                Log.e("V2854", String.format("[ %02X,  %02X]", Integer.valueOf(i4), Integer.valueOf(i5)) + "  result : " + z3 + " ret : " + iD);
                if (!z3) {
                    z2 = z3;
                    break;
                }
                i2++;
                z2 = z3;
            }
            Log.e("V2854", "flushParams  END  data  length = " + iArr.length + " result:" + z2 + " imagFormat: " + this.f1664f);
        }
        return z2;
    }

    @Override // e1.l
    public void h(int i2, int i3, int i4, int i5) {
        D(64, i2 & 255);
        D(16, i3 & 255);
        D(17, i5 & 255);
        D(18, i4 & 255);
        Log.e("V2854", "signalOn    =   " + String.format("    0x01 REG : %03X", Integer.valueOf(s(1))) + "  imagType  = " + this.f1663e + "  imagFormat :  " + this.f1664f + String.format("    0x03 REG : %03X", Integer.valueOf(s(3))));
    }

    @Override // e1.c
    public int j() {
        this.f1664f = 2;
        Log.e("V2854", "Check Signal V2854 = " + this.f1664f);
        return 1;
    }

    @Override // e1.c
    public void m() {
        Handler handler;
        if (this.f1667i || (handler = this.f1668j) == null) {
            return;
        }
        handler.removeCallbacks(this.D);
        this.f1668j.postDelayed(this.D, 100L);
    }

    @Override // e1.c
    public void t() {
        super.t();
        Log.e("V2854", "==============================>> 2854 RESET ");
        w(false);
        ToolsJni.cmd_33_reset_videoIc(1);
    }

    @Override // e1.c
    public void w(boolean z2) {
        if (this.f1667i != z2) {
            this.f1667i = z2;
            s0.F("syu.imageic.inited", z2 ? "1" : "0");
            if (z2) {
                this.f1668j.postDelayed(new b(), 500L);
            } else {
                u0.d.I3(137, z2 ? 1 : 0);
            }
        }
    }

    @Override // e1.c
    public boolean z() {
        if (!this.f1667i) {
            t();
        }
        return this.f1667i;
    }
}
