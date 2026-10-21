package androidx.core.graphics;

import android.graphics.Rect;
import android.view.DisplayCutout;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class b {
    public static /* synthetic */ DisplayCutout f(android.graphics.Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4) {
        return new DisplayCutout(insets, rect, rect2, rect3, rect4);
    }

    public static /* synthetic */ WindowInsets.Builder g() {
        return new WindowInsets.Builder();
    }

    public static /* synthetic */ WindowInsets.Builder h(WindowInsets windowInsets) {
        return new WindowInsets.Builder(windowInsets);
    }

    public static /* synthetic */ AccessibilityNodeInfo.TouchDelegateInfo j(Map map) {
        return new AccessibilityNodeInfo.TouchDelegateInfo(map);
    }

    public static /* synthetic */ void l() {
    }

    public static /* synthetic */ void o() {
    }
}
