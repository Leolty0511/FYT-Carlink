package kotlin;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class InitializedLazyImpl<T> implements s.a, Serializable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f992b;

    public InitializedLazyImpl(T t2) {
        this.f992b = t2;
    }

    @Override // s.a
    public T getValue() {
        return (T) this.f992b;
    }

    public String toString() {
        return String.valueOf(getValue());
    }
}
