package kotlinx.coroutines.scheduling;

import android.app.job.JobInfo;
import android.os.Trace;
import android.text.format.DateFormat;
import e.r;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements Executor, Closeable {
    private volatile /* synthetic */ int _isTerminated;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1029b;
    public final int c;
    volatile /* synthetic */ long controlState;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f1030d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f1031e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final f f1032f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final f f1033g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final k0.g f1034h;
    private volatile /* synthetic */ long parkedWorkersStack;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final p.b f1028l = new p.b("NOT_IN_STACK");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f1025i = AtomicLongFieldUpdater.newUpdater(c.class, "parkedWorkersStack");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f1026j = AtomicLongFieldUpdater.newUpdater(c.class, "controlState");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f1027k = AtomicIntegerFieldUpdater.newUpdater(c.class, "_isTerminated");

    public c(int i2, int i3, long j2, String str) {
        this.f1029b = i2;
        this.c = i3;
        this.f1030d = j2;
        this.f1031e = str;
        if (!(i2 >= 1)) {
            throw new IllegalArgumentException(android.accessibilityservice.c.e("Core pool size ", i2, " should be at least 1").toString());
        }
        if (!(i3 >= i2)) {
            throw new IllegalArgumentException(android.app.m.e("Max pool size ", i3, " should be greater than or equals to core pool size ", i2).toString());
        }
        if (!(i3 <= 2097150)) {
            throw new IllegalArgumentException(android.accessibilityservice.c.e("Max pool size ", i3, " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (!(j2 > 0)) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j2 + " must be positive").toString());
        }
        this.f1032f = new f();
        this.f1033g = new f();
        this.parkedWorkersStack = 0L;
        this.f1034h = new k0.g(i2 + 1);
        this.controlState = ((long) i2) << 42;
        this._isTerminated = 0;
    }

    public final int a() {
        synchronized (this.f1034h) {
            if (this._isTerminated != 0) {
                return -1;
            }
            long j2 = this.controlState;
            int i2 = (int) (j2 & 2097151);
            int i3 = i2 - ((int) ((j2 & 4398044413952L) >> 21));
            if (i3 < 0) {
                i3 = 0;
            }
            if (i3 >= this.f1029b) {
                return 0;
            }
            if (i2 >= this.c) {
                return 0;
            }
            int i4 = ((int) (this.controlState & 2097151)) + 1;
            if (!(i4 > 0 && this.f1034h.b(i4) == null)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            b bVar = new b(this, i4);
            this.f1034h.c(i4, bVar);
            if (!(i4 == ((int) (2097151 & f1026j.incrementAndGet(this))))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            bVar.start();
            return i3 + 1;
        }
    }

    public final void b(Runnable runnable, r rVar, boolean z2) {
        i jVar;
        i iVarA;
        CoroutineScheduler$WorkerState coroutineScheduler$WorkerState;
        k.f1043e.getClass();
        long jNanoTime = System.nanoTime();
        if (runnable instanceof i) {
            jVar = (i) runnable;
            jVar.f1038b = jNanoTime;
            jVar.c = rVar;
        } else {
            jVar = new j(runnable, jNanoTime, rVar);
        }
        Thread threadCurrentThread = Thread.currentThread();
        b bVar = null;
        b bVar2 = threadCurrentThread instanceof b ? (b) threadCurrentThread : null;
        if (bVar2 != null && t.b.a(bVar2.f1024h, this)) {
            bVar = bVar2;
        }
        if (bVar == null || (coroutineScheduler$WorkerState = bVar.c) == CoroutineScheduler$WorkerState.TERMINATED || (jVar.c.f785a == 0 && coroutineScheduler$WorkerState == CoroutineScheduler$WorkerState.BLOCKING)) {
            iVarA = jVar;
        } else {
            bVar.f1023g = true;
            iVarA = bVar.f1019b.a(jVar, z2);
        }
        if (iVarA != null) {
            if (!(iVarA.c.f785a == 1 ? this.f1033g.a(iVarA) : this.f1032f.a(iVarA))) {
                throw new RejectedExecutionException(t.b.y(" was terminated", this.f1031e));
            }
        }
        boolean z3 = z2 && bVar != null;
        if (jVar.c.f785a == 0) {
            if (z3 || f() || e(this.controlState)) {
                return;
            }
            f();
            return;
        }
        long jAddAndGet = f1026j.addAndGet(this, Trace.TRACE_TAG_NETWORK);
        if (z3 || f() || e(jAddAndGet)) {
            return;
        }
        f();
    }

    public final void c(b bVar) {
        long j2;
        long j3;
        int iB;
        if (bVar.c() != f1028l) {
            return;
        }
        do {
            j2 = this.parkedWorkersStack;
            j3 = (Trace.TRACE_TAG_NETWORK + j2) & (-2097152);
            iB = bVar.b();
            bVar.g(this.f1034h.b((int) (2097151 & j2)));
        } while (!f1025i.compareAndSet(this, j2, ((long) iB) | j3));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws InterruptedException {
        int i2;
        boolean z2;
        if (f1027k.compareAndSet(this, 0, 1)) {
            Thread threadCurrentThread = Thread.currentThread();
            b bVar = threadCurrentThread instanceof b ? (b) threadCurrentThread : null;
            if (bVar == null || !t.b.a(bVar.f1024h, this)) {
                bVar = null;
            }
            synchronized (this.f1034h) {
                i2 = (int) (this.controlState & 2097151);
            }
            if (1 <= i2) {
                int i3 = 1;
                while (true) {
                    int i4 = i3 + 1;
                    Object objB = this.f1034h.b(i3);
                    t.b.e(objB);
                    b bVar2 = (b) objB;
                    if (bVar2 != bVar) {
                        while (bVar2.isAlive()) {
                            LockSupport.unpark(bVar2);
                            bVar2.join(JobInfo.MIN_BACKOFF_MILLIS);
                        }
                        m mVar = bVar2.f1019b;
                        f fVar = this.f1033g;
                        mVar.getClass();
                        i iVar = (i) m.f1046b.getAndSet(mVar, null);
                        if (iVar != null) {
                            fVar.a(iVar);
                        }
                        do {
                            i iVarD = mVar.d();
                            if (iVarD == null) {
                                z2 = false;
                            } else {
                                fVar.a(iVarD);
                                z2 = true;
                            }
                        } while (z2);
                    }
                    if (i3 == i2) {
                        break;
                    } else {
                        i3 = i4;
                    }
                }
            }
            this.f1033g.b();
            this.f1032f.b();
            while (true) {
                i iVarA = bVar == null ? null : bVar.a(true);
                if (iVarA == null && (iVarA = (i) this.f1032f.d()) == null && (iVarA = (i) this.f1033g.d()) == null) {
                    break;
                }
                try {
                    ((j) iVarA).run();
                } catch (Throwable th) {
                    Thread threadCurrentThread2 = Thread.currentThread();
                    threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
                }
            }
            if (bVar != null) {
                bVar.h(CoroutineScheduler$WorkerState.TERMINATED);
            }
            this.parkedWorkersStack = 0L;
            this.controlState = 0L;
        }
    }

    public final void d(b bVar, int i2, int i3) {
        while (true) {
            long j2 = this.parkedWorkersStack;
            int i4 = (int) (2097151 & j2);
            long j3 = (Trace.TRACE_TAG_NETWORK + j2) & (-2097152);
            if (i4 == i2) {
                if (i3 == 0) {
                    Object objC = bVar.c();
                    while (true) {
                        if (objC == f1028l) {
                            i4 = -1;
                            break;
                        }
                        if (objC == null) {
                            i4 = 0;
                            break;
                        }
                        b bVar2 = (b) objC;
                        int iB = bVar2.b();
                        if (iB != 0) {
                            i4 = iB;
                            break;
                        }
                        objC = bVar2.c();
                    }
                } else {
                    i4 = i3;
                }
            }
            if (i4 >= 0 && f1025i.compareAndSet(this, j2, j3 | ((long) i4))) {
                return;
            }
        }
    }

    public final boolean e(long j2) {
        int i2 = ((int) (2097151 & j2)) - ((int) ((j2 & 4398044413952L) >> 21));
        if (i2 < 0) {
            i2 = 0;
        }
        int i3 = this.f1029b;
        if (i2 < i3) {
            int iA = a();
            if (iA == 1 && i3 > 1) {
                a();
            }
            if (iA > 0) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        b(runnable, k.f1044f, false);
    }

    public final boolean f() {
        p.b bVar;
        int iB;
        while (true) {
            long j2 = this.parkedWorkersStack;
            b bVar2 = (b) this.f1034h.b((int) (2097151 & j2));
            if (bVar2 == null) {
                bVar2 = null;
            } else {
                long j3 = (Trace.TRACE_TAG_NETWORK + j2) & (-2097152);
                Object objC = bVar2.c();
                while (true) {
                    bVar = f1028l;
                    if (objC == bVar) {
                        iB = -1;
                        break;
                    }
                    if (objC == null) {
                        iB = 0;
                        break;
                    }
                    b bVar3 = (b) objC;
                    iB = bVar3.b();
                    if (iB != 0) {
                        break;
                    }
                    objC = bVar3.c();
                }
                if (iB >= 0 && f1025i.compareAndSet(this, j2, ((long) iB) | j3)) {
                    bVar2.g(bVar);
                }
            }
            if (bVar2 == null) {
                return false;
            }
            if (b.f1018i.compareAndSet(bVar2, -1, 0)) {
                LockSupport.unpark(bVar2);
                return true;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean isTerminated() {
        return this._isTerminated;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        int iA = this.f1034h.a();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 1;
        while (i7 < iA) {
            int i8 = i7 + 1;
            b bVar = (b) this.f1034h.b(i7);
            if (bVar != null) {
                int iC = bVar.f1019b.c();
                int i9 = a.f1017a[bVar.c.ordinal()];
                if (i9 == 1) {
                    i4++;
                } else if (i9 == 2) {
                    i3++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(iC);
                    sb.append('b');
                    arrayList.add(sb.toString());
                } else if (i9 == 3) {
                    i2++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(iC);
                    sb2.append('c');
                    arrayList.add(sb2.toString());
                } else if (i9 == 4) {
                    i5++;
                    if (iC > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(iC);
                        sb3.append(DateFormat.DATE);
                        arrayList.add(sb3.toString());
                    }
                } else if (i9 == 5) {
                    i6++;
                }
            }
            i7 = i8;
        }
        long j2 = this.controlState;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.f1031e);
        sb4.append('@');
        sb4.append(Integer.toHexString(System.identityHashCode(this)));
        sb4.append("[Pool Size {core = ");
        sb4.append(this.f1029b);
        sb4.append(", max = ");
        android.app.m.u(sb4, this.c, "}, Worker States {CPU = ", i2, ", blocking = ");
        android.app.m.u(sb4, i3, ", parked = ", i4, ", dormant = ");
        android.app.m.u(sb4, i5, ", terminated = ", i6, "}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.f1032f.c());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.f1033g.c());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j2));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j2) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(this.f1029b - ((int) ((9223367638808264704L & j2) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }
}
