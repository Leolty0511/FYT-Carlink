package kotlin.sequences;

import e0.f;
import e0.g;
import z.l;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends t.b {
    public static final g G(final Object obj, l lVar) {
        t.b.h(lVar, "nextFunction");
        return obj == null ? e0.b.f791a : new f(new z.a() { // from class: kotlin.sequences.SequencesKt__SequencesKt$generateSequence$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // z.a
            public final Object invoke() {
                return obj;
            }
        }, lVar);
    }
}
