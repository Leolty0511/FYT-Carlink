package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible
@ElementTypesAreNonnullByDefault
public final class Verify {
    private Verify() {
    }

    public static void verify(boolean z2) {
        if (!z2) {
            throw new VerifyException();
        }
    }

    @CanIgnoreReturnValue
    public static <T> T verifyNotNull(T t2) {
        return (T) verifyNotNull(t2, "expected a non-null reference", new Object[0]);
    }

    public static void verify(boolean z2, String str, Object... objArr) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, objArr));
        }
    }

    @CanIgnoreReturnValue
    public static <T> T verifyNotNull(T t2, String str, Object... objArr) {
        if (t2 != null) {
            return t2;
        }
        throw new VerifyException(Strings.lenientFormat(str, objArr));
    }

    public static void verify(boolean z2, String str, char c) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, Character.valueOf(c)));
        }
    }

    public static void verify(boolean z2, String str, int i2) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, Integer.valueOf(i2)));
        }
    }

    public static void verify(boolean z2, String str, long j2) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, Long.valueOf(j2)));
        }
    }

    public static void verify(boolean z2, String str, Object obj) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, obj));
        }
    }

    public static void verify(boolean z2, String str, char c, char c2) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, Character.valueOf(c), Character.valueOf(c2)));
        }
    }

    public static void verify(boolean z2, String str, int i2, char c) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, Integer.valueOf(i2), Character.valueOf(c)));
        }
    }

    public static void verify(boolean z2, String str, long j2, char c) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, Long.valueOf(j2), Character.valueOf(c)));
        }
    }

    public static void verify(boolean z2, String str, Object obj, char c) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, obj, Character.valueOf(c)));
        }
    }

    public static void verify(boolean z2, String str, char c, int i2) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, Character.valueOf(c), Integer.valueOf(i2)));
        }
    }

    public static void verify(boolean z2, String str, int i2, int i3) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, Integer.valueOf(i2), Integer.valueOf(i3)));
        }
    }

    public static void verify(boolean z2, String str, long j2, int i2) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, Long.valueOf(j2), Integer.valueOf(i2)));
        }
    }

    public static void verify(boolean z2, String str, Object obj, int i2) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, obj, Integer.valueOf(i2)));
        }
    }

    public static void verify(boolean z2, String str, char c, long j2) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, Character.valueOf(c), Long.valueOf(j2)));
        }
    }

    public static void verify(boolean z2, String str, int i2, long j2) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, Integer.valueOf(i2), Long.valueOf(j2)));
        }
    }

    public static void verify(boolean z2, String str, long j2, long j3) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, Long.valueOf(j2), Long.valueOf(j3)));
        }
    }

    public static void verify(boolean z2, String str, Object obj, long j2) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, obj, Long.valueOf(j2)));
        }
    }

    public static void verify(boolean z2, String str, char c, Object obj) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, Character.valueOf(c), obj));
        }
    }

    public static void verify(boolean z2, String str, int i2, Object obj) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, Integer.valueOf(i2), obj));
        }
    }

    public static void verify(boolean z2, String str, long j2, Object obj) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, Long.valueOf(j2), obj));
        }
    }

    public static void verify(boolean z2, String str, Object obj, Object obj2) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, obj, obj2));
        }
    }

    public static void verify(boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, obj, obj2, obj3));
        }
    }

    public static void verify(boolean z2, String str, Object obj, Object obj2, Object obj3, Object obj4) {
        if (!z2) {
            throw new VerifyException(Strings.lenientFormat(str, obj, obj2, obj3, obj4));
        }
    }
}
