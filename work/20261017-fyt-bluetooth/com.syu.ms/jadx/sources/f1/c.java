package f1;

import android.net.ProxyProperties;
import android.os.Handler;
import android.util.Log;
import app.App;
import com.syu.ms.R;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class c extends a {
    public c(int i2, p1.a aVar, int i3, Handler handler) {
        super(10, i2, aVar, i3, handler);
        a.G0 = "Chip2854";
    }

    @Override // f1.a
    public synchronized boolean X(int i2) {
        boolean zQ;
        Log.e(a.G0, "flushNtscPal  ntcsPal: " + i2 + "   i2cInvalid: " + this.f2158v);
        if (this.f2158v) {
            return false;
        }
        if (i2 != -1) {
            s0.F("persist.syu.camera360.format", ProxyProperties.LOCAL_EXCL_LIST + i2);
        }
        if (i2 != 0) {
            boolean z2 = true;
            if (i2 == 1) {
                Log.e(a.G0, "flushNtscPal  NOR_CVBS_PAL");
                zQ = q(s0.A(App.c(), R.raw.tp2854_mipi_4ch_720p4lane, 16));
            } else if (i2 == 2) {
                if (u0.b.s1 != 1) {
                    z2 = false;
                }
                String str = a.G0;
                StringBuilder sb = new StringBuilder();
                sb.append("flushNtscPal ");
                sb.append(z2 ? "AHD_720P_25FPS" : "TVI_720P_25FPS");
                Log.e(str, sb.toString());
                zQ = q(s0.A(App.c(), R.raw.tp2854_mipi_4ch_720p4lane, 16));
            } else if (i2 == 3) {
                if (u0.b.s1 != 1) {
                    z2 = false;
                }
                String str2 = a.G0;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("flushNtscPal ");
                sb2.append(z2 ? "AHD_720P_30FPS" : "TVI_720P_30FPS");
                Log.e(str2, sb2.toString());
                zQ = q(s0.A(App.c(), R.raw.tp2854_mipi_4ch_720p4lane, 16));
            } else if (i2 == 6) {
                Log.e(a.G0, "flushNtscPal  TVI_1080P_25FPS");
                int i3 = u0.b.s1;
                zQ = q(s0.A(App.c(), R.raw.tp2854_mipi_4ch_1080p4lane, 16));
            } else if (i2 != 13) {
                if (u0.b.s1 != 1) {
                    z2 = false;
                }
                String str3 = a.G0;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("flushNtscPal ");
                sb3.append(z2 ? "AHD_720P_25FPS" : "TVI_720P_25FPS");
                Log.e(str3, sb3.toString());
                zQ = q(s0.A(App.c(), R.raw.tp2854_mipi_4ch_720p4lane, 16));
            } else {
                Log.e(a.G0, "flushNtscPal  NOR_AHD_DVD_NTSC");
                zQ = q(s0.A(App.c(), R.raw.tp2854_mipi_4ch_720p4lane, 16));
            }
        } else {
            Log.e(a.G0, "flushNtscPal  NOR_CVBS_NTSC");
            zQ = q(s0.A(App.c(), R.raw.tp2854_mipi_4ch_720p4lane, 16));
        }
        if (zQ) {
            this.f1900q0 = 0;
            u0.c.P.c(Integer.valueOf(i2));
        }
        return zQ;
    }
}
