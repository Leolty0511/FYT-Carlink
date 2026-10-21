package android.graphics;

import android.app.m;

/* JADX INFO: loaded from: classes.dex */
public class Insets {
    public static final Insets NONE = new Insets(0, 0, 0, 0);
    public final int bottom;
    public final int left;
    public final int right;
    public final int top;

    private Insets(int i2, int i3, int i4, int i5) {
        this.left = i2;
        this.top = i3;
        this.right = i4;
        this.bottom = i5;
    }

    public static Insets of(int i2, int i3, int i4, int i5) {
        return (i2 == 0 && i3 == 0 && i4 == 0 && i5 == 0) ? NONE : new Insets(i2, i3, i4, i5);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Insets insets = (Insets) obj;
        return this.bottom == insets.bottom && this.left == insets.left && this.right == insets.right && this.top == insets.top;
    }

    public int hashCode() {
        return (((((this.left * 31) + this.top) * 31) + this.right) * 31) + this.bottom;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Insets{left=");
        sb.append(this.left);
        sb.append(", top=");
        sb.append(this.top);
        sb.append(", right=");
        sb.append(this.right);
        sb.append(", bottom=");
        return m.j(sb, this.bottom, '}');
    }

    public static Insets of(Rect rect) {
        return rect == null ? NONE : of(rect.left, rect.top, rect.right, rect.bottom);
    }
}
