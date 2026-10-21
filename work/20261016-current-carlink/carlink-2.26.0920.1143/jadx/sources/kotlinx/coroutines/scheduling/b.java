package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes4.dex */
public final class b extends Thread {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f1018i = AtomicIntegerFieldUpdater.newUpdater(b.class, "workerCtl");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final m f1019b;
    public CoroutineScheduler$WorkerState c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f1020d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f1021e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1022f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1023g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ c f1024h;
    private volatile int indexInArray;
    private volatile Object nextParkedWorker;
    volatile /* synthetic */ int workerCtl;

    public b(c cVar, int i2) {
        this.f1024h = cVar;
        this.f1024h = cVar;
        setDaemon(true);
        this.f1019b = new m();
        this.c = CoroutineScheduler$WorkerState.DORMANT;
        this.workerCtl = 0;
        this.nextParkedWorker = c.f1028l;
        this.f1022f = a0.d.Default.nextInt();
        f(i2);
    }

    public final i a(boolean z2) {
        boolean z3;
        i iVarD;
        i iVarE;
        i iVarE2;
        boolean z4;
        if (this.c == CoroutineScheduler$WorkerState.CPU_ACQUIRED) {
            z3 = true;
        } else {
            c cVar = this.f1024h;
            while (true) {
                long j2 = cVar.controlState;
                if (((int) ((9223367638808264704L & j2) >> 42)) == 0) {
                    z4 = false;
                    break;
                }
                if (c.f1026j.compareAndSet(cVar, j2, j2 - 4398046511104L)) {
                    z4 = true;
                    break;
                }
            }
            if (z4) {
                this.c = CoroutineScheduler$WorkerState.CPU_ACQUIRED;
                z3 = true;
            } else {
                z3 = false;
            }
        }
        if (!z3) {
            if (z2) {
                m mVar = this.f1019b;
                mVar.getClass();
                iVarD = (i) m.f1046b.getAndSet(mVar, null);
                if (iVarD == null) {
                    iVarD = mVar.d();
                }
                if (iVarD == null) {
                    iVarD = (i) this.f1024h.f1033g.d();
                }
            } else {
                iVarD = (i) this.f1024h.f1033g.d();
            }
            return iVarD == null ? i(true) : iVarD;
        }
        if (z2) {
            boolean z5 = d(this.f1024h.f1029b * 2) == 0;
            if (z5 && (iVarE2 = e()) != null) {
                return iVarE2;
            }
            m mVar2 = this.f1019b;
            mVar2.getClass();
            i iVar = (i) m.f1046b.getAndSet(mVar2, null);
            i iVarD2 = iVar == null ? mVar2.d() : iVar;
            if (iVarD2 != null) {
                return iVarD2;
            }
            if (!z5 && (iVarE = e()) != null) {
                return iVarE;
            }
        } else {
            i iVarE3 = e();
            if (iVarE3 != null) {
                return iVarE3;
            }
        }
        return i(false);
    }

    public final int b() {
        return this.indexInArray;
    }

    public final Object c() {
        return this.nextParkedWorker;
    }

    public final int d(int i2) {
        int i3 = this.f1022f;
        int i4 = i3 ^ (i3 << 13);
        int i5 = i4 ^ (i4 >> 17);
        int i6 = i5 ^ (i5 << 5);
        this.f1022f = i6;
        int i7 = i2 - 1;
        return (i7 & i2) == 0 ? i6 & i7 : (i6 & Integer.MAX_VALUE) % i2;
    }

    public final i e() {
        int iD = d(2);
        c cVar = this.f1024h;
        if (iD == 0) {
            i iVar = (i) cVar.f1032f.d();
            return iVar == null ? (i) cVar.f1033g.d() : iVar;
        }
        i iVar2 = (i) cVar.f1033g.d();
        return iVar2 == null ? (i) cVar.f1032f.d() : iVar2;
    }

    public final void f(int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f1024h.f1031e);
        sb.append("-worker-");
        sb.append(i2 == 0 ? "TERMINATED" : String.valueOf(i2));
        setName(sb.toString());
        this.indexInArray = i2;
    }

    public final void g(Object obj) {
        this.nextParkedWorker = obj;
    }

    public final boolean h(CoroutineScheduler$WorkerState coroutineScheduler$WorkerState) {
        CoroutineScheduler$WorkerState coroutineScheduler$WorkerState2 = this.c;
        boolean z2 = coroutineScheduler$WorkerState2 == CoroutineScheduler$WorkerState.CPU_ACQUIRED;
        if (z2) {
            c.f1026j.addAndGet(this.f1024h, 4398046511104L);
        }
        if (coroutineScheduler$WorkerState2 != coroutineScheduler$WorkerState) {
            this.c = coroutineScheduler$WorkerState;
        }
        return z2;
    }

    public final i i(boolean z2) {
        long jF;
        int i2 = (int) (this.f1024h.controlState & 2097151);
        if (i2 < 2) {
            return null;
        }
        int iD = d(i2);
        c cVar = this.f1024h;
        int i3 = 0;
        long jMin = Long.MAX_VALUE;
        while (i3 < i2) {
            i3++;
            iD++;
            if (iD > i2) {
                iD = 1;
            }
            b bVar = (b) cVar.f1034h.b(iD);
            if (bVar != null && bVar != this) {
                if (z2) {
                    jF = this.f1019b.e(bVar.f1019b);
                } else {
                    m mVar = this.f1019b;
                    m mVar2 = bVar.f1019b;
                    mVar.getClass();
                    i iVarD = mVar2.d();
                    if (iVarD != null) {
                        mVar.a(iVarD, false);
                        jF = -1;
                    } else {
                        jF = mVar.f(mVar2, false);
                    }
                }
                if (jF == -1) {
                    m mVar3 = this.f1019b;
                    mVar3.getClass();
                    i iVar = (i) m.f1046b.getAndSet(mVar3, null);
                    return iVar == null ? mVar3.d() : iVar;
                }
                if (jF > 0) {
                    jMin = Math.min(jMin, jF);
                }
            }
        }
        if (jMin == Long.MAX_VALUE) {
            jMin = 0;
        }
        this.f1021e = jMin;
        return null;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        loop0: while (true) {
            boolean z2 = false;
            while (true) {
                if (!this.f1024h.isTerminated()) {
                    CoroutineScheduler$WorkerState coroutineScheduler$WorkerState = this.c;
                    CoroutineScheduler$WorkerState coroutineScheduler$WorkerState2 = CoroutineScheduler$WorkerState.TERMINATED;
                    if (coroutineScheduler$WorkerState == coroutineScheduler$WorkerState2) {
                        break loop0;
                    }
                    i iVarA = a(this.f1023g);
                    if (iVarA != null) {
                        this.f1021e = 0L;
                        int i2 = iVarA.c.f785a;
                        this.f1020d = 0L;
                        if (this.c == CoroutineScheduler$WorkerState.PARKING) {
                            this.c = CoroutineScheduler$WorkerState.BLOCKING;
                        }
                        c cVar = this.f1024h;
                        if (i2 != 0 && h(CoroutineScheduler$WorkerState.BLOCKING) && !cVar.f() && !cVar.e(cVar.controlState)) {
                            cVar.f();
                        }
                        cVar.getClass();
                        try {
                            ((j) iVarA).run();
                        } catch (Throwable th) {
                            Thread threadCurrentThread = Thread.currentThread();
                            threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
                        }
                        if (i2 != 0) {
                            c.f1026j.addAndGet(cVar, -2097152L);
                            if (this.c == coroutineScheduler$WorkerState2) {
                                break;
                            }
                            this.c = CoroutineScheduler$WorkerState.DORMANT;
                            break;
                        }
                        break;
                    }
                    this.f1023g = false;
                    if (this.f1021e == 0) {
                        if (this.nextParkedWorker != c.f1028l) {
                            this.workerCtl = -1;
                            while (true) {
                                if (!(this.nextParkedWorker != c.f1028l) || this.workerCtl != -1 || this.f1024h.isTerminated()) {
                                    break;
                                }
                                CoroutineScheduler$WorkerState coroutineScheduler$WorkerState3 = this.c;
                                CoroutineScheduler$WorkerState coroutineScheduler$WorkerState4 = CoroutineScheduler$WorkerState.TERMINATED;
                                if (coroutineScheduler$WorkerState3 == coroutineScheduler$WorkerState4) {
                                    break;
                                }
                                h(CoroutineScheduler$WorkerState.PARKING);
                                Thread.interrupted();
                                if (this.f1020d == 0) {
                                    this.f1020d = System.nanoTime() + this.f1024h.f1030d;
                                }
                                LockSupport.parkNanos(this.f1024h.f1030d);
                                if (System.nanoTime() - this.f1020d >= 0) {
                                    this.f1020d = 0L;
                                    c cVar2 = this.f1024h;
                                    synchronized (cVar2.f1034h) {
                                        if (!cVar2.isTerminated()) {
                                            if (((int) (cVar2.controlState & 2097151)) > cVar2.f1029b) {
                                                if (f1018i.compareAndSet(this, -1, 1)) {
                                                    int i3 = this.indexInArray;
                                                    f(0);
                                                    cVar2.d(this, i3, 0);
                                                    int andDecrement = (int) (c.f1026j.getAndDecrement(cVar2) & 2097151);
                                                    if (andDecrement != i3) {
                                                        Object objB = cVar2.f1034h.b(andDecrement);
                                                        t.b.e(objB);
                                                        b bVar = (b) objB;
                                                        cVar2.f1034h.c(i3, bVar);
                                                        bVar.f(i3);
                                                        cVar2.d(bVar, andDecrement, i3);
                                                    }
                                                    cVar2.f1034h.c(andDecrement, null);
                                                    this.c = coroutineScheduler$WorkerState4;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            this.f1024h.c(this);
                        }
                    } else {
                        if (z2) {
                            h(CoroutineScheduler$WorkerState.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.f1021e);
                            this.f1021e = 0L;
                            break;
                        }
                        z2 = true;
                    }
                } else {
                    break loop0;
                }
            }
        }
        h(CoroutineScheduler$WorkerState.TERMINATED);
    }
}
