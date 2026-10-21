package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Int2 {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f155x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f156y;

    public Int2() {
    }

    public void add(Int2 int2) {
        this.f155x += int2.f155x;
        this.f156y += int2.f156y;
    }

    public void addAt(int i2, int i3) {
        if (i2 == 0) {
            this.f155x += i3;
        } else {
            if (i2 != 1) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f156y += i3;
        }
    }

    public void addMultiple(Int2 int2, int i2) {
        this.f155x = (int2.f155x * i2) + this.f155x;
        this.f156y = (int2.f156y * i2) + this.f156y;
    }

    public void copyTo(int[] iArr, int i2) {
        iArr[i2] = this.f155x;
        iArr[i2 + 1] = this.f156y;
    }

    public void div(Int2 int2) {
        this.f155x /= int2.f155x;
        this.f156y /= int2.f156y;
    }

    public int dotProduct(Int2 int2) {
        return (this.f156y * int2.f156y) + (this.f155x * int2.f155x);
    }

    public int elementSum() {
        return this.f155x + this.f156y;
    }

    public int get(int i2) {
        if (i2 == 0) {
            return this.f155x;
        }
        if (i2 == 1) {
            return this.f156y;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public int length() {
        return 2;
    }

    public void mod(Int2 int2) {
        this.f155x %= int2.f155x;
        this.f156y %= int2.f156y;
    }

    public void mul(Int2 int2) {
        this.f155x *= int2.f155x;
        this.f156y *= int2.f156y;
    }

    public void negate() {
        this.f155x = -this.f155x;
        this.f156y = -this.f156y;
    }

    public void set(Int2 int2) {
        this.f155x = int2.f155x;
        this.f156y = int2.f156y;
    }

    public void setAt(int i2, int i3) {
        if (i2 == 0) {
            this.f155x = i3;
        } else {
            if (i2 != 1) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f156y = i3;
        }
    }

    public void setValues(int i2, int i3) {
        this.f155x = i2;
        this.f156y = i3;
    }

    public void sub(Int2 int2) {
        this.f155x -= int2.f155x;
        this.f156y -= int2.f156y;
    }

    public Int2(int i2) {
        this.f156y = i2;
        this.f155x = i2;
    }

    public static int dotProduct(Int2 int2, Int2 int3) {
        return (int3.f156y * int2.f156y) + (int3.f155x * int2.f155x);
    }

    public static Int2 add(Int2 int2, Int2 int3) {
        Int2 int4 = new Int2();
        int4.f155x = int2.f155x + int3.f155x;
        int4.f156y = int2.f156y + int3.f156y;
        return int4;
    }

    public static Int2 div(Int2 int2, Int2 int3) {
        Int2 int4 = new Int2();
        int4.f155x = int2.f155x / int3.f155x;
        int4.f156y = int2.f156y / int3.f156y;
        return int4;
    }

    public static Int2 mod(Int2 int2, Int2 int3) {
        Int2 int4 = new Int2();
        int4.f155x = int2.f155x % int3.f155x;
        int4.f156y = int2.f156y % int3.f156y;
        return int4;
    }

    public static Int2 mul(Int2 int2, Int2 int3) {
        Int2 int4 = new Int2();
        int4.f155x = int2.f155x * int3.f155x;
        int4.f156y = int2.f156y * int3.f156y;
        return int4;
    }

    public static Int2 sub(Int2 int2, Int2 int3) {
        Int2 int4 = new Int2();
        int4.f155x = int2.f155x - int3.f155x;
        int4.f156y = int2.f156y - int3.f156y;
        return int4;
    }

    public Int2(int i2, int i3) {
        this.f155x = i2;
        this.f156y = i3;
    }

    public void add(int i2) {
        this.f155x += i2;
        this.f156y += i2;
    }

    public void div(int i2) {
        this.f155x /= i2;
        this.f156y /= i2;
    }

    public void mod(int i2) {
        this.f155x %= i2;
        this.f156y %= i2;
    }

    public void mul(int i2) {
        this.f155x *= i2;
        this.f156y *= i2;
    }

    public void sub(int i2) {
        this.f155x -= i2;
        this.f156y -= i2;
    }

    public Int2(Int2 int2) {
        this.f155x = int2.f155x;
        this.f156y = int2.f156y;
    }

    public static Int2 add(Int2 int2, int i2) {
        Int2 int3 = new Int2();
        int3.f155x = int2.f155x + i2;
        int3.f156y = int2.f156y + i2;
        return int3;
    }

    public static Int2 div(Int2 int2, int i2) {
        Int2 int3 = new Int2();
        int3.f155x = int2.f155x / i2;
        int3.f156y = int2.f156y / i2;
        return int3;
    }

    public static Int2 mod(Int2 int2, int i2) {
        Int2 int3 = new Int2();
        int3.f155x = int2.f155x % i2;
        int3.f156y = int2.f156y % i2;
        return int3;
    }

    public static Int2 mul(Int2 int2, int i2) {
        Int2 int3 = new Int2();
        int3.f155x = int2.f155x * i2;
        int3.f156y = int2.f156y * i2;
        return int3;
    }

    public static Int2 sub(Int2 int2, int i2) {
        Int2 int3 = new Int2();
        int3.f155x = int2.f155x - i2;
        int3.f156y = int2.f156y - i2;
        return int3;
    }
}
