package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Double3 {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public double f139x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public double f140y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public double f141z;

    public Double3() {
    }

    public static Double3 add(Double3 double3, Double3 double4) {
        Double3 double5 = new Double3();
        double5.f139x = double3.f139x + double4.f139x;
        double5.f140y = double3.f140y + double4.f140y;
        double5.f141z = double3.f141z + double4.f141z;
        return double5;
    }

    public void addAt(int i2, double d2) {
        if (i2 == 0) {
            this.f139x += d2;
        } else if (i2 == 1) {
            this.f140y += d2;
        } else {
            if (i2 != 2) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f141z += d2;
        }
    }

    public void addMultiple(Double3 double3, double d2) {
        this.f139x = (double3.f139x * d2) + this.f139x;
        this.f140y = (double3.f140y * d2) + this.f140y;
        this.f141z = (double3.f141z * d2) + this.f141z;
    }

    public void copyTo(double[] dArr, int i2) {
        dArr[i2] = this.f139x;
        dArr[i2 + 1] = this.f140y;
        dArr[i2 + 2] = this.f141z;
    }

    public void div(Double3 double3) {
        this.f139x /= double3.f139x;
        this.f140y /= double3.f140y;
        this.f141z /= double3.f141z;
    }

    public double dotProduct(Double3 double3) {
        return (this.f141z * double3.f141z) + (this.f140y * double3.f140y) + (this.f139x * double3.f139x);
    }

    public double elementSum() {
        return this.f139x + this.f140y + this.f141z;
    }

    public double get(int i2) {
        if (i2 == 0) {
            return this.f139x;
        }
        if (i2 == 1) {
            return this.f140y;
        }
        if (i2 == 2) {
            return this.f141z;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public int length() {
        return 3;
    }

    public void mul(Double3 double3) {
        this.f139x *= double3.f139x;
        this.f140y *= double3.f140y;
        this.f141z *= double3.f141z;
    }

    public void negate() {
        this.f139x = -this.f139x;
        this.f140y = -this.f140y;
        this.f141z = -this.f141z;
    }

    public void set(Double3 double3) {
        this.f139x = double3.f139x;
        this.f140y = double3.f140y;
        this.f141z = double3.f141z;
    }

    public void setAt(int i2, double d2) {
        if (i2 == 0) {
            this.f139x = d2;
        } else if (i2 == 1) {
            this.f140y = d2;
        } else {
            if (i2 != 2) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f141z = d2;
        }
    }

    public void setValues(double d2, double d3, double d4) {
        this.f139x = d2;
        this.f140y = d3;
        this.f141z = d4;
    }

    public void sub(Double3 double3) {
        this.f139x -= double3.f139x;
        this.f140y -= double3.f140y;
        this.f141z -= double3.f141z;
    }

    public Double3(Double3 double3) {
        this.f139x = double3.f139x;
        this.f140y = double3.f140y;
        this.f141z = double3.f141z;
    }

    public static double dotProduct(Double3 double3, Double3 double4) {
        return (double4.f141z * double3.f141z) + (double4.f140y * double3.f140y) + (double4.f139x * double3.f139x);
    }

    public static Double3 div(Double3 double3, Double3 double4) {
        Double3 double5 = new Double3();
        double5.f139x = double3.f139x / double4.f139x;
        double5.f140y = double3.f140y / double4.f140y;
        double5.f141z = double3.f141z / double4.f141z;
        return double5;
    }

    public static Double3 mul(Double3 double3, Double3 double4) {
        Double3 double5 = new Double3();
        double5.f139x = double3.f139x * double4.f139x;
        double5.f140y = double3.f140y * double4.f140y;
        double5.f141z = double3.f141z * double4.f141z;
        return double5;
    }

    public static Double3 sub(Double3 double3, Double3 double4) {
        Double3 double5 = new Double3();
        double5.f139x = double3.f139x - double4.f139x;
        double5.f140y = double3.f140y - double4.f140y;
        double5.f141z = double3.f141z - double4.f141z;
        return double5;
    }

    public void add(Double3 double3) {
        this.f139x += double3.f139x;
        this.f140y += double3.f140y;
        this.f141z += double3.f141z;
    }

    public Double3(double d2, double d3, double d4) {
        this.f139x = d2;
        this.f140y = d3;
        this.f141z = d4;
    }

    public void add(double d2) {
        this.f139x += d2;
        this.f140y += d2;
        this.f141z += d2;
    }

    public void div(double d2) {
        this.f139x /= d2;
        this.f140y /= d2;
        this.f141z /= d2;
    }

    public void mul(double d2) {
        this.f139x *= d2;
        this.f140y *= d2;
        this.f141z *= d2;
    }

    public void sub(double d2) {
        this.f139x -= d2;
        this.f140y -= d2;
        this.f141z -= d2;
    }

    public static Double3 add(Double3 double3, double d2) {
        Double3 double4 = new Double3();
        double4.f139x = double3.f139x + d2;
        double4.f140y = double3.f140y + d2;
        double4.f141z = double3.f141z + d2;
        return double4;
    }

    public static Double3 div(Double3 double3, double d2) {
        Double3 double4 = new Double3();
        double4.f139x = double3.f139x / d2;
        double4.f140y = double3.f140y / d2;
        double4.f141z = double3.f141z / d2;
        return double4;
    }

    public static Double3 mul(Double3 double3, double d2) {
        Double3 double4 = new Double3();
        double4.f139x = double3.f139x * d2;
        double4.f140y = double3.f140y * d2;
        double4.f141z = double3.f141z * d2;
        return double4;
    }

    public static Double3 sub(Double3 double3, double d2) {
        Double3 double4 = new Double3();
        double4.f139x = double3.f139x - d2;
        double4.f140y = double3.f140y - d2;
        double4.f141z = double3.f141z - d2;
        return double4;
    }
}
