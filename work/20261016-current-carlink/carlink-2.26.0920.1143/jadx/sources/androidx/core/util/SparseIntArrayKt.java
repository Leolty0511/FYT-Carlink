package androidx.core.util;

import android.hardware.Camera;
import android.util.SparseIntArray;
import t.f;
import z.p;

/* JADX INFO: loaded from: classes2.dex */
public final class SparseIntArrayKt {
    public static final boolean contains(SparseIntArray sparseIntArray, int i2) {
        t.b.h(sparseIntArray, "<this>");
        return sparseIntArray.indexOfKey(i2) >= 0;
    }

    public static final boolean containsKey(SparseIntArray sparseIntArray, int i2) {
        t.b.h(sparseIntArray, "<this>");
        return sparseIntArray.indexOfKey(i2) >= 0;
    }

    public static final boolean containsValue(SparseIntArray sparseIntArray, int i2) {
        t.b.h(sparseIntArray, "<this>");
        return sparseIntArray.indexOfValue(i2) >= 0;
    }

    public static final void forEach(SparseIntArray sparseIntArray, p pVar) {
        t.b.h(sparseIntArray, "<this>");
        t.b.h(pVar, Camera.Parameters.SCENE_MODE_ACTION);
        int size = sparseIntArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            pVar.invoke(Integer.valueOf(sparseIntArray.keyAt(i2)), Integer.valueOf(sparseIntArray.valueAt(i2)));
        }
    }

    public static final int getOrDefault(SparseIntArray sparseIntArray, int i2, int i3) {
        t.b.h(sparseIntArray, "<this>");
        return sparseIntArray.get(i2, i3);
    }

    public static final int getOrElse(SparseIntArray sparseIntArray, int i2, z.a aVar) {
        t.b.h(sparseIntArray, "<this>");
        t.b.h(aVar, "defaultValue");
        int iIndexOfKey = sparseIntArray.indexOfKey(i2);
        return iIndexOfKey >= 0 ? sparseIntArray.valueAt(iIndexOfKey) : ((Number) aVar.invoke()).intValue();
    }

    public static final int getSize(SparseIntArray sparseIntArray) {
        t.b.h(sparseIntArray, "<this>");
        return sparseIntArray.size();
    }

    public static final boolean isEmpty(SparseIntArray sparseIntArray) {
        t.b.h(sparseIntArray, "<this>");
        return sparseIntArray.size() == 0;
    }

    public static final boolean isNotEmpty(SparseIntArray sparseIntArray) {
        t.b.h(sparseIntArray, "<this>");
        return sparseIntArray.size() != 0;
    }

    public static final f keyIterator(final SparseIntArray sparseIntArray) {
        t.b.h(sparseIntArray, "<this>");
        return new f() { // from class: androidx.core.util.SparseIntArrayKt.keyIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseIntArray.size();
            }

            @Override // t.f
            public int nextInt() {
                SparseIntArray sparseIntArray2 = sparseIntArray;
                int i2 = this.index;
                this.index = i2 + 1;
                return sparseIntArray2.keyAt(i2);
            }

            public final void setIndex(int i2) {
                this.index = i2;
            }
        };
    }

    public static final SparseIntArray plus(SparseIntArray sparseIntArray, SparseIntArray sparseIntArray2) {
        t.b.h(sparseIntArray, "<this>");
        t.b.h(sparseIntArray2, "other");
        SparseIntArray sparseIntArray3 = new SparseIntArray(sparseIntArray2.size() + sparseIntArray.size());
        putAll(sparseIntArray3, sparseIntArray);
        putAll(sparseIntArray3, sparseIntArray2);
        return sparseIntArray3;
    }

    public static final void putAll(SparseIntArray sparseIntArray, SparseIntArray sparseIntArray2) {
        t.b.h(sparseIntArray, "<this>");
        t.b.h(sparseIntArray2, "other");
        int size = sparseIntArray2.size();
        for (int i2 = 0; i2 < size; i2++) {
            sparseIntArray.put(sparseIntArray2.keyAt(i2), sparseIntArray2.valueAt(i2));
        }
    }

    public static final boolean remove(SparseIntArray sparseIntArray, int i2, int i3) {
        t.b.h(sparseIntArray, "<this>");
        int iIndexOfKey = sparseIntArray.indexOfKey(i2);
        if (iIndexOfKey < 0 || i3 != sparseIntArray.valueAt(iIndexOfKey)) {
            return false;
        }
        sparseIntArray.removeAt(iIndexOfKey);
        return true;
    }

    public static final void set(SparseIntArray sparseIntArray, int i2, int i3) {
        t.b.h(sparseIntArray, "<this>");
        sparseIntArray.put(i2, i3);
    }

    public static final f valueIterator(final SparseIntArray sparseIntArray) {
        t.b.h(sparseIntArray, "<this>");
        return new f() { // from class: androidx.core.util.SparseIntArrayKt.valueIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseIntArray.size();
            }

            @Override // t.f
            public int nextInt() {
                SparseIntArray sparseIntArray2 = sparseIntArray;
                int i2 = this.index;
                this.index = i2 + 1;
                return sparseIntArray2.valueAt(i2);
            }

            public final void setIndex(int i2) {
                this.index = i2;
            }
        };
    }
}
