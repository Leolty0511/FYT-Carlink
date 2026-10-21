package f1;

import android.os.Handler;
import android.util.Log;
import app.App;
import com.syu.ms.R;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class d extends b {
    public d(int i2, p1.a aVar, int i3, Handler handler) {
        super(14, i2, aVar, i3, handler);
    }

    @Override // f1.b
    public boolean b0(int i2) {
        boolean zQ;
        q.b bVar;
        synchronized (this.f2157u) {
            Log.e("Chip2860", "flushNtscPal  ntcsPal: " + i2 + "   i2cInvalid: " + this.f2158v + "  mTypeOrAhd : " + this.f1934d0 + " chipid : " + this.f2144h);
            boolean z2 = false;
            if (this.f2158v) {
                return false;
            }
            boolean z3 = this.f1934d0 == 0;
            int i3 = 6;
            if (i2 == 0) {
                Log.e("Chip2860", "flushNtscPal  NOR_CVBS_NTSC");
                zQ = q(s0.A(App.c(), R.raw.tp2860_cbsb_n, 16));
            } else if (i2 == 1) {
                Log.e("Chip2860", "flushNtscPal  NOR_CVBS_PAL");
                zQ = q(s0.A(App.c(), R.raw.tp2860_cbsb_p, 16));
            } else if (i2 == 2) {
                StringBuilder sb = new StringBuilder();
                sb.append("flushNtscPal ");
                sb.append(z3 ? "AHD_720P_25FPS" : "TVI_720P_25FPS");
                Log.e("Chip2860", sb.toString());
                zQ = q(s0.A(App.c(), z3 ? R.raw.tp2860_ahd_720p25 : R.raw.tp2860_tvi_720p25, 16));
            } else if (i2 == 3) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("flushNtscPal ");
                sb2.append(z3 ? "AHD_720P_30FPS" : "TVI_720P_30FPS");
                Log.e("Chip2860", sb2.toString());
                zQ = q(s0.A(App.c(), z3 ? R.raw.tp2860_ahd_720p30 : R.raw.tp2860_tvi_720p30, 16));
            } else if (i2 == 6) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("flushNtscPal  ");
                sb3.append(z3 ? " AHD_1080P_25FPS" : " TVI_1080P_25FPS");
                Log.e("Chip2860", sb3.toString());
                zQ = q(s0.A(App.c(), z3 ? R.raw.tp2860_ahd_1080p25 : R.raw.tp2860_tvi_1080p25, 16));
            } else if (i2 == 7) {
                Log.e("Chip2860", "flushNtscPal  TVI_1080P_30FPS");
                zQ = q(s0.A(App.c(), z3 ? R.raw.tp2860_ahd_1080p30 : R.raw.tp2860_tvi_1080p30, 16));
            } else if (i2 != 13) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("flushNtscPal ");
                sb4.append(z3 ? "AHD_720P_25FPS" : "TVI_720P_25FPS");
                Log.e("Chip2860", sb4.toString());
                b0(2);
                zQ = false;
            } else {
                Log.e("Chip2860", "flushNtscPal  NOR_AHD_DVD_NTSC");
                zQ = q(b.f1930x0);
            }
            if (i2 != 13 && i2 != 0 && i2 != 1) {
                z2 = true;
            }
            this.f1935e0 = z2;
            Log.e("Chip2860", " CHECK SIGNAL  SURE ahd format : " + i2 + "  needCheckAhd : " + this.f1935e0);
            if (!this.f1935e0) {
                i3 = 3;
            }
            this.C = i3;
            Log.e("Chip2860", "flushNtscPal result : " + zQ + " lisenter : " + this.J + " chipid : " + this.f2144h);
            if (zQ && (bVar = this.J) != null) {
                bVar.a(this, i2);
            }
            return zQ;
        }
    }
}
