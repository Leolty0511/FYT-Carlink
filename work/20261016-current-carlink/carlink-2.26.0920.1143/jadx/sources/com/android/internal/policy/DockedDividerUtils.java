package com.android.internal.policy;

import android.app.m;
import android.graphics.Rect;

/* JADX INFO: loaded from: classes2.dex */
public class DockedDividerUtils {
    public static void calculateBoundsForPosition(int i2, int i3, Rect rect, int i4, int i5, int i6) {
        rect.set(0, 0, i4, i5);
        if (i3 == 1) {
            rect.right = i2;
        } else if (i3 == 2) {
            rect.bottom = i2;
        } else if (i3 == 3) {
            rect.left = i2 + i6;
        } else if (i3 == 4) {
            rect.top = i2 + i6;
        }
        sanitizeStackBounds(rect, i3 == 1 || i3 == 2);
    }

    public static int calculateMiddlePosition(boolean z2, Rect rect, int i2, int i3, int i4) {
        int i5 = z2 ? rect.top : rect.left;
        return m.b(z2 ? i3 - rect.bottom : i2 - rect.right, i5, 2, i5) - (i4 / 2);
    }

    public static int calculatePositionForBounds(Rect rect, int i2, int i3) {
        int i4;
        if (i2 == 1) {
            return rect.right;
        }
        if (i2 == 2) {
            return rect.bottom;
        }
        if (i2 == 3) {
            i4 = rect.left;
        } else {
            if (i2 != 4) {
                return 0;
            }
            i4 = rect.top;
        }
        return i4 - i3;
    }

    public static int getDockSideFromCreatedMode(boolean z2, boolean z3) {
        if (z2) {
            return z3 ? 2 : 1;
        }
        return z3 ? 4 : 3;
    }

    public static int invertDockSide(int i2) {
        if (i2 == 1) {
            return 3;
        }
        if (i2 == 2) {
            return 4;
        }
        if (i2 != 3) {
            return i2 != 4 ? -1 : 2;
        }
        return 1;
    }

    public static void sanitizeStackBounds(Rect rect, boolean z2) {
        if (z2) {
            int i2 = rect.left;
            int i3 = rect.right;
            if (i2 >= i3) {
                rect.left = i3 - 1;
            }
            int i4 = rect.top;
            int i5 = rect.bottom;
            if (i4 >= i5) {
                rect.top = i5 - 1;
                return;
            }
            return;
        }
        int i6 = rect.right;
        int i7 = rect.left;
        if (i6 <= i7) {
            rect.right = i7 + 1;
        }
        int i8 = rect.bottom;
        int i9 = rect.top;
        if (i8 <= i9) {
            rect.bottom = i9 + 1;
        }
    }
}
