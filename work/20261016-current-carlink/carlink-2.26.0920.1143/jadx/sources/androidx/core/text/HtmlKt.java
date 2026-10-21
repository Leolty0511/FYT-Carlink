package androidx.core.text;

import android.text.Html;
import android.text.Spanned;
import t.b;

/* JADX INFO: loaded from: classes2.dex */
public final class HtmlKt {
    public static final Spanned parseAsHtml(String str, int i2, Html.ImageGetter imageGetter, Html.TagHandler tagHandler) {
        b.h(str, "<this>");
        Spanned spannedFromHtml = HtmlCompat.fromHtml(str, i2, imageGetter, tagHandler);
        b.g(spannedFromHtml, "fromHtml(this, flags, imageGetter, tagHandler)");
        return spannedFromHtml;
    }

    public static /* synthetic */ Spanned parseAsHtml$default(String str, int i2, Html.ImageGetter imageGetter, Html.TagHandler tagHandler, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = 0;
        }
        if ((i3 & 2) != 0) {
            imageGetter = null;
        }
        if ((i3 & 4) != 0) {
            tagHandler = null;
        }
        b.h(str, "<this>");
        Spanned spannedFromHtml = HtmlCompat.fromHtml(str, i2, imageGetter, tagHandler);
        b.g(spannedFromHtml, "fromHtml(this, flags, imageGetter, tagHandler)");
        return spannedFromHtml;
    }

    public static final String toHtml(Spanned spanned, int i2) {
        b.h(spanned, "<this>");
        String html = HtmlCompat.toHtml(spanned, i2);
        b.g(html, "toHtml(this, option)");
        return html;
    }

    public static /* synthetic */ String toHtml$default(Spanned spanned, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = 0;
        }
        b.h(spanned, "<this>");
        String html = HtmlCompat.toHtml(spanned, i2);
        b.g(html, "toHtml(this, option)");
        return html;
    }
}
