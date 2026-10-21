package r;

import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes4.dex */
public interface d extends f {
    void glCurrentPaletteMatrixOES(int i2);

    void glDrawTexfOES(float f2, float f3, float f4, float f5, float f6);

    void glDrawTexfvOES(FloatBuffer floatBuffer);

    void glDrawTexfvOES(float[] fArr, int i2);

    void glDrawTexiOES(int i2, int i3, int i4, int i5, int i6);

    void glDrawTexivOES(IntBuffer intBuffer);

    void glDrawTexivOES(int[] iArr, int i2);

    void glDrawTexsOES(short s2, short s3, short s4, short s5, short s6);

    void glDrawTexsvOES(ShortBuffer shortBuffer);

    void glDrawTexsvOES(short[] sArr, int i2);

    void glDrawTexxOES(int i2, int i3, int i4, int i5, int i6);

    void glDrawTexxvOES(IntBuffer intBuffer);

    void glDrawTexxvOES(int[] iArr, int i2);

    void glLoadPaletteFromModelViewMatrixOES();

    void glMatrixIndexPointerOES(int i2, int i3, int i4, int i5);

    void glMatrixIndexPointerOES(int i2, int i3, int i4, Buffer buffer);

    void glWeightPointerOES(int i2, int i3, int i4, int i5);

    void glWeightPointerOES(int i2, int i3, int i4, Buffer buffer);
}
