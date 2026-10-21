package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Byte4 {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public byte f133w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public byte f134x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public byte f135y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public byte f136z;

    public Byte4() {
    }

    public void add(Byte4 byte4) {
        this.f134x = (byte) (this.f134x + byte4.f134x);
        this.f135y = (byte) (this.f135y + byte4.f135y);
        this.f136z = (byte) (this.f136z + byte4.f136z);
        this.f133w = (byte) (this.f133w + byte4.f133w);
    }

    public void addAt(int i2, byte b2) {
        if (i2 == 0) {
            this.f134x = (byte) (this.f134x + b2);
            return;
        }
        if (i2 == 1) {
            this.f135y = (byte) (this.f135y + b2);
        } else if (i2 == 2) {
            this.f136z = (byte) (this.f136z + b2);
        } else {
            if (i2 != 3) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f133w = (byte) (this.f133w + b2);
        }
    }

    public void addMultiple(Byte4 byte4, byte b2) {
        this.f134x = (byte) ((byte4.f134x * b2) + this.f134x);
        this.f135y = (byte) ((byte4.f135y * b2) + this.f135y);
        this.f136z = (byte) ((byte4.f136z * b2) + this.f136z);
        this.f133w = (byte) ((byte4.f133w * b2) + this.f133w);
    }

    public void copyTo(byte[] bArr, int i2) {
        bArr[i2] = this.f134x;
        bArr[i2 + 1] = this.f135y;
        bArr[i2 + 2] = this.f136z;
        bArr[i2 + 3] = this.f133w;
    }

    public void div(Byte4 byte4) {
        this.f134x = (byte) (this.f134x / byte4.f134x);
        this.f135y = (byte) (this.f135y / byte4.f135y);
        this.f136z = (byte) (this.f136z / byte4.f136z);
        this.f133w = (byte) (this.f133w / byte4.f133w);
    }

    public byte dotProduct(Byte4 byte4) {
        return (byte) ((this.f133w * byte4.f133w) + (this.f136z * byte4.f136z) + (this.f135y * byte4.f135y) + (this.f134x * byte4.f134x));
    }

    public byte elementSum() {
        return (byte) (this.f134x + this.f135y + this.f136z + this.f133w);
    }

    public byte get(int i2) {
        if (i2 == 0) {
            return this.f134x;
        }
        if (i2 == 1) {
            return this.f135y;
        }
        if (i2 == 2) {
            return this.f136z;
        }
        if (i2 == 3) {
            return this.f133w;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public byte length() {
        return (byte) 4;
    }

    public void mul(Byte4 byte4) {
        this.f134x = (byte) (this.f134x * byte4.f134x);
        this.f135y = (byte) (this.f135y * byte4.f135y);
        this.f136z = (byte) (this.f136z * byte4.f136z);
        this.f133w = (byte) (this.f133w * byte4.f133w);
    }

    public void negate() {
        this.f134x = (byte) (-this.f134x);
        this.f135y = (byte) (-this.f135y);
        this.f136z = (byte) (-this.f136z);
        this.f133w = (byte) (-this.f133w);
    }

    public void set(Byte4 byte4) {
        this.f134x = byte4.f134x;
        this.f135y = byte4.f135y;
        this.f136z = byte4.f136z;
        this.f133w = byte4.f133w;
    }

    public void setAt(int i2, byte b2) {
        if (i2 == 0) {
            this.f134x = b2;
            return;
        }
        if (i2 == 1) {
            this.f135y = b2;
        } else if (i2 == 2) {
            this.f136z = b2;
        } else {
            if (i2 != 3) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f133w = b2;
        }
    }

    public void setValues(byte b2, byte b3, byte b4, byte b5) {
        this.f134x = b2;
        this.f135y = b3;
        this.f136z = b4;
        this.f133w = b5;
    }

    public void sub(Byte4 byte4) {
        this.f134x = (byte) (this.f134x - byte4.f134x);
        this.f135y = (byte) (this.f135y - byte4.f135y);
        this.f136z = (byte) (this.f136z - byte4.f136z);
        this.f133w = (byte) (this.f133w - byte4.f133w);
    }

    public Byte4(byte b2, byte b3, byte b4, byte b5) {
        this.f134x = b2;
        this.f135y = b3;
        this.f136z = b4;
        this.f133w = b5;
    }

    public static byte dotProduct(Byte4 byte4, Byte4 byte5) {
        return (byte) ((byte5.f133w * byte4.f133w) + (byte5.f136z * byte4.f136z) + (byte5.f135y * byte4.f135y) + (byte5.f134x * byte4.f134x));
    }

    public static Byte4 add(Byte4 byte4, Byte4 byte5) {
        Byte4 byte6 = new Byte4();
        byte6.f134x = (byte) (byte4.f134x + byte5.f134x);
        byte6.f135y = (byte) (byte4.f135y + byte5.f135y);
        byte6.f136z = (byte) (byte4.f136z + byte5.f136z);
        byte6.f133w = (byte) (byte4.f133w + byte5.f133w);
        return byte6;
    }

    public static Byte4 div(Byte4 byte4, Byte4 byte5) {
        Byte4 byte6 = new Byte4();
        byte6.f134x = (byte) (byte4.f134x / byte5.f134x);
        byte6.f135y = (byte) (byte4.f135y / byte5.f135y);
        byte6.f136z = (byte) (byte4.f136z / byte5.f136z);
        byte6.f133w = (byte) (byte4.f133w / byte5.f133w);
        return byte6;
    }

    public static Byte4 mul(Byte4 byte4, Byte4 byte5) {
        Byte4 byte6 = new Byte4();
        byte6.f134x = (byte) (byte4.f134x * byte5.f134x);
        byte6.f135y = (byte) (byte4.f135y * byte5.f135y);
        byte6.f136z = (byte) (byte4.f136z * byte5.f136z);
        byte6.f133w = (byte) (byte4.f133w * byte5.f133w);
        return byte6;
    }

    public static Byte4 sub(Byte4 byte4, Byte4 byte5) {
        Byte4 byte6 = new Byte4();
        byte6.f134x = (byte) (byte4.f134x - byte5.f134x);
        byte6.f135y = (byte) (byte4.f135y - byte5.f135y);
        byte6.f136z = (byte) (byte4.f136z - byte5.f136z);
        byte6.f133w = (byte) (byte4.f133w - byte5.f133w);
        return byte6;
    }

    public Byte4(Byte4 byte4) {
        this.f134x = byte4.f134x;
        this.f135y = byte4.f135y;
        this.f136z = byte4.f136z;
        this.f133w = byte4.f133w;
    }

    public void add(byte b2) {
        this.f134x = (byte) (this.f134x + b2);
        this.f135y = (byte) (this.f135y + b2);
        this.f136z = (byte) (this.f136z + b2);
        this.f133w = (byte) (this.f133w + b2);
    }

    public void div(byte b2) {
        this.f134x = (byte) (this.f134x / b2);
        this.f135y = (byte) (this.f135y / b2);
        this.f136z = (byte) (this.f136z / b2);
        this.f133w = (byte) (this.f133w / b2);
    }

    public void mul(byte b2) {
        this.f134x = (byte) (this.f134x * b2);
        this.f135y = (byte) (this.f135y * b2);
        this.f136z = (byte) (this.f136z * b2);
        this.f133w = (byte) (this.f133w * b2);
    }

    public void sub(byte b2) {
        this.f134x = (byte) (this.f134x - b2);
        this.f135y = (byte) (this.f135y - b2);
        this.f136z = (byte) (this.f136z - b2);
        this.f133w = (byte) (this.f133w - b2);
    }

    public static Byte4 add(Byte4 byte4, byte b2) {
        Byte4 byte5 = new Byte4();
        byte5.f134x = (byte) (byte4.f134x + b2);
        byte5.f135y = (byte) (byte4.f135y + b2);
        byte5.f136z = (byte) (byte4.f136z + b2);
        byte5.f133w = (byte) (byte4.f133w + b2);
        return byte5;
    }

    public static Byte4 div(Byte4 byte4, byte b2) {
        Byte4 byte5 = new Byte4();
        byte5.f134x = (byte) (byte4.f134x / b2);
        byte5.f135y = (byte) (byte4.f135y / b2);
        byte5.f136z = (byte) (byte4.f136z / b2);
        byte5.f133w = (byte) (byte4.f133w / b2);
        return byte5;
    }

    public static Byte4 mul(Byte4 byte4, byte b2) {
        Byte4 byte5 = new Byte4();
        byte5.f134x = (byte) (byte4.f134x * b2);
        byte5.f135y = (byte) (byte4.f135y * b2);
        byte5.f136z = (byte) (byte4.f136z * b2);
        byte5.f133w = (byte) (byte4.f133w * b2);
        return byte5;
    }

    public static Byte4 sub(Byte4 byte4, byte b2) {
        Byte4 byte5 = new Byte4();
        byte5.f134x = (byte) (byte4.f134x - b2);
        byte5.f135y = (byte) (byte4.f135y - b2);
        byte5.f136z = (byte) (byte4.f136z - b2);
        byte5.f133w = (byte) (byte4.f133w - b2);
        return byte5;
    }
}
