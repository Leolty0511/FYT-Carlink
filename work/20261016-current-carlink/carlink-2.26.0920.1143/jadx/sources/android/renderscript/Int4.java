package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Int4 {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f160w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f161x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f162y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f163z;

    public Int4() {
    }

    public void add(Int4 int4) {
        this.f161x += int4.f161x;
        this.f162y += int4.f162y;
        this.f163z += int4.f163z;
        this.f160w += int4.f160w;
    }

    public void addAt(int i2, int i3) {
        if (i2 == 0) {
            this.f161x += i3;
            return;
        }
        if (i2 == 1) {
            this.f162y += i3;
        } else if (i2 == 2) {
            this.f163z += i3;
        } else {
            if (i2 != 3) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f160w += i3;
        }
    }

    public void addMultiple(Int4 int4, int i2) {
        this.f161x = (int4.f161x * i2) + this.f161x;
        this.f162y = (int4.f162y * i2) + this.f162y;
        this.f163z = (int4.f163z * i2) + this.f163z;
        this.f160w = (int4.f160w * i2) + this.f160w;
    }

    public void copyTo(int[] iArr, int i2) {
        iArr[i2] = this.f161x;
        iArr[i2 + 1] = this.f162y;
        iArr[i2 + 2] = this.f163z;
        iArr[i2 + 3] = this.f160w;
    }

    public void div(Int4 int4) {
        this.f161x /= int4.f161x;
        this.f162y /= int4.f162y;
        this.f163z /= int4.f163z;
        this.f160w /= int4.f160w;
    }

    public int dotProduct(Int4 int4) {
        return (this.f160w * int4.f160w) + (this.f163z * int4.f163z) + (this.f162y * int4.f162y) + (this.f161x * int4.f161x);
    }

    public int elementSum() {
        return this.f161x + this.f162y + this.f163z + this.f160w;
    }

    public int get(int i2) {
        if (i2 == 0) {
            return this.f161x;
        }
        if (i2 == 1) {
            return this.f162y;
        }
        if (i2 == 2) {
            return this.f163z;
        }
        if (i2 == 3) {
            return this.f160w;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public int length() {
        return 4;
    }

    public void mod(Int4 int4) {
        this.f161x %= int4.f161x;
        this.f162y %= int4.f162y;
        this.f163z %= int4.f163z;
        this.f160w %= int4.f160w;
    }

    public void mul(Int4 int4) {
        this.f161x *= int4.f161x;
        this.f162y *= int4.f162y;
        this.f163z *= int4.f163z;
        this.f160w *= int4.f160w;
    }

    public void negate() {
        this.f161x = -this.f161x;
        this.f162y = -this.f162y;
        this.f163z = -this.f163z;
        this.f160w = -this.f160w;
    }

    public void set(Int4 int4) {
        this.f161x = int4.f161x;
        this.f162y = int4.f162y;
        this.f163z = int4.f163z;
        this.f160w = int4.f160w;
    }

    public void setAt(int i2, int i3) {
        if (i2 == 0) {
            this.f161x = i3;
            return;
        }
        if (i2 == 1) {
            this.f162y = i3;
        } else if (i2 == 2) {
            this.f163z = i3;
        } else {
            if (i2 != 3) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f160w = i3;
        }
    }

    public void setValues(int i2, int i3, int i4, int i5) {
        this.f161x = i2;
        this.f162y = i3;
        this.f163z = i4;
        this.f160w = i5;
    }

    public void sub(Int4 int4) {
        this.f161x -= int4.f161x;
        this.f162y -= int4.f162y;
        this.f163z -= int4.f163z;
        this.f160w -= int4.f160w;
    }

    public Int4(int i2) {
        this.f160w = i2;
        this.f163z = i2;
        this.f162y = i2;
        this.f161x = i2;
    }

    public static int dotProduct(Int4 int4, Int4 int5) {
        return (int5.f160w * int4.f160w) + (int5.f163z * int4.f163z) + (int5.f162y * int4.f162y) + (int5.f161x * int4.f161x);
    }

    public Int4(int i2, int i3, int i4, int i5) {
        this.f161x = i2;
        this.f162y = i3;
        this.f163z = i4;
        this.f160w = i5;
    }

    public static Int4 add(Int4 int4, Int4 int5) {
        Int4 int6 = new Int4();
        int6.f161x = int4.f161x + int5.f161x;
        int6.f162y = int4.f162y + int5.f162y;
        int6.f163z = int4.f163z + int5.f163z;
        int6.f160w = int4.f160w + int5.f160w;
        return int6;
    }

    public static Int4 div(Int4 int4, Int4 int5) {
        Int4 int6 = new Int4();
        int6.f161x = int4.f161x / int5.f161x;
        int6.f162y = int4.f162y / int5.f162y;
        int6.f163z = int4.f163z / int5.f163z;
        int6.f160w = int4.f160w / int5.f160w;
        return int6;
    }

    public static Int4 mod(Int4 int4, Int4 int5) {
        Int4 int6 = new Int4();
        int6.f161x = int4.f161x % int5.f161x;
        int6.f162y = int4.f162y % int5.f162y;
        int6.f163z = int4.f163z % int5.f163z;
        int6.f160w = int4.f160w % int5.f160w;
        return int6;
    }

    public static Int4 mul(Int4 int4, Int4 int5) {
        Int4 int6 = new Int4();
        int6.f161x = int4.f161x * int5.f161x;
        int6.f162y = int4.f162y * int5.f162y;
        int6.f163z = int4.f163z * int5.f163z;
        int6.f160w = int4.f160w * int5.f160w;
        return int6;
    }

    public static Int4 sub(Int4 int4, Int4 int5) {
        Int4 int6 = new Int4();
        int6.f161x = int4.f161x - int5.f161x;
        int6.f162y = int4.f162y - int5.f162y;
        int6.f163z = int4.f163z - int5.f163z;
        int6.f160w = int4.f160w - int5.f160w;
        return int6;
    }

    public Int4(Int4 int4) {
        this.f161x = int4.f161x;
        this.f162y = int4.f162y;
        this.f163z = int4.f163z;
        this.f160w = int4.f160w;
    }

    public void add(int i2) {
        this.f161x += i2;
        this.f162y += i2;
        this.f163z += i2;
        this.f160w += i2;
    }

    public void div(int i2) {
        this.f161x /= i2;
        this.f162y /= i2;
        this.f163z /= i2;
        this.f160w /= i2;
    }

    public void mod(int i2) {
        this.f161x %= i2;
        this.f162y %= i2;
        this.f163z %= i2;
        this.f160w %= i2;
    }

    public void mul(int i2) {
        this.f161x *= i2;
        this.f162y *= i2;
        this.f163z *= i2;
        this.f160w *= i2;
    }

    public void sub(int i2) {
        this.f161x -= i2;
        this.f162y -= i2;
        this.f163z -= i2;
        this.f160w -= i2;
    }

    public static Int4 add(Int4 int4, int i2) {
        Int4 int5 = new Int4();
        int5.f161x = int4.f161x + i2;
        int5.f162y = int4.f162y + i2;
        int5.f163z = int4.f163z + i2;
        int5.f160w = int4.f160w + i2;
        return int5;
    }

    public static Int4 div(Int4 int4, int i2) {
        Int4 int5 = new Int4();
        int5.f161x = int4.f161x / i2;
        int5.f162y = int4.f162y / i2;
        int5.f163z = int4.f163z / i2;
        int5.f160w = int4.f160w / i2;
        return int5;
    }

    public static Int4 mod(Int4 int4, int i2) {
        Int4 int5 = new Int4();
        int5.f161x = int4.f161x % i2;
        int5.f162y = int4.f162y % i2;
        int5.f163z = int4.f163z % i2;
        int5.f160w = int4.f160w % i2;
        return int5;
    }

    public static Int4 mul(Int4 int4, int i2) {
        Int4 int5 = new Int4();
        int5.f161x = int4.f161x * i2;
        int5.f162y = int4.f162y * i2;
        int5.f163z = int4.f163z * i2;
        int5.f160w = int4.f160w * i2;
        return int5;
    }

    public static Int4 sub(Int4 int4, int i2) {
        Int4 int5 = new Int4();
        int5.f161x = int4.f161x - i2;
        int5.f162y = int4.f162y - i2;
        int5.f163z = int4.f163z - i2;
        int5.f160w = int4.f160w - i2;
        return int5;
    }
}
