package n0;

import android.net.ProxyProperties;
import app.App;
import module.sound.AudioDevice;
import module.sound.C32107;

/* JADX INFO: loaded from: classes2.dex */
public class g4 extends n0.a {

    public class a implements o1.o {
        public a() {
        }

        @Override // o1.o
        public boolean a(int i2, int[] iArr, float[] fArr, String[] strArr, Object obj) {
            if (i2 != 0) {
                return false;
            }
            o1.u.a1();
            return false;
        }
    }

    public class b implements c.f.a {
        public b() {
        }

        @Override // c.f.a
        public boolean a() {
            o1.u.H0("com.roadrover.voiceassistant", "com.roadrover.voiceassistant.activity.HelloActivity");
            return true;
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16426a = -1;

        public class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ int f16428a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ boolean f16429b;

            public a(int i2, boolean z2) {
                this.f16428a = i2;
                this.f16429b = z2;
            }

            @Override // java.lang.Runnable
            public void run() {
                int[] iArr = new int[3];
                iArr[0] = 1;
                iArr[1] = 0;
                iArr[2] = this.f16428a == 1 ? 205 : 204;
                z.k.s(iArr);
                if (this.f16429b) {
                    h0.e.J(4, false);
                }
            }
        }

        public c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            boolean z2 = (h0.c.f2431e || h0.c.E == 5) ? 1 : 0;
            int i2 = !z2;
            if (this.f16426a != i2) {
                if (z2 != 0) {
                    h0.e.J(4, true);
                }
                o1.l.a().postDelayed(new a(i2, z2), z2 != 0 ? 200 : 0);
                this.f16426a = i2;
            }
        }
    }

    @Override // n0.c4
    public void H3(AudioDevice audioDevice) {
        super.H3(audioDevice);
        String strO = o1.s0.o("sys.fyt.bluetooth_type", "0");
        if ((strO.equals("4") || strO.equals("6")) && (audioDevice instanceof C32107)) {
            C32107.CHANNEL channel = C32107.CHANNEL.DVD;
            audioDevice.L0(3, channel.f15215a);
            audioDevice.L0(2, channel.f15215a);
        }
    }

    @Override // n0.c4
    public void I3(e1.c cVar) {
        super.I3(cVar);
        if (o1.s0.t(o1.s0.o("sys.syu.dvd_type", ProxyProperties.LOCAL_EXCL_LIST)) && (cVar instanceof e1.e)) {
            cVar.v(2, 3);
            cVar.v(6, 2);
            cVar.v(5, 2);
        }
    }

    @Override // n0.c4
    public void K3() {
        b.b.f().b("3", true);
        b.b.f().b("4", true);
        String strO = o1.s0.o("sys.fyt.bluetooth_type", "0");
        if (strO.equals("4") || strO.equals("6")) {
            c cVar = new c();
            h0.d.f2464c.a(cVar, 1);
            h0.d.f2462a.a(cVar, 1);
        }
    }

    @Override // n0.a, n0.c4
    public void L3() {
        j4.f16465c = "LUCH";
        m1.a.f13515d = 261;
        c.g.g(App.c()).b();
    }

    @Override // n0.a, n0.c4
    public void X2() throws Throwable {
        u0.b.l2 = false;
        if (o1.u.k0(App.c(), "com.roadrover.voiceassistant")) {
            o1.v vVar = e.c.E;
            vVar.b();
            vVar.a(e.a.e(), -500);
            vVar.a(new a(), 2000);
            c.f.b().h(7, new b());
        }
        super.X2();
    }
}
