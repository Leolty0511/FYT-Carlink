package com.android.internal.util;

import android.util.ArraySet;
import android.util.ExceptionUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;

/* JADX INFO: loaded from: classes3.dex */
public class CollectionUtils {
    private CollectionUtils() {
    }

    public static <T> List<T> add(List<T> list, T t2) {
        if (list == null || list == Collections.emptyList()) {
            list = new ArrayList<>();
        }
        list.add(t2);
        return list;
    }

    public static <T> boolean any(List<T> list, Predicate<T> predicate) {
        return find(list, predicate) != null;
    }

    public static <T> List<T> copyOf(List<T> list) {
        return ArrayUtils.isEmpty(list) ? Collections.emptyList() : new ArrayList(list);
    }

    public static <T> List<T> emptyIfNull(List<T> list) {
        return list == null ? Collections.emptyList() : list;
    }

    public static <T> List<T> filter(List<T> list, Predicate<? super T> predicate) {
        ArrayList arrayListAdd = null;
        for (int i2 = 0; i2 < size(list); i2++) {
            T t2 = list.get(i2);
            if (predicate.test(t2)) {
                arrayListAdd = ArrayUtils.add(arrayListAdd, t2);
            }
        }
        return emptyIfNull(arrayListAdd);
    }

    public static <T> T find(List<T> list, Predicate<T> predicate) {
        if (ArrayUtils.isEmpty(list)) {
            return null;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            T t2 = list.get(i2);
            if (predicate.test(t2)) {
                return t2;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void forEach(Set<T> set, FunctionalUtils.ThrowingConsumer<T> throwingConsumer) {
        int size;
        if (set == null || throwingConsumer == 0 || (size = set.size()) == 0) {
            return;
        }
        try {
            if (!(set instanceof ArraySet)) {
                Iterator<T> it = set.iterator();
                while (it.hasNext()) {
                    throwingConsumer.accept(it.next());
                }
            } else {
                ArraySet arraySet = (ArraySet) set;
                for (int i2 = 0; i2 < size; i2++) {
                    throwingConsumer.accept(arraySet.valueAt(i2));
                }
            }
        } catch (Exception e2) {
            throw ExceptionUtils.propagate(e2);
        }
    }

    public static <I, O> List<O> map(List<I> list, Function<? super I, ? extends O> function) {
        if (ArrayUtils.isEmpty(list)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(function.apply(list.get(i2)));
        }
        return arrayList;
    }

    public static <I, O> List<O> mapNotNull(List<I> list, Function<? super I, ? extends O> function) {
        if (ArrayUtils.isEmpty(list)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            Object objApply = function.apply(list.get(i2));
            if (objApply != null) {
                arrayList.add(objApply);
            }
        }
        return arrayList;
    }

    public static <T> List<T> remove(List<T> list, T t2) {
        if (ArrayUtils.isEmpty(list)) {
            return emptyIfNull(list);
        }
        list.remove(t2);
        return list;
    }

    public static int size(Collection<?> collection) {
        if (collection != null) {
            return collection.size();
        }
        return 0;
    }

    public static <T> Set<T> copyOf(Set<T> set) {
        return ArrayUtils.isEmpty(set) ? Collections.emptySet() : new ArraySet(set);
    }

    public static <T> Set<T> emptyIfNull(Set<T> set) {
        return set == null ? Collections.emptySet() : set;
    }

    public static <T> Set<T> add(Set<T> set, T t2) {
        if (set == null || set == Collections.emptySet()) {
            set = new ArraySet<>();
        }
        set.add(t2);
        return set;
    }

    public static <T> Set<T> remove(Set<T> set, T t2) {
        if (ArrayUtils.isEmpty(set)) {
            return emptyIfNull(set);
        }
        set.remove(t2);
        return set;
    }

    public static <I, O> Set<O> map(Set<I> set, Function<? super I, ? extends O> function) {
        if (ArrayUtils.isEmpty(set)) {
            return Collections.emptySet();
        }
        ArraySet arraySet = new ArraySet();
        if (set instanceof ArraySet) {
            ArraySet arraySet2 = (ArraySet) set;
            int size = arraySet2.size();
            for (int i2 = 0; i2 < size; i2++) {
                arraySet.add(function.apply(arraySet2.valueAt(i2)));
            }
        } else {
            Iterator<I> it = set.iterator();
            while (it.hasNext()) {
                arraySet.add(function.apply(it.next()));
            }
        }
        return arraySet;
    }

    public static <T> Set<T> filter(Set<T> set, Predicate<? super T> predicate) {
        if (set != null && set.size() != 0) {
            ArraySet arraySetAdd = null;
            if (set instanceof ArraySet) {
                ArraySet arraySet = (ArraySet) set;
                int size = arraySet.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Object objValueAt = arraySet.valueAt(i2);
                    if (predicate.test(objValueAt)) {
                        arraySetAdd = ArrayUtils.add((ArraySet<Object>) arraySetAdd, objValueAt);
                    }
                }
            } else {
                for (T t2 : set) {
                    if (predicate.test(t2)) {
                        arraySetAdd = ArrayUtils.add(arraySetAdd, t2);
                    }
                }
            }
            return emptyIfNull(arraySetAdd);
        }
        return Collections.emptySet();
    }

    public static <T> List<T> filter(List<?> list, Class<T> cls) {
        if (ArrayUtils.isEmpty(list)) {
            return Collections.emptyList();
        }
        ArrayList arrayListAdd = null;
        for (int i2 = 0; i2 < list.size(); i2++) {
            Object obj = list.get(i2);
            if (cls.isInstance(obj)) {
                arrayListAdd = ArrayUtils.add((ArrayList<Object>) arrayListAdd, obj);
            }
        }
        return emptyIfNull(arrayListAdd);
    }
}
