package androidx.core.text;

import android.annotation.SuppressLint;
import android.media.TtmlUtils;
import android.text.Spannable;
import android.text.SpannableString;
import c0.d;
import t.b;

/* JADX INFO: loaded from: classes2.dex */
public final class SpannableStringKt {
    @SuppressLint({"SyntheticAccessor"})
    public static final void clearSpans(Spannable spannable) {
        b.h(spannable, "<this>");
        Object[] spans = spannable.getSpans(0, spannable.length(), Object.class);
        b.g(spans, "getSpans(start, end, T::class.java)");
        for (Object obj : spans) {
            spannable.removeSpan(obj);
        }
    }

    public static final void set(Spannable spannable, int i2, int i3, Object obj) {
        b.h(spannable, "<this>");
        b.h(obj, TtmlUtils.TAG_SPAN);
        spannable.setSpan(obj, i2, i3, 17);
    }

    public static final Spannable toSpannable(CharSequence charSequence) {
        b.h(charSequence, "<this>");
        SpannableString spannableStringValueOf = SpannableString.valueOf(charSequence);
        b.g(spannableStringValueOf, "valueOf(this)");
        return spannableStringValueOf;
    }

    public static final void set(Spannable spannable, d dVar, Object obj) {
        b.h(spannable, "<this>");
        b.h(dVar, "range");
        b.h(obj, TtmlUtils.TAG_SPAN);
        spannable.setSpan(obj, Integer.valueOf(dVar.f352b).intValue(), Integer.valueOf(dVar.c).intValue(), 17);
    }
}
