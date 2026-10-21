package kotlinx.coroutines;

/* JADX INFO: loaded from: classes4.dex */
final class DiagnosticCoroutineContextException extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final u.g f1011b;

    public DiagnosticCoroutineContextException(u.g gVar) {
        this.f1011b = gVar;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public String getLocalizedMessage() {
        return this.f1011b.toString();
    }
}
