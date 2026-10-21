package android.util;

import android.accessibilityservice.c;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
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

    public static String flagsToString(Class<?> cls, String str, int i2) {
        StringBuilder sb = new StringBuilder();
        for (Field field : cls.getDeclaredFields()) {
            int modifiers = field.getModifiers();
            if (Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers) && field.getType().equals(Integer.TYPE) && field.getName().startsWith(str)) {
                try {
                    int i3 = field.getInt(null);
                    if ((i2 & i3) != 0) {
                        i2 &= ~i3;
                        sb.append(field.getName().substring(str.length()));
                        sb.append('|');
                    }
                } catch (IllegalAccessException unused) {
                }
            }
        }
        if (i2 != 0 || sb.length() == 0) {
            sb.append(Integer.toHexString(i2));
        } else {
            sb.deleteCharAt(sb.length() - 1);
        }
        return sb.toString();
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

    public static void printSizeValue(PrintWriter printWriter, long j2) {
        String str;
        String str2;
        float f2 = j2;
        if (f2 > 900.0f) {
            f2 /= 1024.0f;
            str = "KB";
        } else {
            str = "";
        }
        if (f2 > 900.0f) {
            f2 /= 1024.0f;
            str = "MB";
        }
        if (f2 > 900.0f) {
            f2 /= 1024.0f;
            str = "GB";
        }
        if (f2 > 900.0f) {
            f2 /= 1024.0f;
            str = "TB";
        }
        if (f2 > 900.0f) {
            f2 /= 1024.0f;
            str = "PB";
        }
        if (f2 < 1.0f) {
            str2 = String.format("%.2f", Float.valueOf(f2));
        } else if (f2 < 10.0f) {
            str2 = String.format("%.1f", Float.valueOf(f2));
        } else {
            str2 = f2 < 100.0f ? String.format("%.0f", Float.valueOf(f2)) : String.format("%.0f", Float.valueOf(f2));
        }
        printWriter.print(str2);
        printWriter.print(str);
    }

    public static String sizeValueToString(long j2, StringBuilder sb) {
        String str;
        String str2;
        if (sb == null) {
            sb = new StringBuilder(32);
        }
        float f2 = j2;
        if (f2 > 900.0f) {
            f2 /= 1024.0f;
            str = "KB";
        } else {
            str = "";
        }
        if (f2 > 900.0f) {
            f2 /= 1024.0f;
            str = "MB";
        }
        if (f2 > 900.0f) {
            f2 /= 1024.0f;
            str = "GB";
        }
        if (f2 > 900.0f) {
            f2 /= 1024.0f;
            str = "TB";
        }
        if (f2 > 900.0f) {
            f2 /= 1024.0f;
            str = "PB";
        }
        if (f2 < 1.0f) {
            str2 = String.format("%.2f", Float.valueOf(f2));
        } else if (f2 < 10.0f) {
            str2 = String.format("%.1f", Float.valueOf(f2));
        } else {
            str2 = f2 < 100.0f ? String.format("%.0f", Float.valueOf(f2)) : String.format("%.0f", Float.valueOf(f2));
        }
        return c.n(sb, str2, str);
    }

    public static String valueToString(Class<?> cls, String str, int i2) {
        Field[] declaredFields = cls.getDeclaredFields();
        int length = declaredFields.length;
        for (int i3 = 0; i3 < length; i3++) {
            Field field = declaredFields[i3];
            int modifiers = field.getModifiers();
            if (Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers) && field.getType().equals(Integer.TYPE) && field.getName().startsWith(str)) {
                try {
                    if (i2 == field.getInt(null)) {
                        return field.getName().substring(str.length());
                    }
                    continue;
                } catch (IllegalAccessException unused) {
                    continue;
                }
            }
        }
        return Integer.toString(i2);
    }
}
