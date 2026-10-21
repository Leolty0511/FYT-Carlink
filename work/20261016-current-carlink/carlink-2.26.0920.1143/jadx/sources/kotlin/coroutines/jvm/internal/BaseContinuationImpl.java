package kotlin.coroutines.jvm.internal;

import f.f;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import t.b;
import u.c;
import v.a;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseContinuationImpl implements c, a, Serializable {
    private final c completion;

    public BaseContinuationImpl(c cVar) {
        this.completion = cVar;
    }

    public c create(c cVar) {
        b.h(cVar, "completion");
        throw new UnsupportedOperationException("create(Continuation) has not been overridden");
    }

    public a getCallerFrame() {
        c cVar = this.completion;
        if (cVar instanceof a) {
            return (a) cVar;
        }
        return null;
    }

    public final c getCompletion() {
        return this.completion;
    }

    public StackTraceElement getStackTraceElement() {
        int iIntValue;
        String strC;
        v.b bVar = (v.b) getClass().getAnnotation(v.b.class);
        String str = null;
        if (bVar == null) {
            return null;
        }
        int iV = bVar.v();
        if (iV > 1) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: 1, got " + iV + ". Please update the Kotlin standard library.").toString());
        }
        try {
            Field declaredField = getClass().getDeclaredField("label");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this);
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            iIntValue = (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            iIntValue = -1;
        }
        int i2 = iIntValue >= 0 ? bVar.l()[iIntValue] : -1;
        f fVar = b.f1111f;
        f fVar2 = b.f1110e;
        if (fVar == null) {
            try {
                f fVar3 = new f(Class.class.getDeclaredMethod("getModule", new Class[0]), getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
                b.f1111f = fVar3;
                fVar = fVar3;
            } catch (Exception unused2) {
                b.f1111f = fVar2;
                fVar = fVar2;
            }
        }
        if (fVar != fVar2) {
            Method method = (Method) fVar.f819a;
            Object objInvoke = method != null ? method.invoke(getClass(), new Object[0]) : null;
            if (objInvoke != null) {
                Method method2 = (Method) fVar.f820b;
                Object objInvoke2 = method2 != null ? method2.invoke(objInvoke, new Object[0]) : null;
                if (objInvoke2 != null) {
                    Method method3 = (Method) fVar.c;
                    Object objInvoke3 = method3 != null ? method3.invoke(objInvoke2, new Object[0]) : null;
                    if (objInvoke3 instanceof String) {
                        str = (String) objInvoke3;
                    }
                }
            }
        }
        if (str == null) {
            strC = bVar.c();
        } else {
            strC = str + '/' + bVar.c();
        }
        return new StackTraceElement(strC, bVar.m(), bVar.f(), i2);
    }

    public abstract Object invokeSuspend(Object obj);

    public void releaseIntercepted() {
    }

    @Override // u.c
    public final void resumeWith(Object obj) {
        c cVar = this;
        while (true) {
            BaseContinuationImpl baseContinuationImpl = (BaseContinuationImpl) cVar;
            c cVar2 = baseContinuationImpl.completion;
            b.e(cVar2);
            try {
                Object objInvokeSuspend = baseContinuationImpl.invokeSuspend(obj);
                if (objInvokeSuspend == CoroutineSingletons.COROUTINE_SUSPENDED) {
                    return;
                } else {
                    obj = Result.m64constructorimpl(objInvokeSuspend);
                }
            } catch (Throwable th) {
                obj = Result.m64constructorimpl(kotlin.a.b(th));
            }
            baseContinuationImpl.releaseIntercepted();
            if (!(cVar2 instanceof BaseContinuationImpl)) {
                cVar2.resumeWith(obj);
                return;
            }
            cVar = cVar2;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Continuation at ");
        Object stackTraceElement = getStackTraceElement();
        if (stackTraceElement == null) {
            stackTraceElement = getClass().getName();
        }
        sb.append(stackTraceElement);
        return sb.toString();
    }

    public c create(Object obj, c cVar) {
        b.h(cVar, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }
}
