package kotlin.random;

import a0.d;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class Random$Default extends d implements Serializable {

    public static final class Serialized implements Serializable {
        public static final Serialized INSTANCE = new Serialized();
        private static final long serialVersionUID = 0;

        private final Object readResolve() {
            return d.Default;
        }
    }

    public Random$Default(kotlin.jvm.internal.d dVar) {
    }

    private final Object writeReplace() {
        return Serialized.INSTANCE;
    }

    @Override // a0.d
    public int nextInt() {
        return d.f0b.nextInt();
    }
}
