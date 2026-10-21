package androidx.core.text;

import android.graphics.Rect;
import android.text.PrecomputedText;
import android.text.TextPaint;
import android.view.DisplayCutout;
import android.view.View;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ PrecomputedText.Params.Builder g(TextPaint textPaint) {
        return new PrecomputedText.Params.Builder(textPaint);
    }

    public static /* synthetic */ DisplayCutout l(Rect rect, List list) {
        return new DisplayCutout(rect, list);
    }

    public static /* bridge */ /* synthetic */ View.OnUnhandledKeyEventListener m(Object obj) {
        return (View.OnUnhandledKeyEventListener) obj;
    }

    public static /* synthetic */ void o() {
    }

    public static /* bridge */ /* synthetic */ boolean q(Object obj) {
        return obj instanceof PrecomputedText;
    }

    public static /* synthetic */ void v() {
    }
}
