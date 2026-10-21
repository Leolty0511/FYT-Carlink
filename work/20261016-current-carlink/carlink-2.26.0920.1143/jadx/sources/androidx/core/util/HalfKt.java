package androidx.core.util;

import android.annotation.SuppressLint;
import android.util.Half;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ClassVerificationFailure"})
public final class HalfKt {
    @RequiresApi(26)
    public static final Half toHalf(short s2) {
        Half halfValueOf = Half.valueOf(s2);
        t.b.g(halfValueOf, "valueOf(this)");
        return halfValueOf;
    }

    @RequiresApi(26)
    public static final Half toHalf(float f2) {
        Half halfValueOf = Half.valueOf(f2);
        t.b.g(halfValueOf, "valueOf(this)");
        return halfValueOf;
    }

    @RequiresApi(26)
    public static final Half toHalf(String str) {
        t.b.h(str, "<this>");
        Half halfValueOf = Half.valueOf(str);
        t.b.g(halfValueOf, "valueOf(this)");
        return halfValueOf;
    }

    @RequiresApi(26)
    public static final Half toHalf(double d2) {
        Half halfValueOf = Half.valueOf((float) d2);
        t.b.g(halfValueOf, "valueOf(this)");
        return halfValueOf;
    }
}
