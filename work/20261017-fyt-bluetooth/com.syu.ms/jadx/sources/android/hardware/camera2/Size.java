package android.hardware.camera2;

import android.widget.ExpandableListView;

/* JADX INFO: loaded from: classes.dex */
public final class Size {
    private final int mHeight;
    private final int mWidth;

    public Size(int i2, int i3) {
        this.mWidth = i2;
        this.mHeight = i3;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Size)) {
            return false;
        }
        Size size = (Size) obj;
        return this.mWidth == size.mWidth && this.mHeight == size.mHeight;
    }

    public final int getHeight() {
        return this.mHeight;
    }

    public final int getWidth() {
        return this.mWidth;
    }

    public int hashCode() {
        return Long.valueOf(((((long) this.mWidth) & ExpandableListView.PACKED_POSITION_VALUE_NULL) << 32) | (ExpandableListView.PACKED_POSITION_VALUE_NULL & ((long) this.mHeight))).hashCode();
    }

    public String toString() {
        return this.mWidth + "x" + this.mHeight;
    }
}
