package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes4.dex */
public final class m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f1046b = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "lastScheduledTask");
    public static final /* synthetic */ AtomicIntegerFieldUpdater c = AtomicIntegerFieldUpdater.newUpdater(m.class, "producerIndex");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f1047d = AtomicIntegerFieldUpdater.newUpdater(m.class, "consumerIndex");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f1048e = AtomicIntegerFieldUpdater.newUpdater(m.class, "blockingTasksInBuffer");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReferenceArray f1049a = new AtomicReferenceArray(128);
    private volatile /* synthetic */ Object lastScheduledTask = null;
    private volatile /* synthetic */ int producerIndex = 0;
    private volatile /* synthetic */ int consumerIndex = 0;
    private volatile /* synthetic */ int blockingTasksInBuffer = 0;

    public final i a(i iVar, boolean z2) {
        if (z2) {
            return b(iVar);
        }
        i iVar2 = (i) f1046b.getAndSet(this, iVar);
        if (iVar2 == null) {
            return null;
        }
        return b(iVar2);
    }

    public final i b(i iVar) {
        if (iVar.c.f785a == 1) {
            f1048e.incrementAndGet(this);
        }
        if (this.producerIndex - this.consumerIndex == 127) {
            return iVar;
        }
        int i2 = this.producerIndex & 127;
        while (this.f1049a.get(i2) != null) {
            Thread.yield();
        }
        this.f1049a.lazySet(i2, iVar);
        c.incrementAndGet(this);
        return null;
    }

    public final int c() {
        return this.lastScheduledTask != null ? (this.producerIndex - this.consumerIndex) + 1 : this.producerIndex - this.consumerIndex;
    }

    public final i d() {
        i iVar;
        while (true) {
            int i2 = this.consumerIndex;
            if (i2 - this.producerIndex == 0) {
                return null;
            }
            int i3 = i2 & 127;
            if (f1047d.compareAndSet(this, i2, i2 + 1) && (iVar = (i) this.f1049a.getAndSet(i3, null)) != null) {
                if (iVar.c.f785a == 1) {
                    f1048e.decrementAndGet(this);
                }
                return iVar;
            }
        }
    }

    public final long e(m mVar) {
        int i2 = mVar.consumerIndex;
        int i3 = mVar.producerIndex;
        AtomicReferenceArray atomicReferenceArray = mVar.f1049a;
        while (true) {
            boolean z2 = true;
            if (i2 == i3) {
                break;
            }
            int i4 = i2 & 127;
            if (mVar.blockingTasksInBuffer == 0) {
                break;
            }
            i iVar = (i) atomicReferenceArray.get(i4);
            if (iVar != null) {
                if (iVar.c.f785a == 1) {
                    while (!atomicReferenceArray.compareAndSet(i4, iVar, null)) {
                        if (atomicReferenceArray.get(i4) != iVar) {
                            z2 = false;
                            break;
                        }
                    }
                    if (z2) {
                        f1048e.decrementAndGet(mVar);
                        a(iVar, false);
                        return -1L;
                    }
                } else {
                    continue;
                }
            }
            i2++;
        }
        return f(mVar, true);
    }

    public final long f(m mVar, boolean z2) {
        i iVar;
        boolean z3;
        do {
            iVar = (i) mVar.lastScheduledTask;
            if (iVar == null) {
                return -2L;
            }
            z3 = true;
            if (z2) {
                if (!(iVar.c.f785a == 1)) {
                    return -2L;
                }
            }
            k.f1043e.getClass();
            long jNanoTime = System.nanoTime() - iVar.f1038b;
            long j2 = k.f1040a;
            if (jNanoTime < j2) {
                return j2 - jNanoTime;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f1046b;
            while (!atomicReferenceFieldUpdater.compareAndSet(mVar, iVar, null)) {
                if (atomicReferenceFieldUpdater.get(mVar) != iVar) {
                    z3 = false;
                    break;
                }
            }
        } while (!z3);
        a(iVar, false);
        return -1L;
    }
}
