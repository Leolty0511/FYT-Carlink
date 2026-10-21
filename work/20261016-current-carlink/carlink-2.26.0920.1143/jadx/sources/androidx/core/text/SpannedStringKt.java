package androidx.core.text;

import android.text.Spanned;
import android.text.SpannedString;
import t.b;

/* JADX INFO: loaded from: classes2.dex */
public final class SpannedStringKt {
    public static final /* synthetic */ <T> T[] getSpans(Spanned spanned, int i2, int i3) {
        b.h(spanned, "<this>");
        b.w();
        throw null;
    }

    public static /* synthetic */ Object[] getSpans$default(Spanned spanned, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            spanned.length();
        }
        b.h(spanned, "<this>");
        b.w();
        throw null;
    }

    public static final Spanned toSpanned(CharSequence charSequence) {
        b.h(charSequence, "<this>");
        SpannedString spannedStringValueOf = SpannedString.valueOf(charSequence);
        b.g(spannedStringValueOf, "valueOf(this)");
        return spannedStringValueOf;
    }
}
