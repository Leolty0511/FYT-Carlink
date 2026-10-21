package kotlin.sequences;

import e0.d;
import e0.f;
import e0.g;
import e0.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.EmptyList;
import z.l;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b extends k {
    public static final d H(g gVar, l lVar) {
        t.b.h(lVar, "transform");
        f fVar = new f(gVar, lVar);
        SequencesKt___SequencesKt$filterNotNull$1 sequencesKt___SequencesKt$filterNotNull$1 = new l() { // from class: kotlin.sequences.SequencesKt___SequencesKt$filterNotNull$1
            @Override // z.l
            public final Boolean invoke(Object obj) {
                return Boolean.valueOf(obj == null);
            }
        };
        t.b.h(sequencesKt___SequencesKt$filterNotNull$1, "predicate");
        return new d(fVar, sequencesKt___SequencesKt$filterNotNull$1);
    }

    public static final List I(g gVar) {
        ArrayList arrayList = new ArrayList();
        Iterator it = gVar.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        int size = arrayList.size();
        if (size != 0) {
            return size != 1 ? arrayList : t.b.s(arrayList.get(0));
        }
        return EmptyList.INSTANCE;
    }
}
