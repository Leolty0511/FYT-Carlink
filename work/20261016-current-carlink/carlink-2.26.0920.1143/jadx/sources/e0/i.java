package e0;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Iterator;
import kotlin.coroutines.intrinsics.CoroutineSingletons;

/* JADX INFO: loaded from: classes4.dex */
public abstract class i {
    public final Object a(g gVar, u.c cVar) {
        Object obj;
        Iterator it = gVar.iterator();
        h hVar = (h) this;
        boolean zHasNext = it.hasNext();
        s.c cVar2 = s.c.f1105a;
        if (zHasNext) {
            hVar.f802d = it;
            hVar.f801b = 2;
            hVar.f803e = cVar;
            obj = CoroutineSingletons.COROUTINE_SUSPENDED;
            t.b.h(cVar, TypedValues.AttributesType.S_FRAME);
        } else {
            obj = cVar2;
        }
        return obj == CoroutineSingletons.COROUTINE_SUSPENDED ? obj : cVar2;
    }
}
