package androidx.core.text;

import android.text.TextUtils;
import t.b;

/* JADX INFO: loaded from: classes2.dex */
public final class StringKt {
    public static final String htmlEncode(String str) {
        b.h(str, "<this>");
        String strHtmlEncode = TextUtils.htmlEncode(str);
        b.g(strHtmlEncode, "htmlEncode(this)");
        return strHtmlEncode;
    }
}
