package kotlin.jvm.internal;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Lambda<R> implements e, Serializable {
    private final int arity;

    public Lambda(int i2) {
        this.arity = i2;
    }

    @Override // kotlin.jvm.internal.e
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        g.f1006a.getClass();
        String strA = h.a(this);
        t.b.g(strA, "renderLambdaToString(this)");
        return strA;
    }
}
