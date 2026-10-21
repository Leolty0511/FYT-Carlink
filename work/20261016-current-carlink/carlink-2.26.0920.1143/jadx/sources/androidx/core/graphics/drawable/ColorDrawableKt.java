package androidx.core.graphics.drawable;

import android.annotation.SuppressLint;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import androidx.annotation.ColorInt;
import androidx.annotation.RequiresApi;
import t.b;

/* JADX INFO: loaded from: classes2.dex */
public final class ColorDrawableKt {
    public static final ColorDrawable toDrawable(@ColorInt int i2) {
        return new ColorDrawable(i2);
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final ColorDrawable toDrawable(Color color) {
        b.h(color, "<this>");
        return new ColorDrawable(color.toArgb());
    }
}
