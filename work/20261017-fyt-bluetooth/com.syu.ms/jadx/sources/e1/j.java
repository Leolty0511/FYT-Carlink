package e1;

import com.syu.jni.ToolsJni;
import o1.o0;

/* JADX INFO: loaded from: classes2.dex */
public class j extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Runnable f1720a = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (e1.a.f1658c) {
                int iCmd_25_get_video_mode = ToolsJni.cmd_25_get_video_mode();
                int iCmd_26_get_video_signal_on = ToolsJni.cmd_26_get_video_signal_on();
                u0.d.n3(iCmd_25_get_video_mode);
                u0.d.o3(iCmd_26_get_video_signal_on);
            }
        }
    }

    @Override // e1.l
    public void a() {
    }

    @Override // e1.l
    public void b() {
        b.a(this.f1720a);
    }

    @Override // e1.l
    public void c(int i2) {
        if (i2 == 6) {
            u0.b.f17311c.c(5);
        } else if (i2 == 5) {
            u0.b.f17311c.c(14);
        }
    }

    @Override // e1.l
    public void d() {
        b.d(this.f1720a);
    }

    @Override // e1.l
    public void f() {
    }

    @Override // e1.l
    public void h(int i2, int i3, int i4, int i5) {
        if (i2 != 1) {
            z.k.o(0, 176, o0.a(i3, 0, 12), o0.a(i4, 0, 12), o0.a(i5, 0, 12));
            return;
        }
        int iA = o0.a(i3, 0, 20);
        int iA2 = o0.a(i4, 0, 20);
        int iA3 = o0.a(i5, 0, 20);
        z.k.o(0, 176, 6, 0, 6);
        z.k.o(0, 177, iA, iA2, iA3);
    }

    @Override // e1.l
    public void i(int i2) {
        if (i2 < 0 || i2 > 10) {
            return;
        }
        if (i2 == 1) {
            j(0);
        } else {
            j(1);
        }
    }

    public final void j(int i2) {
        ToolsJni.cmd_22_set_video_mode(i2);
    }
}
