package androidx.core.util;

import android.annotation.SuppressLint;
import android.hardware.Camera;
import android.util.SparseLongArray;
import androidx.annotation.RequiresApi;
import t.f;
import t.g;
import z.p;

/* JADX INFO: loaded from: classes2.dex */
public final class SparseLongArrayKt {
    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final boolean contains(SparseLongArray sparseLongArray, int i2) {
        t.b.h(sparseLongArray, "<this>");
        return sparseLongArray.indexOfKey(i2) >= 0;
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final boolean containsKey(SparseLongArray sparseLongArray, int i2) {
        t.b.h(sparseLongArray, "<this>");
        return sparseLongArray.indexOfKey(i2) >= 0;
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final boolean containsValue(SparseLongArray sparseLongArray, long j2) {
        t.b.h(sparseLongArray, "<this>");
        return sparseLongArray.indexOfValue(j2) >= 0;
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final void forEach(SparseLongArray sparseLongArray, p pVar) {
        t.b.h(sparseLongArray, "<this>");
        t.b.h(pVar, Camera.Parameters.SCENE_MODE_ACTION);
        int size = sparseLongArray.size();
        for (int i2 = 0; i2 < size; i2++) {
            pVar.invoke(Integer.valueOf(sparseLongArray.keyAt(i2)), Long.valueOf(sparseLongArray.valueAt(i2)));
        }
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final long getOrDefault(SparseLongArray sparseLongArray, int i2, long j2) {
        t.b.h(sparseLongArray, "<this>");
        return sparseLongArray.get(i2, j2);
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final long getOrElse(SparseLongArray sparseLongArray, int i2, z.a aVar) {
        t.b.h(sparseLongArray, "<this>");
        t.b.h(aVar, "defaultValue");
        int iIndexOfKey = sparseLongArray.indexOfKey(i2);
        return iIndexOfKey >= 0 ? sparseLongArray.valueAt(iIndexOfKey) : ((Number) aVar.invoke()).longValue();
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final int getSize(SparseLongArray sparseLongArray) {
        t.b.h(sparseLongArray, "<this>");
        return sparseLongArray.size();
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final boolean isEmpty(SparseLongArray sparseLongArray) {
        t.b.h(sparseLongArray, "<this>");
        return sparseLongArray.size() == 0;
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final boolean isNotEmpty(SparseLongArray sparseLongArray) {
        t.b.h(sparseLongArray, "<this>");
        return sparseLongArray.size() != 0;
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final f keyIterator(final SparseLongArray sparseLongArray) {
        t.b.h(sparseLongArray, "<this>");
        return new f() { // from class: androidx.core.util.SparseLongArrayKt.keyIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseLongArray.size();
            }

            @Override // t.f
            public int nextInt() {
                SparseLongArray sparseLongArray2 = sparseLongArray;
                int i2 = this.index;
                this.index = i2 + 1;
                return sparseLongArray2.keyAt(i2);
            }

            public final void setIndex(int i2) {
                this.index = i2;
            }
        };
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final SparseLongArray plus(SparseLongArray sparseLongArray, SparseLongArray sparseLongArray2) {
        t.b.h(sparseLongArray, "<this>");
        t.b.h(sparseLongArray2, "other");
        SparseLongArray sparseLongArray3 = new SparseLongArray(sparseLongArray2.size() + sparseLongArray.size());
        putAll(sparseLongArray3, sparseLongArray);
        putAll(sparseLongArray3, sparseLongArray2);
        return sparseLongArray3;
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final void putAll(SparseLongArray sparseLongArray, SparseLongArray sparseLongArray2) {
        t.b.h(sparseLongArray, "<this>");
        t.b.h(sparseLongArray2, "other");
        int size = sparseLongArray2.size();
        for (int i2 = 0; i2 < size; i2++) {
            sparseLongArray.put(sparseLongArray2.keyAt(i2), sparseLongArray2.valueAt(i2));
        }
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final boolean remove(SparseLongArray sparseLongArray, int i2, long j2) {
        t.b.h(sparseLongArray, "<this>");
        int iIndexOfKey = sparseLongArray.indexOfKey(i2);
        if (iIndexOfKey < 0 || j2 != sparseLongArray.valueAt(iIndexOfKey)) {
            return false;
        }
        sparseLongArray.removeAt(iIndexOfKey);
        return true;
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final void set(SparseLongArray sparseLongArray, int i2, long j2) {
        t.b.h(sparseLongArray, "<this>");
        sparseLongArray.put(i2, j2);
    }

    @RequiresApi(18)
    @SuppressLint({"ClassVerificationFailure"})
    public static final g valueIterator(final SparseLongArray sparseLongArray) {
        t.b.h(sparseLongArray, "<this>");
        return new g() { // from class: androidx.core.util.SparseLongArrayKt.valueIterator.1
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.index < sparseLongArray.size();
            }

            @Override // t.g
            public long nextLong() {
                SparseLongArray sparseLongArray2 = sparseLongArray;
                int i2 = this.index;
                this.index = i2 + 1;
                return sparseLongArray2.valueAt(i2);
            }

            public final void setIndex(int i2) {
                this.index = i2;
            }
        };
    }
}
