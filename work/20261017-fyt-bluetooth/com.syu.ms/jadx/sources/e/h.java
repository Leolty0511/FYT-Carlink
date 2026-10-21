package e;

import android.content.Context;
import android.net.ProxyProperties;
import android.os.IBinder;
import android.os.ServiceManager;
import android.text.TextUtils;
import android.util.Log;
import app.App;
import base.Configure;
import java.util.Arrays;
import module.sound.AudioDevice;
import o1.o0;
import o1.p0;
import o1.s0;
import u0.i;
import util.log.LogType;
import y0.j;

/* JADX INFO: loaded from: classes.dex */
public class h extends y.b.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h f1651b = new h();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public y.c f1652a;

    public static h K2() {
        return f1651b;
    }

    @Override // y.b
    public void H0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        f.c cVar = f.b.f1841d.f1844c;
        if (Configure.Property.DEBUG_CALLING_PID.b(false)) {
            Log.e("Bsp", "  updateCode =  " + i2 + " " + Arrays.toString(iArr) + " " + Arrays.toString(fArr) + " " + Arrays.toString(strArr));
        }
        if (i2 == 0) {
            if (!cVar.h()) {
                if ("play".equals(strArr[1])) {
                    cVar.b(strArr[0], 1);
                    return;
                } else {
                    cVar.b(strArr[0], 0);
                    return;
                }
            }
            boolean z2 = N2(strArr, 2) && !s0.j(App.c().getPackageName(), strArr[0]);
            boolean z3 = !g.f.r() ? !z2 || strArr[0].contains("bin/blink") : !z2 || s0.j("com.zjinnova.zlink", strArr[0]);
            Log.e("AA", "==============>>> updateAudioState : " + z3 + " strs: " + Arrays.toString(strArr));
            if (z3) {
                y0.g.f18102l.c(strArr);
            }
            if (!N2(strArr, 2) || strArr[0] == null || strArr[1] == null || j.a3().f3(strArr[0])) {
                return;
            }
            if ("play".equals(strArr[1])) {
                cVar.b(strArr[0], 1);
                return;
            } else {
                cVar.b(strArr[0], 0);
                return;
            }
        }
        switch (i2) {
            case 2:
                if (L2(iArr, 2)) {
                    g.G(iArr[0], iArr[1]);
                    return;
                }
                return;
            case 3:
                if (N2(strArr, 1)) {
                    TextUtils.isEmpty(strArr[0]);
                    return;
                }
                break;
            case 4:
                break;
            case 5:
                if (!L2(iArr, 2)) {
                    if (!L2(iArr, 1) || fArr == null || fArr.length < 2) {
                        return;
                    }
                    f.q(iArr[0], fArr[0], fArr[1]);
                    return;
                }
                if (fArr == null || fArr.length < 2) {
                    return;
                }
                if (iArr[1] == 0) {
                    f.q(iArr[0], fArr[0], fArr[1]);
                    return;
                } else {
                    if (i.l3().t3() && u0.b.f17306a0 == 1 && u0.b.f17320f == 1) {
                        i.l3().S3(false);
                        return;
                    }
                    return;
                }
            case 6:
                if (Configure.Property.BUTTON_SOUND_EFFECT_HANDLE.b(false) && (y0.f.f18034b instanceof AudioDevice) && u0.b.f17320f == 1 && u0.b.f17306a0 == 1) {
                    ((AudioDevice) y0.f.f18034b).z(false);
                    return;
                }
                return;
            case 7:
                if (s0.h(iArr, 0)) {
                    if ((iArr[0] == 20) && p0.b(iArr, 3)) {
                        r0.a.X2().Z2(iArr[1], iArr[2]);
                        return;
                    } else {
                        if (p0.b(iArr, 2)) {
                            r0.a.X2().Y2(iArr[0], iArr[1]);
                            return;
                        }
                        return;
                    }
                }
                return;
            case 8:
                if (!cVar.h()) {
                    Log.e("focus", "FOUCS packageName = " + strArr[0] + " ints = " + Arrays.toString(iArr));
                    if (L2(iArr, 1) && N2(strArr, 1) && strArr[0] != null) {
                        cVar.a(strArr[0], iArr[0] == 1, iArr[1], iArr[2]);
                        return;
                    }
                    return;
                }
                Log.e("focus", "FOUCS packageName = " + strArr[0] + " ints = " + Arrays.toString(iArr));
                boolean z4 = L2(iArr, 1) && N2(strArr, 1) && strArr[0] != null;
                boolean z5 = (z4 && strArr[0].startsWith("com.papagoinc") && iArr[1] <= 0) ? false : true;
                if (z5 && iArr[1] == 1) {
                    i iVarL3 = i.l3();
                    String strG3 = iVarL3.g3();
                    if (iArr[0] == 1 && !a.i.r(strArr[0]) && !s0.j(strArr[0], strG3)) {
                        iVarL3.B3(strArr[0]);
                    } else if (iArr[0] == 0 && s0.j(strArr[0], strG3)) {
                        iVarL3.B3(ProxyProperties.LOCAL_EXCL_LIST);
                    }
                }
                if (z4 && z5 && s0.j(strArr[0], "net.easyconn") && Configure.Property.EASY_CONN_MIX.b(false)) {
                    cVar.a(strArr[0], iArr[0] == 1, iArr[1], iArr[2]);
                }
                if (z4 && z5) {
                    a.f.p().t(LogType.AUDIO_FOUCS, "Audio FOUCS packageName = " + strArr[0] + " state = " + iArr[0]);
                    cVar.c(strArr[0], iArr[0] == 1);
                    if (a.i.o(strArr[0])) {
                        cVar.b(strArr[0], iArr[0]);
                        return;
                    }
                    return;
                }
                return;
            case 9:
                if (p0.b(iArr, 1)) {
                    y0.h.i0();
                    y0.h.u0(o0.a((iArr[0] * 36) / 100, 0, y0.f.f18049g));
                    return;
                }
                return;
            case 10:
                if (g.f.t() && u0.b.D == 1) {
                    u0.b.f17311c.c(0);
                    a.i.a0(500L);
                    u0.b.f17311c.c(1);
                    return;
                }
                return;
            default:
                return;
        }
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        if (u0.b.n4 == 0 && u0.b.a4) {
            if ("vehicle_start".equals(strArr[0])) {
                u0.d.f17410j = 1;
                return;
            } else {
                u0.d.f17410j = 0;
                return;
            }
        }
        if ("vehicle_start".equals(strArr[0])) {
            u0.d.C(1);
        } else {
            u0.d.C(0);
        }
    }

    public final boolean L2(int[] iArr, int i2) {
        return iArr != null && iArr.length >= i2;
    }

    public void M2() {
        IBinder service = ServiceManager.getService(Context.SYU_SERVICE);
        if (service instanceof IBinder) {
            try {
                y.c cVarP2 = y.d.a.J2(service).p2(0);
                this.f1652a = cVarP2;
                cVarP2.Y1(this, 0, 0);
                this.f1652a.Y1(this, 2, 0);
                this.f1652a.Y1(this, 3, 0);
                this.f1652a.Y1(this, 4, 1);
                this.f1652a.Y1(this, 5, 0);
                this.f1652a.Y1(this, 7, 0);
                this.f1652a.Y1(this, 8, 0);
                this.f1652a.Y1(this, 9, 0);
                this.f1652a.Y1(this, 10, 0);
                this.f1652a.Y1(this, 6, 0);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public final boolean N2(String[] strArr, int i2) {
        return strArr != null && strArr.length >= i2;
    }
}
