package androidx.core.view;

import android.view.ViewGroup;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import z.p;

/* JADX INFO: loaded from: classes2.dex */
@v.b(c = "androidx.core.view.ViewGroupKt$descendants$1", f = "ViewGroup.kt", l = {119, 121}, m = "invokeSuspend")
public final class ViewGroupKt$descendants$1 extends RestrictedSuspendLambda implements p {
    final /* synthetic */ ViewGroup $this_descendants;
    int I$0;
    int I$1;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewGroupKt$descendants$1(ViewGroup viewGroup, u.c cVar) {
        super(2, cVar);
        this.$this_descendants = viewGroup;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final u.c create(Object obj, u.c cVar) {
        ViewGroupKt$descendants$1 viewGroupKt$descendants$1 = new ViewGroupKt$descendants$1(this.$this_descendants, cVar);
        viewGroupKt$descendants$1.L$0 = obj;
        return viewGroupKt$descendants$1;
    }

    @Override // z.p
    public final Object invoke(e0.i iVar, u.c cVar) {
        return ((ViewGroupKt$descendants$1) create(iVar, cVar)).invokeSuspend(s.c.f1105a);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x004c  */
    /* JADX WARN: Code duplicated, block: B:14:0x006f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x0070  */
    /* JADX WARN: Code duplicated, block: B:18:0x007b  */
    /* JADX WARN: Code duplicated, block: B:20:0x0094 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:21:0x0095  */
    /* JADX WARN: Code duplicated, block: B:23:0x009e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0095 -> B:22:0x0097). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x009e -> B:24:0x00a2). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r12.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L3b
            if (r1 == r3) goto L26
            if (r1 != r2) goto L1e
            int r1 = r12.I$1
            int r4 = r12.I$0
            java.lang.Object r5 = r12.L$1
            android.view.ViewGroup r5 = (android.view.ViewGroup) r5
            java.lang.Object r6 = r12.L$0
            e0.i r6 = (e0.i) r6
            kotlin.a.d(r13)
            r13 = r12
            goto L97
        L1e:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r0)
            throw r13
        L26:
            int r1 = r12.I$1
            int r4 = r12.I$0
            java.lang.Object r5 = r12.L$2
            android.view.View r5 = (android.view.View) r5
            java.lang.Object r6 = r12.L$1
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            java.lang.Object r7 = r12.L$0
            e0.i r7 = (e0.i) r7
            kotlin.a.d(r13)
            r13 = r12
            goto L77
        L3b:
            kotlin.a.d(r13)
            java.lang.Object r13 = r12.L$0
            e0.i r13 = (e0.i) r13
            android.view.ViewGroup r1 = r12.$this_descendants
            int r4 = r1.getChildCount()
            r5 = 0
            r6 = r12
        L4a:
            if (r5 >= r4) goto La7
            android.view.View r7 = r1.getChildAt(r5)
            java.lang.String r8 = "getChildAt(index)"
            t.b.g(r7, r8)
            r6.L$0 = r13
            r6.L$1 = r1
            r6.L$2 = r7
            r6.I$0 = r5
            r6.I$1 = r4
            r6.label = r3
            r8 = r13
            e0.h r8 = (e0.h) r8
            r8.c = r7
            r9 = 3
            r8.f801b = r9
            r8.f803e = r6
            kotlin.coroutines.intrinsics.CoroutineSingletons r8 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r8 != r0) goto L70
            return r0
        L70:
            r10 = r7
            r7 = r13
            r13 = r6
            r6 = r1
            r1 = r4
            r4 = r5
            r5 = r10
        L77:
            boolean r8 = r5 instanceof android.view.ViewGroup
            if (r8 == 0) goto L9e
            android.view.ViewGroup r5 = (android.view.ViewGroup) r5
            e0.g r5 = androidx.core.view.ViewGroupKt.getDescendants(r5)
            r13.L$0 = r7
            r13.L$1 = r6
            r8 = 0
            r13.L$2 = r8
            r13.I$0 = r4
            r13.I$1 = r1
            r13.label = r2
            java.lang.Object r5 = r7.a(r5, r13)
            if (r5 != r0) goto L95
            return r0
        L95:
            r5 = r6
            r6 = r7
        L97:
            r10 = r6
            r6 = r13
            r13 = r10
            r11 = r5
            r5 = r1
            r1 = r11
            goto La2
        L9e:
            r5 = r1
            r1 = r6
            r6 = r13
            r13 = r7
        La2:
            int r4 = r4 + r3
            r10 = r5
            r5 = r4
            r4 = r10
            goto L4a
        La7:
            s.c r13 = s.c.f1105a
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.view.ViewGroupKt$descendants$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
