package kotlin.jvm.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import z.i;
import z.j;
import z.k;
import z.l;
import z.m;
import z.n;
import z.o;
import z.p;
import z.q;
import z.r;
import z.s;
import z.t;
import z.u;
import z.v;
import z.w;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements d0.c, b {
    public static final Map c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Class f1004b;

    static {
        int i2 = 0;
        List listT = t.b.t(z.a.class, l.class, p.class, q.class, r.class, s.class, t.class, u.class, v.class, w.class, z.b.class, z.c.class, z.d.class, z.e.class, z.f.class, z.g.class, z.h.class, i.class, j.class, k.class, m.class, n.class, o.class);
        ArrayList arrayList = new ArrayList(t.c.G(listT));
        for (Object obj : listT) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                throw new ArithmeticException("Index overflow has happened.");
            }
            arrayList.add(new Pair((Class) obj, Integer.valueOf(i2)));
            i2 = i3;
        }
        c = kotlin.collections.a.H(arrayList);
        HashMap map = new HashMap();
        map.put(TypedValues.Custom.S_BOOLEAN, "kotlin.Boolean");
        map.put("char", "kotlin.Char");
        map.put("byte", "kotlin.Byte");
        map.put("short", "kotlin.Short");
        map.put("int", "kotlin.Int");
        map.put(TypedValues.Custom.S_FLOAT, "kotlin.Float");
        map.put("long", "kotlin.Long");
        map.put("double", "kotlin.Double");
        HashMap map2 = new HashMap();
        map2.put("java.lang.Boolean", "kotlin.Boolean");
        map2.put("java.lang.Character", "kotlin.Char");
        map2.put("java.lang.Byte", "kotlin.Byte");
        map2.put("java.lang.Short", "kotlin.Short");
        map2.put("java.lang.Integer", "kotlin.Int");
        map2.put("java.lang.Float", "kotlin.Float");
        map2.put("java.lang.Long", "kotlin.Long");
        map2.put("java.lang.Double", "kotlin.Double");
        HashMap map3 = new HashMap();
        map3.put("java.lang.Object", "kotlin.Any");
        map3.put("java.lang.String", "kotlin.String");
        map3.put("java.lang.CharSequence", "kotlin.CharSequence");
        map3.put("java.lang.Throwable", "kotlin.Throwable");
        map3.put("java.lang.Cloneable", "kotlin.Cloneable");
        map3.put("java.lang.Number", "kotlin.Number");
        map3.put("java.lang.Comparable", "kotlin.Comparable");
        map3.put("java.lang.Enum", "kotlin.Enum");
        map3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        map3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        map3.put("java.util.Iterator", "kotlin.collections.Iterator");
        map3.put("java.util.Collection", "kotlin.collections.Collection");
        map3.put("java.util.List", "kotlin.collections.List");
        map3.put("java.util.Set", "kotlin.collections.Set");
        map3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        map3.put("java.util.Map", "kotlin.collections.Map");
        map3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        map3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        map3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        map3.putAll(map);
        map3.putAll(map2);
        Collection<String> collectionValues = map.values();
        t.b.g(collectionValues, "primitiveFqNames.values");
        for (String str : collectionValues) {
            StringBuilder sb = new StringBuilder("kotlin.jvm.internal.");
            t.b.g(str, "kotlinName");
            sb.append(f0.h.Q(str));
            sb.append("CompanionObject");
            Pair pair = new Pair(sb.toString(), str.concat(".Companion"));
            map3.put(pair.getFirst(), pair.getSecond());
        }
        for (Map.Entry entry : c.entrySet()) {
            Class cls = (Class) entry.getKey();
            int iIntValue = ((Number) entry.getValue()).intValue();
            map3.put(cls.getName(), "kotlin.Function" + iIntValue);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(t.b.u(map3.size()));
        for (Map.Entry entry2 : map3.entrySet()) {
            linkedHashMap.put(entry2.getKey(), f0.h.Q((String) entry2.getValue()));
        }
    }

    public c(Class cls) {
        t.b.h(cls, "jClass");
        this.f1004b = cls;
    }

    @Override // kotlin.jvm.internal.b
    public final Class a() {
        return this.f1004b;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof c) && t.b.a(t.b.n(this), t.b.n((d0.c) obj));
    }

    public final int hashCode() {
        return t.b.n(this).hashCode();
    }

    public final String toString() {
        return this.f1004b.toString() + " (Kotlin reflection is not available)";
    }
}
