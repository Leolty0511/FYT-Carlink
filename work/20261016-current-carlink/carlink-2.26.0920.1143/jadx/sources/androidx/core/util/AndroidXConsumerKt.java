package androidx.core.util;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidXConsumerKt {
    public static final <T> Consumer<T> asAndroidXConsumer(u.c cVar) {
        t.b.h(cVar, "<this>");
        return new AndroidXContinuationConsumer(cVar);
    }
}
