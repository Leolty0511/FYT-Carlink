package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Short3 {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public short f178x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public short f179y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public short f180z;

    public Short3() {
    }

    public void add(Short3 short3) {
        this.f178x = (short) (this.f178x + short3.f178x);
        this.f179y = (short) (this.f179y + short3.f179y);
        this.f180z = (short) (this.f180z + short3.f180z);
    }

    public void addAt(int i2, short s2) {
        if (i2 == 0) {
            this.f178x = (short) (this.f178x + s2);
        } else if (i2 == 1) {
            this.f179y = (short) (this.f179y + s2);
        } else {
            if (i2 != 2) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f180z = (short) (this.f180z + s2);
        }
    }

    public void addMultiple(Short3 short3, short s2) {
        this.f178x = (short) ((short3.f178x * s2) + this.f178x);
        this.f179y = (short) ((short3.f179y * s2) + this.f179y);
        this.f180z = (short) ((short3.f180z * s2) + this.f180z);
    }

    public void copyTo(short[] sArr, int i2) {
        sArr[i2] = this.f178x;
        sArr[i2 + 1] = this.f179y;
        sArr[i2 + 2] = this.f180z;
    }

    public void div(Short3 short3) {
        this.f178x = (short) (this.f178x / short3.f178x);
        this.f179y = (short) (this.f179y / short3.f179y);
        this.f180z = (short) (this.f180z / short3.f180z);
    }

    public short dotProduct(Short3 short3) {
        return (short) ((this.f180z * short3.f180z) + (this.f179y * short3.f179y) + (this.f178x * short3.f178x));
    }

    public short elementSum() {
        return (short) (this.f178x + this.f179y + this.f180z);
    }

    public short get(int i2) {
        if (i2 == 0) {
            return this.f178x;
        }
        if (i2 == 1) {
            return this.f179y;
        }
        if (i2 == 2) {
            return this.f180z;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public short length() {
        return (short) 3;
    }

    public void mod(Short3 short3) {
        this.f178x = (short) (this.f178x % short3.f178x);
        this.f179y = (short) (this.f179y % short3.f179y);
        this.f180z = (short) (this.f180z % short3.f180z);
    }

    public void mul(Short3 short3) {
        this.f178x = (short) (this.f178x * short3.f178x);
        this.f179y = (short) (this.f179y * short3.f179y);
        this.f180z = (short) (this.f180z * short3.f180z);
    }

    public void negate() {
        this.f178x = (short) (-this.f178x);
        this.f179y = (short) (-this.f179y);
        this.f180z = (short) (-this.f180z);
    }

    public void set(Short3 short3) {
        this.f178x = short3.f178x;
        this.f179y = short3.f179y;
        this.f180z = short3.f180z;
    }

    public void setAt(int i2, short s2) {
        if (i2 == 0) {
            this.f178x = s2;
        } else if (i2 == 1) {
            this.f179y = s2;
        } else {
            if (i2 != 2) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f180z = s2;
        }
    }

    public void setValues(short s2, short s3, short s4) {
        this.f178x = s2;
        this.f179y = s3;
        this.f180z = s4;
    }

    public void sub(Short3 short3) {
        this.f178x = (short) (this.f178x - short3.f178x);
        this.f179y = (short) (this.f179y - short3.f179y);
        this.f180z = (short) (this.f180z - short3.f180z);
    }

    public Short3(short s2) {
        this.f180z = s2;
        this.f179y = s2;
        this.f178x = s2;
    }

    public static short dotProduct(Short3 short3, Short3 short4) {
        return (short) ((short4.f180z * short3.f180z) + (short4.f179y * short3.f179y) + (short4.f178x * short3.f178x));
    }

    public Short3(short s2, short s3, short s4) {
        this.f178x = s2;
        this.f179y = s3;
        this.f180z = s4;
    }

    public static Short3 add(Short3 short3, Short3 short4) {
        Short3 short5 = new Short3();
        short5.f178x = (short) (short3.f178x + short4.f178x);
        short5.f179y = (short) (short3.f179y + short4.f179y);
        short5.f180z = (short) (short3.f180z + short4.f180z);
        return short5;
    }

    public static Short3 div(Short3 short3, Short3 short4) {
        Short3 short5 = new Short3();
        short5.f178x = (short) (short3.f178x / short4.f178x);
        short5.f179y = (short) (short3.f179y / short4.f179y);
        short5.f180z = (short) (short3.f180z / short4.f180z);
        return short5;
    }

    public static Short3 mod(Short3 short3, Short3 short4) {
        Short3 short5 = new Short3();
        short5.f178x = (short) (short3.f178x % short4.f178x);
        short5.f179y = (short) (short3.f179y % short4.f179y);
        short5.f180z = (short) (short3.f180z % short4.f180z);
        return short5;
    }

    public static Short3 mul(Short3 short3, Short3 short4) {
        Short3 short5 = new Short3();
        short5.f178x = (short) (short3.f178x * short4.f178x);
        short5.f179y = (short) (short3.f179y * short4.f179y);
        short5.f180z = (short) (short3.f180z * short4.f180z);
        return short5;
    }

    public static Short3 sub(Short3 short3, Short3 short4) {
        Short3 short5 = new Short3();
        short5.f178x = (short) (short3.f178x - short4.f178x);
        short5.f179y = (short) (short3.f179y - short4.f179y);
        short5.f180z = (short) (short3.f180z - short4.f180z);
        return short5;
    }

    public Short3(Short3 short3) {
        this.f178x = short3.f178x;
        this.f179y = short3.f179y;
        this.f180z = short3.f180z;
    }

    public void add(short s2) {
        this.f178x = (short) (this.f178x + s2);
        this.f179y = (short) (this.f179y + s2);
        this.f180z = (short) (this.f180z + s2);
    }

    public void div(short s2) {
        this.f178x = (short) (this.f178x / s2);
        this.f179y = (short) (this.f179y / s2);
        this.f180z = (short) (this.f180z / s2);
    }

    public void mod(short s2) {
        this.f178x = (short) (this.f178x % s2);
        this.f179y = (short) (this.f179y % s2);
        this.f180z = (short) (this.f180z % s2);
    }

    public void mul(short s2) {
        this.f178x = (short) (this.f178x * s2);
        this.f179y = (short) (this.f179y * s2);
        this.f180z = (short) (this.f180z * s2);
    }

    public void sub(short s2) {
        this.f178x = (short) (this.f178x - s2);
        this.f179y = (short) (this.f179y - s2);
        this.f180z = (short) (this.f180z - s2);
    }

    public static Short3 add(Short3 short3, short s2) {
        Short3 short4 = new Short3();
        short4.f178x = (short) (short3.f178x + s2);
        short4.f179y = (short) (short3.f179y + s2);
        short4.f180z = (short) (short3.f180z + s2);
        return short4;
    }

    public static Short3 div(Short3 short3, short s2) {
        Short3 short4 = new Short3();
        short4.f178x = (short) (short3.f178x / s2);
        short4.f179y = (short) (short3.f179y / s2);
        short4.f180z = (short) (short3.f180z / s2);
        return short4;
    }

    public static Short3 mod(Short3 short3, short s2) {
        Short3 short4 = new Short3();
        short4.f178x = (short) (short3.f178x % s2);
        short4.f179y = (short) (short3.f179y % s2);
        short4.f180z = (short) (short3.f180z % s2);
        return short4;
    }

    public static Short3 mul(Short3 short3, short s2) {
        Short3 short4 = new Short3();
        short4.f178x = (short) (short3.f178x * s2);
        short4.f179y = (short) (short3.f179y * s2);
        short4.f180z = (short) (short3.f180z * s2);
        return short4;
    }

    public static Short3 sub(Short3 short3, short s2) {
        Short3 short4 = new Short3();
        short4.f178x = (short) (short3.f178x - s2);
        short4.f179y = (short) (short3.f179y - s2);
        short4.f180z = (short) (short3.f180z - s2);
        return short4;
    }
}
