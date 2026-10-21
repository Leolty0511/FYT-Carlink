package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Strings;
import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible(emulated = true)
@ElementTypesAreNonnullByDefault
final class Platform {
    private static final Logger logger = Logger.getLogger(Platform.class.getName());

    private Platform() {
    }

    public static void checkGwtRpcEnabled() {
        if (!Boolean.parseBoolean(System.getProperty("guava.gwt.emergency_reenable_rpc", "false"))) {
            throw new UnsupportedOperationException(Strings.lenientFormat("We are removing GWT-RPC support for Guava types. You can temporarily reenable support by setting the system property %s to true. For more about system properties, see %s. For more about Guava's GWT-RPC support, see %s.", "guava.gwt.emergency_reenable_rpc", "https://stackoverflow.com/q/5189914/28465", "https://groups.google.com/d/msg/guava-announce/zHZTFg7YF3o/rQNnwdHeEwAJ"));
        }
        logger.log(Level.WARNING, "Later in 2020, we will remove GWT-RPC support for Guava types. You are seeing this warning because you are sending a Guava type over GWT-RPC, which will break. You can identify which type by looking at the class name in the attached stack trace.", new Throwable());
    }

    public static <T> T[] copy(Object[] objArr, int i2, int i3, T[] tArr) {
        return (T[]) Arrays.copyOfRange(objArr, i2, i3, tArr.getClass());
    }

    public static <E extends Enum<E>> Class<E> getDeclaringClassOrObjectForJ2cl(E e2) {
        return e2.getDeclaringClass();
    }

    public static <T> T[] newArray(T[] tArr, int i2) {
        if (tArr.length != 0) {
            tArr = (T[]) Arrays.copyOf(tArr, 0);
        }
        return (T[]) Arrays.copyOf(tArr, i2);
    }

    public static <E> Set<E> newConcurrentHashSet() {
        return ConcurrentHashMap.newKeySet();
    }

    public static <K, V> Map<K, V> newHashMapWithExpectedSize(int i2) {
        return Maps.newHashMapWithExpectedSize(i2);
    }

    public static <E> Set<E> newHashSetWithExpectedSize(int i2) {
        return Sets.newHashSetWithExpectedSize(i2);
    }

    public static <K, V> Map<K, V> newLinkedHashMapWithExpectedSize(int i2) {
        return Maps.newLinkedHashMapWithExpectedSize(i2);
    }

    public static <E> Set<E> newLinkedHashSetWithExpectedSize(int i2) {
        return Sets.newLinkedHashSetWithExpectedSize(i2);
    }

    public static <E> Set<E> preservesInsertionOrderOnAddsSet() {
        return Sets.newLinkedHashSet();
    }

    public static <K, V> Map<K, V> preservesInsertionOrderOnPutsMap() {
        return Maps.newLinkedHashMap();
    }

    public static int reduceExponentIfGwt(int i2) {
        return i2;
    }

    public static int reduceIterationsIfGwt(int i2) {
        return i2;
    }

    @J2ktIncompatible
    public static MapMaker tryWeakKeys(MapMaker mapMaker) {
        return mapMaker.weakKeys();
    }
}
