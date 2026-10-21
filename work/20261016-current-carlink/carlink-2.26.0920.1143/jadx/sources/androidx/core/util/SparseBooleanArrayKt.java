package androidx.core.util;

import android.hardware.Camera;
import android.util.SparseBooleanArray;
import t.d;
import t.f;
import z.p;

/* JADX INFO: loaded from: classes2.dex */
public final class SparseBooleanArrayKt {
    public static final boolean contains(SparseBooleanArray sparseBooleanArray, int i2) {
        t.b.h(sparseBooleanArray, "<this>");
        return sparseBooleanArray.indexOfKey(i2) >= 0;
    }

    public static final boolean containsKey(SparseBooleanArray sparseBooleanArray, int i2) {
        t.b.h(sparseBooleanArray, "<this>");
        return sparseBooleanArray.indexOfKey(i2) >= 0;
    }

    public static final boolean containsValue(SparseBooleanArray sparseBooleanArray, boolean z2) {
        t.b.h(sparseBooleanArray, "<this>");
        return sparseBooleanArray.indexOfValue(z2) >= 0;
    }

    public static final void forEach(SparseBooleanArray sparseBooleanArray, p pVar) {
        t.b.h(sparseBooleanArray, "<this>");
        t.b.h(pVar, Camera.Parameters.SCENE_MODE_ACTION);
        int size = sparseBooleanArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            pVar.invoke(Integer.valueOf(sparseBooleanArray.keyAt(i2)), Boolean.valueOf(sparseBooleanArray.valueAt(i2)));
        }
    }

    public static final boolean getOrDefault(SparseBooleanArray sparseBooleanArray, int i2, boolean z2) {
        t.b.h(sparseBooleanArray, "<this>");
        return sparseBooleanArray.get(i2, z2);
    }

    public static final boolean getOrElse(SparseBooleanArray sparseBooleanArray, int i2, z.a aVar) {
        t.b.h(sparseBooleanArray, "<this>");
        t.b.h(aVar, "defaultValue");
        int iIndexOfKey = sparseBooleanArray.indexOfKey(i2);
        return iIndexOfKey >= 0 ? sparseBooleanArray.valueAt(iIndexOfKey) : ((Boolean) aVar.invoke()).booleanValue();
    }

    public static final int getSize(SparseBooleanArray sparseBooleanArray) {
        t.b.h(sparseBooleanArray, "<this>");
        return sparseBooleanArray.size();
    }

    public static final boolean isEmpty(SparseBooleanArray sparseBooleanArray) {
        t.b.h(sparseBooleanArray, "<this>");
        return sparseBooleanArray.size() == 0;
    }

    public static final boolean isNotEmpty(SparseBooleanArray sparseBooleanArray) {
        t.b.h(sparseBooleanArray, "<this>");
        return sparseBooleanArray.size() != 0;
    }

    public static final f keyIterator(final SparseBooleanArray sparseBooleanArray) {
        t.b.h(sparseBooleanArray, "<this>");
        return new f() { // from class: androidx.core.util.SparseBooleanArrayKt.keyIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseBooleanArray.size();
            }

            @Override // t.f
            public int nextInt() {
                SparseBooleanArray sparseBooleanArray2 = sparseBooleanArray;
                int i2 = this.index;
                this.index = i2 + 1;
                return sparseBooleanArray2.keyAt(i2);
            }

            public final void setIndex(int i2) {
                this.index = i2;
            }
        };
    }

    public static final SparseBooleanArray plus(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
        t.b.h(sparseBooleanArray, "<this>");
        t.b.h(sparseBooleanArray2, "other");
        SparseBooleanArray sparseBooleanArray3 = new SparseBooleanArray(sparseBooleanArray2.size() + sparseBooleanArray.size());
        putAll(sparseBooleanArray3, sparseBooleanArray);
        putAll(sparseBooleanArray3, sparseBooleanArray2);
        return sparseBooleanArray3;
    }

    public static final void putAll(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
        t.b.h(sparseBooleanArray, "<this>");
        t.b.h(sparseBooleanArray2, "other");
        int size = sparseBooleanArray2.size();
        for (int i2 = 0; i2 < size; i2++) {
            sparseBooleanArray.put(sparseBooleanArray2.keyAt(i2), sparseBooleanArray2.valueAt(i2));
        }
    }

    public static final boolean remove(SparseBooleanArray sparseBooleanArray, int i2, boolean z2) {
        t.b.h(sparseBooleanArray, "<this>");
        int iIndexOfKey = sparseBooleanArray.indexOfKey(i2);
        if (iIndexOfKey < 0 || z2 != sparseBooleanArray.valueAt(iIndexOfKey)) {
            return false;
        }
        sparseBooleanArray.delete(i2);
        return true;
    }

    public static final void set(SparseBooleanArray sparseBooleanArray, int i2, boolean z2) {
        t.b.h(sparseBooleanArray, "<this>");
        sparseBooleanArray.put(i2, z2);
    }

    public static final d valueIterator(final SparseBooleanArray sparseBooleanArray) {
        t.b.h(sparseBooleanArray, "<this>");
        return new d() { // from class: androidx.core.util.SparseBooleanArrayKt.valueIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseBooleanArray.size();
            }

            @Override // t.d
            public boolean nextBoolean() {
                SparseBooleanArray sparseBooleanArray2 = sparseBooleanArray;
                int i2 = this.index;
                this.index = i2 + 1;
                return sparseBooleanArray2.valueAt(i2);
            }

            public final void setIndex(int i2) {
                this.index = i2;
            }
        };
    }
}
