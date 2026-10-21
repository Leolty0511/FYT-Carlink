package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e extends g0.e implements g0.c {
    public static final /* synthetic */ AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_queue");
    private volatile /* synthetic */ Object _queue = null;
    private volatile /* synthetic */ Object _delayed = null;
    private volatile /* synthetic */ int _isCompleted = 0;

    static {
        AtomicReferenceFieldUpdater.newUpdater(e.class, Object.class, "_delayed");
    }

    @Override // kotlinx.coroutines.b
    public final void a(u.g gVar, Runnable runnable) {
        d(runnable);
    }

    public void d(Runnable runnable) {
        boolean z2;
        while (true) {
            Object obj = this._queue;
            z2 = false;
            if (this._isCompleted != 0) {
                break;
            }
            if (obj == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = c;
                do {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, null, runnable)) {
                        z2 = true;
                        break;
                    }
                } while (atomicReferenceFieldUpdater.get(this) == null);
                if (z2) {
                    z2 = true;
                    break;
                }
            } else if (obj instanceof k0.d) {
                k0.d dVar = (k0.d) obj;
                int iA = dVar.a(runnable);
                if (iA == 0) {
                    z2 = true;
                    break;
                } else if (iA == 1) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = c;
                    k0.d dVarE = dVar.e();
                    while (!atomicReferenceFieldUpdater2.compareAndSet(this, obj, dVarE) && atomicReferenceFieldUpdater2.get(this) == obj) {
                    }
                } else if (iA == 2) {
                    break;
                }
            } else {
                if (obj == t.b.f1107a) {
                    break;
                }
                k0.d dVar2 = new k0.d(8, true);
                dVar2.a((Runnable) obj);
                dVar2.a(runnable);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = c;
                do {
                    if (atomicReferenceFieldUpdater3.compareAndSet(this, obj, dVar2)) {
                        z2 = true;
                        break;
                    }
                } while (atomicReferenceFieldUpdater3.get(this) == obj);
                if (z2) {
                    z2 = true;
                    break;
                }
            }
        }
        if (!z2) {
            d.f1014d.d(runnable);
            return;
        }
        Thread threadC = c();
        if (Thread.currentThread() != threadC) {
            LockSupport.unpark(threadC);
        }
    }

    public final boolean e() {
        android.renderscript.a.g(this._delayed);
        Object obj = this._queue;
        if (obj == null) {
            return true;
        }
        if (obj instanceof k0.d) {
            return ((k0.d) obj).d();
        }
        return obj == t.b.f1107a;
    }

    public final long f() {
        Runnable runnable;
        boolean z2;
        android.renderscript.a.g(this._delayed);
        while (true) {
            Object obj = this._queue;
            runnable = null;
            if (obj == null) {
                break;
            }
            if (obj instanceof k0.d) {
                k0.d dVar = (k0.d) obj;
                Object objF = dVar.f();
                if (objF != k0.d.f986g) {
                    runnable = (Runnable) objF;
                    break;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = c;
                k0.d dVarE = dVar.e();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, dVarE) && atomicReferenceFieldUpdater.get(this) == obj) {
                }
            } else {
                if (obj == t.b.f1107a) {
                    break;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = c;
                while (true) {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, obj, null)) {
                        z2 = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater2.get(this) != obj) {
                        z2 = false;
                        break;
                    }
                }
                if (z2) {
                    runnable = (Runnable) obj;
                    break;
                }
            }
        }
        if (runnable != null) {
            runnable.run();
            return 0L;
        }
        Object obj2 = this._queue;
        if (obj2 == null) {
            android.renderscript.a.g(this._delayed);
        } else if (obj2 instanceof k0.d) {
            if (!((k0.d) obj2).d()) {
                return 0L;
            }
            android.renderscript.a.g(this._delayed);
        } else if (obj2 != t.b.f1107a) {
            return 0L;
        }
        return Long.MAX_VALUE;
    }

    public final void g() {
        this._queue = null;
        this._delayed = null;
    }
}
