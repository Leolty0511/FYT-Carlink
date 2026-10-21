package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Double4 {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public double f142w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public double f143x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public double f144y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public double f145z;

    public Double4() {
    }

    public static Double4 add(Double4 double4, Double4 double5) {
        Double4 double6 = new Double4();
        double6.f143x = double4.f143x + double5.f143x;
        double6.f144y = double4.f144y + double5.f144y;
        double6.f145z = double4.f145z + double5.f145z;
        double6.f142w = double4.f142w + double5.f142w;
        return double6;
    }

    public void addAt(int i2, double d2) {
        if (i2 == 0) {
            this.f143x += d2;
            return;
        }
        if (i2 == 1) {
            this.f144y += d2;
        } else if (i2 == 2) {
            this.f145z += d2;
        } else {
            if (i2 != 3) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f142w += d2;
        }
    }

    public void addMultiple(Double4 double4, double d2) {
        this.f143x = (double4.f143x * d2) + this.f143x;
        this.f144y = (double4.f144y * d2) + this.f144y;
        this.f145z = (double4.f145z * d2) + this.f145z;
        this.f142w = (double4.f142w * d2) + this.f142w;
    }

    public void copyTo(double[] dArr, int i2) {
        dArr[i2] = this.f143x;
        dArr[i2 + 1] = this.f144y;
        dArr[i2 + 2] = this.f145z;
        dArr[i2 + 3] = this.f142w;
    }

    public void div(Double4 double4) {
        this.f143x /= double4.f143x;
        this.f144y /= double4.f144y;
        this.f145z /= double4.f145z;
        this.f142w /= double4.f142w;
    }

    public double dotProduct(Double4 double4) {
        return (this.f142w * double4.f142w) + (this.f145z * double4.f145z) + (this.f144y * double4.f144y) + (this.f143x * double4.f143x);
    }

    public double elementSum() {
        return this.f143x + this.f144y + this.f145z + this.f142w;
    }

    public double get(int i2) {
        if (i2 == 0) {
            return this.f143x;
        }
        if (i2 == 1) {
            return this.f144y;
        }
        if (i2 == 2) {
            return this.f145z;
        }
        if (i2 == 3) {
            return this.f142w;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public int length() {
        return 4;
    }

    public void mul(Double4 double4) {
        this.f143x *= double4.f143x;
        this.f144y *= double4.f144y;
        this.f145z *= double4.f145z;
        this.f142w *= double4.f142w;
    }

    public void negate() {
        this.f143x = -this.f143x;
        this.f144y = -this.f144y;
        this.f145z = -this.f145z;
        this.f142w = -this.f142w;
    }

    public void set(Double4 double4) {
        this.f143x = double4.f143x;
        this.f144y = double4.f144y;
        this.f145z = double4.f145z;
        this.f142w = double4.f142w;
    }

    public void setAt(int i2, double d2) {
        if (i2 == 0) {
            this.f143x = d2;
            return;
        }
        if (i2 == 1) {
            this.f144y = d2;
        } else if (i2 == 2) {
            this.f145z = d2;
        } else {
            if (i2 != 3) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f142w = d2;
        }
    }

    public void setValues(double d2, double d3, double d4, double d5) {
        this.f143x = d2;
        this.f144y = d3;
        this.f145z = d4;
        this.f142w = d5;
    }

    public void sub(Double4 double4) {
        this.f143x -= double4.f143x;
        this.f144y -= double4.f144y;
        this.f145z -= double4.f145z;
        this.f142w -= double4.f142w;
    }

    public Double4(Double4 double4) {
        this.f143x = double4.f143x;
        this.f144y = double4.f144y;
        this.f145z = double4.f145z;
        this.f142w = double4.f142w;
    }

    public static double dotProduct(Double4 double4, Double4 double5) {
        return (double5.f142w * double4.f142w) + (double5.f145z * double4.f145z) + (double5.f144y * double4.f144y) + (double5.f143x * double4.f143x);
    }

    public void div(double d2) {
        this.f143x /= d2;
        this.f144y /= d2;
        this.f145z /= d2;
        this.f142w /= d2;
    }

    public void mul(double d2) {
        this.f143x *= d2;
        this.f144y *= d2;
        this.f145z *= d2;
        this.f142w *= d2;
    }

    public void sub(double d2) {
        this.f143x -= d2;
        this.f144y -= d2;
        this.f145z -= d2;
        this.f142w -= d2;
    }

    public void add(Double4 double4) {
        this.f143x += double4.f143x;
        this.f144y += double4.f144y;
        this.f145z += double4.f145z;
        this.f142w += double4.f142w;
    }

    public Double4(double d2, double d3, double d4, double d5) {
        this.f143x = d2;
        this.f144y = d3;
        this.f145z = d4;
        this.f142w = d5;
    }

    public static Double4 div(Double4 double4, double d2) {
        Double4 double5 = new Double4();
        double5.f143x = double4.f143x / d2;
        double5.f144y = double4.f144y / d2;
        double5.f145z = double4.f145z / d2;
        double5.f142w = double4.f142w / d2;
        return double5;
    }

    public static Double4 mul(Double4 double4, Double4 double5) {
        Double4 double6 = new Double4();
        double6.f143x = double4.f143x * double5.f143x;
        double6.f144y = double4.f144y * double5.f144y;
        double6.f145z = double4.f145z * double5.f145z;
        double6.f142w = double4.f142w * double5.f142w;
        return double6;
    }

    public static Double4 sub(Double4 double4, double d2) {
        Double4 double5 = new Double4();
        double5.f143x = double4.f143x - d2;
        double5.f144y = double4.f144y - d2;
        double5.f145z = double4.f145z - d2;
        double5.f142w = double4.f142w - d2;
        return double5;
    }

    public void add(double d2) {
        this.f143x += d2;
        this.f144y += d2;
        this.f145z += d2;
        this.f142w += d2;
    }

    public static Double4 add(Double4 double4, double d2) {
        Double4 double5 = new Double4();
        double5.f143x = double4.f143x + d2;
        double5.f144y = double4.f144y + d2;
        double5.f145z = double4.f145z + d2;
        double5.f142w = double4.f142w + d2;
        return double5;
    }

    public static Double4 div(Double4 double4, Double4 double5) {
        Double4 double6 = new Double4();
        double6.f143x = double4.f143x / double5.f143x;
        double6.f144y = double4.f144y / double5.f144y;
        double6.f145z = double4.f145z / double5.f145z;
        double6.f142w = double4.f142w / double5.f142w;
        return double6;
    }

    public static Double4 mul(Double4 double4, double d2) {
        Double4 double5 = new Double4();
        double5.f143x = double4.f143x * d2;
        double5.f144y = double4.f144y * d2;
        double5.f145z = double4.f145z * d2;
        double5.f142w = double4.f142w * d2;
        return double5;
    }

    public static Double4 sub(Double4 double4, Double4 double5) {
        Double4 double6 = new Double4();
        double6.f143x = double4.f143x - double5.f143x;
        double6.f144y = double4.f144y - double5.f144y;
        double6.f145z = double4.f145z - double5.f145z;
        double6.f142w = double4.f142w - double5.f142w;
        return double6;
    }
}
