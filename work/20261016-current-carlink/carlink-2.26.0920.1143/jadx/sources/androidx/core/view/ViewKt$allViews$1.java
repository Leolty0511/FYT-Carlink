package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import z.p;

/* JADX INFO: loaded from: classes2.dex */
@v.b(c = "androidx.core.view.ViewKt$allViews$1", f = "View.kt", l = {414, TypedValues.CycleType.TYPE_PATH_ROTATE}, m = "invokeSuspend")
public final class ViewKt$allViews$1 extends RestrictedSuspendLambda implements p {
    final /* synthetic */ View $this_allViews;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewKt$allViews$1(View view, u.c cVar) {
        super(2, cVar);
        this.$this_allViews = view;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final u.c create(Object obj, u.c cVar) {
        ViewKt$allViews$1 viewKt$allViews$1 = new ViewKt$allViews$1(this.$this_allViews, cVar);
        viewKt$allViews$1.L$0 = obj;
        return viewKt$allViews$1;
    }

    @Override // z.p
    public final Object invoke(e0.i iVar, u.c cVar) {
        return ((ViewKt$allViews$1) create(iVar, cVar)).invokeSuspend(s.c.f1105a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.label;
        if (i2 == 0) {
            kotlin.a.d(obj);
            e0.i iVar = (e0.i) this.L$0;
            View view = this.$this_allViews;
            this.L$0 = iVar;
            this.label = 1;
            e0.h hVar = (e0.h) iVar;
            hVar.c = view;
            hVar.f801b = 3;
            hVar.f803e = this;
            return coroutineSingletons;
        }
        if (i2 == 1) {
            e0.i iVar2 = (e0.i) this.L$0;
            kotlin.a.d(obj);
            View view2 = this.$this_allViews;
            if (view2 instanceof ViewGroup) {
                e0.g descendants = ViewGroupKt.getDescendants((ViewGroup) view2);
                this.L$0 = null;
                this.label = 2;
                if (iVar2.a(descendants, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.a.d(obj);
        }
        return s.c.f1105a;
    }
}
