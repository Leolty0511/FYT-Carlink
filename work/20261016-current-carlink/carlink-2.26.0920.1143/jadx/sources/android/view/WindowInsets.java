package android.view;

import android.graphics.Rect;

/* JADX INFO: loaded from: classes2.dex */
public final class WindowInsets {
    private boolean mAlwaysConsumeNavBar;
    private boolean mIsRound;
    private Rect mStableInsets;
    private boolean mStableInsetsConsumed;
    private Rect mSystemWindowInsets;
    private boolean mSystemWindowInsetsConsumed;
    private Rect mTempRect;
    private Rect mWindowDecorInsets;
    private boolean mWindowDecorInsetsConsumed;
    private static final Rect EMPTY_RECT = new Rect(0, 0, 0, 0);
    public static final WindowInsets CONSUMED = new WindowInsets(null, null, null, false, false);

    public WindowInsets(Rect rect, Rect rect2, Rect rect3, boolean z2, boolean z3) {
        this.mSystemWindowInsetsConsumed = false;
        this.mWindowDecorInsetsConsumed = false;
        this.mStableInsetsConsumed = false;
        boolean z4 = rect == null;
        this.mSystemWindowInsetsConsumed = z4;
        this.mSystemWindowInsets = z4 ? EMPTY_RECT : rect;
        boolean z5 = rect2 == null;
        this.mWindowDecorInsetsConsumed = z5;
        this.mWindowDecorInsets = z5 ? EMPTY_RECT : rect2;
        boolean z6 = rect3 == null;
        this.mStableInsetsConsumed = z6;
        this.mStableInsets = z6 ? EMPTY_RECT : rect3;
        this.mIsRound = z2;
        this.mAlwaysConsumeNavBar = z3;
    }

    public WindowInsets consumeStableInsets() {
        WindowInsets windowInsets = new WindowInsets(this);
        windowInsets.mStableInsets = EMPTY_RECT;
        windowInsets.mStableInsetsConsumed = true;
        return windowInsets;
    }

    public WindowInsets consumeSystemWindowInsets() {
        WindowInsets windowInsets = new WindowInsets(this);
        windowInsets.mSystemWindowInsets = EMPTY_RECT;
        windowInsets.mSystemWindowInsetsConsumed = true;
        return windowInsets;
    }

    public WindowInsets consumeWindowDecorInsets() {
        WindowInsets windowInsets = new WindowInsets(this);
        windowInsets.mWindowDecorInsets.set(0, 0, 0, 0);
        windowInsets.mWindowDecorInsetsConsumed = true;
        return windowInsets;
    }

    public int getStableInsetBottom() {
        return this.mStableInsets.bottom;
    }

    public int getStableInsetLeft() {
        return this.mStableInsets.left;
    }

    public int getStableInsetRight() {
        return this.mStableInsets.right;
    }

    public int getStableInsetTop() {
        return this.mStableInsets.top;
    }

    public int getSystemWindowInsetBottom() {
        return this.mSystemWindowInsets.bottom;
    }

    public int getSystemWindowInsetLeft() {
        return this.mSystemWindowInsets.left;
    }

    public int getSystemWindowInsetRight() {
        return this.mSystemWindowInsets.right;
    }

    public int getSystemWindowInsetTop() {
        return this.mSystemWindowInsets.top;
    }

    public Rect getSystemWindowInsets() {
        if (this.mTempRect == null) {
            this.mTempRect = new Rect();
        }
        Rect rect = this.mSystemWindowInsets;
        if (rect != null) {
            this.mTempRect.set(rect);
        } else {
            this.mTempRect.setEmpty();
        }
        return this.mTempRect;
    }

    public int getWindowDecorInsetBottom() {
        return this.mWindowDecorInsets.bottom;
    }

    public int getWindowDecorInsetLeft() {
        return this.mWindowDecorInsets.left;
    }

    public int getWindowDecorInsetRight() {
        return this.mWindowDecorInsets.right;
    }

    public int getWindowDecorInsetTop() {
        return this.mWindowDecorInsets.top;
    }

    public boolean hasInsets() {
        return hasSystemWindowInsets() || hasWindowDecorInsets() || hasStableInsets();
    }

    public boolean hasStableInsets() {
        Rect rect = this.mStableInsets;
        return (rect.top == 0 && rect.left == 0 && rect.right == 0 && rect.bottom == 0) ? false : true;
    }

    public boolean hasSystemWindowInsets() {
        Rect rect = this.mSystemWindowInsets;
        return (rect.left == 0 && rect.top == 0 && rect.right == 0 && rect.bottom == 0) ? false : true;
    }

    public boolean hasWindowDecorInsets() {
        Rect rect = this.mWindowDecorInsets;
        return (rect.left == 0 && rect.top == 0 && rect.right == 0 && rect.bottom == 0) ? false : true;
    }

    public boolean isConsumed() {
        return this.mSystemWindowInsetsConsumed && this.mWindowDecorInsetsConsumed && this.mStableInsetsConsumed;
    }

    public boolean isRound() {
        return this.mIsRound;
    }

    public WindowInsets replaceSystemWindowInsets(int i2, int i3, int i4, int i5) {
        WindowInsets windowInsets = new WindowInsets(this);
        windowInsets.mSystemWindowInsets = new Rect(i2, i3, i4, i5);
        return windowInsets;
    }

    public WindowInsets replaceWindowDecorInsets(int i2, int i3, int i4, int i5) {
        WindowInsets windowInsets = new WindowInsets(this);
        windowInsets.mWindowDecorInsets = new Rect(i2, i3, i4, i5);
        return windowInsets;
    }

    public boolean shouldAlwaysConsumeNavBar() {
        return this.mAlwaysConsumeNavBar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("WindowInsets{systemWindowInsets=");
        sb.append(this.mSystemWindowInsets);
        sb.append(" windowDecorInsets=");
        sb.append(this.mWindowDecorInsets);
        sb.append(" stableInsets=");
        sb.append(this.mStableInsets);
        sb.append(isRound() ? " round}" : "}");
        return sb.toString();
    }

    public WindowInsets replaceSystemWindowInsets(Rect rect) {
        WindowInsets windowInsets = new WindowInsets(this);
        windowInsets.mSystemWindowInsets = new Rect(rect);
        return windowInsets;
    }

    public WindowInsets consumeSystemWindowInsets(boolean z2, boolean z3, boolean z4, boolean z5) {
        if (!z2 && !z3 && !z4 && !z5) {
            return this;
        }
        WindowInsets windowInsets = new WindowInsets(this);
        windowInsets.mSystemWindowInsets = new Rect(z2 ? 0 : this.mSystemWindowInsets.left, z3 ? 0 : this.mSystemWindowInsets.top, z4 ? 0 : this.mSystemWindowInsets.right, z5 ? 0 : this.mSystemWindowInsets.bottom);
        return windowInsets;
    }

    public WindowInsets consumeWindowDecorInsets(boolean z2, boolean z3, boolean z4, boolean z5) {
        if (!z2 && !z3 && !z4 && !z5) {
            return this;
        }
        WindowInsets windowInsets = new WindowInsets(this);
        windowInsets.mWindowDecorInsets = new Rect(z2 ? 0 : this.mWindowDecorInsets.left, z3 ? 0 : this.mWindowDecorInsets.top, z4 ? 0 : this.mWindowDecorInsets.right, z5 ? 0 : this.mWindowDecorInsets.bottom);
        return windowInsets;
    }

    public WindowInsets(WindowInsets windowInsets) {
        this.mSystemWindowInsetsConsumed = false;
        this.mWindowDecorInsetsConsumed = false;
        this.mStableInsetsConsumed = false;
        this.mSystemWindowInsets = windowInsets.mSystemWindowInsets;
        this.mWindowDecorInsets = windowInsets.mWindowDecorInsets;
        this.mStableInsets = windowInsets.mStableInsets;
        this.mSystemWindowInsetsConsumed = windowInsets.mSystemWindowInsetsConsumed;
        this.mWindowDecorInsetsConsumed = windowInsets.mWindowDecorInsetsConsumed;
        this.mStableInsetsConsumed = windowInsets.mStableInsetsConsumed;
        this.mIsRound = windowInsets.mIsRound;
        this.mAlwaysConsumeNavBar = windowInsets.mAlwaysConsumeNavBar;
    }

    public WindowInsets(Rect rect) {
        this(rect, null, null, false, false);
    }
}
