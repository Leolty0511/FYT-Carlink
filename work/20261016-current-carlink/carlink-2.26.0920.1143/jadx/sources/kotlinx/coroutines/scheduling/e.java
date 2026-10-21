package kotlinx.coroutines.scheduling;

/* JADX INFO: loaded from: classes4.dex */
public final class e extends h {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final e f1036d = new e();

    public e() {
        super(k.f1041b, k.c, k.f1042d);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // kotlinx.coroutines.b
    public final String toString() {
        return "Dispatchers.Default";
    }
}
