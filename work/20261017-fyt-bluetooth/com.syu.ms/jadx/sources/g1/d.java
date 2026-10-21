package g1;

import base.Configure;
import module.sound.AudioDevice;
import n0.k4;
import o1.q0;
import o1.y;
import u0.i;
import y0.f;
import z.k;

/* JADX INFO: loaded from: classes2.dex */
public class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static d f2396a;

    public d() {
        Thread thread = new Thread(this);
        thread.setName("MonitorTouchDown");
        thread.start();
    }

    public static void a() {
        y yVar = e.e.f1623a;
        if (yVar != null) {
            yVar.c();
        }
        b();
    }

    public static void b() {
        if (u0.b.f17332j == 1 && u0.b.f17320f != 0) {
            u0.d.N(0);
        }
        if (u0.b.f17334j1 == 1) {
            u0.d.j3(0);
        }
        if (u0.b.f17326h != 0 && u0.b.f17320f != 0 && u0.b.m2) {
            u0.d.u3(0);
        }
        i.l3().w3();
        k.s(1, 0, 88);
        u0.b.T = u0.b.R;
        if (!Configure.Property.BUTTON_SOUND_EFFECT_HANDLE.b(false) && (f.f18034b instanceof AudioDevice) && u0.b.f17320f == 1 && u0.b.f17306a0 == 1) {
            ((AudioDevice) f.f18034b).z(false);
        }
        if (e.b.f1593a == -1) {
            e.b.f1593a = k4.g();
        }
        if (e.b.f1593a == 0 || u0.b.f17320f != 0) {
            return;
        }
        u0.d.U1(1);
    }

    public static d c() {
        if (f2396a == null) {
            synchronized (d.class) {
                if (f2396a == null) {
                    f2396a = new d();
                }
            }
        }
        return f2396a;
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            q0.P();
            a();
        }
    }
}
