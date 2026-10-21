package androidx.emoji2.text;

import android.icu.text.DecimalFormatSymbols;
import android.icu.util.ULocale;
import java.util.Optional;
import java.util.OptionalDouble;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class e {
    public static /* bridge */ /* synthetic */ boolean B(Object obj) {
        return obj instanceof OptionalDouble;
    }

    public static /* bridge */ /* synthetic */ Optional i(Object obj) {
        return (Optional) obj;
    }

    public static /* bridge */ /* synthetic */ OptionalDouble k(Object obj) {
        return (OptionalDouble) obj;
    }

    public static /* synthetic */ void p() {
    }

    public static /* synthetic */ void r(ULocale uLocale) {
        new DecimalFormatSymbols(uLocale);
    }

    public static /* bridge */ /* synthetic */ boolean u(Object obj) {
        return obj instanceof Optional;
    }
}
