package androidx.core.util;

import android.hardware.Camera;
import android.util.SparseArray;
import java.util.Iterator;
import t.f;
import z.p;

/* JADX INFO: loaded from: classes2.dex */
public final class SparseArrayKt {
    public static final <T> boolean contains(SparseArray<T> sparseArray, int i2) {
        t.b.h(sparseArray, "<this>");
        return sparseArray.indexOfKey(i2) >= 0;
    }

    public static final <T> boolean containsKey(SparseArray<T> sparseArray, int i2) {
        t.b.h(sparseArray, "<this>");
        return sparseArray.indexOfKey(i2) >= 0;
    }

    public static final <T> boolean containsValue(SparseArray<T> sparseArray, T t2) {
        t.b.h(sparseArray, "<this>");
        return sparseArray.indexOfValue(t2) >= 0;
    }

    public static final <T> void forEach(SparseArray<T> sparseArray, p pVar) {
        t.b.h(sparseArray, "<this>");
        t.b.h(pVar, Camera.Parameters.SCENE_MODE_ACTION);
        int size = sparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            pVar.invoke(Integer.valueOf(sparseArray.keyAt(i2)), sparseArray.valueAt(i2));
        }
    }

    public static final <T> T getOrDefault(SparseArray<T> sparseArray, int i2, T t2) {
        t.b.h(sparseArray, "<this>");
        T t3 = sparseArray.get(i2);
        return t3 == null ? t2 : t3;
    }

    public static final <T> T getOrElse(SparseArray<T> sparseArray, int i2, z.a aVar) {
        t.b.h(sparseArray, "<this>");
        t.b.h(aVar, "defaultValue");
        T t2 = sparseArray.get(i2);
        return t2 == null ? (T) aVar.invoke() : t2;
    }

    public static final <T> int getSize(SparseArray<T> sparseArray) {
        t.b.h(sparseArray, "<this>");
        return sparseArray.size();
    }

    public static final <T> boolean isEmpty(SparseArray<T> sparseArray) {
        t.b.h(sparseArray, "<this>");
        return sparseArray.size() == 0;
    }

    public static final <T> boolean isNotEmpty(SparseArray<T> sparseArray) {
        t.b.h(sparseArray, "<this>");
        return sparseArray.size() != 0;
    }

    public static final <T> f keyIterator(final SparseArray<T> sparseArray) {
        t.b.h(sparseArray, "<this>");
        return new f() { // from class: androidx.core.util.SparseArrayKt.keyIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseArray.size();
            }

            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // t.f
            public int nextInt() {
                SparseArray<T> sparseArray2 = sparseArray;
                int i2 = this.index;
                this.index = i2 + 1;
                return sparseArray2.keyAt(i2);
            }

            public final void setIndex(int i2) {
                this.index = i2;
            }
        };
    }

    public static final <T> SparseArray<T> plus(SparseArray<T> sparseArray, SparseArray<T> sparseArray2) {
        t.b.h(sparseArray, "<this>");
        t.b.h(sparseArray2, "other");
        SparseArray<T> sparseArray3 = new SparseArray<>(sparseArray2.size() + sparseArray.size());
        putAll(sparseArray3, sparseArray);
        putAll(sparseArray3, sparseArray2);
        return sparseArray3;
    }

    public static final <T> void putAll(SparseArray<T> sparseArray, SparseArray<T> sparseArray2) {
        t.b.h(sparseArray, "<this>");
        t.b.h(sparseArray2, "other");
        int size = sparseArray2.size();
        for (int i2 = 0; i2 < size; i2++) {
            sparseArray.put(sparseArray2.keyAt(i2), sparseArray2.valueAt(i2));
        }
    }

    public static final <T> boolean remove(SparseArray<T> sparseArray, int i2, T t2) {
        t.b.h(sparseArray, "<this>");
        int iIndexOfKey = sparseArray.indexOfKey(i2);
        if (iIndexOfKey < 0 || !t.b.a(t2, sparseArray.valueAt(iIndexOfKey))) {
            return false;
        }
        sparseArray.removeAt(iIndexOfKey);
        return true;
    }

    public static final <T> void set(SparseArray<T> sparseArray, int i2, T t2) {
        t.b.h(sparseArray, "<this>");
        sparseArray.put(i2, t2);
    }

    public static final <T> Iterator<T> valueIterator(final SparseArray<T> sparseArray) {
        t.b.h(sparseArray, "<this>");
        return new Iterator<T>() { // from class: androidx.core.util.SparseArrayKt.valueIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseArray.size();
            }

            @Override // java.util.Iterator
            public T next() {
                SparseArray<T> sparseArray2 = sparseArray;
                int i2 = this.index;
                this.index = i2 + 1;
                return sparseArray2.valueAt(i2);
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            }

            public final void setIndex(int i2) {
                this.index = i2;
            }
        };
    }
}
