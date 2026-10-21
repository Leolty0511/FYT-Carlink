package com.android.internal.app;

import android.util.ArrayMap;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes2.dex */
public class ProcessMap<E> {
    final ArrayMap<String, SparseArray<E>> mMap = new ArrayMap<>();

    public E get(String str, int i2) {
        SparseArray<E> sparseArray = this.mMap.get(str);
        if (sparseArray == null) {
            return null;
        }
        return sparseArray.get(i2);
    }

    public ArrayMap<String, SparseArray<E>> getMap() {
        return this.mMap;
    }

    public E put(String str, int i2, E e2) {
        SparseArray<E> sparseArray = this.mMap.get(str);
        if (sparseArray == null) {
            sparseArray = new SparseArray<>(2);
            this.mMap.put(str, sparseArray);
        }
        sparseArray.put(i2, e2);
        return e2;
    }

    public E remove(String str, int i2) {
        SparseArray<E> sparseArray = this.mMap.get(str);
        if (sparseArray == null) {
            return null;
        }
        E eRemoveReturnOld = sparseArray.removeReturnOld(i2);
        if (sparseArray.size() == 0) {
            this.mMap.remove(str);
        }
        return eRemoveReturnOld;
    }

    public int size() {
        return this.mMap.size();
    }
}
