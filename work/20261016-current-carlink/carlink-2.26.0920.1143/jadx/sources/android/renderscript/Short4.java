package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Short4 {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public short f181w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public short f182x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public short f183y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public short f184z;

    public Short4() {
    }

    public void add(Short4 short4) {
        this.f182x = (short) (this.f182x + short4.f182x);
        this.f183y = (short) (this.f183y + short4.f183y);
        this.f184z = (short) (this.f184z + short4.f184z);
        this.f181w = (short) (this.f181w + short4.f181w);
    }

    public void addAt(int i2, short s2) {
        if (i2 == 0) {
            this.f182x = (short) (this.f182x + s2);
            return;
        }
        if (i2 == 1) {
            this.f183y = (short) (this.f183y + s2);
        } else if (i2 == 2) {
            this.f184z = (short) (this.f184z + s2);
        } else {
            if (i2 != 3) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f181w = (short) (this.f181w + s2);
        }
    }

    public void addMultiple(Short4 short4, short s2) {
        this.f182x = (short) ((short4.f182x * s2) + this.f182x);
        this.f183y = (short) ((short4.f183y * s2) + this.f183y);
        this.f184z = (short) ((short4.f184z * s2) + this.f184z);
        this.f181w = (short) ((short4.f181w * s2) + this.f181w);
    }

    public void copyTo(short[] sArr, int i2) {
        sArr[i2] = this.f182x;
        sArr[i2 + 1] = this.f183y;
        sArr[i2 + 2] = this.f184z;
        sArr[i2 + 3] = this.f181w;
    }

    public void div(Short4 short4) {
        this.f182x = (short) (this.f182x / short4.f182x);
        this.f183y = (short) (this.f183y / short4.f183y);
        this.f184z = (short) (this.f184z / short4.f184z);
        this.f181w = (short) (this.f181w / short4.f181w);
    }

    public short dotProduct(Short4 short4) {
        return (short) ((this.f181w * short4.f181w) + (this.f184z * short4.f184z) + (this.f183y * short4.f183y) + (this.f182x * short4.f182x));
    }

    public short elementSum() {
        return (short) (this.f182x + this.f183y + this.f184z + this.f181w);
    }

    public short get(int i2) {
        if (i2 == 0) {
            return this.f182x;
        }
        if (i2 == 1) {
            return this.f183y;
        }
        if (i2 == 2) {
            return this.f184z;
        }
        if (i2 == 3) {
            return this.f181w;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public short length() {
        return (short) 4;
    }

    public void mod(Short4 short4) {
        this.f182x = (short) (this.f182x % short4.f182x);
        this.f183y = (short) (this.f183y % short4.f183y);
        this.f184z = (short) (this.f184z % short4.f184z);
        this.f181w = (short) (this.f181w % short4.f181w);
    }

    public void mul(Short4 short4) {
        this.f182x = (short) (this.f182x * short4.f182x);
        this.f183y = (short) (this.f183y * short4.f183y);
        this.f184z = (short) (this.f184z * short4.f184z);
        this.f181w = (short) (this.f181w * short4.f181w);
    }

    public void negate() {
        this.f182x = (short) (-this.f182x);
        this.f183y = (short) (-this.f183y);
        this.f184z = (short) (-this.f184z);
        this.f181w = (short) (-this.f181w);
    }

    public void set(Short4 short4) {
        this.f182x = short4.f182x;
        this.f183y = short4.f183y;
        this.f184z = short4.f184z;
        this.f181w = short4.f181w;
    }

    public void setAt(int i2, short s2) {
        if (i2 == 0) {
            this.f182x = s2;
            return;
        }
        if (i2 == 1) {
            this.f183y = s2;
        } else if (i2 == 2) {
            this.f184z = s2;
        } else {
            if (i2 != 3) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f181w = s2;
        }
    }

    public void setValues(short s2, short s3, short s4, short s5) {
        this.f182x = s2;
        this.f183y = s3;
        this.f184z = s4;
        this.f181w = s5;
    }

    public void sub(Short4 short4) {
        this.f182x = (short) (this.f182x - short4.f182x);
        this.f183y = (short) (this.f183y - short4.f183y);
        this.f184z = (short) (this.f184z - short4.f184z);
        this.f181w = (short) (this.f181w - short4.f181w);
    }

    public Short4(short s2) {
        this.f181w = s2;
        this.f184z = s2;
        this.f183y = s2;
        this.f182x = s2;
    }

    public static short dotProduct(Short4 short4, Short4 short5) {
        return (short) ((short5.f181w * short4.f181w) + (short5.f184z * short4.f184z) + (short5.f183y * short4.f183y) + (short5.f182x * short4.f182x));
    }

    public Short4(short s2, short s3, short s4, short s5) {
        this.f182x = s2;
        this.f183y = s3;
        this.f184z = s4;
        this.f181w = s5;
    }

    public static Short4 add(Short4 short4, Short4 short5) {
        Short4 short6 = new Short4();
        short6.f182x = (short) (short4.f182x + short5.f182x);
        short6.f183y = (short) (short4.f183y + short5.f183y);
        short6.f184z = (short) (short4.f184z + short5.f184z);
        short6.f181w = (short) (short4.f181w + short5.f181w);
        return short6;
    }

    public static Short4 div(Short4 short4, Short4 short5) {
        Short4 short6 = new Short4();
        short6.f182x = (short) (short4.f182x / short5.f182x);
        short6.f183y = (short) (short4.f183y / short5.f183y);
        short6.f184z = (short) (short4.f184z / short5.f184z);
        short6.f181w = (short) (short4.f181w / short5.f181w);
        return short6;
    }

    public static Short4 mod(Short4 short4, Short4 short5) {
        Short4 short6 = new Short4();
        short6.f182x = (short) (short4.f182x % short5.f182x);
        short6.f183y = (short) (short4.f183y % short5.f183y);
        short6.f184z = (short) (short4.f184z % short5.f184z);
        short6.f181w = (short) (short4.f181w % short5.f181w);
        return short6;
    }

    public static Short4 mul(Short4 short4, Short4 short5) {
        Short4 short6 = new Short4();
        short6.f182x = (short) (short4.f182x * short5.f182x);
        short6.f183y = (short) (short4.f183y * short5.f183y);
        short6.f184z = (short) (short4.f184z * short5.f184z);
        short6.f181w = (short) (short4.f181w * short5.f181w);
        return short6;
    }

    public static Short4 sub(Short4 short4, Short4 short5) {
        Short4 short6 = new Short4();
        short6.f182x = (short) (short4.f182x - short5.f182x);
        short6.f183y = (short) (short4.f183y - short5.f183y);
        short6.f184z = (short) (short4.f184z - short5.f184z);
        short6.f181w = (short) (short4.f181w - short5.f181w);
        return short6;
    }

    public Short4(Short4 short4) {
        this.f182x = short4.f182x;
        this.f183y = short4.f183y;
        this.f184z = short4.f184z;
        this.f181w = short4.f181w;
    }

    public void add(short s2) {
        this.f182x = (short) (this.f182x + s2);
        this.f183y = (short) (this.f183y + s2);
        this.f184z = (short) (this.f184z + s2);
        this.f181w = (short) (this.f181w + s2);
    }

    public void div(short s2) {
        this.f182x = (short) (this.f182x / s2);
        this.f183y = (short) (this.f183y / s2);
        this.f184z = (short) (this.f184z / s2);
        this.f181w = (short) (this.f181w / s2);
    }

    public void mod(short s2) {
        this.f182x = (short) (this.f182x % s2);
        this.f183y = (short) (this.f183y % s2);
        this.f184z = (short) (this.f184z % s2);
        this.f181w = (short) (this.f181w % s2);
    }

    public void mul(short s2) {
        this.f182x = (short) (this.f182x * s2);
        this.f183y = (short) (this.f183y * s2);
        this.f184z = (short) (this.f184z * s2);
        this.f181w = (short) (this.f181w * s2);
    }

    public void sub(short s2) {
        this.f182x = (short) (this.f182x - s2);
        this.f183y = (short) (this.f183y - s2);
        this.f184z = (short) (this.f184z - s2);
        this.f181w = (short) (this.f181w - s2);
    }

    public static Short4 add(Short4 short4, short s2) {
        Short4 short5 = new Short4();
        short5.f182x = (short) (short4.f182x + s2);
        short5.f183y = (short) (short4.f183y + s2);
        short5.f184z = (short) (short4.f184z + s2);
        short5.f181w = (short) (short4.f181w + s2);
        return short5;
    }

    public static Short4 div(Short4 short4, short s2) {
        Short4 short5 = new Short4();
        short5.f182x = (short) (short4.f182x / s2);
        short5.f183y = (short) (short4.f183y / s2);
        short5.f184z = (short) (short4.f184z / s2);
        short5.f181w = (short) (short4.f181w / s2);
        return short5;
    }

    public static Short4 mod(Short4 short4, short s2) {
        Short4 short5 = new Short4();
        short5.f182x = (short) (short4.f182x % s2);
        short5.f183y = (short) (short4.f183y % s2);
        short5.f184z = (short) (short4.f184z % s2);
        short5.f181w = (short) (short4.f181w % s2);
        return short5;
    }

    public static Short4 mul(Short4 short4, short s2) {
        Short4 short5 = new Short4();
        short5.f182x = (short) (short4.f182x * s2);
        short5.f183y = (short) (short4.f183y * s2);
        short5.f184z = (short) (short4.f184z * s2);
        short5.f181w = (short) (short4.f181w * s2);
        return short5;
    }

    public static Short4 sub(Short4 short4, short s2) {
        Short4 short5 = new Short4();
        short5.f182x = (short) (short4.f182x - s2);
        short5.f183y = (short) (short4.f183y - s2);
        short5.f184z = (short) (short4.f184z - s2);
        short5.f181w = (short) (short4.f181w - s2);
        return short5;
    }
}
