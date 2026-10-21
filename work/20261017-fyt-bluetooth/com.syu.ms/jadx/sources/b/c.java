package b;

import android.util.Log;
import com.syu.jni.JniSerial;
import g.e;
import g.f;
import java.util.HashMap;
import o1.m;
import o1.s0;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static HashMap<String, Integer> f255d = new HashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f256a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f257b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f258c = -1;

    public interface a {
        void b(byte[] bArr);
    }

    public static class b extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f259a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public c f260b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public a f261c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f262d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f263e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f264f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public volatile boolean f265g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Runnable f266h;

        public class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f267a = -1;

            /* JADX INFO: renamed from: b.c$b$a$a, reason: collision with other inner class name */
            public class RunnableC0010a implements Runnable {
                public RunnableC0010a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    b.this.d(false);
                }
            }

            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                int i2 = u0.b.f17320f;
                if (i2 != this.f267a) {
                    this.f267a = i2;
                    if (i2 == 0) {
                        b.this.d(true);
                    } else if (i2 > 0) {
                        int iE = e.e();
                        m.a().postDelayed(new RunnableC0010a(), (e.p() == 48 || iE == 44 || iE == 60 || iE == 46 || iE == 47) ? 7000 : 4000);
                    }
                }
            }
        }

        public b(c cVar) {
            this(cVar, null);
        }

        public boolean a() {
            return this.f263e;
        }

        public void c(boolean z2) {
            if (this.f264f != z2) {
                this.f264f = z2;
                if (z2) {
                    u0.c.f17376c.a(this.f266h, 1);
                } else {
                    u0.c.f17376c.d(this.f266h);
                }
            }
        }

        public void d(boolean z2) {
            if (this.f263e != z2) {
                this.f263e = z2;
                if (z2 || !this.f265g) {
                    return;
                }
                synchronized (this) {
                    notify();
                    this.f265g = false;
                }
            }
        }

        public synchronized void e(a aVar) {
            if (aVar != null) {
                if (!aVar.equals(this.f261c)) {
                    this.f261c = aVar;
                    start();
                    if (this.f265g) {
                        synchronized (this) {
                            notify();
                            this.f265g = false;
                        }
                    }
                }
            }
        }

        public void f(int... iArr) {
            c cVar;
            if (this.f263e || (cVar = this.f260b) == null) {
                return;
            }
            cVar.f(iArr);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (this.f262d) {
                c cVar = this.f260b;
                a aVar = this.f261c;
                if (this.f264f && cVar != null) {
                    if (this.f263e) {
                        cVar.a();
                    } else {
                        cVar.b();
                    }
                }
                if (cVar == null || aVar == null || this.f263e) {
                    synchronized (this) {
                        try {
                            this.f265g = true;
                            wait();
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                            this.f265g = false;
                        }
                    }
                } else {
                    aVar.b(cVar.c());
                }
            }
        }

        public b(c cVar, a aVar) {
            this.f259a = false;
            this.f262d = true;
            this.f263e = false;
            this.f264f = false;
            this.f265g = false;
            this.f266h = new a();
            this.f260b = cVar;
            this.f261c = aVar;
            if (cVar == null) {
                return;
            }
            cVar.b();
            e(aVar);
        }
    }

    public c(String str, int i2) {
        this.f256a = str;
        this.f257b = i2;
    }

    public synchronized void a() {
        if (this.f258c >= 0) {
            if (f.n(12) || f.n(11)) {
                JniSerial.setup(this.f258c, 2400, 8, 78, 1);
            }
            JniSerial.close(this.f258c);
            this.f258c = -1;
            f255d.put(this.f256a, -1);
        }
    }

    public int b() {
        Integer numValueOf = f255d.get(this.f256a);
        if (numValueOf == null || numValueOf.intValue() < 0) {
            numValueOf = Integer.valueOf(JniSerial.open(this.f256a));
            if (numValueOf.intValue() >= 0) {
                e(this.f257b, numValueOf.intValue());
                f255d.put(this.f256a, numValueOf);
            }
        }
        this.f258c = numValueOf.intValue();
        return numValueOf.intValue();
    }

    public byte[] c() {
        int i2 = this.f258c;
        if (i2 >= 0) {
            return JniSerial.read(i2, 512, 2);
        }
        return null;
    }

    public int d(int i2) {
        return e(i2, this.f258c);
    }

    public synchronized int e(int i2, int i3) {
        if (i3 < 0) {
            return -1;
        }
        this.f257b = i2;
        int upVar = JniSerial.setup(i3, i2, 8, 78, 1);
        Log.e("ec", "------------  mfd : " + i3 + " path : " + this.f256a + " baud :" + i2 + " ret:" + upVar);
        return upVar;
    }

    public synchronized int f(int... iArr) {
        int i2;
        int i3;
        i2 = -1;
        if ((iArr == null ? 0 : iArr.length) > 0 && (i3 = this.f258c) >= 0) {
            JniSerial.write(i3, s0.r(iArr), 0, iArr.length);
            i2 = 0;
        }
        return i2;
    }
}
