package e0;

import java.util.Iterator;
import kotlin.a;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.RestrictedContinuationImpl;
import t.b;
import z.p;

/* JADX INFO: loaded from: classes4.dex */
public final class j implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f804a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f805b;

    public /* synthetic */ j(Object obj, int i2) {
        this.f804a = i2;
        this.f805b = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // e0.g
    public final Iterator iterator() {
        int i2 = this.f804a;
        Object obj = this.f805b;
        switch (i2) {
            case 0:
                final p pVar = (p) obj;
                t.b.h(pVar, "block");
                final h hVar = new h();
                hVar.f803e = pVar instanceof BaseContinuationImpl ? ((BaseContinuationImpl) pVar).create(hVar, hVar) : new RestrictedContinuationImpl(hVar, pVar, hVar) { // from class: kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt$createCoroutineUnintercepted$$inlined$createCoroutineFromSuspendFunction$IntrinsicsKt__IntrinsicsJvmKt$3

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public int f1000b;
                    public final /* synthetic */ p c;

                    /* JADX INFO: renamed from: d, reason: collision with root package name */
                    public final /* synthetic */ Object f1001d;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(hVar);
                        this.c = pVar;
                        this.f1001d = hVar;
                        b.f(hVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj2) {
                        int i3 = this.f1000b;
                        if (i3 != 0) {
                            if (i3 != 1) {
                                throw new IllegalStateException("This coroutine had already completed".toString());
                            }
                            this.f1000b = 2;
                            a.d(obj2);
                            return obj2;
                        }
                        this.f1000b = 1;
                        a.d(obj2);
                        p pVar2 = this.c;
                        b.f(pVar2, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>");
                        b.c(pVar2);
                        return pVar2.invoke(this.f1001d, this);
                    }
                };
                return hVar;
            default:
                return (Iterator) obj;
        }
    }
}
