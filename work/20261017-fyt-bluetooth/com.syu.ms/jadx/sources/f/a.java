package f;

import a.e;
import android.net.ProxyProperties;
import android.text.TextUtils;
import android.util.Log;
import app.App;
import h0.f;
import java.util.LinkedList;
import java.util.regex.Pattern;
import module.sound.AudioDevice;
import o1.s0;
import o1.u;
import u0.i;
import y0.g;
import y0.h;
import y0.j;

/* JADX INFO: loaded from: classes.dex */
public class a extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Runnable f1839d = new RunnableC0037a();

    /* JADX INFO: renamed from: f.a$a, reason: collision with other inner class name */
    public class RunnableC0037a implements Runnable {
        public RunnableC0037a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f fVar = h0.c.f2425b;
            if (fVar instanceof h0.b) {
                ((h0.b) fVar).a0(2, 0);
            }
        }
    }

    @Override // f.c
    public void a(String str, boolean z2, int i2, int i3) {
        if (s0.j(str, App.c().getPackageName())) {
            return;
        }
        synchronized (this.f1846b) {
            if (s0.j(str, "com.txznet.txz") && i2 == 2) {
                i2 = 4;
            }
            if (this.f1845a.indexOfKey(i2) < 0) {
                this.f1845a.put(i2, new LinkedList<>());
            }
            if (i2 == -1 || i3 == -1) {
                int size = this.f1845a.size();
                for (int i4 = 0; i4 <= size; i4++) {
                    LinkedList<String> linkedListValueAt = this.f1845a.valueAt(i4);
                    if (linkedListValueAt != null) {
                        linkedListValueAt.remove(str);
                    }
                }
            }
            i iVarL3 = i.l3();
            String strG3 = iVarL3.g3();
            if (z2 && i2 == 1 && !s0.j(str, strG3)) {
                iVarL3.B3(str);
            } else if (!z2 && ((i2 == 1 || i2 == -1) && s0.j(str, strG3))) {
                iVarL3.B3(ProxyProperties.LOCAL_EXCL_LIST);
            }
            if (i2 != 1) {
                if (i2 == 2 || i2 == 3 || i2 == 4) {
                    for (int i5 = 0; i5 < this.f1845a.size(); i5++) {
                        int iKeyAt = this.f1845a.keyAt(i5);
                        LinkedList<String> linkedList = this.f1845a.get(iKeyAt);
                        if (!z2) {
                            linkedList.remove(str);
                        } else if (iKeyAt != i2) {
                            linkedList.remove(str);
                        } else if (linkedList.isEmpty()) {
                            linkedList.add(str);
                        } else {
                            linkedList.set(0, str);
                        }
                    }
                }
            } else if (!j.a3().f3(str) && z2 && (y0.f.f18034b instanceof AudioDevice) && u0.b.D != 10) {
                u0.b.f17311c.c(10);
            }
            y0.f.T0 = g() ? 1 : 0;
            g.f18101k.c(Integer.valueOf(y0.f.T0));
            int i6 = e() ? 1 : 0;
            y0.f.Q0 = i6;
            u0.d.I3(111, i6);
            g.f18110t.c();
            y0.f.R0 = f() ? 1 : 0;
            Log.e("sound", " >>>>> DataSound.sVoiceOn : " + y0.f.T0 + " DataSound.sNaviSoundOn : " + y0.f.Q0 + " DataSound.sTipSoundOn : " + y0.f.R0);
            h.M();
        }
    }

    @Override // f.c
    public void b(String str, int i2) {
        Log.e("focus", String.format("audio status  pkg : %s,  status: ", str) + i2);
        Pattern pattern = this.f1847c;
        boolean z2 = (pattern == null || pattern.matcher(str).find()) ? false : true;
        if (TextUtils.isEmpty(str) || str.contains("bin/blink")) {
            return;
        }
        if ("com.ilincar.advertising.videoplayer.chinamobile".equals(str) && u0.b.k4 != i2) {
            u0.b.k4 = i2;
            if (i2 == 1) {
                e.f.f1633c = 30;
            }
        }
        String str2 = str.split(":")[0];
        int iC = a.b.f11c.c(str2);
        if (a.i.q(iC, str2)) {
            if (z2) {
                return;
            }
            a.i.Y(str2);
            e.e(1);
            if (i2 == 0) {
                e.f.f1631a = 1;
                return;
            }
            y0.f.Q0 = 1;
            u0.d.I3(111, 1);
            g.f18110t.c();
            h.M();
            e.f.f1631a = 120;
            return;
        }
        if (a.i.y(iC)) {
            if (z2) {
                return;
            }
            if (i2 == 0) {
                e.f.f1632b = 1;
                return;
            }
            y0.f.R0 = 1;
            h.M();
            e.f.f1632b = 120;
            return;
        }
        if (e.f.n(str2) || i2 == 0) {
            return;
        }
        boolean zS = u.S(str2);
        boolean zD0 = u.d0(str2);
        if ((g.f.f(11) || zS || zD0) && !a.i.t(iC) && !str2.startsWith("com.syu") && !str2.startsWith("com.huawei.dmsdpdevice") && !a.i.w(iC) && !j.a3().f3(str2)) {
            u0.h hVar = u0.b.f17311c;
            if (hVar instanceof u0.a) {
                ((u0.a) hVar).i(str2);
            }
        }
        h.M();
    }

    @Override // f.c
    public void c(String str, boolean z2) {
        if (z2) {
            return;
        }
        a(str, z2, -1, -1);
    }

    @Override // f.c
    public boolean e() {
        return e.f.f1631a > 0 || e.f.f1636f > 0 || d(3);
    }

    @Override // f.c
    public boolean f() {
        return e.f.f1632b > 0 || e.f.f1637g > 0 || d(2);
    }

    @Override // f.c
    public boolean g() {
        return e.f.f1634d > 0 || e.f.f1635e > 0 || d(4);
    }

    @Override // f.c
    public void i(int i2, int i3) {
        if (i2 == 4) {
            o1.j.f(this.f1839d);
            if (i3 > 0) {
                o1.j.c(this.f1839d, 300L);
            } else {
                j();
            }
        }
    }

    public final void j() {
        f fVar = h0.c.f2425b;
        if (fVar instanceof h0.b) {
            ((h0.b) fVar).a0(2, 1);
        }
    }
}
