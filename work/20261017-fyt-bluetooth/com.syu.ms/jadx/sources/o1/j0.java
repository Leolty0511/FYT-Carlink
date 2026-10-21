package o1;

import android.graphics.Paint;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import java.io.File;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class j0 implements Runnable {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final j0 f16912g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final j0 f16913h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final j0 f16914i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final j0 f16915j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final j0 f16916k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static boolean f16917l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static SparseArray<j0> f16918m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final DateFormat f16919n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList<Runnable> f16920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f16921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable[] f16922c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f16923d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f16924e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16925f;

    public static class a extends Thread {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final a f16926f = new a(10);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final a f16927g = new a(100);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f16928h = new a(1000);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ArrayList<Runnable> f16929a = new ArrayList<>(256);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f16930b = true;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Runnable[] f16931c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f16932d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f16933e;

        /* JADX INFO: renamed from: o1.j0$a$a, reason: collision with other inner class name */
        public static class C0094a extends Thread {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public static final C0094a f16934e = new C0094a();

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public ArrayList<a> f16935a = new ArrayList<>();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f16936b = true;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public a[] f16937c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public StringBuffer f16938d;

            public C0094a() {
                start();
            }

            public static C0094a d() {
                return f16934e;
            }

            public final void c(a aVar) {
                synchronized (this.f16935a) {
                    this.f16935a.add(aVar);
                    this.f16936b = true;
                }
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                long jUptimeMillis;
                int i2;
                a aVar;
                loop0: while (true) {
                    if (u0.b.n4 == 0 || u0.b.f17320f == 0 || u0.b.f17306a0 == 0) {
                        s0.C(10L);
                    } else {
                        jUptimeMillis = SystemClock.uptimeMillis();
                        if (this.f16936b) {
                            this.f16936b = false;
                            synchronized (this.f16935a) {
                                a[] aVarArr = new a[this.f16935a.size()];
                                this.f16937c = aVarArr;
                                this.f16935a.toArray(aVarArr);
                            }
                        }
                        a[] aVarArr2 = this.f16937c;
                        int length = aVarArr2.length;
                        for (int i3 = 0; i3 < length; i3++) {
                            aVar = aVarArr2[i3];
                            if (jUptimeMillis - aVar.f16933e > 30000) {
                                break loop0;
                            }
                        }
                        a.i.a0(1000L);
                    }
                }
                if (j0.f16917l) {
                    a.f.k().l(0, "tick error", "定时器被阻塞 定时器精度为  " + aVar.f16932d, Paint.Align.CENTER, 30, -1, 60, 2147483392);
                }
                StackTraceElement[] stackTrace = aVar.getStackTrace();
                if (stackTrace == null) {
                    if (j0.f16917l) {
                        a.i.a0(30000L);
                    }
                    a.i.f84d.run();
                    return;
                }
                this.f16938d = new StringBuffer();
                this.f16938d.append(aVar.getName() + " startMllis:" + aVar.f16933e + " delta time: " + (jUptimeMillis - aVar.f16933e) + " State: " + aVar.getState());
                for (StackTraceElement stackTraceElement : stackTrace) {
                    String str = stackTraceElement.getFileName() + ":" + stackTraceElement.getMethodName() + ":(" + stackTraceElement.getLineNumber() + ")";
                    this.f16938d.append(str);
                    this.f16938d.append("\n");
                    if (j0.f16917l) {
                        a.f.k().l(0, str, str, Paint.Align.CENTER, 20, -1, 30, 2147483392);
                    }
                }
                j0.e(this.f16938d.toString());
                if (j0.f16917l) {
                    a.i.a0(30000L);
                } else {
                    a.i.a0(1000L);
                }
                a.i.f84d.run();
            }
        }

        public a(long j2) {
            this.f16932d = j2;
            setName("TickThread" + j2 + "ms");
            this.f16933e = SystemClock.uptimeMillis();
            start();
            C0094a.d().c(this);
        }

        public void c(Runnable runnable) {
            if (runnable != null) {
                synchronized (this.f16929a) {
                    if (!this.f16929a.contains(runnable)) {
                        this.f16929a.add(runnable);
                        this.f16930b = true;
                    }
                }
            }
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x0021 */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                r6 = this;
            L0:
                long r0 = android.os.SystemClock.uptimeMillis()
                r6.f16933e = r0
                boolean r0 = r6.f16930b
                r1 = 0
                if (r0 == 0) goto L24
                r6.f16930b = r1
                java.util.ArrayList<java.lang.Runnable> r0 = r6.f16929a
                monitor-enter(r0)
                java.util.ArrayList<java.lang.Runnable> r2 = r6.f16929a     // Catch: java.lang.Throwable -> L21
                int r2 = r2.size()     // Catch: java.lang.Throwable -> L21
                java.lang.Runnable[] r2 = new java.lang.Runnable[r2]     // Catch: java.lang.Throwable -> L21
                r6.f16931c = r2     // Catch: java.lang.Throwable -> L21
                java.util.ArrayList<java.lang.Runnable> r3 = r6.f16929a     // Catch: java.lang.Throwable -> L21
                r3.toArray(r2)     // Catch: java.lang.Throwable -> L21
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L21
                goto L24
            L21:
                r1 = move-exception
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L21
                throw r1
            L24:
                java.lang.Runnable[] r0 = r6.f16931c
                int r2 = r0.length
            L27:
                if (r1 >= r2) goto L37
                r3 = r0[r1]
                long r4 = android.os.SystemClock.uptimeMillis()
                r6.f16933e = r4
                r3.run()
                int r1 = r1 + 1
                goto L27
            L37:
                long r0 = android.os.SystemClock.uptimeMillis()
                long r2 = r6.f16933e
                long r0 = r0 - r2
                long r2 = r6.f16932d
                int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r4 >= 0) goto L0
                long r2 = r2 - r0
                a.i.a0(r2)
                goto L0
            */
            throw new UnsupportedOperationException("Method not decompiled: o1.j0.a.run():void");
        }
    }

    static {
        a aVar = a.f16927g;
        j0 j0Var = new j0(100, aVar);
        f16912g = j0Var;
        j0 j0Var2 = new j0(200, aVar);
        f16913h = j0Var2;
        j0 j0Var3 = new j0(500, aVar);
        f16914i = j0Var3;
        a aVar2 = a.f16928h;
        j0 j0Var4 = new j0(1000, aVar2);
        f16915j = j0Var4;
        j0 j0Var5 = new j0(2000, aVar2);
        f16916k = j0Var5;
        f16917l = false;
        SparseArray<j0> sparseArray = new SparseArray<>(8);
        f16918m = sparseArray;
        sparseArray.put(100, j0Var);
        f16918m.put(200, j0Var2);
        f16918m.put(500, j0Var3);
        f16918m.put(1000, j0Var4);
        f16918m.put(2000, j0Var5);
        f16919n = new SimpleDateFormat("yyyy-MM-dd-hh-mm-ss");
    }

    public j0(int i2) {
        this.f16920a = new ArrayList<>(256);
        this.f16921b = true;
        this.f16922c = null;
        this.f16925f = i2 < 0 ? 0 : i2;
    }

    public static void e(String str) {
        try {
            String str2 = "crash-com.syu.ms.tick-" + f16919n.format(new Date()) + ".txt";
            File file = new File("/sdcard/crash");
            if (!file.exists()) {
                file.mkdirs();
            }
            FileOutputStream fileOutputStream = new FileOutputStream("/sdcard/crash/" + str2);
            fileOutputStream.write(str.toString().getBytes());
            fileOutputStream.close();
        } catch (Exception e2) {
            Log.e("Tick", "an error occured while writing file...\n" + e2.toString());
        }
    }

    public void c(Runnable runnable) {
        if (runnable != null) {
            synchronized (this.f16920a) {
                if (!this.f16920a.contains(runnable)) {
                    this.f16920a.add(runnable);
                    this.f16921b = true;
                }
            }
        }
    }

    public void d(Runnable runnable) {
        if (runnable != null) {
            synchronized (this.f16920a) {
                if (this.f16920a.remove(runnable)) {
                    this.f16921b = true;
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        this.f16924e = jUptimeMillis;
        if (jUptimeMillis - this.f16923d < this.f16925f) {
            return;
        }
        this.f16923d = jUptimeMillis;
        if (this.f16921b) {
            this.f16921b = false;
            synchronized (this.f16920a) {
                Runnable[] runnableArr = new Runnable[this.f16920a.size()];
                this.f16922c = runnableArr;
                this.f16920a.toArray(runnableArr);
            }
        }
        for (Runnable runnable : this.f16922c) {
            runnable.run();
        }
    }

    public j0(int i2, a aVar) {
        this(i2);
        aVar.c(this);
    }
}
