package kotlin.collections;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import t.b;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends b {
    public static final Map G() {
        EmptyMap emptyMap = EmptyMap.INSTANCE;
        b.f(emptyMap, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
        return emptyMap;
    }

    public static final Map H(ArrayList arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return G();
        }
        if (size != 1) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(b.u(arrayList.size()));
            I(arrayList, linkedHashMap);
            return linkedHashMap;
        }
        Pair pair = (Pair) arrayList.get(0);
        b.h(pair, "pair");
        Map mapSingletonMap = Collections.singletonMap(pair.getFirst(), pair.getSecond());
        b.g(mapSingletonMap, "singletonMap(pair.first, pair.second)");
        return mapSingletonMap;
    }

    public static final void I(ArrayList arrayList, LinkedHashMap linkedHashMap) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            linkedHashMap.put(pair.component1(), pair.component2());
        }
    }
}
