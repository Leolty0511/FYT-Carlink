package androidx.core.os;

import t.b;
import z.a;

/* JADX INFO: loaded from: classes2.dex */
public final class TraceKt {
    public static final <T> T trace(String str, a aVar) {
        b.h(str, "sectionName");
        b.h(aVar, "block");
        TraceCompat.beginSection(str);
        try {
            return (T) aVar.invoke();
        } finally {
            TraceCompat.endSection();
        }
    }
}
