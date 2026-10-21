package androidx.core.text;

import android.text.TextUtils;
import t.b;

/* JADX INFO: loaded from: classes2.dex */
public final class CharSequenceKt {
    public static final boolean isDigitsOnly(CharSequence charSequence) {
        b.h(charSequence, "<this>");
        return TextUtils.isDigitsOnly(charSequence);
    }

    public static final int trimmedLength(CharSequence charSequence) {
        b.h(charSequence, "<this>");
        return TextUtils.getTrimmedLength(charSequence);
    }
}
