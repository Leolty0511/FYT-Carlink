package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Byte2 {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public byte f128x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public byte f129y;

    public Byte2() {
    }

    public void add(Byte2 byte2) {
        this.f128x = (byte) (this.f128x + byte2.f128x);
        this.f129y = (byte) (this.f129y + byte2.f129y);
    }

    public void addAt(int i2, byte b2) {
        if (i2 == 0) {
            this.f128x = (byte) (this.f128x + b2);
        } else {
            if (i2 != 1) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f129y = (byte) (this.f129y + b2);
        }
    }

    public void addMultiple(Byte2 byte2, byte b2) {
        this.f128x = (byte) ((byte2.f128x * b2) + this.f128x);
        this.f129y = (byte) ((byte2.f129y * b2) + this.f129y);
    }

    public void copyTo(byte[] bArr, int i2) {
        bArr[i2] = this.f128x;
        bArr[i2 + 1] = this.f129y;
    }

    public void div(Byte2 byte2) {
        this.f128x = (byte) (this.f128x / byte2.f128x);
        this.f129y = (byte) (this.f129y / byte2.f129y);
    }

    public byte dotProduct(Byte2 byte2) {
        return (byte) ((this.f129y * byte2.f129y) + (this.f128x * byte2.f128x));
    }

    public byte elementSum() {
        return (byte) (this.f128x + this.f129y);
    }

    public byte get(int i2) {
        if (i2 == 0) {
            return this.f128x;
        }
        if (i2 == 1) {
            return this.f129y;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public byte length() {
        return (byte) 2;
    }

    public void mul(Byte2 byte2) {
        this.f128x = (byte) (this.f128x * byte2.f128x);
        this.f129y = (byte) (this.f129y * byte2.f129y);
    }

    public void negate() {
        this.f128x = (byte) (-this.f128x);
        this.f129y = (byte) (-this.f129y);
    }

    public void set(Byte2 byte2) {
        this.f128x = byte2.f128x;
        this.f129y = byte2.f129y;
    }

    public void setAt(int i2, byte b2) {
        if (i2 == 0) {
            this.f128x = b2;
        } else {
            if (i2 != 1) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f129y = b2;
        }
    }

    public void setValues(byte b2, byte b3) {
        this.f128x = b2;
        this.f129y = b3;
    }

    public void sub(Byte2 byte2) {
        this.f128x = (byte) (this.f128x - byte2.f128x);
        this.f129y = (byte) (this.f129y - byte2.f129y);
    }

    public Byte2(byte b2, byte b3) {
        this.f128x = b2;
        this.f129y = b3;
    }

    public static byte dotProduct(Byte2 byte2, Byte2 byte3) {
        return (byte) ((byte3.f129y * byte2.f129y) + (byte3.f128x * byte2.f128x));
    }

    public static Byte2 add(Byte2 byte2, Byte2 byte3) {
        Byte2 byte4 = new Byte2();
        byte4.f128x = (byte) (byte2.f128x + byte3.f128x);
        byte4.f129y = (byte) (byte2.f129y + byte3.f129y);
        return byte4;
    }

    public static Byte2 div(Byte2 byte2, Byte2 byte3) {
        Byte2 byte4 = new Byte2();
        byte4.f128x = (byte) (byte2.f128x / byte3.f128x);
        byte4.f129y = (byte) (byte2.f129y / byte3.f129y);
        return byte4;
    }

    public static Byte2 mul(Byte2 byte2, Byte2 byte3) {
        Byte2 byte4 = new Byte2();
        byte4.f128x = (byte) (byte2.f128x * byte3.f128x);
        byte4.f129y = (byte) (byte2.f129y * byte3.f129y);
        return byte4;
    }

    public static Byte2 sub(Byte2 byte2, Byte2 byte3) {
        Byte2 byte4 = new Byte2();
        byte4.f128x = (byte) (byte2.f128x - byte3.f128x);
        byte4.f129y = (byte) (byte2.f129y - byte3.f129y);
        return byte4;
    }

    public Byte2(Byte2 byte2) {
        this.f128x = byte2.f128x;
        this.f129y = byte2.f129y;
    }

    public void add(byte b2) {
        this.f128x = (byte) (this.f128x + b2);
        this.f129y = (byte) (this.f129y + b2);
    }

    public void div(byte b2) {
        this.f128x = (byte) (this.f128x / b2);
        this.f129y = (byte) (this.f129y / b2);
    }

    public void mul(byte b2) {
        this.f128x = (byte) (this.f128x * b2);
        this.f129y = (byte) (this.f129y * b2);
    }

    public void sub(byte b2) {
        this.f128x = (byte) (this.f128x - b2);
        this.f129y = (byte) (this.f129y - b2);
    }

    public static Byte2 add(Byte2 byte2, byte b2) {
        Byte2 byte3 = new Byte2();
        byte3.f128x = (byte) (byte2.f128x + b2);
        byte3.f129y = (byte) (byte2.f129y + b2);
        return byte3;
    }

    public static Byte2 div(Byte2 byte2, byte b2) {
        Byte2 byte3 = new Byte2();
        byte3.f128x = (byte) (byte2.f128x / b2);
        byte3.f129y = (byte) (byte2.f129y / b2);
        return byte3;
    }

    public static Byte2 mul(Byte2 byte2, byte b2) {
        Byte2 byte3 = new Byte2();
        byte3.f128x = (byte) (byte2.f128x * b2);
        byte3.f129y = (byte) (byte2.f129y * b2);
        return byte3;
    }

    public static Byte2 sub(Byte2 byte2, byte b2) {
        Byte2 byte3 = new Byte2();
        byte3.f128x = (byte) (byte2.f128x - b2);
        byte3.f129y = (byte) (byte2.f129y - b2);
        return byte3;
    }
}
