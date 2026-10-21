package n0;

import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class v2 extends n0.a {
    public g B;
    public Runnable C = new a();
    public final Runnable D = new b();
    public final Runnable E = new c();
    public final Runnable F = new d();
    public ClipboardManager A = (ClipboardManager) App.c().getSystemService(Context.CLIPBOARD_SERVICE);

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent("com.syu.send_ava");
            intent.putExtra("data", w0.d.f17797i);
            intent.putExtra("rds", w0.d.H);
            intent.putExtra("ps", w0.d.I);
            App.c().sendBroadcast(intent);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 10) {
                Intent intent = new Intent("com.microntek.irkeyDown");
                intent.putExtra("keyCode", 45);
                App.c().sendBroadcast(intent);
            }
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.D == 10) {
                Intent intent = new Intent("com.microntek.irkeyDown");
                intent.putExtra("keyCode", 46);
                App.c().sendBroadcast(intent);
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17326h == 0 && u0.b.f17306a0 == 1) {
                v2.this.A.setPrimaryClip(ClipData.newPlainText("standby", "xyz:star"));
            } else if (u0.b.f17326h == 1 || u0.b.f17306a0 == 0) {
                v2.this.A.setPrimaryClip(ClipData.newPlainText("standby", "xyz:stop"));
            }
        }
    }

    public class e implements c.f.a {
        public e() {
        }

        @Override // c.f.a
        public boolean a() {
            try {
                v2.this.A.setPrimaryClip(ClipData.newPlainText("standby", "xyz:swc"));
                return true;
            } catch (Exception unused) {
                return true;
            }
        }
    }

    public class f extends c.d {
        public f() {
        }

        @Override // c.d
        public boolean b(int i2) {
            o1.u.i();
            return true;
        }

        @Override // c.d
        public boolean c(int i2, int i3) {
            return false;
        }
    }

    public class g extends BroadcastReceiver {
        public g() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("com.syu.Turkey_Va".equals(intent.getAction())) {
                int[] intArrayExtra = intent.getIntArrayExtra("ints");
                float[] floatArrayExtra = intent.getFloatArrayExtra("flts");
                String[] stringArrayExtra = intent.getStringArrayExtra("strs");
                int intExtra = intent.getIntExtra("data1", 0);
                intent.getStringExtra("str0");
                if (intArrayExtra[0] != 120) {
                    u0.g.b(intArrayExtra, floatArrayExtra, stringArrayExtra);
                    return;
                }
                if (intExtra == 0) {
                    o1.u.t0();
                    return;
                }
                if (intExtra == 1) {
                    o1.u.x0();
                    return;
                }
                if (intExtra == 2) {
                    o1.u.s();
                    return;
                }
                if (intExtra == 3) {
                    o1.u.p();
                } else if (intExtra == 4) {
                    o1.u.i();
                } else {
                    if (intExtra != 5) {
                        return;
                    }
                    o1.u.c1();
                }
            }
        }

        public /* synthetic */ g(v2 v2Var, a aVar) {
            this();
        }
    }

    @Override // n0.c4
    public void C3() {
        u0.c.f17384k.d(this.F);
        u0.c.f17386m.d(this.F);
        z.c.f18182b.d(this.D);
        z.c.f18181a.d(this.E);
        if (T3()) {
            w0.e.f17815a.d(this.C);
            w0.e.f17817c.d(this.C);
        }
        super.C3();
    }

    @Override // n0.a, n0.c4
    public void L3() {
        j4.f16465c = "STL";
        m1.a.f13515d = 256;
        u0.b.h2 = true;
    }

    public boolean T3() {
        return o1.u.k0(App.c().getApplicationContext(), "com.ava.car") || o1.u.k0(App.c().getApplicationContext(), "com.ava.acessbilityapplication");
    }

    public final void U3() {
        this.B = new g(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.syu.Turkey_Va");
        App.c().registerReceiver(this.B, intentFilter);
    }

    @Override // n0.a, n0.c4
    public void X2() throws Throwable {
        super.X2();
        if (T3()) {
            U3();
            c.f.b().h(7, new e());
            w0.e.f17815a.a(this.C, 0);
            w0.e.f17817c.a(this.C, 0);
        }
        c.e.d().i(589, new f());
    }

    @Override // n0.a, n0.c4
    public void j3() {
        super.j3();
        u0.c.f17384k.a(this.F, 1);
        u0.c.f17386m.a(this.F, 1);
        z.c.f18182b.a(this.D, 0);
        z.c.f18181a.a(this.E, 0);
    }
}
