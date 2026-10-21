package android.opengl;

import r.a;

/* JADX INFO: loaded from: classes.dex */
public class GLU {
    private static final float[] sScratch = new float[32];

    public static String gluErrorString(int i2) {
        if (i2 == 0) {
            return "no error";
        }
        switch (i2) {
            case 1280:
                return "invalid enum";
            case 1281:
                return "invalid value";
            case 1282:
                return "invalid operation";
            case 1283:
                return "stack overflow";
            case 1284:
                return "stack underflow";
            case 1285:
                return "out of memory";
            default:
                return null;
        }
    }

    public static void gluLookAt(a aVar, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
        float[] fArr = sScratch;
        synchronized (fArr) {
            Matrix.setLookAtM(fArr, 0, f2, f3, f4, f5, f6, f7, f8, f9, f10);
            aVar.glMultMatrixf(fArr, 0);
        }
    }

    public static void gluOrtho2D(a aVar, float f2, float f3, float f4, float f5) {
        aVar.glOrthof(f2, f3, f4, f5, -1.0f, 1.0f);
    }

    public static void gluPerspective(a aVar, float f2, float f3, float f4, float f5) {
        float fTan = f4 * ((float) Math.tan(((double) f2) * 0.008726646259971648d));
        float f6 = -fTan;
        aVar.glFrustumf(f6 * f3, fTan * f3, f6, fTan, f4, f5);
    }

    public static int gluProject(float f2, float f3, float f4, float[] fArr, int i2, float[] fArr2, int i3, int[] iArr, int i4, float[] fArr3, int i5) {
        float[] fArr4 = sScratch;
        synchronized (fArr4) {
            Matrix.multiplyMM(fArr4, 0, fArr2, i3, fArr, i2);
            fArr4[16] = f2;
            fArr4[17] = f3;
            fArr4[18] = f4;
            fArr4[19] = 1.0f;
            Matrix.multiplyMV(fArr4, 20, fArr4, 0, fArr4, 16);
            float f5 = fArr4[23];
            if (f5 == 0.0f) {
                return 0;
            }
            float f6 = 1.0f / f5;
            fArr3[i5] = (((fArr4[20] * f6) + 1.0f) * iArr[i4 + 2] * 0.5f) + iArr[i4];
            fArr3[i5 + 1] = (((fArr4[21] * f6) + 1.0f) * iArr[i4 + 3] * 0.5f) + iArr[i4 + 1];
            fArr3[i5 + 2] = ((fArr4[22] * f6) + 1.0f) * 0.5f;
            return 1;
        }
    }

    public static int gluUnProject(float f2, float f3, float f4, float[] fArr, int i2, float[] fArr2, int i3, int[] iArr, int i4, float[] fArr3, int i5) {
        float[] fArr4 = sScratch;
        synchronized (fArr4) {
            Matrix.multiplyMM(fArr4, 0, fArr2, i3, fArr, i2);
            if (!Matrix.invertM(fArr4, 16, fArr4, 0)) {
                return 0;
            }
            fArr4[0] = (((f2 - iArr[i4 + 0]) * 2.0f) / iArr[i4 + 2]) - 1.0f;
            fArr4[1] = (((f3 - iArr[i4 + 1]) * 2.0f) / iArr[i4 + 3]) - 1.0f;
            fArr4[2] = (f4 * 2.0f) - 1.0f;
            fArr4[3] = 1.0f;
            Matrix.multiplyMV(fArr3, i5, fArr4, 16, fArr4, 0);
            return 1;
        }
    }
}
