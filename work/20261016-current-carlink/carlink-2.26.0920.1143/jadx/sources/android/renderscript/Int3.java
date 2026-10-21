package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Int3 {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f157x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f158y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f159z;

    public Int3() {
    }

    public void add(Int3 int3) {
        this.f157x += int3.f157x;
        this.f158y += int3.f158y;
        this.f159z += int3.f159z;
    }

    public void addAt(int i2, int i3) {
        if (i2 == 0) {
            this.f157x += i3;
        } else if (i2 == 1) {
            this.f158y += i3;
        } else {
            if (i2 != 2) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f159z += i3;
        }
    }

    public void addMultiple(Int3 int3, int i2) {
        this.f157x = (int3.f157x * i2) + this.f157x;
        this.f158y = (int3.f158y * i2) + this.f158y;
        this.f159z = (int3.f159z * i2) + this.f159z;
    }

    public void copyTo(int[] iArr, int i2) {
        iArr[i2] = this.f157x;
        iArr[i2 + 1] = this.f158y;
        iArr[i2 + 2] = this.f159z;
    }

    public void div(Int3 int3) {
        this.f157x /= int3.f157x;
        this.f158y /= int3.f158y;
        this.f159z /= int3.f159z;
    }

    public int dotProduct(Int3 int3) {
        return (this.f159z * int3.f159z) + (this.f158y * int3.f158y) + (this.f157x * int3.f157x);
    }

    public int elementSum() {
        return this.f157x + this.f158y + this.f159z;
    }

    public int get(int i2) {
        if (i2 == 0) {
            return this.f157x;
        }
        if (i2 == 1) {
            return this.f158y;
        }
        if (i2 == 2) {
            return this.f159z;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public int length() {
        return 3;
    }

    public void mod(Int3 int3) {
        this.f157x %= int3.f157x;
        this.f158y %= int3.f158y;
        this.f159z %= int3.f159z;
    }

    public void mul(Int3 int3) {
        this.f157x *= int3.f157x;
        this.f158y *= int3.f158y;
        this.f159z *= int3.f159z;
    }

    public void negate() {
        this.f157x = -this.f157x;
        this.f158y = -this.f158y;
        this.f159z = -this.f159z;
    }

    public void set(Int3 int3) {
        this.f157x = int3.f157x;
        this.f158y = int3.f158y;
        this.f159z = int3.f159z;
    }

    public void setAt(int i2, int i3) {
        if (i2 == 0) {
            this.f157x = i3;
        } else if (i2 == 1) {
            this.f158y = i3;
        } else {
            if (i2 != 2) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f159z = i3;
        }
    }

    public void setValues(int i2, int i3, int i4) {
        this.f157x = i2;
        this.f158y = i3;
        this.f159z = i4;
    }

    public void sub(Int3 int3) {
        this.f157x -= int3.f157x;
        this.f158y -= int3.f158y;
        this.f159z -= int3.f159z;
    }

    public Int3(int i2) {
        this.f159z = i2;
        this.f158y = i2;
        this.f157x = i2;
    }

    public static int dotProduct(Int3 int3, Int3 int4) {
        return (int4.f159z * int3.f159z) + (int4.f158y * int3.f158y) + (int4.f157x * int3.f157x);
    }

    public Int3(int i2, int i3, int i4) {
        this.f157x = i2;
        this.f158y = i3;
        this.f159z = i4;
    }

    public static Int3 add(Int3 int3, Int3 int4) {
        Int3 int5 = new Int3();
        int5.f157x = int3.f157x + int4.f157x;
        int5.f158y = int3.f158y + int4.f158y;
        int5.f159z = int3.f159z + int4.f159z;
        return int5;
    }

    public static Int3 div(Int3 int3, Int3 int4) {
        Int3 int5 = new Int3();
        int5.f157x = int3.f157x / int4.f157x;
        int5.f158y = int3.f158y / int4.f158y;
        int5.f159z = int3.f159z / int4.f159z;
        return int5;
    }

    public static Int3 mod(Int3 int3, Int3 int4) {
        Int3 int5 = new Int3();
        int5.f157x = int3.f157x % int4.f157x;
        int5.f158y = int3.f158y % int4.f158y;
        int5.f159z = int3.f159z % int4.f159z;
        return int5;
    }

    public static Int3 mul(Int3 int3, Int3 int4) {
        Int3 int5 = new Int3();
        int5.f157x = int3.f157x * int4.f157x;
        int5.f158y = int3.f158y * int4.f158y;
        int5.f159z = int3.f159z * int4.f159z;
        return int5;
    }

    public static Int3 sub(Int3 int3, Int3 int4) {
        Int3 int5 = new Int3();
        int5.f157x = int3.f157x - int4.f157x;
        int5.f158y = int3.f158y - int4.f158y;
        int5.f159z = int3.f159z - int4.f159z;
        return int5;
    }

    public Int3(Int3 int3) {
        this.f157x = int3.f157x;
        this.f158y = int3.f158y;
        this.f159z = int3.f159z;
    }

    public void add(int i2) {
        this.f157x += i2;
        this.f158y += i2;
        this.f159z += i2;
    }

    public void div(int i2) {
        this.f157x /= i2;
        this.f158y /= i2;
        this.f159z /= i2;
    }

    public void mod(int i2) {
        this.f157x %= i2;
        this.f158y %= i2;
        this.f159z %= i2;
    }

    public void mul(int i2) {
        this.f157x *= i2;
        this.f158y *= i2;
        this.f159z *= i2;
    }

    public void sub(int i2) {
        this.f157x -= i2;
        this.f158y -= i2;
        this.f159z -= i2;
    }

    public static Int3 add(Int3 int3, int i2) {
        Int3 int4 = new Int3();
        int4.f157x = int3.f157x + i2;
        int4.f158y = int3.f158y + i2;
        int4.f159z = int3.f159z + i2;
        return int4;
    }

    public static Int3 div(Int3 int3, int i2) {
        Int3 int4 = new Int3();
        int4.f157x = int3.f157x / i2;
        int4.f158y = int3.f158y / i2;
        int4.f159z = int3.f159z / i2;
        return int4;
    }

    public static Int3 mod(Int3 int3, int i2) {
        Int3 int4 = new Int3();
        int4.f157x = int3.f157x % i2;
        int4.f158y = int3.f158y % i2;
        int4.f159z = int3.f159z % i2;
        return int4;
    }

    public static Int3 mul(Int3 int3, int i2) {
        Int3 int4 = new Int3();
        int4.f157x = int3.f157x * i2;
        int4.f158y = int3.f158y * i2;
        int4.f159z = int3.f159z * i2;
        return int4;
    }

    public static Int3 sub(Int3 int3, int i2) {
        Int3 int4 = new Int3();
        int4.f157x = int3.f157x - i2;
        int4.f158y = int3.f158y - i2;
        int4.f159z = int3.f159z - i2;
        return int4;
    }
}
