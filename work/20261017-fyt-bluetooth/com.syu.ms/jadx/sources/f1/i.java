package f1;

import android.media.videoeditor.MediaProperties;
import android.os.Handler;
import android.util.Log;
import android.util.SparseArray;
import base.Configure;
import com.syu.jni.ToolsJni;
import o1.l0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class i extends q {
    public final int P;
    public final boolean Q;
    public q.c R;
    public boolean S;
    public l0 T;
    public q1.b U;
    public int V;
    public SparseArray<q.c> W;

    public i(int i2, p1.a aVar, int i3, Handler handler) {
        super(9, i2, aVar, i3, handler);
        this.P = 100;
        this.Q = true;
        this.R = new q.c(-1, -1);
        this.S = false;
        this.T = new l0();
        this.U = new q1.b(-1, 3);
        this.V = -1;
        this.W = new SparseArray<>();
    }

    @Override // f1.q
    public void D() {
        if (n()) {
            return;
        }
        super.D();
        Log.e("Chip6911C", "==============================>> RESET  Waiting onUEvent START 1 chipid : " + this.f2144h);
        if (Configure.Property.CHIP_6911C_NO_NEED_RESET.b(false)) {
            H(true);
        } else {
            ToolsJni.cmd_33_reset_videoIc(this.f2144h);
        }
        Log.e("Chip6911C", "==============================>> RESET Waiting onUEvent END 1 chipid : " + this.f2144h);
    }

    @Override // f1.q
    public boolean M() {
        Log.e("Chip6911C", "==============================>> setup()  chipid : " + this.f2144h + " loaded: " + this.f2154r);
        if (n()) {
            return true;
        }
        D();
        return this.f2154r;
    }

    public boolean X(int i2) {
        return true;
    }

    @Override // f1.q, e1.l
    public void a() {
        this.U.a();
        this.S = false;
        this.f2147k = -1;
        u0.d.I3(173, y(-1, -1));
        super.a();
    }

    @Override // f1.q, e1.l
    public synchronized void c(int i2) {
        if (this.f2145i != i2 && !m()) {
            super.c(i2);
            if (n()) {
                this.R.f2164a = s0.m("sys.c6911c.w", 1280);
                this.R.f2165b = s0.m("sys.c6911c.h", MediaProperties.HEIGHT_720);
            }
            if (this.f2145i != i2) {
                this.f2145i = i2;
            }
        }
    }

    @Override // f1.q
    public int k() {
        if (!this.f2154r) {
            return 0;
        }
        int iG = this.U.g(this.V);
        int i2 = -1;
        if (iG != -1 && this.f2147k != iG) {
            X(iG);
            this.S = true;
            q.c cVar = this.R;
            if (cVar.f2164a > 0 && cVar.f2165b > 0) {
                i2 = 14;
            }
            this.f2147k = i2;
        } else if (this.S) {
            this.S = false;
            Log.e("Chip6911C", "==============================>> 00 SET " + this.R + " chipid : " + this.f2144h);
            q.c cVar2 = this.R;
            u0.d.I3(173, y(cVar2.f2164a, cVar2.f2165b));
        }
        if (this.T.c(500)) {
            this.T.a();
            Log.e("Chip6911C", "==============================>> 00 SET " + this.R + "  sNtscPal : " + this.V + " chipid : " + this.f2144h);
        }
        return this.U.d() < 0 ? 0 : 1;
    }

    @Override // f1.q
    public void o() {
        G(0, 0);
        G(11, 1);
        G(12, 2);
        G(13, 3);
        G(14, 4);
    }

    @Override // f1.q
    public void p() {
        H(X(this.f2147k));
    }

    @Override // f1.q
    public boolean x(String str) {
        q.c cVar;
        int i2;
        if (!this.f2154r) {
            return false;
        }
        s0.C(100L);
        V(255, 128);
        V(238, 1);
        V(255, 210);
        V(131, 17);
        int iX = s0.x(A(150), A(151));
        int iX2 = s0.x(A(139), A(140)) * 2;
        q.c cVar2 = new q.c(-1, -1);
        if (iX2 <= 100 || iX <= 100) {
            cVar = cVar2;
            i2 = -1;
        } else {
            q.c cVar3 = this.R;
            if (cVar3.f2164a != iX2 || cVar3.f2165b != iX) {
                this.S = true;
            }
            cVar3.f2164a = iX2;
            cVar3.f2165b = iX;
            i2 = 14;
            cVar = new q.c(iX2, iX);
        }
        V(255, 128);
        V(238, 0);
        if (this.V != i2) {
            if (cVar.f2164a <= 0 || cVar.f2165b <= 0) {
                this.B = 0;
                this.f2147k = -1;
            }
            this.V = i2;
        }
        Log.e("Chip6911C", " ============>>> " + str + " videoSize: " + this.R + " width : " + iX2 + " height :" + iX);
        return true;
    }
}
