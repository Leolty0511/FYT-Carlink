package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Short2 {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public short f176x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public short f177y;

    public Short2() {
    }

    public void add(Short2 short2) {
        this.f176x = (short) (this.f176x + short2.f176x);
        this.f177y = (short) (this.f177y + short2.f177y);
    }

    public void addAt(int i2, short s2) {
        if (i2 == 0) {
            this.f176x = (short) (this.f176x + s2);
        } else {
            if (i2 != 1) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f177y = (short) (this.f177y + s2);
        }
    }

    public void addMultiple(Short2 short2, short s2) {
        this.f176x = (short) ((short2.f176x * s2) + this.f176x);
        this.f177y = (short) ((short2.f177y * s2) + this.f177y);
    }

    public void copyTo(short[] sArr, int i2) {
        sArr[i2] = this.f176x;
        sArr[i2 + 1] = this.f177y;
    }

    public void div(Short2 short2) {
        this.f176x = (short) (this.f176x / short2.f176x);
        this.f177y = (short) (this.f177y / short2.f177y);
    }

    public short dotProduct(Short2 short2) {
        return (short) ((this.f177y * short2.f177y) + (this.f176x * short2.f176x));
    }

    public short elementSum() {
        return (short) (this.f176x + this.f177y);
    }

    public short get(int i2) {
        if (i2 == 0) {
            return this.f176x;
        }
        if (i2 == 1) {
            return this.f177y;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public short length() {
        return (short) 2;
    }

    public void mod(Short2 short2) {
        this.f176x = (short) (this.f176x % short2.f176x);
        this.f177y = (short) (this.f177y % short2.f177y);
    }

    public void mul(Short2 short2) {
        this.f176x = (short) (this.f176x * short2.f176x);
        this.f177y = (short) (this.f177y * short2.f177y);
    }

    public void negate() {
        this.f176x = (short) (-this.f176x);
        this.f177y = (short) (-this.f177y);
    }

    public void set(Short2 short2) {
        this.f176x = short2.f176x;
        this.f177y = short2.f177y;
    }

    public void setAt(int i2, short s2) {
        if (i2 == 0) {
            this.f176x = s2;
        } else {
            if (i2 != 1) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f177y = s2;
        }
    }

    public void setValues(short s2, short s3) {
        this.f176x = s2;
        this.f177y = s3;
    }

    public void sub(Short2 short2) {
        this.f176x = (short) (this.f176x - short2.f176x);
        this.f177y = (short) (this.f177y - short2.f177y);
    }

    public Short2(short s2) {
        this.f177y = s2;
        this.f176x = s2;
    }

    public static short dotProduct(Short2 short2, Short2 short3) {
        return (short) ((short3.f177y * short2.f177y) + (short3.f176x * short2.f176x));
    }

    public static Short2 add(Short2 short2, Short2 short3) {
        Short2 short4 = new Short2();
        short4.f176x = (short) (short2.f176x + short3.f176x);
        short4.f177y = (short) (short2.f177y + short3.f177y);
        return short4;
    }

    public static Short2 div(Short2 short2, Short2 short3) {
        Short2 short4 = new Short2();
        short4.f176x = (short) (short2.f176x / short3.f176x);
        short4.f177y = (short) (short2.f177y / short3.f177y);
        return short4;
    }

    public static Short2 mod(Short2 short2, Short2 short3) {
        Short2 short4 = new Short2();
        short4.f176x = (short) (short2.f176x % short3.f176x);
        short4.f177y = (short) (short2.f177y % short3.f177y);
        return short4;
    }

    public static Short2 mul(Short2 short2, Short2 short3) {
        Short2 short4 = new Short2();
        short4.f176x = (short) (short2.f176x * short3.f176x);
        short4.f177y = (short) (short2.f177y * short3.f177y);
        return short4;
    }

    public static Short2 sub(Short2 short2, Short2 short3) {
        Short2 short4 = new Short2();
        short4.f176x = (short) (short2.f176x - short3.f176x);
        short4.f177y = (short) (short2.f177y - short3.f177y);
        return short4;
    }

    public Short2(short s2, short s3) {
        this.f176x = s2;
        this.f177y = s3;
    }

    public void add(short s2) {
        this.f176x = (short) (this.f176x + s2);
        this.f177y = (short) (this.f177y + s2);
    }

    public void div(short s2) {
        this.f176x = (short) (this.f176x / s2);
        this.f177y = (short) (this.f177y / s2);
    }

    public void mod(short s2) {
        this.f176x = (short) (this.f176x % s2);
        this.f177y = (short) (this.f177y % s2);
    }

    public void mul(short s2) {
        this.f176x = (short) (this.f176x * s2);
        this.f177y = (short) (this.f177y * s2);
    }

    public void sub(short s2) {
        this.f176x = (short) (this.f176x - s2);
        this.f177y = (short) (this.f177y - s2);
    }

    public Short2(Short2 short2) {
        this.f176x = short2.f176x;
        this.f177y = short2.f177y;
    }

    public static Short2 add(Short2 short2, short s2) {
        Short2 short3 = new Short2();
        short3.f176x = (short) (short2.f176x + s2);
        short3.f177y = (short) (short2.f177y + s2);
        return short3;
    }

    public static Short2 div(Short2 short2, short s2) {
        Short2 short3 = new Short2();
        short3.f176x = (short) (short2.f176x / s2);
        short3.f177y = (short) (short2.f177y / s2);
        return short3;
    }

    public static Short2 mod(Short2 short2, short s2) {
        Short2 short3 = new Short2();
        short3.f176x = (short) (short2.f176x % s2);
        short3.f177y = (short) (short2.f177y % s2);
        return short3;
    }

    public static Short2 mul(Short2 short2, short s2) {
        Short2 short3 = new Short2();
        short3.f176x = (short) (short2.f176x * s2);
        short3.f177y = (short) (short2.f177y * s2);
        return short3;
    }

    public static Short2 sub(Short2 short2, short s2) {
        Short2 short3 = new Short2();
        short3.f176x = (short) (short2.f176x - s2);
        short3.f177y = (short) (short2.f177y - s2);
        return short3;
    }
}
