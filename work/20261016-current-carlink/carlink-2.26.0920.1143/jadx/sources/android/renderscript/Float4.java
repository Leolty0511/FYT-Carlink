package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Float4 {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public float f151w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f152x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f153y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f154z;

    public Float4() {
    }

    public static Float4 add(Float4 float4, Float4 float5) {
        Float4 float6 = new Float4();
        float6.f152x = float4.f152x + float5.f152x;
        float6.f153y = float4.f153y + float5.f153y;
        float6.f154z = float4.f154z + float5.f154z;
        float6.f151w = float4.f151w + float5.f151w;
        return float6;
    }

    public void addAt(int i2, float f2) {
        if (i2 == 0) {
            this.f152x += f2;
            return;
        }
        if (i2 == 1) {
            this.f153y += f2;
        } else if (i2 == 2) {
            this.f154z += f2;
        } else {
            if (i2 != 3) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f151w += f2;
        }
    }

    public void addMultiple(Float4 float4, float f2) {
        this.f152x = (float4.f152x * f2) + this.f152x;
        this.f153y = (float4.f153y * f2) + this.f153y;
        this.f154z = (float4.f154z * f2) + this.f154z;
        this.f151w = (float4.f151w * f2) + this.f151w;
    }

    public void copyTo(float[] fArr, int i2) {
        fArr[i2] = this.f152x;
        fArr[i2 + 1] = this.f153y;
        fArr[i2 + 2] = this.f154z;
        fArr[i2 + 3] = this.f151w;
    }

    public void div(Float4 float4) {
        this.f152x /= float4.f152x;
        this.f153y /= float4.f153y;
        this.f154z /= float4.f154z;
        this.f151w /= float4.f151w;
    }

    public float dotProduct(Float4 float4) {
        return (this.f151w * float4.f151w) + (this.f154z * float4.f154z) + (this.f153y * float4.f153y) + (this.f152x * float4.f152x);
    }

    public float elementSum() {
        return this.f152x + this.f153y + this.f154z + this.f151w;
    }

    public float get(int i2) {
        if (i2 == 0) {
            return this.f152x;
        }
        if (i2 == 1) {
            return this.f153y;
        }
        if (i2 == 2) {
            return this.f154z;
        }
        if (i2 == 3) {
            return this.f151w;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public int length() {
        return 4;
    }

    public void mul(Float4 float4) {
        this.f152x *= float4.f152x;
        this.f153y *= float4.f153y;
        this.f154z *= float4.f154z;
        this.f151w *= float4.f151w;
    }

    public void negate() {
        this.f152x = -this.f152x;
        this.f153y = -this.f153y;
        this.f154z = -this.f154z;
        this.f151w = -this.f151w;
    }

    public void set(Float4 float4) {
        this.f152x = float4.f152x;
        this.f153y = float4.f153y;
        this.f154z = float4.f154z;
        this.f151w = float4.f151w;
    }

    public void setAt(int i2, float f2) {
        if (i2 == 0) {
            this.f152x = f2;
            return;
        }
        if (i2 == 1) {
            this.f153y = f2;
        } else if (i2 == 2) {
            this.f154z = f2;
        } else {
            if (i2 != 3) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f151w = f2;
        }
    }

    public void setValues(float f2, float f3, float f4, float f5) {
        this.f152x = f2;
        this.f153y = f3;
        this.f154z = f4;
        this.f151w = f5;
    }

    public void sub(Float4 float4) {
        this.f152x -= float4.f152x;
        this.f153y -= float4.f153y;
        this.f154z -= float4.f154z;
        this.f151w -= float4.f151w;
    }

    public Float4(Float4 float4) {
        this.f152x = float4.f152x;
        this.f153y = float4.f153y;
        this.f154z = float4.f154z;
        this.f151w = float4.f151w;
    }

    public static float dotProduct(Float4 float4, Float4 float5) {
        return (float5.f151w * float4.f151w) + (float5.f154z * float4.f154z) + (float5.f153y * float4.f153y) + (float5.f152x * float4.f152x);
    }

    public void div(float f2) {
        this.f152x /= f2;
        this.f153y /= f2;
        this.f154z /= f2;
        this.f151w /= f2;
    }

    public void mul(float f2) {
        this.f152x *= f2;
        this.f153y *= f2;
        this.f154z *= f2;
        this.f151w *= f2;
    }

    public void sub(float f2) {
        this.f152x -= f2;
        this.f153y -= f2;
        this.f154z -= f2;
        this.f151w -= f2;
    }

    public void add(Float4 float4) {
        this.f152x += float4.f152x;
        this.f153y += float4.f153y;
        this.f154z += float4.f154z;
        this.f151w += float4.f151w;
    }

    public Float4(float f2, float f3, float f4, float f5) {
        this.f152x = f2;
        this.f153y = f3;
        this.f154z = f4;
        this.f151w = f5;
    }

    public static Float4 div(Float4 float4, float f2) {
        Float4 float5 = new Float4();
        float5.f152x = float4.f152x / f2;
        float5.f153y = float4.f153y / f2;
        float5.f154z = float4.f154z / f2;
        float5.f151w = float4.f151w / f2;
        return float5;
    }

    public static Float4 mul(Float4 float4, Float4 float5) {
        Float4 float6 = new Float4();
        float6.f152x = float4.f152x * float5.f152x;
        float6.f153y = float4.f153y * float5.f153y;
        float6.f154z = float4.f154z * float5.f154z;
        float6.f151w = float4.f151w * float5.f151w;
        return float6;
    }

    public static Float4 sub(Float4 float4, float f2) {
        Float4 float5 = new Float4();
        float5.f152x = float4.f152x - f2;
        float5.f153y = float4.f153y - f2;
        float5.f154z = float4.f154z - f2;
        float5.f151w = float4.f151w - f2;
        return float5;
    }

    public void add(float f2) {
        this.f152x += f2;
        this.f153y += f2;
        this.f154z += f2;
        this.f151w += f2;
    }

    public static Float4 add(Float4 float4, float f2) {
        Float4 float5 = new Float4();
        float5.f152x = float4.f152x + f2;
        float5.f153y = float4.f153y + f2;
        float5.f154z = float4.f154z + f2;
        float5.f151w = float4.f151w + f2;
        return float5;
    }

    public static Float4 div(Float4 float4, Float4 float5) {
        Float4 float6 = new Float4();
        float6.f152x = float4.f152x / float5.f152x;
        float6.f153y = float4.f153y / float5.f153y;
        float6.f154z = float4.f154z / float5.f154z;
        float6.f151w = float4.f151w / float5.f151w;
        return float6;
    }

    public static Float4 mul(Float4 float4, float f2) {
        Float4 float5 = new Float4();
        float5.f152x = float4.f152x * f2;
        float5.f153y = float4.f153y * f2;
        float5.f154z = float4.f154z * f2;
        float5.f151w = float4.f151w * f2;
        return float5;
    }

    public static Float4 sub(Float4 float4, Float4 float5) {
        Float4 float6 = new Float4();
        float6.f152x = float4.f152x - float5.f152x;
        float6.f153y = float4.f153y - float5.f153y;
        float6.f154z = float4.f154z - float5.f154z;
        float6.f151w = float4.f151w - float5.f151w;
        return float6;
    }
}
