package android.view.inputmethod;

import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Modifier;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class InputConnectionInspector {
    private static final Map<Class, Integer> sMissingMethodsMap = Collections.synchronizedMap(new WeakHashMap());

    @Retention(RetentionPolicy.SOURCE)
    public @interface MissingMethodFlags {
        public static final int CLOSE_CONNECTION = 64;
        public static final int COMMIT_CONTENT = 128;
        public static final int COMMIT_CORRECTION = 4;
        public static final int DELETE_SURROUNDING_TEXT_IN_CODE_POINTS = 16;
        public static final int GET_HANDLER = 32;
        public static final int GET_SELECTED_TEXT = 1;
        public static final int REQUEST_CURSOR_UPDATES = 8;
        public static final int SET_COMPOSING_REGION = 2;
    }

    public static int getMissingMethodFlags(InputConnection inputConnection) {
        if (inputConnection == null || (inputConnection instanceof BaseInputConnection)) {
            return 0;
        }
        return inputConnection instanceof InputConnectionWrapper ? ((InputConnectionWrapper) inputConnection).getMissingMethodFlags() : getMissingMethodFlagsInternal(inputConnection.getClass());
    }

    public static String getMissingMethodFlagsAsString(int i2) {
        boolean z2;
        StringBuilder sb = new StringBuilder();
        boolean z3 = false;
        if ((i2 & 1) != 0) {
            sb.append("getSelectedText(int)");
            z2 = false;
        } else {
            z2 = true;
        }
        if ((i2 & 2) != 0) {
            if (!z2) {
                sb.append(",");
            }
            sb.append("setComposingRegion(int, int)");
            z2 = false;
        }
        if ((i2 & 4) != 0) {
            if (!z2) {
                sb.append(",");
            }
            sb.append("commitCorrection(CorrectionInfo)");
            z2 = false;
        }
        if ((i2 & 8) != 0) {
            if (!z2) {
                sb.append(",");
            }
            sb.append("requestCursorUpdate(int)");
            z2 = false;
        }
        if ((i2 & 16) != 0) {
            if (!z2) {
                sb.append(",");
            }
            sb.append("deleteSurroundingTextInCodePoints(int, int)");
        } else {
            z3 = z2;
        }
        if ((i2 & 32) != 0) {
            if (!z3) {
                sb.append(",");
            }
            sb.append("getHandler()");
        }
        if ((i2 & 64) != 0) {
            if (!z3) {
                sb.append(",");
            }
            sb.append("closeConnection()");
        }
        if ((i2 & 128) != 0) {
            if (!z3) {
                sb.append(",");
            }
            sb.append("commitContent(InputContentInfo, Bundle)");
        }
        return sb.toString();
    }

    public static int getMissingMethodFlagsInternal(Class cls) {
        Map<Class, Integer> map = sMissingMethodsMap;
        Integer num = map.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int i2 = !hasGetSelectedText(cls) ? 1 : 0;
        if (!hasSetComposingRegion(cls)) {
            i2 |= 2;
        }
        if (!hasCommitCorrection(cls)) {
            i2 |= 4;
        }
        if (!hasRequestCursorUpdate(cls)) {
            i2 |= 8;
        }
        if (!hasDeleteSurroundingTextInCodePoints(cls)) {
            i2 |= 16;
        }
        if (!hasGetHandler(cls)) {
            i2 |= 32;
        }
        if (!hasCloseConnection(cls)) {
            i2 |= 64;
        }
        if (!hasCommitContent(cls)) {
            i2 |= 128;
        }
        map.put(cls, Integer.valueOf(i2));
        return i2;
    }

    private static boolean hasCloseConnection(Class cls) {
        try {
            return !Modifier.isAbstract(cls.getMethod("closeConnection", new Class[0]).getModifiers());
        } catch (NoSuchMethodException unused) {
            return false;
        }
    }

    private static boolean hasCommitContent(Class cls) {
        try {
            return !Modifier.isAbstract(cls.getMethod("commitContent", InputContentInfo.class, Integer.TYPE, Bundle.class).getModifiers());
        } catch (NoSuchMethodException unused) {
            return false;
        }
    }

    private static boolean hasCommitCorrection(Class cls) {
        try {
            return !Modifier.isAbstract(cls.getMethod("commitCorrection", CorrectionInfo.class).getModifiers());
        } catch (NoSuchMethodException unused) {
            return false;
        }
    }

    private static boolean hasDeleteSurroundingTextInCodePoints(Class cls) {
        try {
            Class<?> cls2 = Integer.TYPE;
            return !Modifier.isAbstract(cls.getMethod("deleteSurroundingTextInCodePoints", cls2, cls2).getModifiers());
        } catch (NoSuchMethodException unused) {
            return false;
        }
    }

    private static boolean hasGetHandler(Class cls) {
        try {
            return !Modifier.isAbstract(cls.getMethod("getHandler", new Class[0]).getModifiers());
        } catch (NoSuchMethodException unused) {
            return false;
        }
    }

    private static boolean hasGetSelectedText(Class cls) {
        try {
            return !Modifier.isAbstract(cls.getMethod("getSelectedText", Integer.TYPE).getModifiers());
        } catch (NoSuchMethodException unused) {
            return false;
        }
    }

    private static boolean hasRequestCursorUpdate(Class cls) {
        try {
            return !Modifier.isAbstract(cls.getMethod("requestCursorUpdates", Integer.TYPE).getModifiers());
        } catch (NoSuchMethodException unused) {
            return false;
        }
    }

    private static boolean hasSetComposingRegion(Class cls) {
        try {
            Class<?> cls2 = Integer.TYPE;
            return !Modifier.isAbstract(cls.getMethod("setComposingRegion", cls2, cls2).getModifiers());
        } catch (NoSuchMethodException unused) {
            return false;
        }
    }
}
