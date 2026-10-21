package android.view;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes2.dex */
public class Gravity {
    public static final int AXIS_CLIP = 8;
    public static final int AXIS_PULL_AFTER = 4;
    public static final int AXIS_PULL_BEFORE = 2;
    public static final int AXIS_SPECIFIED = 1;
    public static final int AXIS_X_SHIFT = 0;
    public static final int AXIS_Y_SHIFT = 4;
    public static final int BOTTOM = 80;
    public static final int CENTER = 17;
    public static final int CENTER_HORIZONTAL = 1;
    public static final int CENTER_VERTICAL = 16;
    public static final int CLIP_HORIZONTAL = 8;
    public static final int CLIP_VERTICAL = 128;
    public static final int DISPLAY_CLIP_HORIZONTAL = 16777216;
    public static final int DISPLAY_CLIP_VERTICAL = 268435456;
    public static final int END = 8388613;
    public static final int FILL = 119;
    public static final int FILL_HORIZONTAL = 7;
    public static final int FILL_VERTICAL = 112;
    public static final int HORIZONTAL_GRAVITY_MASK = 7;
    public static final int LEFT = 3;
    public static final int NO_GRAVITY = 0;
    public static final int RELATIVE_HORIZONTAL_GRAVITY_MASK = 8388615;
    public static final int RELATIVE_LAYOUT_DIRECTION = 8388608;
    public static final int RIGHT = 5;
    public static final int START = 8388611;
    public static final int TOP = 48;
    public static final int VERTICAL_GRAVITY_MASK = 112;

    public static void apply(int i2, int i3, int i4, Rect rect, Rect rect2) {
        apply(i2, i3, i4, rect, 0, 0, rect2);
    }

    public static void applyDisplay(int i2, Rect rect, Rect rect2) {
        if ((268435456 & i2) != 0) {
            int i3 = rect2.top;
            int i4 = rect.top;
            if (i3 < i4) {
                rect2.top = i4;
            }
            int i5 = rect2.bottom;
            int i6 = rect.bottom;
            if (i5 > i6) {
                rect2.bottom = i6;
            }
        } else {
            int i7 = rect2.top;
            int i8 = rect.top;
            int i9 = (i7 >= i8 && (i7 = rect2.bottom) <= (i8 = rect.bottom)) ? 0 : i8 - i7;
            if (i9 != 0) {
                int iHeight = rect2.height();
                int i10 = rect.bottom;
                int i11 = rect.top;
                if (iHeight > i10 - i11) {
                    rect2.top = i11;
                    rect2.bottom = i10;
                } else {
                    rect2.top += i9;
                    rect2.bottom += i9;
                }
            }
        }
        if ((i2 & 16777216) != 0) {
            int i12 = rect2.left;
            int i13 = rect.left;
            if (i12 < i13) {
                rect2.left = i13;
            }
            int i14 = rect2.right;
            int i15 = rect.right;
            if (i14 > i15) {
                rect2.right = i15;
                return;
            }
            return;
        }
        int i16 = rect2.left;
        int i17 = rect.left;
        int i18 = (i16 < i17 || (i16 = rect2.right) > (i17 = rect.right)) ? i17 - i16 : 0;
        if (i18 != 0) {
            int iWidth = rect2.width();
            int i19 = rect.right;
            int i20 = rect.left;
            if (iWidth > i19 - i20) {
                rect2.left = i20;
                rect2.right = i19;
            } else {
                rect2.left += i18;
                rect2.right += i18;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0013 A[PHI: r3
  0x0013: PHI (r3v6 int) = (r3v1 int), (r3v8 int) binds: [B:13:0x0024, B:7:0x0011] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:9:0x0016 A[PHI: r3
  0x0016: PHI (r3v2 int) = (r3v1 int), (r3v8 int) binds: [B:13:0x0024, B:7:0x0011] A[DONT_GENERATE, DONT_INLINE]] */
    public static int getAbsoluteGravity(int i2, int i3) {
        int i4;
        if ((8388608 & i2) <= 0) {
            return i2;
        }
        if ((i2 & 8388611) == 8388611) {
            i4 = i2 & (-8388612);
            if (i3 == 1) {
                i2 = i4 | 5;
            } else {
                i2 = i4 | 3;
            }
        } else if ((i2 & 8388613) == 8388613) {
            i4 = i2 & (-8388614);
            if (i3 == 1) {
                i2 = i4 | 3;
            } else {
                i2 = i4 | 5;
            }
        }
        return i2 & (-8388609);
    }

    public static boolean isHorizontal(int i2) {
        return i2 > 0 && (i2 & 8388615) != 0;
    }

    public static boolean isVertical(int i2) {
        return i2 > 0 && (i2 & 112) != 0;
    }

    public static void apply(int i2, int i3, int i4, Rect rect, Rect rect2, int i5) {
        apply(getAbsoluteGravity(i2, i5), i3, i4, rect, 0, 0, rect2);
    }

    public static void apply(int i2, int i3, int i4, Rect rect, int i5, int i6, Rect rect2) {
        int i7;
        int i8;
        int i9;
        int i10;
        int i11 = i2 & 6;
        if (i11 == 0) {
            int i12 = rect.left;
            int i13 = (((rect.right - i12) - i3) / 2) + i12 + i5;
            rect2.left = i13;
            int i14 = i3 + i13;
            rect2.right = i14;
            if ((i2 & 8) == 8) {
                int i15 = rect.left;
                if (i13 < i15) {
                    rect2.left = i15;
                }
                int i16 = rect.right;
                if (i14 > i16) {
                    rect2.right = i16;
                }
            }
        } else if (i11 == 2) {
            int i17 = rect.left + i5;
            rect2.left = i17;
            int i18 = i17 + i3;
            rect2.right = i18;
            if ((i2 & 8) == 8 && i18 > (i9 = rect.right)) {
                rect2.right = i9;
            }
        } else if (i11 != 4) {
            rect2.left = rect.left + i5;
            rect2.right = rect.right + i5;
        } else {
            int i19 = rect.right - i5;
            rect2.right = i19;
            int i20 = i19 - i3;
            rect2.left = i20;
            if ((i2 & 8) == 8 && i20 < (i10 = rect.left)) {
                rect2.left = i10;
            }
        }
        int i21 = i2 & 96;
        if (i21 == 0) {
            int i22 = rect.top;
            int i23 = (((rect.bottom - i22) - i4) / 2) + i22 + i6;
            rect2.top = i23;
            int i24 = i4 + i23;
            rect2.bottom = i24;
            if ((i2 & 128) == 128) {
                int i25 = rect.top;
                if (i23 < i25) {
                    rect2.top = i25;
                }
                int i26 = rect.bottom;
                if (i24 > i26) {
                    rect2.bottom = i26;
                    return;
                }
                return;
            }
            return;
        }
        if (i21 == 32) {
            int i27 = rect.top + i6;
            rect2.top = i27;
            int i28 = i27 + i4;
            rect2.bottom = i28;
            if ((i2 & 128) != 128 || i28 <= (i7 = rect.bottom)) {
                return;
            }
            rect2.bottom = i7;
            return;
        }
        if (i21 != 64) {
            rect2.top = rect.top + i6;
            rect2.bottom = rect.bottom + i6;
            return;
        }
        int i29 = rect.bottom - i6;
        rect2.bottom = i29;
        int i30 = i29 - i4;
        rect2.top = i30;
        if ((i2 & 128) != 128 || i30 >= (i8 = rect.top)) {
            return;
        }
        rect2.top = i8;
    }

    public static void applyDisplay(int i2, Rect rect, Rect rect2, int i3) {
        applyDisplay(getAbsoluteGravity(i2, i3), rect, rect2);
    }

    public static void apply(int i2, int i3, int i4, Rect rect, int i5, int i6, Rect rect2, int i7) {
        apply(getAbsoluteGravity(i2, i7), i3, i4, rect, i5, i6, rect2);
    }
}
