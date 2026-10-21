package android.renderscript;

/* JADX INFO: loaded from: classes.dex */
public class Float2 {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f146x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f147y;

    public Float2() {
    }

    public static Float2 add(Float2 float2, Float2 float3) {
        Float2 float4 = new Float2();
        float4.f146x = float2.f146x + float3.f146x;
        float4.f147y = float2.f147y + float3.f147y;
        return float4;
    }

    public void addAt(int i2, float f2) {
        if (i2 == 0) {
            this.f146x += f2;
        } else {
            if (i2 != 1) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f147y += f2;
        }
    }

    public void addMultiple(Float2 float2, float f2) {
        this.f146x = (float2.f146x * f2) + this.f146x;
        this.f147y = (float2.f147y * f2) + this.f147y;
    }

    public void copyTo(float[] fArr, int i2) {
        fArr[i2] = this.f146x;
        fArr[i2 + 1] = this.f147y;
    }

    public void div(Float2 float2) {
        this.f146x /= float2.f146x;
        this.f147y /= float2.f147y;
    }

    public float dotProduct(Float2 float2) {
        return (this.f147y * float2.f147y) + (this.f146x * float2.f146x);
    }

    public float elementSum() {
        return this.f146x + this.f147y;
    }

    public float get(int i2) {
        if (i2 == 0) {
            return this.f146x;
        }
        if (i2 == 1) {
            return this.f147y;
        }
        throw new IndexOutOfBoundsException("Index: i");
    }

    public int length() {
        return 2;
    }

    public void mul(Float2 float2) {
        this.f146x *= float2.f146x;
        this.f147y *= float2.f147y;
    }

    public void negate() {
        this.f146x = -this.f146x;
        this.f147y = -this.f147y;
    }

    public void set(Float2 float2) {
        this.f146x = float2.f146x;
        this.f147y = float2.f147y;
    }

    public void setAt(int i2, float f2) {
        if (i2 == 0) {
            this.f146x = f2;
        } else {
            if (i2 != 1) {
                throw new IndexOutOfBoundsException("Index: i");
            }
            this.f147y = f2;
        }
    }

    public void setValues(float f2, float f3) {
        this.f146x = f2;
        this.f147y = f3;
    }

    public void sub(Float2 float2) {
        this.f146x -= float2.f146x;
        this.f147y -= float2.f147y;
    }

    public Float2(Float2 float2) {
        this.f146x = float2.f146x;
        this.f147y = float2.f147y;
    }

    public static float dotProduct(Float2 float2, Float2 float3) {
        return (float3.f147y * float2.f147y) + (float3.f146x * float2.f146x);
    }

    public static Float2 div(Float2 float2, Float2 float3) {
        Float2 float4 = new Float2();
        float4.f146x = float2.f146x / float3.f146x;
        float4.f147y = float2.f147y / float3.f147y;
        return float4;
    }

    public static Float2 mul(Float2 float2, Float2 float3) {
        Float2 float4 = new Float2();
        float4.f146x = float2.f146x * float3.f146x;
        float4.f147y = float2.f147y * float3.f147y;
        return float4;
    }

    public static Float2 sub(Float2 float2, Float2 float3) {
        Float2 float4 = new Float2();
        float4.f146x = float2.f146x - float3.f146x;
        float4.f147y = float2.f147y - float3.f147y;
        return float4;
    }

    public void add(Float2 float2) {
        this.f146x += float2.f146x;
        this.f147y += float2.f147y;
    }

    public Float2(float f2, float f3) {
        this.f146x = f2;
        this.f147y = f3;
    }

    public void add(float f2) {
        this.f146x += f2;
        this.f147y += f2;
    }

    public void div(float f2) {
        this.f146x /= f2;
        this.f147y /= f2;
    }

    public void mul(float f2) {
        this.f146x *= f2;
        this.f147y *= f2;
    }

    public void sub(float f2) {
        this.f146x -= f2;
        this.f147y -= f2;
    }

    public static Float2 add(Float2 float2, float f2) {
        Float2 float3 = new Float2();
        float3.f146x = float2.f146x + f2;
        float3.f147y = float2.f147y + f2;
        return float3;
    }

    public static Float2 div(Float2 float2, float f2) {
        Float2 float3 = new Float2();
        float3.f146x = float2.f146x / f2;
        float3.f147y = float2.f147y / f2;
        return float3;
    }

    public static Float2 mul(Float2 float2, float f2) {
        Float2 float3 = new Float2();
        float3.f146x = float2.f146x * f2;
        float3.f147y = float2.f147y * f2;
        return float3;
    }

    public static Float2 sub(Float2 float2, float f2) {
        Float2 float3 = new Float2();
        float3.f146x = float2.f146x - f2;
        float3.f147y = float2.f147y - f2;
        return float3;
    }
}
