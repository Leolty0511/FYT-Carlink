package j;

import android.util.ArrayMap;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes.dex */
public class l<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayMap<String, SparseArray<E>> f2961a = new ArrayMap<>();

    public E a(String str, int i2) {
        SparseArray<E> sparseArray = this.f2961a.get(str);
        if (sparseArray == null) {
            return null;
        }
        return sparseArray.get(i2);
    }

    public ArrayMap<String, SparseArray<E>> b() {
        return this.f2961a;
    }

    public E c(String str, int i2, E e2) {
        SparseArray<E> sparseArray = this.f2961a.get(str);
        if (sparseArray == null) {
            sparseArray = new SparseArray<>(2);
            this.f2961a.put(str, sparseArray);
        }
        sparseArray.put(i2, e2);
        return e2;
    }
}
