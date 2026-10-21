package t;

import android.app.m;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class c extends b {
    public static final int G(Collection collection) {
        b.h(collection, "<this>");
        return collection.size();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0015 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:14:? A[RETURN, SYNTHETIC] */
    public static final boolean H(int[] iArr, int i2) {
        b.h(iArr, "<this>");
        int length = iArr.length;
        int i3 = 0;
        while (i3 < length) {
            if (i2 == iArr[i3]) {
                if (i3 >= 0) {
                    return true;
                }
                return false;
            }
            i3++;
        }
        i3 = -1;
        if (i3 >= 0) {
            return true;
        }
        return false;
    }

    public static final boolean I(Object[] objArr, Object obj) {
        int i2;
        b.h(objArr, "<this>");
        if (obj == null) {
            int length = objArr.length;
            i2 = 0;
            while (i2 < length) {
                if (objArr[i2] != null) {
                    i2++;
                }
            }
            i2 = -1;
        } else {
            int length2 = objArr.length;
            for (int i3 = 0; i3 < length2; i3++) {
                if (b.a(obj, objArr[i3])) {
                    i2 = i3;
                }
            }
            i2 = -1;
        }
        return i2 >= 0;
    }

    public static final byte[] J(byte[] bArr, int i2) {
        int length = bArr.length;
        if (i2 > length) {
            throw new IndexOutOfBoundsException(m.f("toIndex (", i2, ") is greater than size (", length, ")."));
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, i2);
        b.g(bArrCopyOfRange, "copyOfRange(this, fromIndex, toIndex)");
        return bArrCopyOfRange;
    }

    public static final LinkedHashSet K(Set set, Set set2) {
        int size;
        b.h(set, "<this>");
        b.h(set2, "elements");
        Integer numValueOf = Integer.valueOf(set2.size());
        if (numValueOf != null) {
            size = set.size() + numValueOf.intValue();
        } else {
            size = set.size() * 2;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(b.u(size));
        linkedHashSet.addAll(set);
        linkedHashSet.addAll(set2);
        return linkedHashSet;
    }
}
