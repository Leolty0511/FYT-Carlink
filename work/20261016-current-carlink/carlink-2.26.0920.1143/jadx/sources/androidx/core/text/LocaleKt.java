package androidx.core.text;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import java.util.Locale;
import t.b;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"ClassVerificationFailure"})
public final class LocaleKt {
    @RequiresApi(17)
    public static final int getLayoutDirection(Locale locale) {
        b.h(locale, "<this>");
        return TextUtils.getLayoutDirectionFromLocale(locale);
    }
}
