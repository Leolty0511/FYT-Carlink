package com.android.server;

import android.util.ArrayMap;

/* JADX INFO: loaded from: classes3.dex */
public final class LocalServices {
    private static final ArrayMap<Class<?>, Object> sLocalServiceObjects = new ArrayMap<>();

    private LocalServices() {
    }

    public static <T> void addService(Class<T> cls, T t2) {
        ArrayMap<Class<?>, Object> arrayMap = sLocalServiceObjects;
        synchronized (arrayMap) {
            if (arrayMap.containsKey(cls)) {
                throw new IllegalStateException("Overriding service registration");
            }
            arrayMap.put(cls, t2);
        }
    }

    public static <T> T getService(Class<T> cls) {
        T t2;
        ArrayMap<Class<?>, Object> arrayMap = sLocalServiceObjects;
        synchronized (arrayMap) {
            t2 = (T) arrayMap.get(cls);
        }
        return t2;
    }

    public static <T> void removeServiceForTest(Class<T> cls) {
        ArrayMap<Class<?>, Object> arrayMap = sLocalServiceObjects;
        synchronized (arrayMap) {
            arrayMap.remove(cls);
        }
    }
}
