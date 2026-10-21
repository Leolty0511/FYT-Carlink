package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Byte3 {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public byte f130x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public byte f131y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public byte f132z;

    public Byte3() {
    }

    public void add(Byte3 byte3) {
        this.f130x = (byte) (this.f130x + byte3.f130x);
        this.f131y = (byte) (this.f131y + byte3.f131y);
        this.f132z = (byte) (this.f132z + byte3.f132z);
    }

    public void addAt(int i2, byte b2) {
        if (i2 == 0) {
            this.f130x = (byte) (this.f130x + b2);
        } else if (i2 == 1) {
            this.f131y = (byte) (this.f131y + b2);
        } else {
            if (i2 != 2) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f132z = (byte) (this.f132z + b2);
        }
    }

    public void addMultiple(Byte3 byte3, byte b2) {
        this.f130x = (byte) ((byte3.f130x * b2) + this.f130x);
        this.f131y = (byte) ((byte3.f131y * b2) + this.f131y);
        this.f132z = (byte) ((byte3.f132z * b2) + this.f132z);
    }

    public void copyTo(byte[] bArr, int i2) {
        bArr[i2] = this.f130x;
        bArr[i2 + 1] = this.f131y;
        bArr[i2 + 2] = this.f132z;
    }

    public void div(Byte3 byte3) {
        this.f130x = (byte) (this.f130x / byte3.f130x);
        this.f131y = (byte) (this.f131y / byte3.f131y);
        this.f132z = (byte) (this.f132z / byte3.f132z);
    }

    public byte dotProduct(Byte3 byte3) {
        return (byte) (((byte) (((byte) (this.f130x * byte3.f130x)) + ((byte) (this.f131y * byte3.f131y)))) + ((byte) (this.f132z * byte3.f132z)));
    }

    public byte elementSum() {
        return (byte) (this.f130x + this.f131y + this.f132z);
    }

    public byte get(int i2) {
        if (i2 == 0) {
            return this.f130x;
        }
        if (i2 == 1) {
            return this.f131y;
        }
        if (i2 == 2) {
            return this.f132z;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public byte length() {
        return (byte) 3;
    }

    public void mul(Byte3 byte3) {
        this.f130x = (byte) (this.f130x * byte3.f130x);
        this.f131y = (byte) (this.f131y * byte3.f131y);
        this.f132z = (byte) (this.f132z * byte3.f132z);
    }

    public void negate() {
        this.f130x = (byte) (-this.f130x);
        this.f131y = (byte) (-this.f131y);
        this.f132z = (byte) (-this.f132z);
    }

    public void set(Byte3 byte3) {
        this.f130x = byte3.f130x;
        this.f131y = byte3.f131y;
        this.f132z = byte3.f132z;
    }

    public void setAt(int i2, byte b2) {
        if (i2 == 0) {
            this.f130x = b2;
        } else if (i2 == 1) {
            this.f131y = b2;
        } else {
            if (i2 != 2) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f132z = b2;
        }
    }

    public void setValues(byte b2, byte b3, byte b4) {
        this.f130x = b2;
        this.f131y = b3;
        this.f132z = b4;
    }

    public void sub(Byte3 byte3) {
        this.f130x = (byte) (this.f130x - byte3.f130x);
        this.f131y = (byte) (this.f131y - byte3.f131y);
        this.f132z = (byte) (this.f132z - byte3.f132z);
    }

    public Byte3(byte b2, byte b3, byte b4) {
        this.f130x = b2;
        this.f131y = b3;
        this.f132z = b4;
    }

    public static byte dotProduct(Byte3 byte3, Byte3 byte4) {
        return (byte) (((byte) (((byte) (byte4.f130x * byte3.f130x)) + ((byte) (byte4.f131y * byte3.f131y)))) + ((byte) (byte4.f132z * byte3.f132z)));
    }

    public static Byte3 add(Byte3 byte3, Byte3 byte4) {
        Byte3 byte5 = new Byte3();
        byte5.f130x = (byte) (byte3.f130x + byte4.f130x);
        byte5.f131y = (byte) (byte3.f131y + byte4.f131y);
        byte5.f132z = (byte) (byte3.f132z + byte4.f132z);
        return byte5;
    }

    public static Byte3 div(Byte3 byte3, Byte3 byte4) {
        Byte3 byte5 = new Byte3();
        byte5.f130x = (byte) (byte3.f130x / byte4.f130x);
        byte5.f131y = (byte) (byte3.f131y / byte4.f131y);
        byte5.f132z = (byte) (byte3.f132z / byte4.f132z);
        return byte5;
    }

    public static Byte3 mul(Byte3 byte3, Byte3 byte4) {
        Byte3 byte5 = new Byte3();
        byte5.f130x = (byte) (byte3.f130x * byte4.f130x);
        byte5.f131y = (byte) (byte3.f131y * byte4.f131y);
        byte5.f132z = (byte) (byte3.f132z * byte4.f132z);
        return byte5;
    }

    public static Byte3 sub(Byte3 byte3, Byte3 byte4) {
        Byte3 byte5 = new Byte3();
        byte5.f130x = (byte) (byte3.f130x - byte4.f130x);
        byte5.f131y = (byte) (byte3.f131y - byte4.f131y);
        byte5.f132z = (byte) (byte3.f132z - byte4.f132z);
        return byte5;
    }

    public Byte3(Byte3 byte3) {
        this.f130x = byte3.f130x;
        this.f131y = byte3.f131y;
        this.f132z = byte3.f132z;
    }

    public void add(byte b2) {
        this.f130x = (byte) (this.f130x + b2);
        this.f131y = (byte) (this.f131y + b2);
        this.f132z = (byte) (this.f132z + b2);
    }

    public void div(byte b2) {
        this.f130x = (byte) (this.f130x / b2);
        this.f131y = (byte) (this.f131y / b2);
        this.f132z = (byte) (this.f132z / b2);
    }

    public void mul(byte b2) {
        this.f130x = (byte) (this.f130x * b2);
        this.f131y = (byte) (this.f131y * b2);
        this.f132z = (byte) (this.f132z * b2);
    }

    public void sub(byte b2) {
        this.f130x = (byte) (this.f130x - b2);
        this.f131y = (byte) (this.f131y - b2);
        this.f132z = (byte) (this.f132z - b2);
    }

    public static Byte3 add(Byte3 byte3, byte b2) {
        Byte3 byte4 = new Byte3();
        byte4.f130x = (byte) (byte3.f130x + b2);
        byte4.f131y = (byte) (byte3.f131y + b2);
        byte4.f132z = (byte) (byte3.f132z + b2);
        return byte4;
    }

    public static Byte3 div(Byte3 byte3, byte b2) {
        Byte3 byte4 = new Byte3();
        byte4.f130x = (byte) (byte3.f130x / b2);
        byte4.f131y = (byte) (byte3.f131y / b2);
        byte4.f132z = (byte) (byte3.f132z / b2);
        return byte4;
    }

    public static Byte3 mul(Byte3 byte3, byte b2) {
        Byte3 byte4 = new Byte3();
        byte4.f130x = (byte) (byte3.f130x * b2);
        byte4.f131y = (byte) (byte3.f131y * b2);
        byte4.f132z = (byte) (byte3.f132z * b2);
        return byte4;
    }

    public static Byte3 sub(Byte3 byte3, byte b2) {
        Byte3 byte4 = new Byte3();
        byte4.f130x = (byte) (byte3.f130x - b2);
        byte4.f131y = (byte) (byte3.f131y - b2);
        byte4.f132z = (byte) (byte3.f132z - b2);
        return byte4;
    }
}
