package kotlin;

import java.io.Serializable;
import s.b;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Result<T> implements Serializable {
    public static final b Companion = new b();

    public static final class Failure implements Serializable {
        public final Throwable exception;

        public Failure(Throwable th) {
            t.b.h(th, "exception");
            this.exception = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Failure) && t.b.a(this.exception, ((Failure) obj).exception);
        }

        public int hashCode() {
            return this.exception.hashCode();
        }

        public String toString() {
            return "Failure(" + this.exception + ')';
        }
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static <T> Object m64constructorimpl(Object obj) {
        return obj;
    }

    /* JADX INFO: renamed from: isFailure-impl, reason: not valid java name */
    public static final boolean m65isFailureimpl(Object obj) {
        return obj instanceof Failure;
    }
}
