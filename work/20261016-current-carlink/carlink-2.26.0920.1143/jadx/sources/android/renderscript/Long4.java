package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Long4 {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public long f169w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f170x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long f171y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public long f172z;

    public Long4() {
    }

    public void add(Long4 long4) {
        this.f170x += long4.f170x;
        this.f171y += long4.f171y;
        this.f172z += long4.f172z;
        this.f169w += long4.f169w;
    }

    public void addAt(int i2, long j2) {
        if (i2 == 0) {
            this.f170x += j2;
            return;
        }
        if (i2 == 1) {
            this.f171y += j2;
        } else if (i2 == 2) {
            this.f172z += j2;
        } else {
            if (i2 != 3) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f169w += j2;
        }
    }

    public void addMultiple(Long4 long4, long j2) {
        this.f170x = (long4.f170x * j2) + this.f170x;
        this.f171y = (long4.f171y * j2) + this.f171y;
        this.f172z = (long4.f172z * j2) + this.f172z;
        this.f169w = (long4.f169w * j2) + this.f169w;
    }

    public void copyTo(long[] jArr, int i2) {
        jArr[i2] = this.f170x;
        jArr[i2 + 1] = this.f171y;
        jArr[i2 + 2] = this.f172z;
        jArr[i2 + 3] = this.f169w;
    }

    public void div(Long4 long4) {
        this.f170x /= long4.f170x;
        this.f171y /= long4.f171y;
        this.f172z /= long4.f172z;
        this.f169w /= long4.f169w;
    }

    public long dotProduct(Long4 long4) {
        return (this.f169w * long4.f169w) + (this.f172z * long4.f172z) + (this.f171y * long4.f171y) + (this.f170x * long4.f170x);
    }

    public long elementSum() {
        return this.f170x + this.f171y + this.f172z + this.f169w;
    }

    public long get(int i2) {
        if (i2 == 0) {
            return this.f170x;
        }
        if (i2 == 1) {
            return this.f171y;
        }
        if (i2 == 2) {
            return this.f172z;
        }
        if (i2 == 3) {
            return this.f169w;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public long length() {
        return 4L;
    }

    public void mod(Long4 long4) {
        this.f170x %= long4.f170x;
        this.f171y %= long4.f171y;
        this.f172z %= long4.f172z;
        this.f169w %= long4.f169w;
    }

    public void mul(Long4 long4) {
        this.f170x *= long4.f170x;
        this.f171y *= long4.f171y;
        this.f172z *= long4.f172z;
        this.f169w *= long4.f169w;
    }

    public void negate() {
        this.f170x = -this.f170x;
        this.f171y = -this.f171y;
        this.f172z = -this.f172z;
        this.f169w = -this.f169w;
    }

    public void set(Long4 long4) {
        this.f170x = long4.f170x;
        this.f171y = long4.f171y;
        this.f172z = long4.f172z;
        this.f169w = long4.f169w;
    }

    public void setAt(int i2, long j2) {
        if (i2 == 0) {
            this.f170x = j2;
            return;
        }
        if (i2 == 1) {
            this.f171y = j2;
        } else if (i2 == 2) {
            this.f172z = j2;
        } else {
            if (i2 != 3) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f169w = j2;
        }
    }

    public void setValues(long j2, long j3, long j4, long j5) {
        this.f170x = j2;
        this.f171y = j3;
        this.f172z = j4;
        this.f169w = j5;
    }

    public void sub(Long4 long4) {
        this.f170x -= long4.f170x;
        this.f171y -= long4.f171y;
        this.f172z -= long4.f172z;
        this.f169w -= long4.f169w;
    }

    public Long4(long j2) {
        this.f169w = j2;
        this.f172z = j2;
        this.f171y = j2;
        this.f170x = j2;
    }

    public static long dotProduct(Long4 long4, Long4 long5) {
        return (long5.f169w * long4.f169w) + (long5.f172z * long4.f172z) + (long5.f171y * long4.f171y) + (long5.f170x * long4.f170x);
    }

    public Long4(long j2, long j3, long j4, long j5) {
        this.f170x = j2;
        this.f171y = j3;
        this.f172z = j4;
        this.f169w = j5;
    }

    public static Long4 add(Long4 long4, Long4 long5) {
        Long4 long6 = new Long4();
        long6.f170x = long4.f170x + long5.f170x;
        long6.f171y = long4.f171y + long5.f171y;
        long6.f172z = long4.f172z + long5.f172z;
        long6.f169w = long4.f169w + long5.f169w;
        return long6;
    }

    public static Long4 div(Long4 long4, Long4 long5) {
        Long4 long6 = new Long4();
        long6.f170x = long4.f170x / long5.f170x;
        long6.f171y = long4.f171y / long5.f171y;
        long6.f172z = long4.f172z / long5.f172z;
        long6.f169w = long4.f169w / long5.f169w;
        return long6;
    }

    public static Long4 mod(Long4 long4, Long4 long5) {
        Long4 long6 = new Long4();
        long6.f170x = long4.f170x % long5.f170x;
        long6.f171y = long4.f171y % long5.f171y;
        long6.f172z = long4.f172z % long5.f172z;
        long6.f169w = long4.f169w % long5.f169w;
        return long6;
    }

    public static Long4 mul(Long4 long4, Long4 long5) {
        Long4 long6 = new Long4();
        long6.f170x = long4.f170x * long5.f170x;
        long6.f171y = long4.f171y * long5.f171y;
        long6.f172z = long4.f172z * long5.f172z;
        long6.f169w = long4.f169w * long5.f169w;
        return long6;
    }

    public static Long4 sub(Long4 long4, Long4 long5) {
        Long4 long6 = new Long4();
        long6.f170x = long4.f170x - long5.f170x;
        long6.f171y = long4.f171y - long5.f171y;
        long6.f172z = long4.f172z - long5.f172z;
        long6.f169w = long4.f169w - long5.f169w;
        return long6;
    }

    public Long4(Long4 long4) {
        this.f170x = long4.f170x;
        this.f171y = long4.f171y;
        this.f172z = long4.f172z;
        this.f169w = long4.f169w;
    }

    public void add(long j2) {
        this.f170x += j2;
        this.f171y += j2;
        this.f172z += j2;
        this.f169w += j2;
    }

    public void div(long j2) {
        this.f170x /= j2;
        this.f171y /= j2;
        this.f172z /= j2;
        this.f169w /= j2;
    }

    public void mod(long j2) {
        this.f170x %= j2;
        this.f171y %= j2;
        this.f172z %= j2;
        this.f169w %= j2;
    }

    public void mul(long j2) {
        this.f170x *= j2;
        this.f171y *= j2;
        this.f172z *= j2;
        this.f169w *= j2;
    }

    public void sub(long j2) {
        this.f170x -= j2;
        this.f171y -= j2;
        this.f172z -= j2;
        this.f169w -= j2;
    }

    public static Long4 add(Long4 long4, long j2) {
        Long4 long5 = new Long4();
        long5.f170x = long4.f170x + j2;
        long5.f171y = long4.f171y + j2;
        long5.f172z = long4.f172z + j2;
        long5.f169w = long4.f169w + j2;
        return long5;
    }

    public static Long4 div(Long4 long4, long j2) {
        Long4 long5 = new Long4();
        long5.f170x = long4.f170x / j2;
        long5.f171y = long4.f171y / j2;
        long5.f172z = long4.f172z / j2;
        long5.f169w = long4.f169w / j2;
        return long5;
    }

    public static Long4 mod(Long4 long4, long j2) {
        Long4 long5 = new Long4();
        long5.f170x = long4.f170x % j2;
        long5.f171y = long4.f171y % j2;
        long5.f172z = long4.f172z % j2;
        long5.f169w = long4.f169w % j2;
        return long5;
    }

    public static Long4 mul(Long4 long4, long j2) {
        Long4 long5 = new Long4();
        long5.f170x = long4.f170x * j2;
        long5.f171y = long4.f171y * j2;
        long5.f172z = long4.f172z * j2;
        long5.f169w = long4.f169w * j2;
        return long5;
    }

    public static Long4 sub(Long4 long4, long j2) {
        Long4 long5 = new Long4();
        long5.f170x = long4.f170x - j2;
        long5.f171y = long4.f171y - j2;
        long5.f172z = long4.f172z - j2;
        long5.f169w = long4.f169w - j2;
        return long5;
    }
}
