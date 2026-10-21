package e1;

import android.os.Handler;
import android.util.Log;
import app.App;
import com.syu.ms.R;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class g extends e {
    public g(String str, int i2, Handler handler) {
        super(str, i2, handler);
    }

    @Override // e1.e
    public boolean J(int i2) {
        Log.e("V2850", "flushNtscPal  ntcsPal: " + i2 + "   i2cInvalid: " + this.f1673o + "  mTypeOrAhd : " + u0.b.s1);
        boolean zK = false;
        if (this.f1673o) {
            return false;
        }
        boolean z2 = u0.b.s1 == 1;
        if (i2 == 0) {
            Log.e("V2850", "flushNtscPal  NOR_CVBS_NTSC");
            zK = K(s0.A(App.c(), R.raw.tp2860_cbsb_n, 16));
        } else if (i2 != 1) {
            if (i2 == 2) {
                StringBuilder sb = new StringBuilder();
                sb.append("flushNtscPal ");
                sb.append(z2 ? "AHD_720P_25FPS" : "TVI_720P_25FPS");
                Log.e("V2850", sb.toString());
                zK = K(s0.A(App.c(), z2 ? R.raw.tp2860_ahd_720p25 : R.raw.tp2860_tvi_720p25, 16));
            } else if (i2 == 3) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("flushNtscPal ");
                sb2.append(z2 ? "AHD_720P_30FPS" : "TVI_720P_30FPS");
                Log.e("V2850", sb2.toString());
                zK = K(s0.A(App.c(), z2 ? R.raw.tp2860_ahd_720p30 : R.raw.tp2860_tvi_720p30, 16));
            } else if (i2 == 6) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("flushNtscPal  ");
                sb3.append(z2 ? " AHD_1080P_25FPS" : " TVI_1080P_25FPS");
                Log.e("V2850", sb3.toString());
                zK = K(s0.A(App.c(), z2 ? R.raw.tp2860_ahd_1080p25 : R.raw.tp2860_tvi_1080p25, 16));
            } else if (i2 == 7) {
                Log.e("V2850", "flushNtscPal  TVI_1080P_30FPS");
                zK = K(s0.A(App.c(), z2 ? R.raw.tp2860_ahd_1080p30 : R.raw.tp2860_tvi_1080p30, 16));
            } else if (i2 != 13) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append("flushNtscPal ");
                sb4.append(z2 ? "AHD_720P_25FPS" : "TVI_720P_25FPS");
                Log.e("V2850", sb4.toString());
                J(2);
            } else {
                Log.e("V2850", "flushNtscPal  NOR_AHD_DVD_NTSC");
                zK = K(e.f1695a0);
            }
        } else {
            Log.e("V2850", "flushNtscPal  NOR_CVBS_PAL");
            zK = K(s0.A(App.c(), R.raw.tp2860_cbsb_p, 16));
        }
        if (zK) {
            u0.c.P.c(Integer.valueOf(i2));
        }
        return zK;
    }

    @Override // e1.e, e1.c
    public void m() {
        this.f1664f = 1;
        Log.e("V2850", " ========>>  flushParams last   imagFormat =  " + this.f1664f);
        w(J(this.f1664f));
        Log.e("V2850", " ========>>  flushParams last   imagFormat =  " + this.f1664f + " loaded:" + this.f1667i);
    }
}
