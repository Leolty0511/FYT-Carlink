package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Float3 {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f148x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f149y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f150z;

    public Float3() {
    }

    public static Float3 add(Float3 float3, Float3 float4) {
        Float3 float5 = new Float3();
        float5.f148x = float3.f148x + float4.f148x;
        float5.f149y = float3.f149y + float4.f149y;
        float5.f150z = float3.f150z + float4.f150z;
        return float5;
    }

    public void addAt(int i2, float f2) {
        if (i2 == 0) {
            this.f148x += f2;
        } else if (i2 == 1) {
            this.f149y += f2;
        } else {
            if (i2 != 2) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f150z += f2;
        }
    }

    public void addMultiple(Float3 float3, float f2) {
        this.f148x = (float3.f148x * f2) + this.f148x;
        this.f149y = (float3.f149y * f2) + this.f149y;
        this.f150z = (float3.f150z * f2) + this.f150z;
    }

    public void copyTo(float[] fArr, int i2) {
        fArr[i2] = this.f148x;
        fArr[i2 + 1] = this.f149y;
        fArr[i2 + 2] = this.f150z;
    }

    public void div(Float3 float3) {
        this.f148x /= float3.f148x;
        this.f149y /= float3.f149y;
        this.f150z /= float3.f150z;
    }

    public Float dotProduct(Float3 float3) {
        return new Float((this.f150z * float3.f150z) + (this.f149y * float3.f149y) + (this.f148x * float3.f148x));
    }

    public Float elementSum() {
        return new Float(this.f148x + this.f149y + this.f150z);
    }

    public float get(int i2) {
        if (i2 == 0) {
            return this.f148x;
        }
        if (i2 == 1) {
            return this.f149y;
        }
        if (i2 == 2) {
            return this.f150z;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public int length() {
        return 3;
    }

    public void mul(Float3 float3) {
        this.f148x *= float3.f148x;
        this.f149y *= float3.f149y;
        this.f150z *= float3.f150z;
    }

    public void negate() {
        this.f148x = -this.f148x;
        this.f149y = -this.f149y;
        this.f150z = -this.f150z;
    }

    public void set(Float3 float3) {
        this.f148x = float3.f148x;
        this.f149y = float3.f149y;
        this.f150z = float3.f150z;
    }

    public void setAt(int i2, float f2) {
        if (i2 == 0) {
            this.f148x = f2;
        } else if (i2 == 1) {
            this.f149y = f2;
        } else {
            if (i2 != 2) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f150z = f2;
        }
    }

    public void setValues(float f2, float f3, float f4) {
        this.f148x = f2;
        this.f149y = f3;
        this.f150z = f4;
    }

    public void sub(Float3 float3) {
        this.f148x -= float3.f148x;
        this.f149y -= float3.f149y;
        this.f150z -= float3.f150z;
    }

    public Float3(Float3 float3) {
        this.f148x = float3.f148x;
        this.f149y = float3.f149y;
        this.f150z = float3.f150z;
    }

    public static Float dotProduct(Float3 float3, Float3 float4) {
        return new Float((float4.f150z * float3.f150z) + (float4.f149y * float3.f149y) + (float4.f148x * float3.f148x));
    }

    public static Float3 div(Float3 float3, Float3 float4) {
        Float3 float5 = new Float3();
        float5.f148x = float3.f148x / float4.f148x;
        float5.f149y = float3.f149y / float4.f149y;
        float5.f150z = float3.f150z / float4.f150z;
        return float5;
    }

    public static Float3 mul(Float3 float3, Float3 float4) {
        Float3 float5 = new Float3();
        float5.f148x = float3.f148x * float4.f148x;
        float5.f149y = float3.f149y * float4.f149y;
        float5.f150z = float3.f150z * float4.f150z;
        return float5;
    }

    public static Float3 sub(Float3 float3, Float3 float4) {
        Float3 float5 = new Float3();
        float5.f148x = float3.f148x - float4.f148x;
        float5.f149y = float3.f149y - float4.f149y;
        float5.f150z = float3.f150z - float4.f150z;
        return float5;
    }

    public void add(Float3 float3) {
        this.f148x += float3.f148x;
        this.f149y += float3.f149y;
        this.f150z += float3.f150z;
    }

    public Float3(float f2, float f3, float f4) {
        this.f148x = f2;
        this.f149y = f3;
        this.f150z = f4;
    }

    public void add(float f2) {
        this.f148x += f2;
        this.f149y += f2;
        this.f150z += f2;
    }

    public void div(float f2) {
        this.f148x /= f2;
        this.f149y /= f2;
        this.f150z /= f2;
    }

    public void mul(float f2) {
        this.f148x *= f2;
        this.f149y *= f2;
        this.f150z *= f2;
    }

    public void sub(float f2) {
        this.f148x -= f2;
        this.f149y -= f2;
        this.f150z -= f2;
    }

    public static Float3 add(Float3 float3, float f2) {
        Float3 float4 = new Float3();
        float4.f148x = float3.f148x + f2;
        float4.f149y = float3.f149y + f2;
        float4.f150z = float3.f150z + f2;
        return float4;
    }

    public static Float3 div(Float3 float3, float f2) {
        Float3 float4 = new Float3();
        float4.f148x = float3.f148x / f2;
        float4.f149y = float3.f149y / f2;
        float4.f150z = float3.f150z / f2;
        return float4;
    }

    public static Float3 mul(Float3 float3, float f2) {
        Float3 float4 = new Float3();
        float4.f148x = float3.f148x * f2;
        float4.f149y = float3.f149y * f2;
        float4.f150z = float3.f150z * f2;
        return float4;
    }

    public static Float3 sub(Float3 float3, float f2) {
        Float3 float4 = new Float3();
        float4.f148x = float3.f148x - f2;
        float4.f149y = float3.f149y - f2;
        float4.f150z = float3.f150z - f2;
        return float4;
    }
}
