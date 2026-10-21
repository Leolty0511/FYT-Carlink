package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Double2 {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public double f137x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public double f138y;

    public Double2() {
    }

    public static Double2 add(Double2 double2, Double2 double3) {
        Double2 double4 = new Double2();
        double4.f137x = double2.f137x + double3.f137x;
        double4.f138y = double2.f138y + double3.f138y;
        return double4;
    }

    public void addAt(int i2, double d2) {
        if (i2 == 0) {
            this.f137x += d2;
        } else {
            if (i2 != 1) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f138y += d2;
        }
    }

    public void addMultiple(Double2 double2, double d2) {
        this.f137x = (double2.f137x * d2) + this.f137x;
        this.f138y = (double2.f138y * d2) + this.f138y;
    }

    public void copyTo(double[] dArr, int i2) {
        dArr[i2] = this.f137x;
        dArr[i2 + 1] = this.f138y;
    }

    public void div(Double2 double2) {
        this.f137x /= double2.f137x;
        this.f138y /= double2.f138y;
    }

    public double dotProduct(Double2 double2) {
        return (this.f138y * double2.f138y) + (this.f137x * double2.f137x);
    }

    public double elementSum() {
        return this.f137x + this.f138y;
    }

    public double get(int i2) {
        if (i2 == 0) {
            return this.f137x;
        }
        if (i2 == 1) {
            return this.f138y;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public int length() {
        return 2;
    }

    public void mul(Double2 double2) {
        this.f137x *= double2.f137x;
        this.f138y *= double2.f138y;
    }

    public void negate() {
        this.f137x = -this.f137x;
        this.f138y = -this.f138y;
    }

    public void set(Double2 double2) {
        this.f137x = double2.f137x;
        this.f138y = double2.f138y;
    }

    public void setAt(int i2, double d2) {
        if (i2 == 0) {
            this.f137x = d2;
        } else {
            if (i2 != 1) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f138y = d2;
        }
    }

    public void setValues(double d2, double d3) {
        this.f137x = d2;
        this.f138y = d3;
    }

    public void sub(Double2 double2) {
        this.f137x -= double2.f137x;
        this.f138y -= double2.f138y;
    }

    public Double2(Double2 double2) {
        this.f137x = double2.f137x;
        this.f138y = double2.f138y;
    }

    public static Double dotProduct(Double2 double2, Double2 double3) {
        return Double.valueOf((double3.f138y * double2.f138y) + (double3.f137x * double2.f137x));
    }

    public static Double2 div(Double2 double2, Double2 double3) {
        Double2 double4 = new Double2();
        double4.f137x = double2.f137x / double3.f137x;
        double4.f138y = double2.f138y / double3.f138y;
        return double4;
    }

    public static Double2 mul(Double2 double2, Double2 double3) {
        Double2 double4 = new Double2();
        double4.f137x = double2.f137x * double3.f137x;
        double4.f138y = double2.f138y * double3.f138y;
        return double4;
    }

    public static Double2 sub(Double2 double2, Double2 double3) {
        Double2 double4 = new Double2();
        double4.f137x = double2.f137x - double3.f137x;
        double4.f138y = double2.f138y - double3.f138y;
        return double4;
    }

    public void add(Double2 double2) {
        this.f137x += double2.f137x;
        this.f138y += double2.f138y;
    }

    public Double2(double d2, double d3) {
        this.f137x = d2;
        this.f138y = d3;
    }

    public void add(double d2) {
        this.f137x += d2;
        this.f138y += d2;
    }

    public void div(double d2) {
        this.f137x /= d2;
        this.f138y /= d2;
    }

    public void mul(double d2) {
        this.f137x *= d2;
        this.f138y *= d2;
    }

    public void sub(double d2) {
        this.f137x -= d2;
        this.f138y -= d2;
    }

    public static Double2 add(Double2 double2, double d2) {
        Double2 double3 = new Double2();
        double3.f137x = double2.f137x + d2;
        double3.f138y = double2.f138y + d2;
        return double3;
    }

    public static Double2 div(Double2 double2, double d2) {
        Double2 double3 = new Double2();
        double3.f137x = double2.f137x / d2;
        double3.f138y = double2.f138y / d2;
        return double3;
    }

    public static Double2 mul(Double2 double2, double d2) {
        Double2 double3 = new Double2();
        double3.f137x = double2.f137x * d2;
        double3.f138y = double2.f138y * d2;
        return double3;
    }

    public static Double2 sub(Double2 double2, double d2) {
        Double2 double3 = new Double2();
        double3.f137x = double2.f137x - d2;
        double3.f138y = double2.f138y - d2;
        return double3;
    }
}
