package n0;

import android.graphics.Rect;
import android.view.View;
import ui.Bar;

/* JADX INFO: loaded from: classes2.dex */
public class p3 extends c3 {

    public class a implements ui.a.g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16540a = 24;

        public a() {
        }

        @Override // ui.a.g
        public int a() {
            return this.f16540a;
        }

        @Override // ui.a.g
        public String b(int i2, int i3) {
            String str = "ui/vol/dudu/2000/";
            this.f16540a = 42;
            return str;
        }
    }

    public class b implements Bar.a {
        public b() {
        }

        @Override // ui.Bar.a
        public void a(int i2, boolean z2) {
            if (z2) {
                y0.h.u0(i2);
            }
        }

        @Override // ui.Bar.a
        public void b() {
            ui.b bVarV = a.f.v();
            if (bVarV instanceof ui.a) {
                ((ui.a) bVarV).o();
            }
        }

        @Override // ui.Bar.a
        public void c() {
        }

        @Override // ui.Bar.a
        public void d() {
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y0.h.u0(-5);
        }
    }

    public class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ui.a f16544a;

        public d(ui.a aVar) {
            this.f16544a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            ui.a aVar = this.f16544a;
            if (aVar != null) {
                aVar.s(y0.f.f18037c, y0.f.f18055i == 1);
            }
        }
    }

    public class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Runnable f16546a;

        public e(Runnable runnable) {
            this.f16546a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            o1.m.a().post(this.f16546a);
        }
    }

    public class f implements ui.a.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Runnable f16548a;

        public f(Runnable runnable) {
            this.f16548a = runnable;
        }

        @Override // ui.a.f
        public void a(boolean z2) {
            if (z2) {
                y0.g.f18094d.a(this.f16548a, 1);
                y0.g.f18095e.a(this.f16548a, 1);
            }
        }
    }

    @Override // n0.c3, n0.a, n0.c4
    public void L3() {
        super.L3();
        j4.f16465c = "LSDD";
        m1.a.f13515d = 305;
    }

    @Override // n0.c4
    public void M2() throws Throwable {
        super.M2();
        y0.j.a3().l3("com.dudu.autoui");
    }

    public final void T3() {
        if (a.f.v() != null && (a.f.v() instanceof ui.a)) {
            ((ui.a) a.f.v()).p(null);
        }
        a aVar = new a();
        int i2 = 28;
        int i3 = 70;
        if (a.f.w() >= 1920) {
            i2 = 40;
            i3 = 106;
        }
        ui.a aVarA = new ui.a.d().p(aVar.b(a.f.w(), a.f.i())).h(48).u(1).b("bk.png").l("mute.png").g("unmute.png").c("bar.png").d("bar_p.png").o(y0.f.f18049g).q(new int[]{-1, -65536}).s(new Rect(i3, -1, -1, -1)).j(new Rect(i2, -1, -1, -1)).t(aVar.a()).m(new c()).n(new b()).a();
        aVarA.p(aVar);
        aVarA.r(3);
        aVarA.q(new f(new e(new d(aVarA))));
        a.f.D(aVarA);
    }

    @Override // n0.a, n0.c4
    public void X2() throws Throwable {
        T3();
        super.X2();
    }
}
