package i1;

import android.net.ProxyProperties;
import android.util.Log;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class b0 extends b.c.b implements b.c.a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public a f2581i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f2582j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Object f2583k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2584l;

    public interface a {
        void a(b0 b0Var);

        void c(byte[] bArr);
    }

    public static abstract class b implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public b0 f2585a;

        @Override // i1.b0.a
        public void a(b0 b0Var) {
            this.f2585a = b0Var;
        }
    }

    public b0(b.c cVar) {
        super(cVar);
        this.f2582j = ProxyProperties.LOCAL_EXCL_LIST;
        this.f2583k = new Object();
        this.f2584l = false;
    }

    @Override // b.c.a
    public void b(byte[] bArr) {
        synchronized (this.f2583k) {
            a aVar = this.f2581i;
            if (aVar != null && bArr != null) {
                aVar.c(bArr);
            }
        }
    }

    public a g(String str, int i2) {
        a zVar;
        if ("TrackPlugin".equals(str) || "RadarPlugin".equals(str)) {
            w wVar = new w();
            w.G = "TrackPlugin".equals(str);
            zVar = wVar;
        } else if ("EngineMode".equals(str)) {
            zVar = new i1.b(21, 20);
        } else if ("LeiShenDsp".equals(str)) {
            zVar = new t(19, 19);
        } else if ("OroTpms".equals(str)) {
            zVar = new i(19, 19);
        } else if ("Accelerator".equals(str)) {
            zVar = new j(19, 19, j.b.f2650i);
        } else if ("Accelerator3B".equals(str)) {
            zVar = new j(19, 19, j.b.f2651j);
        } else if ("XZhanRadar".equals(str)) {
            zVar = new y(19, 19);
        } else if ("Common360_817".equals(str)) {
            zVar = new n(19, 19);
        } else if ("Common_XZMGuiji".equals(str)) {
            zVar = new q(19, 19);
        } else if ("Common_WCGuiji".equals(str)) {
            zVar = new p(19, 19);
        } else if ("Common_jjkkBbutton".equals(str)) {
            zVar = new o(19, 19);
        } else if ("RadarTianCheng".equals(str)) {
            zVar = new u(19, 19);
        } else if ("PluginWLLeds".equals(str)) {
            zVar = new x(19, 19);
        } else if ("SnnavLed".equals(str)) {
            zVar = new c0(19, 19);
        } else if ("RaiseLeds".equals(str)) {
            zVar = new a0(19, 19);
        } else if ("RadarXiaoFD".equals(str)) {
            zVar = new v(19, 19);
        } else if ("BBApannel".equals(str)) {
            zVar = new l(19, 19);
        } else if ("ZhiHangTv".equals(str)) {
            zVar = new r(19, 19);
        } else if ("ZhiHangTv2".equals(str)) {
            r rVar = new r(19, 19);
            rVar.f2714m = 0;
            rVar.f2715n = 1;
            zVar = rVar;
        } else if ("BBAKey".equals(str)) {
            zVar = new k(19, 19);
        } else if ("RadarBSD".equals(str)) {
            zVar = new m(19, 19);
        } else {
            zVar = "ZhiHangRadar".equals(str) ? new z(19, 19) : null;
        }
        Log.e("Device", "create plugin: " + str + " - " + zVar);
        if (zVar != null) {
            this.f2582j = str;
        }
        return zVar;
    }

    public synchronized void h(int i2) {
        b.c cVar = this.f260b;
        if (cVar != null) {
            cVar.d(i2);
        }
    }

    public void i(a aVar) {
        this.f2581i = aVar;
        if (aVar != null) {
            if (!this.f2584l) {
                e(this);
                this.f2584l = true;
            }
            aVar.a(this);
        }
    }

    public void j(String str, int i2) {
        if (s0.t(str) || str.equals(this.f2582j)) {
            return;
        }
        i(g(str, i2));
    }
}
