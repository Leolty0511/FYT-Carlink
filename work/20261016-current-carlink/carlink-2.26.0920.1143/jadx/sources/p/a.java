package p;

import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {
    static {
        HashMap map = new HashMap();
        map.put(Integer.class, Integer.TYPE);
        map.put(Boolean.class, Boolean.TYPE);
        map.put(Float.class, Float.TYPE);
        map.put(Double.class, Double.TYPE);
        map.put(Long.class, Long.TYPE);
    }

    public static Field a(Class cls, String str) {
        Field declaredField;
        Class superclass;
        try {
            declaredField = cls.getField(str);
        } catch (NoSuchFieldException e2) {
            e2.printStackTrace();
            declaredField = null;
        }
        if (declaredField == null) {
            try {
                declaredField = cls.getDeclaredField(str);
            } catch (NoSuchFieldException e3) {
                e3.printStackTrace();
            }
        }
        return (declaredField != null || (superclass = cls.getSuperclass()) == null) ? declaredField : a(superclass, str);
    }

    public static final Object b(Object obj, String str) {
        Field fieldA = obj == null ? null : a(obj.getClass(), str);
        if (fieldA == null) {
            return null;
        }
        fieldA.setAccessible(true);
        try {
            return fieldA.get(obj);
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static final Method c(String str, String str2, Class... clsArr) {
        Method method;
        try {
            Class<?> cls = Class.forName(str);
            try {
                method = cls.getMethod(str2, clsArr);
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
                method = null;
            }
            if (method != null) {
                return method;
            }
            try {
                return cls.getDeclaredMethod(str2, clsArr);
            } catch (NoSuchMethodException e3) {
                e3.printStackTrace();
                return method;
            }
        } catch (ClassNotFoundException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    public static final Object d(String str, WifiManager wifiManager, String str2, Class[] clsArr, Object... objArr) {
        Method methodC = c(str, str2, clsArr);
        if (methodC == null) {
            return null;
        }
        try {
            return methodC.invoke(wifiManager, objArr);
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

    /* JADX WARN: Code duplicated, block: B:10:0x0029  */
    public static final Object e(String str, Object obj, String str2, Object... objArr) {
        Class[] clsArr;
        ArrayList arrayList = new ArrayList();
        if (objArr.length > 0) {
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
        Method methodC = c(str, str2, clsArr);
        if (methodC == null) {
            return null;
        }
        try {
            return methodC.invoke(obj, objArr);
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

    public static final void f(WifiConfiguration wifiConfiguration, Integer num) {
        Field fieldA = wifiConfiguration == null ? null : a(wifiConfiguration.getClass(), "apBand");
        if (fieldA != null) {
            fieldA.setAccessible(true);
            try {
                fieldA.set(wifiConfiguration, num);
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            }
        }
    }
}
