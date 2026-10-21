package o1;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static HashMap<Class<?>, Class<?>> f16838a;

    static {
        HashMap<Class<?>, Class<?>> map = new HashMap<>();
        f16838a = map;
        map.put(Integer.class, Integer.TYPE);
        f16838a.put(Boolean.class, Boolean.TYPE);
        f16838a.put(Float.class, Float.TYPE);
        f16838a.put(Double.class, Double.TYPE);
        f16838a.put(Long.class, Long.TYPE);
    }

    public static final Object a(Object obj, Method method, Object... objArr) {
        if (method == null) {
            return null;
        }
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return null;
        } catch (IllegalArgumentException e3) {
            e3.printStackTrace();
            return null;
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static final Method b(Class cls, String str, Class<?>... clsArr) {
        Method method;
        try {
            method = cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
            method = null;
        }
        if (method != null) {
            return method;
        }
        try {
            return cls.getDeclaredMethod(str, clsArr);
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
            return method;
        }
    }

    public static final Method c(String str, String str2, Class<?>... clsArr) {
        try {
            return b(Class.forName(str), str2, clsArr);
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static final <T> T d(String str, String str2, Object... objArr) {
        return (T) f(str, null, str2, objArr);
    }

    public static final <T> T e(String str, Object obj, String str2, Class<?>[] clsArr, Object... objArr) {
        return (T) a(obj, c(str, str2, clsArr), objArr);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0027  */
    public static final <T> T f(String str, Object obj, String str2, Object... objArr) {
        Class[] clsArr;
        ArrayList arrayList = new ArrayList();
        if (objArr != null) {
            for (Object obj2 : objArr) {
                arrayList.add(obj2.getClass());
            }
            if (arrayList.size() > 0) {
                clsArr = new Class[arrayList.size()];
                arrayList.toArray(clsArr);
            } else {
                clsArr = null;
            }
        } else {
            clsArr = null;
        }
        return (T) a(obj, c(str, str2, clsArr), objArr);
    }
}
