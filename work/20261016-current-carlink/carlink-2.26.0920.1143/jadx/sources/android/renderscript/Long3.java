package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Long3 {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f166x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long f167y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f168z;

    public Long3() {
    }

    public void add(Long3 long3) {
        this.f166x += long3.f166x;
        this.f167y += long3.f167y;
        this.f168z += long3.f168z;
    }

    public void addAt(int i2, long j2) {
        if (i2 == 0) {
            this.f166x += j2;
        } else if (i2 == 1) {
            this.f167y += j2;
        } else {
            if (i2 != 2) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f168z += j2;
        }
    }

    public void addMultiple(Long3 long3, long j2) {
        this.f166x = (long3.f166x * j2) + this.f166x;
        this.f167y = (long3.f167y * j2) + this.f167y;
        this.f168z = (long3.f168z * j2) + this.f168z;
    }

    public void copyTo(long[] jArr, int i2) {
        jArr[i2] = this.f166x;
        jArr[i2 + 1] = this.f167y;
        jArr[i2 + 2] = this.f168z;
    }

    public void div(Long3 long3) {
        this.f166x /= long3.f166x;
        this.f167y /= long3.f167y;
        this.f168z /= long3.f168z;
    }

    public long dotProduct(Long3 long3) {
        return (this.f168z * long3.f168z) + (this.f167y * long3.f167y) + (this.f166x * long3.f166x);
    }

    public long elementSum() {
        return this.f166x + this.f167y + this.f168z;
    }

    public long get(int i2) {
        if (i2 == 0) {
            return this.f166x;
        }
        if (i2 == 1) {
            return this.f167y;
        }
        if (i2 == 2) {
            return this.f168z;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public long length() {
        return 3L;
    }

    public void mod(Long3 long3) {
        this.f166x %= long3.f166x;
        this.f167y %= long3.f167y;
        this.f168z %= long3.f168z;
    }

    public void mul(Long3 long3) {
        this.f166x *= long3.f166x;
        this.f167y *= long3.f167y;
        this.f168z *= long3.f168z;
    }

    public void negate() {
        this.f166x = -this.f166x;
        this.f167y = -this.f167y;
        this.f168z = -this.f168z;
    }

    public void set(Long3 long3) {
        this.f166x = long3.f166x;
        this.f167y = long3.f167y;
        this.f168z = long3.f168z;
    }

    public void setAt(int i2, long j2) {
        if (i2 == 0) {
            this.f166x = j2;
        } else if (i2 == 1) {
            this.f167y = j2;
        } else {
            if (i2 != 2) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f168z = j2;
        }
    }

    public void setValues(long j2, long j3, long j4) {
        this.f166x = j2;
        this.f167y = j3;
        this.f168z = j4;
    }

    public void sub(Long3 long3) {
        this.f166x -= long3.f166x;
        this.f167y -= long3.f167y;
        this.f168z -= long3.f168z;
    }

    public Long3(long j2) {
        this.f168z = j2;
        this.f167y = j2;
        this.f166x = j2;
    }

    public static long dotProduct(Long3 long3, Long3 long4) {
        return (long4.f168z * long3.f168z) + (long4.f167y * long3.f167y) + (long4.f166x * long3.f166x);
    }

    public Long3(long j2, long j3, long j4) {
        this.f166x = j2;
        this.f167y = j3;
        this.f168z = j4;
    }

    public static Long3 add(Long3 long3, Long3 long4) {
        Long3 long5 = new Long3();
        long5.f166x = long3.f166x + long4.f166x;
        long5.f167y = long3.f167y + long4.f167y;
        long5.f168z = long3.f168z + long4.f168z;
        return long5;
    }

    public static Long3 div(Long3 long3, Long3 long4) {
        Long3 long5 = new Long3();
        long5.f166x = long3.f166x / long4.f166x;
        long5.f167y = long3.f167y / long4.f167y;
        long5.f168z = long3.f168z / long4.f168z;
        return long5;
    }

    public static Long3 mod(Long3 long3, Long3 long4) {
        Long3 long5 = new Long3();
        long5.f166x = long3.f166x % long4.f166x;
        long5.f167y = long3.f167y % long4.f167y;
        long5.f168z = long3.f168z % long4.f168z;
        return long5;
    }

    public static Long3 mul(Long3 long3, Long3 long4) {
        Long3 long5 = new Long3();
        long5.f166x = long3.f166x * long4.f166x;
        long5.f167y = long3.f167y * long4.f167y;
        long5.f168z = long3.f168z * long4.f168z;
        return long5;
    }

    public static Long3 sub(Long3 long3, Long3 long4) {
        Long3 long5 = new Long3();
        long5.f166x = long3.f166x - long4.f166x;
        long5.f167y = long3.f167y - long4.f167y;
        long5.f168z = long3.f168z - long4.f168z;
        return long5;
    }

    public Long3(Long3 long3) {
        this.f166x = long3.f166x;
        this.f167y = long3.f167y;
        this.f168z = long3.f168z;
    }

    public void add(long j2) {
        this.f166x += j2;
        this.f167y += j2;
        this.f168z += j2;
    }

    public void div(long j2) {
        this.f166x /= j2;
        this.f167y /= j2;
        this.f168z /= j2;
    }

    public void mod(long j2) {
        this.f166x %= j2;
        this.f167y %= j2;
        this.f168z %= j2;
    }

    public void mul(long j2) {
        this.f166x *= j2;
        this.f167y *= j2;
        this.f168z *= j2;
    }

    public void sub(long j2) {
        this.f166x -= j2;
        this.f167y -= j2;
        this.f168z -= j2;
    }

    public static Long3 add(Long3 long3, long j2) {
        Long3 long4 = new Long3();
        long4.f166x = long3.f166x + j2;
        long4.f167y = long3.f167y + j2;
        long4.f168z = long3.f168z + j2;
        return long4;
    }

    public static Long3 div(Long3 long3, long j2) {
        Long3 long4 = new Long3();
        long4.f166x = long3.f166x / j2;
        long4.f167y = long3.f167y / j2;
        long4.f168z = long3.f168z / j2;
        return long4;
    }

    public static Long3 mod(Long3 long3, long j2) {
        Long3 long4 = new Long3();
        long4.f166x = long3.f166x % j2;
        long4.f167y = long3.f167y % j2;
        long4.f168z = long3.f168z % j2;
        return long4;
    }

    public static Long3 mul(Long3 long3, long j2) {
        Long3 long4 = new Long3();
        long4.f166x = long3.f166x * j2;
        long4.f167y = long3.f167y * j2;
        long4.f168z = long3.f168z * j2;
        return long4;
    }

    public static Long3 sub(Long3 long3, long j2) {
        Long3 long4 = new Long3();
        long4.f166x = long3.f166x - j2;
        long4.f167y = long3.f167y - j2;
        long4.f168z = long3.f168z - j2;
        return long4;
    }
}
