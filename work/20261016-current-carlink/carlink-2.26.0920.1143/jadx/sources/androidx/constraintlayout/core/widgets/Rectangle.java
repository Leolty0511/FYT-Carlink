package androidx.constraintlayout.core.widgets;

/* JADX INFO: loaded from: classes2.dex */
public class Rectangle {
    public int height;
    public int width;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f283x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f284y;

    public boolean contains(int i2, int i3) {
        int i4;
        int i5 = this.f283x;
        return i2 >= i5 && i2 < i5 + this.width && i3 >= (i4 = this.f284y) && i3 < i4 + this.height;
    }

    public int getCenterX() {
        return (this.f283x + this.width) / 2;
    }

    public int getCenterY() {
        return (this.f284y + this.height) / 2;
    }

    public void grow(int i2, int i3) {
        this.f283x -= i2;
        this.f284y -= i3;
        this.width = (i2 * 2) + this.width;
        this.height = (i3 * 2) + this.height;
    }

    public boolean intersects(Rectangle rectangle) {
        int i2;
        int i3;
        int i4 = this.f283x;
        int i5 = rectangle.f283x;
        return i4 >= i5 && i4 < i5 + rectangle.width && (i2 = this.f284y) >= (i3 = rectangle.f284y) && i2 < i3 + rectangle.height;
    }

    public void setBounds(int i2, int i3, int i4, int i5) {
        this.f283x = i2;
        this.f284y = i3;
        this.width = i4;
        this.height = i5;
    }
}
