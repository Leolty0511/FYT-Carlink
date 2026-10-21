package b0;

import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface c extends a {
    void glBindBuffer(int i2, int i3);

    void glBufferData(int i2, int i3, Buffer buffer, int i4);

    void glBufferSubData(int i2, int i3, int i4, Buffer buffer);

    void glClipPlanef(int i2, FloatBuffer floatBuffer);

    void glClipPlanef(int i2, float[] fArr, int i3);

    void glClipPlanex(int i2, IntBuffer intBuffer);

    void glClipPlanex(int i2, int[] iArr, int i3);

    void glColor4ub(byte b2, byte b3, byte b4, byte b5);

    void glColorPointer(int i2, int i3, int i4, int i5);

    void glDeleteBuffers(int i2, IntBuffer intBuffer);

    void glDeleteBuffers(int i2, int[] iArr, int i3);

    void glDrawElements(int i2, int i3, int i4, int i5);

    void glGenBuffers(int i2, IntBuffer intBuffer);

    void glGenBuffers(int i2, int[] iArr, int i3);

    void glGetBooleanv(int i2, IntBuffer intBuffer);

    void glGetBooleanv(int i2, boolean[] zArr, int i3);

    void glGetBufferParameteriv(int i2, int i3, IntBuffer intBuffer);

    void glGetBufferParameteriv(int i2, int i3, int[] iArr, int i4);

    void glGetClipPlanef(int i2, FloatBuffer floatBuffer);

    void glGetClipPlanef(int i2, float[] fArr, int i3);

    void glGetClipPlanex(int i2, IntBuffer intBuffer);

    void glGetClipPlanex(int i2, int[] iArr, int i3);

    void glGetFixedv(int i2, IntBuffer intBuffer);

    void glGetFixedv(int i2, int[] iArr, int i3);

    void glGetFloatv(int i2, FloatBuffer floatBuffer);

    void glGetFloatv(int i2, float[] fArr, int i3);

    void glGetLightfv(int i2, int i3, FloatBuffer floatBuffer);

    void glGetLightfv(int i2, int i3, float[] fArr, int i4);

    void glGetLightxv(int i2, int i3, IntBuffer intBuffer);

    void glGetLightxv(int i2, int i3, int[] iArr, int i4);

    void glGetMaterialfv(int i2, int i3, FloatBuffer floatBuffer);

    void glGetMaterialfv(int i2, int i3, float[] fArr, int i4);

    void glGetMaterialxv(int i2, int i3, IntBuffer intBuffer);

    void glGetMaterialxv(int i2, int i3, int[] iArr, int i4);

    void glGetPointerv(int i2, Buffer[] bufferArr);

    void glGetTexEnviv(int i2, int i3, IntBuffer intBuffer);

    void glGetTexEnviv(int i2, int i3, int[] iArr, int i4);

    void glGetTexEnvxv(int i2, int i3, IntBuffer intBuffer);

    void glGetTexEnvxv(int i2, int i3, int[] iArr, int i4);

    void glGetTexParameterfv(int i2, int i3, FloatBuffer floatBuffer);

    void glGetTexParameterfv(int i2, int i3, float[] fArr, int i4);

    void glGetTexParameteriv(int i2, int i3, IntBuffer intBuffer);

    void glGetTexParameteriv(int i2, int i3, int[] iArr, int i4);

    void glGetTexParameterxv(int i2, int i3, IntBuffer intBuffer);

    void glGetTexParameterxv(int i2, int i3, int[] iArr, int i4);

    boolean glIsBuffer(int i2);

    boolean glIsEnabled(int i2);

    boolean glIsTexture(int i2);

    void glNormalPointer(int i2, int i3, int i4);

    void glPointParameterf(int i2, float f2);

    void glPointParameterfv(int i2, FloatBuffer floatBuffer);

    void glPointParameterfv(int i2, float[] fArr, int i3);

    void glPointParameterx(int i2, int i3);

    void glPointParameterxv(int i2, IntBuffer intBuffer);

    void glPointParameterxv(int i2, int[] iArr, int i3);

    void glPointSizePointerOES(int i2, int i3, Buffer buffer);

    void glTexCoordPointer(int i2, int i3, int i4, int i5);

    void glTexEnvi(int i2, int i3, int i4);

    void glTexEnviv(int i2, int i3, IntBuffer intBuffer);

    void glTexEnviv(int i2, int i3, int[] iArr, int i4);

    void glTexParameterfv(int i2, int i3, FloatBuffer floatBuffer);

    void glTexParameterfv(int i2, int i3, float[] fArr, int i4);

    void glTexParameteri(int i2, int i3, int i4);

    void glTexParameteriv(int i2, int i3, IntBuffer intBuffer);

    void glTexParameteriv(int i2, int i3, int[] iArr, int i4);

    void glTexParameterxv(int i2, int i3, IntBuffer intBuffer);

    void glTexParameterxv(int i2, int i3, int[] iArr, int i4);

    void glVertexPointer(int i2, int i3, int i4, int i5);
}
