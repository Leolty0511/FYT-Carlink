package androidx.constraintlayout.motion.widget;

import android.accessibilityservice.c;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.net.wifi.WifiEnterpriseConfig;
import android.provider.SettingsStringUtil;
import android.telecom.Logging.Session;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.android.internal.telephony.IccCardConstants;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.nio.CharBuffer;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"LogConditional"})
public class Debug {
    public static void dumpLayoutParams(ViewGroup viewGroup, String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str2 = ".(" + stackTraceElement.getFileName() + SettingsStringUtil.DELIMITER + stackTraceElement.getLineNumber() + ") " + str + "  ";
        int childCount = viewGroup.getChildCount();
        System.out.println(str + " children " + childCount);
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            PrintStream printStream = System.out;
            StringBuilder sbU = c.u(str2, "     ");
            sbU.append(getName(childAt));
            printStream.println(sbU.toString());
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            for (Field field : layoutParams.getClass().getFields()) {
                try {
                    Object obj = field.get(layoutParams);
                    if (field.getName().contains("To") && !obj.toString().equals("-1")) {
                        System.out.println(str2 + "       " + field.getName() + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + obj);
                    }
                } catch (IllegalAccessException unused) {
                }
            }
        }
    }

    public static void dumpPoc(Object obj) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str = ".(" + stackTraceElement.getFileName() + SettingsStringUtil.DELIMITER + stackTraceElement.getLineNumber() + ")";
        Class<?> cls = obj.getClass();
        PrintStream printStream = System.out;
        StringBuilder sbU = c.u(str, "------------- ");
        sbU.append(cls.getName());
        sbU.append(" --------------------");
        printStream.println(sbU.toString());
        for (Field field : cls.getFields()) {
            try {
                Object obj2 = field.get(obj);
                if (field.getName().startsWith("layout_constraint") && ((!(obj2 instanceof Integer) || !obj2.toString().equals("-1")) && ((!(obj2 instanceof Integer) || !obj2.toString().equals(WifiEnterpriseConfig.ENGINE_DISABLE)) && ((!(obj2 instanceof Float) || !obj2.toString().equals("1.0")) && (!(obj2 instanceof Float) || !obj2.toString().equals("0.5")))))) {
                    System.out.println(str + "    " + field.getName() + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + obj2);
                }
            } catch (IllegalAccessException unused) {
            }
        }
        PrintStream printStream2 = System.out;
        StringBuilder sbU2 = c.u(str, "------------- ");
        sbU2.append(cls.getSimpleName());
        sbU2.append(" --------------------");
        printStream2.println(sbU2.toString());
    }

    public static String getActionType(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        for (Field field : MotionEvent.class.getFields()) {
            try {
                if (Modifier.isStatic(field.getModifiers()) && field.getType().equals(Integer.TYPE) && field.getInt(null) == action) {
                    return field.getName();
                }
            } catch (IllegalAccessException unused) {
            }
        }
        return "---";
    }

    public static String getCallFrom(int i2) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[i2 + 2];
        return ".(" + stackTraceElement.getFileName() + SettingsStringUtil.DELIMITER + stackTraceElement.getLineNumber() + ")";
    }

    public static String getLoc() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        return ".(" + stackTraceElement.getFileName() + SettingsStringUtil.DELIMITER + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName() + "()";
    }

    public static String getLocation() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        return ".(" + stackTraceElement.getFileName() + SettingsStringUtil.DELIMITER + stackTraceElement.getLineNumber() + ")";
    }

    public static String getLocation2() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[2];
        return ".(" + stackTraceElement.getFileName() + SettingsStringUtil.DELIMITER + stackTraceElement.getLineNumber() + ")";
    }

    public static String getName(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception unused) {
            return IccCardConstants.INTENT_VALUE_ICC_UNKNOWN;
        }
    }

    public static String getState(MotionLayout motionLayout, int i2) {
        return getState(motionLayout, i2, -1);
    }

    public static void logStack(String str, String str2, int i2) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int iMin = Math.min(i2, stackTrace.length - 1);
        String strD = WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER;
        for (int i3 = 1; i3 <= iMin; i3++) {
            StackTraceElement stackTraceElement = stackTrace[i3];
            String str3 = ".(" + stackTrace[i3].getFileName() + SettingsStringUtil.DELIMITER + stackTrace[i3].getLineNumber() + ") " + stackTrace[i3].getMethodName();
            strD = c.D(strD, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            Log.v(str, str2 + strD + str3 + strD);
        }
    }

    public static void printStack(String str, int i2) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        int iMin = Math.min(i2, stackTrace.length - 1);
        String strD = WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER;
        for (int i3 = 1; i3 <= iMin; i3++) {
            StackTraceElement stackTraceElement = stackTrace[i3];
            String str2 = ".(" + stackTrace[i3].getFileName() + SettingsStringUtil.DELIMITER + stackTrace[i3].getLineNumber() + ") ";
            strD = c.D(strD, WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            System.out.println(str + strD + str2 + strD);
        }
    }

    public static String getState(MotionLayout motionLayout, int i2, int i3) {
        int length;
        if (i2 == -1) {
            return "UNDEFINED";
        }
        String resourceEntryName = motionLayout.getContext().getResources().getResourceEntryName(i2);
        if (i3 == -1) {
            return resourceEntryName;
        }
        if (resourceEntryName.length() > i3) {
            resourceEntryName = resourceEntryName.replaceAll("([^_])[aeiou]+", "$1");
        }
        if (resourceEntryName.length() <= i3 || (length = resourceEntryName.replaceAll("[^_]", "").length()) <= 0) {
            return resourceEntryName;
        }
        return resourceEntryName.replaceAll(CharBuffer.allocate((resourceEntryName.length() - i3) / length).toString().replace((char) 0, '.') + Session.SESSION_SEPARATION_CHAR_CHILD, Session.SESSION_SEPARATION_CHAR_CHILD);
    }

    public static String getName(Context context, int i2) {
        if (i2 == -1) {
            return IccCardConstants.INTENT_VALUE_ICC_UNKNOWN;
        }
        try {
            return context.getResources().getResourceEntryName(i2);
        } catch (Exception unused) {
            return c.d("?", i2);
        }
    }

    public static String getName(Context context, int[] iArr) {
        String resourceEntryName;
        try {
            String str = iArr.length + "[";
            int i2 = 0;
            while (i2 < iArr.length) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(i2 == 0 ? "" : WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                String string = sb.toString();
                try {
                    resourceEntryName = context.getResources().getResourceEntryName(iArr[i2]);
                } catch (Resources.NotFoundException unused) {
                    resourceEntryName = "? " + iArr[i2] + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER;
                }
                str = string + resourceEntryName;
                i2++;
            }
            return str + "]";
        } catch (Exception e2) {
            Log.v("DEBUG", e2.toString());
            return IccCardConstants.INTENT_VALUE_ICC_UNKNOWN;
        }
    }

    public static void dumpLayoutParams(ViewGroup.LayoutParams layoutParams, String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String str2 = ".(" + stackTraceElement.getFileName() + SettingsStringUtil.DELIMITER + stackTraceElement.getLineNumber() + ") " + str + "  ";
        PrintStream printStream = System.out;
        StringBuilder sbV = c.v(" >>>>>>>>>>>>>>>>>>. dump ", str2, "  ");
        sbV.append(layoutParams.getClass().getName());
        printStream.println(sbV.toString());
        for (Field field : layoutParams.getClass().getFields()) {
            try {
                Object obj = field.get(layoutParams);
                String name = field.getName();
                if (name.contains("To") && !obj.toString().equals("-1")) {
                    System.out.println(str2 + "       " + name + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + obj);
                }
            } catch (IllegalAccessException unused) {
            }
        }
        System.out.println(" <<<<<<<<<<<<<<<<< dump " + str2);
    }
}
