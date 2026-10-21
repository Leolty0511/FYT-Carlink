package androidx.core.util;

import android.util.LruCache;
import z.l;
import z.p;
import z.r;

/* JADX INFO: loaded from: classes2.dex */
public final class LruCacheKt {

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    /* JADX INFO: renamed from: androidx.core.util.LruCacheKt$lruCache$4, reason: invalid class name */
    public static final class AnonymousClass4<K, V> extends LruCache<K, V> {
        final /* synthetic */ l $create;
        final /* synthetic */ r $onEntryRemoved;
        final /* synthetic */ p $sizeOf;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(int i2, p pVar, l lVar, r rVar) {
            super(i2);
            this.$sizeOf = pVar;
            this.$create = lVar;
            this.$onEntryRemoved = rVar;
        }

        @Override // android.util.LruCache
        public V create(K k2) {
            t.b.h(k2, "key");
            return (V) this.$create.invoke(k2);
        }

        @Override // android.util.LruCache
        public void entryRemoved(boolean z2, K k2, V v2, V v3) {
            t.b.h(k2, "key");
            t.b.h(v2, "oldValue");
            this.$onEntryRemoved.invoke(Boolean.valueOf(z2), k2, v2, v3);
        }

        @Override // android.util.LruCache
        public int sizeOf(K k2, V v2) {
            t.b.h(k2, "key");
            t.b.h(v2, "value");
            return ((Number) this.$sizeOf.invoke(k2, v2)).intValue();
        }
    }

    public static final <K, V> LruCache<K, V> lruCache(int i2, p pVar, l lVar, r rVar) {
        t.b.h(pVar, "sizeOf");
        t.b.h(lVar, "create");
        t.b.h(rVar, "onEntryRemoved");
        return new AnonymousClass4(i2, pVar, lVar, rVar);
    }

    public static /* synthetic */ LruCache lruCache$default(int i2, p pVar, l lVar, r rVar, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            pVar = new p() { // from class: androidx.core.util.LruCacheKt.lruCache.1
                @Override // z.p
                public final Integer invoke(Object obj2, Object obj3) {
                    t.b.h(obj2, "<anonymous parameter 0>");
                    t.b.h(obj3, "<anonymous parameter 1>");
                    return 1;
                }
            };
        }
        if ((i3 & 4) != 0) {
            lVar = new l() { // from class: androidx.core.util.LruCacheKt.lruCache.2
                @Override // z.l
                public final Object invoke(Object obj2) {
                    t.b.h(obj2, "it");
                    return null;
                }
            };
        }
        if ((i3 & 8) != 0) {
            rVar = new r() { // from class: androidx.core.util.LruCacheKt.lruCache.3
                public final void invoke(boolean z2, Object obj2, Object obj3, Object obj4) {
                    t.b.h(obj2, "<anonymous parameter 1>");
                    t.b.h(obj3, "<anonymous parameter 2>");
                }

                @Override // z.r
                public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                    invoke(((Boolean) obj2).booleanValue(), obj3, obj4, obj5);
                    return s.c.f1105a;
                }
            };
        }
        t.b.h(pVar, "sizeOf");
        t.b.h(lVar, "create");
        t.b.h(rVar, "onEntryRemoved");
        return new AnonymousClass4(i2, pVar, lVar, rVar);
    }
}
