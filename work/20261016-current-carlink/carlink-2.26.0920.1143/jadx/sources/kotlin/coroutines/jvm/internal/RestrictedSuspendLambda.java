package kotlin.coroutines.jvm.internal;

import kotlin.jvm.internal.e;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import t.b;
import u.c;

/* JADX INFO: loaded from: classes4.dex */
public abstract class RestrictedSuspendLambda extends RestrictedContinuationImpl implements e {
    private final int arity;

    public RestrictedSuspendLambda(int i2, c cVar) {
        super(cVar);
        this.arity = i2;
    }

    @Override // kotlin.jvm.internal.e
    public int getArity() {
        return this.arity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public String toString() {
        if (getCompletion() != null) {
            return super.toString();
        }
        g.f1006a.getClass();
        String strA = h.a(this);
        b.g(strA, "renderLambdaToString(this)");
        return strA;
    }
}
