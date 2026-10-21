package android.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;

/* JADX INFO: loaded from: classes2.dex */
public abstract /* synthetic */ class b {
    public static int a(MenuItem menuItem) {
        return 4096;
    }

    public static CharSequence b(MenuItem menuItem) {
        return null;
    }

    public static ColorStateList c(MenuItem menuItem) {
        return null;
    }

    public static PorterDuff.Mode d(MenuItem menuItem) {
        return null;
    }

    public static int e(MenuItem menuItem) {
        return 4096;
    }

    public static CharSequence f(MenuItem menuItem) {
        return null;
    }

    public static boolean g(MenuItem menuItem) {
        return false;
    }

    public static MenuItem h(MenuItem menuItem, char c, int i2) {
        return (i2 & 69647) == 4096 ? menuItem.setAlphabeticShortcut(c) : menuItem;
    }

    public static MenuItem i(MenuItem menuItem, CharSequence charSequence) {
        return menuItem;
    }

    public static MenuItem j(MenuItem menuItem, ColorStateList colorStateList) {
        return menuItem;
    }

    public static MenuItem k(MenuItem menuItem, PorterDuff.Mode mode) {
        return menuItem;
    }

    public static MenuItem l(MenuItem menuItem, char c, int i2) {
        return (i2 & 69647) == 4096 ? menuItem.setNumericShortcut(c) : menuItem;
    }

    public static MenuItem m(MenuItem menuItem, char c, char c2, int i2, int i3) {
        return ((i3 & 69647) == 4096 && (i2 & 69647) == 4096) ? menuItem.setShortcut(c, c2) : menuItem;
    }

    public static MenuItem n(MenuItem menuItem, CharSequence charSequence) {
        return menuItem;
    }
}
