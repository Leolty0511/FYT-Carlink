package android.opengl;

/* JADX INFO: loaded from: classes.dex */
public class Matrix {
    private static final float[] sTemp = new float[32];

    @Deprecated
    public Matrix() {
    }

    public static void frustumM(float[] fArr, int i2, float f2, float f3, float f4, float f5, float f6, float f7) {
        if (f2 == f3) {
            throw new IllegalArgumentException("left == right");
        }
        if (f5 == f4) {
            throw new IllegalArgumentException("top == bottom");
        }
        if (f6 == f7) {
            throw new IllegalArgumentException("near == far");
        }
        if (f6 <= 0.0f) {
            throw new IllegalArgumentException("near <= 0.0f");
        }
        if (f7 <= 0.0f) {
            throw new IllegalArgumentException("far <= 0.0f");
        }
        float f8 = 1.0f / (f3 - f2);
        float f9 = 1.0f / (f5 - f4);
        float f10 = 1.0f / (f6 - f7);
        float f11 = (f3 + f2) * f8;
        float f12 = (f5 + f4) * f9;
        fArr[i2 + 0] = f6 * f8 * 2.0f;
        fArr[i2 + 5] = f6 * f9 * 2.0f;
        fArr[i2 + 8] = f11;
        fArr[i2 + 9] = f12;
        fArr[i2 + 10] = (f7 + f6) * f10;
        fArr[i2 + 14] = f7 * f6 * f10 * 2.0f;
        fArr[i2 + 11] = -1.0f;
        fArr[i2 + 1] = 0.0f;
        fArr[i2 + 2] = 0.0f;
        fArr[i2 + 3] = 0.0f;
        fArr[i2 + 4] = 0.0f;
        fArr[i2 + 6] = 0.0f;
        fArr[i2 + 7] = 0.0f;
        fArr[i2 + 12] = 0.0f;
        fArr[i2 + 13] = 0.0f;
        fArr[i2 + 15] = 0.0f;
    }

    public static boolean invertM(float[] fArr, int i2, float[] fArr2, int i3) {
        float f2 = fArr2[i3 + 0];
        float f3 = fArr2[i3 + 1];
        float f4 = fArr2[i3 + 2];
        float f5 = fArr2[i3 + 3];
        float f6 = fArr2[i3 + 4];
        float f7 = fArr2[i3 + 5];
        float f8 = fArr2[i3 + 6];
        float f9 = fArr2[i3 + 7];
        float f10 = fArr2[i3 + 8];
        float f11 = fArr2[i3 + 9];
        float f12 = fArr2[i3 + 10];
        float f13 = fArr2[i3 + 11];
        float f14 = fArr2[i3 + 12];
        float f15 = fArr2[i3 + 13];
        float f16 = fArr2[i3 + 14];
        float f17 = fArr2[i3 + 15];
        float f18 = f12 * f17;
        float f19 = f16 * f13;
        float f20 = f8 * f17;
        float f21 = f16 * f9;
        float f22 = f8 * f13;
        float f23 = f12 * f9;
        float f24 = f4 * f17;
        float f25 = f16 * f5;
        float f26 = f4 * f13;
        float f27 = f12 * f5;
        float f28 = f4 * f9;
        float f29 = f8 * f5;
        float f30 = ((f22 * f15) + ((f21 * f11) + (f18 * f7))) - ((f23 * f15) + ((f20 * f11) + (f19 * f7)));
        float f31 = ((f27 * f15) + ((f24 * f11) + (f19 * f3))) - ((f26 * f15) + ((f25 * f11) + (f18 * f3)));
        float f32 = ((f28 * f15) + ((f25 * f7) + (f20 * f3))) - ((f29 * f15) + ((f24 * f7) + (f21 * f3)));
        float f33 = ((f29 * f11) + ((f26 * f7) + (f23 * f3))) - ((f28 * f11) + ((f27 * f7) + (f22 * f3)));
        float f34 = ((f23 * f14) + ((f20 * f10) + (f19 * f6))) - ((f22 * f14) + ((f21 * f10) + (f18 * f6)));
        float f35 = ((f26 * f14) + ((f25 * f10) + (f18 * f2))) - ((f27 * f14) + ((f24 * f10) + (f19 * f2)));
        float f36 = f29 * f14;
        float f37 = (f36 + ((f24 * f6) + (f21 * f2))) - ((f28 * f14) + ((f25 * f6) + (f20 * f2)));
        float f38 = f28 * f10;
        float f39 = f29 * f10;
        float f40 = (f38 + ((f27 * f6) + (f22 * f2))) - (f39 + ((f26 * f6) + (f23 * f2)));
        float f41 = f10 * f15;
        float f42 = f14 * f11;
        float f43 = f6 * f15;
        float f44 = f14 * f7;
        float f45 = f6 * f11;
        float f46 = f10 * f7;
        float f47 = f15 * f2;
        float f48 = f14 * f3;
        float f49 = f11 * f2;
        float f50 = f10 * f3;
        float f51 = f7 * f2;
        float f52 = f3 * f6;
        float f53 = ((f45 * f17) + ((f44 * f13) + (f41 * f9))) - ((f46 * f17) + ((f43 * f13) + (f42 * f9)));
        float f54 = ((f50 * f17) + ((f47 * f13) + (f42 * f5))) - ((f49 * f17) + ((f48 * f13) + (f41 * f5)));
        float f55 = f17 * f52;
        float f56 = ((f51 * f17) + ((f48 * f9) + (f43 * f5))) - (f55 + ((f47 * f9) + (f44 * f5)));
        float f57 = f13 * f51;
        float f58 = ((f52 * f13) + ((f49 * f9) + (f46 * f5))) - (f57 + ((f9 * f50) + (f5 * f45)));
        float f59 = ((f42 * f8) + ((f46 * f16) + (f43 * f12))) - ((f44 * f12) + ((f41 * f8) + (f45 * f16)));
        float f60 = f42 * f4;
        float f61 = ((f48 * f12) + ((f41 * f4) + (f49 * f16))) - (f60 + ((f50 * f16) + (f47 * f12)));
        float f62 = f44 * f4;
        float f63 = f48 * f8;
        float f64 = (f62 + ((f52 * f16) + (f47 * f8))) - (f63 + ((f43 * f4) + (f16 * f51)));
        float f65 = f50 * f8;
        float f66 = f46 * f4;
        float f67 = (f65 + ((f45 * f4) + (f51 * f12))) - (f66 + ((f52 * f12) + (f49 * f8)));
        float f68 = f10 * f32;
        float f69 = f14 * f33;
        float f70 = f69 + f68 + (f6 * f31) + (f2 * f30);
        if (f70 == 0.0f) {
            return false;
        }
        float f71 = 1.0f / f70;
        fArr[i2] = f30 * f71;
        fArr[i2 + 1] = f31 * f71;
        fArr[i2 + 2] = f32 * f71;
        fArr[i2 + 3] = f33 * f71;
        fArr[i2 + 4] = f34 * f71;
        fArr[i2 + 5] = f35 * f71;
        fArr[i2 + 6] = f37 * f71;
        fArr[i2 + 7] = f40 * f71;
        fArr[i2 + 8] = f53 * f71;
        fArr[i2 + 9] = f54 * f71;
        fArr[i2 + 10] = f56 * f71;
        fArr[i2 + 11] = f58 * f71;
        fArr[i2 + 12] = f59 * f71;
        fArr[i2 + 13] = f61 * f71;
        fArr[i2 + 14] = f64 * f71;
        fArr[i2 + 15] = f67 * f71;
        return true;
    }

    public static float length(float f2, float f3, float f4) {
        return (float) Math.sqrt((f4 * f4) + (f3 * f3) + (f2 * f2));
    }

    public static native void multiplyMM(float[] fArr, int i2, float[] fArr2, int i3, float[] fArr3, int i4);

    public static native void multiplyMV(float[] fArr, int i2, float[] fArr2, int i3, float[] fArr3, int i4);

    public static void orthoM(float[] fArr, int i2, float f2, float f3, float f4, float f5, float f6, float f7) {
        if (f2 == f3) {
            throw new IllegalArgumentException("left == right");
        }
        if (f4 == f5) {
            throw new IllegalArgumentException("bottom == top");
        }
        if (f6 == f7) {
            throw new IllegalArgumentException("near == far");
        }
        float f8 = 1.0f / (f3 - f2);
        float f9 = 1.0f / (f5 - f4);
        float f10 = 1.0f / (f7 - f6);
        float f11 = (-(f3 + f2)) * f8;
        float f12 = (-(f5 + f4)) * f9;
        fArr[i2 + 0] = f8 * 2.0f;
        fArr[i2 + 5] = 2.0f * f9;
        fArr[i2 + 10] = (-2.0f) * f10;
        fArr[i2 + 12] = f11;
        fArr[i2 + 13] = f12;
        fArr[i2 + 14] = (-(f7 + f6)) * f10;
        fArr[i2 + 15] = 1.0f;
        fArr[i2 + 1] = 0.0f;
        fArr[i2 + 2] = 0.0f;
        fArr[i2 + 3] = 0.0f;
        fArr[i2 + 4] = 0.0f;
        fArr[i2 + 6] = 0.0f;
        fArr[i2 + 7] = 0.0f;
        fArr[i2 + 8] = 0.0f;
        fArr[i2 + 9] = 0.0f;
        fArr[i2 + 11] = 0.0f;
    }

    public static void perspectiveM(float[] fArr, int i2, float f2, float f3, float f4, float f5) {
        float fTan = 1.0f / ((float) Math.tan(((double) f2) * 0.008726646259971648d));
        float f6 = 1.0f / (f4 - f5);
        fArr[i2 + 0] = fTan / f3;
        fArr[i2 + 1] = 0.0f;
        fArr[i2 + 2] = 0.0f;
        fArr[i2 + 3] = 0.0f;
        fArr[i2 + 4] = 0.0f;
        fArr[i2 + 5] = fTan;
        fArr[i2 + 6] = 0.0f;
        fArr[i2 + 7] = 0.0f;
        fArr[i2 + 8] = 0.0f;
        fArr[i2 + 9] = 0.0f;
        fArr[i2 + 10] = (f5 + f4) * f6;
        fArr[i2 + 11] = -1.0f;
        fArr[i2 + 12] = 0.0f;
        fArr[i2 + 13] = 0.0f;
        fArr[i2 + 14] = f5 * 2.0f * f4 * f6;
        fArr[i2 + 15] = 0.0f;
    }

    public static void rotateM(float[] fArr, int i2, float[] fArr2, int i3, float f2, float f3, float f4, float f5) {
        float[] fArr3 = sTemp;
        synchronized (fArr3) {
            setRotateM(fArr3, 0, f2, f3, f4, f5);
            multiplyMM(fArr, i2, fArr2, i3, fArr3, 0);
        }
    }

    public static void scaleM(float[] fArr, int i2, float[] fArr2, int i3, float f2, float f3, float f4) {
        for (int i4 = 0; i4 < 4; i4++) {
            int i5 = i2 + i4;
            int i6 = i3 + i4;
            fArr[i5] = fArr2[i6] * f2;
            fArr[i5 + 4] = fArr2[i6 + 4] * f3;
            fArr[i5 + 8] = fArr2[i6 + 8] * f4;
            fArr[i5 + 12] = fArr2[i6 + 12];
        }
    }

    public static void setIdentityM(float[] fArr, int i2) {
        for (int i3 = 0; i3 < 16; i3++) {
            fArr[i2 + i3] = 0.0f;
        }
        for (int i4 = 0; i4 < 16; i4 += 5) {
            fArr[i2 + i4] = 1.0f;
        }
    }

    public static void setLookAtM(float[] fArr, int i2, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
        float f11 = f5 - f2;
        float f12 = f6 - f3;
        float f13 = f7 - f4;
        float length = 1.0f / length(f11, f12, f13);
        float f14 = f11 * length;
        float f15 = f12 * length;
        float f16 = f13 * length;
        float f17 = (f15 * f10) - (f16 * f9);
        float f18 = (f16 * f8) - (f10 * f14);
        float f19 = (f9 * f14) - (f8 * f15);
        float length2 = 1.0f / length(f17, f18, f19);
        float f20 = f17 * length2;
        float f21 = f18 * length2;
        float f22 = f19 * length2;
        fArr[i2 + 0] = f20;
        fArr[i2 + 1] = (f21 * f16) - (f22 * f15);
        fArr[i2 + 2] = -f14;
        fArr[i2 + 3] = 0.0f;
        fArr[i2 + 4] = f21;
        fArr[i2 + 5] = (f22 * f14) - (f20 * f16);
        fArr[i2 + 6] = -f15;
        fArr[i2 + 7] = 0.0f;
        fArr[i2 + 8] = f22;
        fArr[i2 + 9] = (f20 * f15) - (f21 * f14);
        fArr[i2 + 10] = -f16;
        fArr[i2 + 11] = 0.0f;
        fArr[i2 + 12] = 0.0f;
        fArr[i2 + 13] = 0.0f;
        fArr[i2 + 14] = 0.0f;
        fArr[i2 + 15] = 1.0f;
        translateM(fArr, i2, -f2, -f3, -f4);
    }

    public static void setRotateEulerM(float[] fArr, int i2, float f2, float f3, float f4) {
        double d2 = f2 * 0.017453292f;
        float fCos = (float) Math.cos(d2);
        float fSin = (float) Math.sin(d2);
        double d3 = f3 * 0.017453292f;
        float fCos2 = (float) Math.cos(d3);
        float fSin2 = (float) Math.sin(d3);
        double d4 = f4 * 0.017453292f;
        float fCos3 = (float) Math.cos(d4);
        float fSin3 = (float) Math.sin(d4);
        float f5 = fCos * fSin2;
        float f6 = fSin * fSin2;
        fArr[i2 + 0] = fCos2 * fCos3;
        fArr[i2 + 1] = (-fCos2) * fSin3;
        fArr[i2 + 2] = fSin2;
        fArr[i2 + 3] = 0.0f;
        fArr[i2 + 4] = (fCos * fSin3) + (f5 * fCos3);
        fArr[i2 + 5] = (fCos * fCos3) + ((-f5) * fSin3);
        fArr[i2 + 6] = (-fSin) * fCos2;
        fArr[i2 + 7] = 0.0f;
        fArr[i2 + 8] = (fSin * fSin3) + ((-f6) * fCos3);
        fArr[i2 + 9] = (fSin * fCos3) + (f6 * fSin3);
        fArr[i2 + 10] = fCos * fCos2;
        fArr[i2 + 11] = 0.0f;
        fArr[i2 + 12] = 0.0f;
        fArr[i2 + 13] = 0.0f;
        fArr[i2 + 14] = 0.0f;
        fArr[i2 + 15] = 1.0f;
    }

    public static void setRotateM(float[] fArr, int i2, float f2, float f3, float f4, float f5) {
        fArr[i2 + 3] = 0.0f;
        fArr[i2 + 7] = 0.0f;
        fArr[i2 + 11] = 0.0f;
        fArr[i2 + 12] = 0.0f;
        fArr[i2 + 13] = 0.0f;
        fArr[i2 + 14] = 0.0f;
        fArr[i2 + 15] = 1.0f;
        double d2 = f2 * 0.017453292f;
        float fSin = (float) Math.sin(d2);
        float fCos = (float) Math.cos(d2);
        if (1.0f == f3 && 0.0f == f4 && 0.0f == f5) {
            fArr[i2 + 5] = fCos;
            fArr[i2 + 10] = fCos;
            fArr[i2 + 6] = fSin;
            fArr[i2 + 9] = -fSin;
            fArr[i2 + 1] = 0.0f;
            fArr[i2 + 2] = 0.0f;
            fArr[i2 + 4] = 0.0f;
            fArr[i2 + 8] = 0.0f;
            fArr[i2 + 0] = 1.0f;
            return;
        }
        if (0.0f == f3 && 1.0f == f4 && 0.0f == f5) {
            fArr[i2 + 0] = fCos;
            fArr[i2 + 10] = fCos;
            fArr[i2 + 8] = fSin;
            fArr[i2 + 2] = -fSin;
            fArr[i2 + 1] = 0.0f;
            fArr[i2 + 4] = 0.0f;
            fArr[i2 + 6] = 0.0f;
            fArr[i2 + 9] = 0.0f;
            fArr[i2 + 5] = 1.0f;
            return;
        }
        if (0.0f == f3 && 0.0f == f4 && 1.0f == f5) {
            fArr[i2 + 0] = fCos;
            fArr[i2 + 5] = fCos;
            fArr[i2 + 1] = fSin;
            fArr[i2 + 4] = -fSin;
            fArr[i2 + 2] = 0.0f;
            fArr[i2 + 6] = 0.0f;
            fArr[i2 + 8] = 0.0f;
            fArr[i2 + 9] = 0.0f;
            fArr[i2 + 10] = 1.0f;
            return;
        }
        float length = length(f3, f4, f5);
        if (1.0f != length) {
            float f6 = 1.0f / length;
            f3 *= f6;
            f4 *= f6;
            f5 *= f6;
        }
        float f7 = 1.0f - fCos;
        float f8 = f3 * fSin;
        float f9 = f4 * fSin;
        float f10 = fSin * f5;
        fArr[i2 + 0] = (f3 * f3 * f7) + fCos;
        float f11 = f3 * f4 * f7;
        fArr[i2 + 4] = f11 - f10;
        float f12 = f5 * f3 * f7;
        fArr[i2 + 8] = f12 + f9;
        fArr[i2 + 1] = f11 + f10;
        fArr[i2 + 5] = (f4 * f4 * f7) + fCos;
        float f13 = f4 * f5 * f7;
        fArr[i2 + 9] = f13 - f8;
        fArr[i2 + 2] = f12 - f9;
        fArr[i2 + 6] = f13 + f8;
        fArr[i2 + 10] = (f5 * f5 * f7) + fCos;
    }

    public static void translateM(float[] fArr, int i2, float[] fArr2, int i3, float f2, float f3, float f4) {
        for (int i4 = 0; i4 < 12; i4++) {
            fArr[i2 + i4] = fArr2[i3 + i4];
        }
        for (int i5 = 0; i5 < 4; i5++) {
            int i6 = i3 + i5;
            fArr[i2 + i5 + 12] = (fArr2[i6 + 8] * f4) + (fArr2[i6 + 4] * f3) + (fArr2[i6] * f2) + fArr2[i6 + 12];
        }
    }

    public static void transposeM(float[] fArr, int i2, float[] fArr2, int i3) {
        for (int i4 = 0; i4 < 4; i4++) {
            int i5 = (i4 * 4) + i3;
            fArr[i4 + i2] = fArr2[i5];
            fArr[i4 + 4 + i2] = fArr2[i5 + 1];
            fArr[i4 + 8 + i2] = fArr2[i5 + 2];
            fArr[i4 + 12 + i2] = fArr2[i5 + 3];
        }
    }

    public static void translateM(float[] fArr, int i2, float f2, float f3, float f4) {
        for (int i3 = 0; i3 < 4; i3++) {
            int i4 = i2 + i3;
            int i5 = i4 + 12;
            fArr[i5] = (fArr[i4 + 8] * f4) + (fArr[i4 + 4] * f3) + (fArr[i4] * f2) + fArr[i5];
        }
    }

    public static void rotateM(float[] fArr, int i2, float f2, float f3, float f4, float f5) {
        float[] fArr2 = sTemp;
        synchronized (fArr2) {
            setRotateM(fArr2, 0, f2, f3, f4, f5);
            multiplyMM(fArr2, 16, fArr, i2, fArr2, 0);
            System.arraycopy(fArr2, 16, fArr, i2, 16);
        }
    }

    public static void scaleM(float[] fArr, int i2, float f2, float f3, float f4) {
        for (int i3 = 0; i3 < 4; i3++) {
            int i4 = i2 + i3;
            fArr[i4] = fArr[i4] * f2;
            int i5 = i4 + 4;
            fArr[i5] = fArr[i5] * f3;
            int i6 = i4 + 8;
            fArr[i6] = fArr[i6] * f4;
        }
    }
}
