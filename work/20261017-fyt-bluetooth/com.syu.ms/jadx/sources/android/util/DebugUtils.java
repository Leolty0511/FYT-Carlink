package android.util;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class DebugUtils {
    public static void buildShortClassTag(Object obj, StringBuilder sb) {
        int iLastIndexOf;
        if (obj == null) {
            sb.append("null");
            return;
        }
        String simpleName = obj.getClass().getSimpleName();
        if (simpleName.isEmpty() && (iLastIndexOf = (simpleName = obj.getClass().getName()).lastIndexOf(46)) > 0) {
            simpleName = simpleName.substring(iLastIndexOf + 1);
        }
        sb.append(simpleName);
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(obj)));
    }

    public static boolean isObjectSelected(Object obj) {
        Method declaredMethod;
        String str = System.getenv("ANDROID_OBJECT_FILTER");
        if (str == null || str.length() <= 0) {
            return false;
        }
        String[] strArrSplit = str.split("@");
        if (!obj.getClass().getSimpleName().matches(strArrSplit[0])) {
            return false;
        }
        boolean zMatches = false;
        for (int i2 = 1; i2 < strArrSplit.length; i2++) {
            String[] strArrSplit2 = strArrSplit[i2].split("=");
            Class<?> cls = obj.getClass();
            Class<?> cls2 = cls;
            while (true) {
                try {
                    declaredMethod = cls2.getDeclaredMethod("get" + strArrSplit2[0].substring(0, 1).toUpperCase(Locale.ROOT) + strArrSplit2[0].substring(1), null);
                    Class<? super Object> superclass = cls.getSuperclass();
                    if (superclass == null || declaredMethod != null) {
                        break;
                        break;
                    }
                    cls2 = superclass;
                } catch (IllegalAccessException e2) {
                    e2.printStackTrace();
                } catch (NoSuchMethodException e3) {
                    e3.printStackTrace();
                } catch (InvocationTargetException e4) {
                    e4.printStackTrace();
                }
            }
            if (declaredMethod != null) {
                Object objInvoke = declaredMethod.invoke(obj, null);
                zMatches |= (objInvoke != null ? objInvoke.toString() : "null").matches(strArrSplit2[1]);
            }
        }
        return zMatches;
    }
}
