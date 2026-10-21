package android.widget;

import android.icu.text.SimpleDateFormat;
import android.icu.util.ULocale;
import java.util.Locale;
import java.util.function.Consumer;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class d {
    public static /* synthetic */ SimpleDateFormat b(String str, Locale locale) {
        return new SimpleDateFormat(str, locale);
    }

    public static /* bridge */ /* synthetic */ ULocale c(Object obj) {
        return (ULocale) obj;
    }

    public static /* bridge */ /* synthetic */ Consumer e(Object obj) {
        return (Consumer) obj;
    }

    public static /* bridge */ /* synthetic */ Supplier f(Object obj) {
        return (Supplier) obj;
    }

    public static /* synthetic */ void g() {
    }

    public static /* bridge */ /* synthetic */ void l(Consumer consumer, Object obj) {
        consumer.accept(obj);
    }
}
