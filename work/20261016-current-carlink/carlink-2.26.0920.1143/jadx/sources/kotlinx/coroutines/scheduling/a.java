package kotlinx.coroutines.scheduling;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f1017a;

    static {
        int[] iArr = new int[CoroutineScheduler$WorkerState.values().length];
        iArr[CoroutineScheduler$WorkerState.PARKING.ordinal()] = 1;
        iArr[CoroutineScheduler$WorkerState.BLOCKING.ordinal()] = 2;
        iArr[CoroutineScheduler$WorkerState.CPU_ACQUIRED.ordinal()] = 3;
        iArr[CoroutineScheduler$WorkerState.DORMANT.ordinal()] = 4;
        iArr[CoroutineScheduler$WorkerState.TERMINATED.ordinal()] = 5;
        f1017a = iArr;
    }
}
