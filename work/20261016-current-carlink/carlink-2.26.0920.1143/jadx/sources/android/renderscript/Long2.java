package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Long2 {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f164x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public long f165y;

    public Long2() {
    }

    public void add(Long2 long2) {
        this.f164x += long2.f164x;
        this.f165y += long2.f165y;
    }

    public void addAt(int i2, long j2) {
        if (i2 == 0) {
            this.f164x += j2;
        } else {
            if (i2 != 1) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f165y += j2;
        }
    }

    public void addMultiple(Long2 long2, long j2) {
        this.f164x = (long2.f164x * j2) + this.f164x;
        this.f165y = (long2.f165y * j2) + this.f165y;
    }

    public void copyTo(long[] jArr, int i2) {
        jArr[i2] = this.f164x;
        jArr[i2 + 1] = this.f165y;
    }

    public void div(Long2 long2) {
        this.f164x /= long2.f164x;
        this.f165y /= long2.f165y;
    }

    public long dotProduct(Long2 long2) {
        return (this.f165y * long2.f165y) + (this.f164x * long2.f164x);
    }

    public long elementSum() {
        return this.f164x + this.f165y;
    }

    public long get(int i2) {
        if (i2 == 0) {
            return this.f164x;
        }
        if (i2 == 1) {
            return this.f165y;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public long length() {
        return 2L;
    }

    public void mod(Long2 long2) {
        this.f164x %= long2.f164x;
        this.f165y %= long2.f165y;
    }

    public void mul(Long2 long2) {
        this.f164x *= long2.f164x;
        this.f165y *= long2.f165y;
    }

    public void negate() {
        this.f164x = -this.f164x;
        this.f165y = -this.f165y;
    }

    public void set(Long2 long2) {
        this.f164x = long2.f164x;
        this.f165y = long2.f165y;
    }

    public void setAt(int i2, long j2) {
        if (i2 == 0) {
            this.f164x = j2;
        } else {
            if (i2 != 1) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f165y = j2;
        }
    }

    public void setValues(long j2, long j3) {
        this.f164x = j2;
        this.f165y = j3;
    }

    public void sub(Long2 long2) {
        this.f164x -= long2.f164x;
        this.f165y -= long2.f165y;
    }

    public Long2(long j2) {
        this.f165y = j2;
        this.f164x = j2;
    }

    public static long dotProduct(Long2 long2, Long2 long3) {
        return (long3.f165y * long2.f165y) + (long3.f164x * long2.f164x);
    }

    public static Long2 add(Long2 long2, Long2 long3) {
        Long2 long4 = new Long2();
        long4.f164x = long2.f164x + long3.f164x;
        long4.f165y = long2.f165y + long3.f165y;
        return long4;
    }

    public static Long2 div(Long2 long2, Long2 long3) {
        Long2 long4 = new Long2();
        long4.f164x = long2.f164x / long3.f164x;
        long4.f165y = long2.f165y / long3.f165y;
        return long4;
    }

    public static Long2 mod(Long2 long2, Long2 long3) {
        Long2 long4 = new Long2();
        long4.f164x = long2.f164x % long3.f164x;
        long4.f165y = long2.f165y % long3.f165y;
        return long4;
    }

    public static Long2 mul(Long2 long2, Long2 long3) {
        Long2 long4 = new Long2();
        long4.f164x = long2.f164x * long3.f164x;
        long4.f165y = long2.f165y * long3.f165y;
        return long4;
    }

    public static Long2 sub(Long2 long2, Long2 long3) {
        Long2 long4 = new Long2();
        long4.f164x = long2.f164x - long3.f164x;
        long4.f165y = long2.f165y - long3.f165y;
        return long4;
    }

    public Long2(long j2, long j3) {
        this.f164x = j2;
        this.f165y = j3;
    }

    public void add(long j2) {
        this.f164x += j2;
        this.f165y += j2;
    }

    public void div(long j2) {
        this.f164x /= j2;
        this.f165y /= j2;
    }

    public void mod(long j2) {
        this.f164x %= j2;
        this.f165y %= j2;
    }

    public void mul(long j2) {
        this.f164x *= j2;
        this.f165y *= j2;
    }

    public void sub(long j2) {
        this.f164x -= j2;
        this.f165y -= j2;
    }

    public Long2(Long2 long2) {
        this.f164x = long2.f164x;
        this.f165y = long2.f165y;
    }

    public static Long2 add(Long2 long2, long j2) {
        Long2 long3 = new Long2();
        long3.f164x = long2.f164x + j2;
        long3.f165y = long2.f165y + j2;
        return long3;
    }

    public static Long2 div(Long2 long2, long j2) {
        Long2 long3 = new Long2();
        long3.f164x = long2.f164x / j2;
        long3.f165y = long2.f165y / j2;
        return long3;
    }

    public static Long2 mod(Long2 long2, long j2) {
        Long2 long3 = new Long2();
        long3.f164x = long2.f164x % j2;
        long3.f165y = long2.f165y % j2;
        return long3;
    }

    public static Long2 mul(Long2 long2, long j2) {
        Long2 long3 = new Long2();
        long3.f164x = long2.f164x * j2;
        long3.f165y = long2.f165y * j2;
        return long3;
    }

    public static Long2 sub(Long2 long2, long j2) {
        Long2 long3 = new Long2();
        long3.f164x = long2.f164x - j2;
        long3.f165y = long2.f165y - j2;
        return long3;
    }
}
