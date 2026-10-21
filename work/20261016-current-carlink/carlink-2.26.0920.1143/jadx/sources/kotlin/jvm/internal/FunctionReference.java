package kotlin.jvm.internal;

import kotlin.jvm.KotlinReflectionNotSupportedError;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FunctionReference extends CallableReference implements e, d0.e {
    private final int arity;
    private final int flags;

    public FunctionReference(int i2, Object obj, Class cls, String str, String str2, int i3) {
        super(obj, cls, str, str2, (i3 & 1) == 1);
        this.arity = i2;
        this.flags = i3 >> 1;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public d0.b computeReflected() {
        g.f1006a.getClass();
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FunctionReference) {
            FunctionReference functionReference = (FunctionReference) obj;
            return getName().equals(functionReference.getName()) && getSignature().equals(functionReference.getSignature()) && this.flags == functionReference.flags && this.arity == functionReference.arity && t.b.a(getBoundReceiver(), functionReference.getBoundReceiver()) && t.b.a(getOwner(), functionReference.getOwner());
        }
        if (obj instanceof d0.e) {
            return obj.equals(compute());
        }
        return false;
    }

    @Override // kotlin.jvm.internal.e
    public int getArity() {
        return this.arity;
    }

    public int hashCode() {
        return getSignature().hashCode() + ((getName().hashCode() + (getOwner() == null ? 0 : getOwner().hashCode() * 31)) * 31);
    }

    @Override // d0.e
    public boolean isExternal() {
        return getReflected().isExternal();
    }

    @Override // d0.e
    public boolean isInfix() {
        return getReflected().isInfix();
    }

    @Override // d0.e
    public boolean isInline() {
        return getReflected().isInline();
    }

    @Override // d0.e
    public boolean isOperator() {
        return getReflected().isOperator();
    }

    @Override // d0.e
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public String toString() {
        d0.b bVarCompute = compute();
        if (bVarCompute != this) {
            return bVarCompute.toString();
        }
        if ("<init>".equals(getName())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + getName() + " (Kotlin reflection is not available)";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public d0.e getReflected() {
        d0.b bVarCompute = compute();
        if (bVarCompute != this) {
            return (d0.e) bVarCompute;
        }
        throw new KotlinReflectionNotSupportedError();
    }
}
