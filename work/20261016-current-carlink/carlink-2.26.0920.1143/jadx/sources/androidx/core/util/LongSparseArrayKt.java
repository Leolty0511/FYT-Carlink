package androidx.core.util;

import android.annotation.SuppressLint;
import android.hardware.Camera;
import android.util.LongSparseArray;
import androidx.annotation.RequiresApi;
import java.util.Iterator;
import t.g;
import z.p;

/* JADX INFO: loaded from: classes2.dex */
public final class LongSparseArrayKt {
    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> boolean contains(LongSparseArray<T> longSparseArray, long j2) {
        t.b.h(longSparseArray, "<this>");
        return longSparseArray.indexOfKey(j2) >= 0;
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> boolean containsKey(LongSparseArray<T> longSparseArray, long j2) {
        t.b.h(longSparseArray, "<this>");
        return longSparseArray.indexOfKey(j2) >= 0;
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> boolean containsValue(LongSparseArray<T> longSparseArray, T t2) {
        t.b.h(longSparseArray, "<this>");
        return longSparseArray.indexOfValue(t2) >= 0;
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> void forEach(LongSparseArray<T> longSparseArray, p pVar) {
        t.b.h(longSparseArray, "<this>");
        t.b.h(pVar, Camera.Parameters.SCENE_MODE_ACTION);
        int size = longSparseArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            pVar.invoke(Long.valueOf(longSparseArray.keyAt(i2)), longSparseArray.valueAt(i2));
        }
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> T getOrDefault(LongSparseArray<T> longSparseArray, long j2, T t2) {
        t.b.h(longSparseArray, "<this>");
        T t3 = longSparseArray.get(j2);
        return t3 == null ? t2 : t3;
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> T getOrElse(LongSparseArray<T> longSparseArray, long j2, z.a aVar) {
        t.b.h(longSparseArray, "<this>");
        t.b.h(aVar, "defaultValue");
        T t2 = longSparseArray.get(j2);
        return t2 == null ? (T) aVar.invoke() : t2;
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> int getSize(LongSparseArray<T> longSparseArray) {
        t.b.h(longSparseArray, "<this>");
        return longSparseArray.size();
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> boolean isEmpty(LongSparseArray<T> longSparseArray) {
        t.b.h(longSparseArray, "<this>");
        return longSparseArray.size() == 0;
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> boolean isNotEmpty(LongSparseArray<T> longSparseArray) {
        t.b.h(longSparseArray, "<this>");
        return longSparseArray.size() != 0;
    }

    @RequiresApi(16)
    public static final <T> g keyIterator(final LongSparseArray<T> longSparseArray) {
        t.b.h(longSparseArray, "<this>");
        return new g() { // from class: androidx.core.util.LongSparseArrayKt.keyIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            @SuppressLint({"ClassVerificationFailure"})
            public boolean hasNext() {
                return this.index < longSparseArray.size();
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
            @Override // t.g
            @SuppressLint({"ClassVerificationFailure"})
            public long nextLong() {
                LongSparseArray<T> longSparseArray2 = longSparseArray;
                int i2 = this.index;
                this.index = i2 + 1;
                return longSparseArray2.keyAt(i2);
            }

            public final void setIndex(int i2) {
                this.index = i2;
            }
        };
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> LongSparseArray<T> plus(LongSparseArray<T> longSparseArray, LongSparseArray<T> longSparseArray2) {
        t.b.h(longSparseArray, "<this>");
        t.b.h(longSparseArray2, "other");
        LongSparseArray<T> longSparseArray3 = new LongSparseArray<>(longSparseArray2.size() + longSparseArray.size());
        putAll(longSparseArray3, longSparseArray);
        putAll(longSparseArray3, longSparseArray2);
        return longSparseArray3;
    }

    @RequiresApi(16)
    public static final <T> void putAll(LongSparseArray<T> longSparseArray, LongSparseArray<T> longSparseArray2) {
        t.b.h(longSparseArray, "<this>");
        t.b.h(longSparseArray2, "other");
        int size = longSparseArray2.size();
        for (int i2 = 0; i2 < size; i2++) {
            longSparseArray.put(longSparseArray2.keyAt(i2), longSparseArray2.valueAt(i2));
        }
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> boolean remove(LongSparseArray<T> longSparseArray, long j2, T t2) {
        t.b.h(longSparseArray, "<this>");
        int iIndexOfKey = longSparseArray.indexOfKey(j2);
        if (iIndexOfKey < 0 || !t.b.a(t2, longSparseArray.valueAt(iIndexOfKey))) {
            return false;
        }
        longSparseArray.removeAt(iIndexOfKey);
        return true;
    }

    @RequiresApi(16)
    @SuppressLint({"ClassVerificationFailure"})
    public static final <T> void set(LongSparseArray<T> longSparseArray, long j2, T t2) {
        t.b.h(longSparseArray, "<this>");
        longSparseArray.put(j2, t2);
    }

    @RequiresApi(16)
    public static final <T> Iterator<T> valueIterator(final LongSparseArray<T> longSparseArray) {
        t.b.h(longSparseArray, "<this>");
        return new Iterator<T>() { // from class: androidx.core.util.LongSparseArrayKt.valueIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            @SuppressLint({"ClassVerificationFailure"})
            public boolean hasNext() {
                return this.index < longSparseArray.size();
            }

            @Override // java.util.Iterator
            @SuppressLint({"ClassVerificationFailure"})
            public T next() {
                LongSparseArray<T> longSparseArray2 = longSparseArray;
                int i2 = this.index;
                this.index = i2 + 1;
                return longSparseArray2.valueAt(i2);
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
