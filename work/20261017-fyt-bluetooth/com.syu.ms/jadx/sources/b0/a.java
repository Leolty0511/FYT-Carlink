package b0;

import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface a extends f {
    void glActiveTexture(int i2);

    void glAlphaFunc(int i2, float f2);

    void glAlphaFuncx(int i2, int i3);

    void glBindTexture(int i2, int i3);

    void glBlendFunc(int i2, int i3);

    void glClear(int i2);

    void glClearColor(float f2, float f3, float f4, float f5);

    void glClearColorx(int i2, int i3, int i4, int i5);

    void glClearDepthf(float f2);

    void glClearDepthx(int i2);

    void glClearStencil(int i2);

    void glClientActiveTexture(int i2);

    void glColor4f(float f2, float f3, float f4, float f5);

    void glColor4x(int i2, int i3, int i4, int i5);

    void glColorMask(boolean z2, boolean z3, boolean z4, boolean z5);

    void glColorPointer(int i2, int i3, int i4, Buffer buffer);

    void glCompressedTexImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer);

    void glCompressedTexSubImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer);

    void glCopyTexImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    void glCopyTexSubImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    void glCullFace(int i2);

    void glDeleteTextures(int i2, IntBuffer intBuffer);

    void glDeleteTextures(int i2, int[] iArr, int i3);

    void glDepthFunc(int i2);

    void glDepthMask(boolean z2);

    void glDepthRangef(float f2, float f3);

    void glDepthRangex(int i2, int i3);

    void glDisable(int i2);

    void glDisableClientState(int i2);

    void glDrawArrays(int i2, int i3, int i4);

    void glDrawElements(int i2, int i3, int i4, Buffer buffer);

    void glEnable(int i2);

    void glEnableClientState(int i2);

    void glFinish();

    void glFlush();

    void glFogf(int i2, float f2);

    void glFogfv(int i2, FloatBuffer floatBuffer);

    void glFogfv(int i2, float[] fArr, int i3);

    void glFogx(int i2, int i3);

    void glFogxv(int i2, IntBuffer intBuffer);

    void glFogxv(int i2, int[] iArr, int i3);

    void glFrontFace(int i2);

    void glFrustumf(float f2, float f3, float f4, float f5, float f6, float f7);

    void glFrustumx(int i2, int i3, int i4, int i5, int i6, int i7);

    void glGenTextures(int i2, IntBuffer intBuffer);

    void glGenTextures(int i2, int[] iArr, int i3);

    int glGetError();

    void glGetIntegerv(int i2, IntBuffer intBuffer);

    void glGetIntegerv(int i2, int[] iArr, int i3);

    String glGetString(int i2);

    void glHint(int i2, int i3);

    void glLightModelf(int i2, float f2);

    void glLightModelfv(int i2, FloatBuffer floatBuffer);

    void glLightModelfv(int i2, float[] fArr, int i3);

    void glLightModelx(int i2, int i3);

    void glLightModelxv(int i2, IntBuffer intBuffer);

    void glLightModelxv(int i2, int[] iArr, int i3);

    void glLightf(int i2, int i3, float f2);

    void glLightfv(int i2, int i3, FloatBuffer floatBuffer);

    void glLightfv(int i2, int i3, float[] fArr, int i4);

    void glLightx(int i2, int i3, int i4);

    void glLightxv(int i2, int i3, IntBuffer intBuffer);

    void glLightxv(int i2, int i3, int[] iArr, int i4);

    void glLineWidth(float f2);

    void glLineWidthx(int i2);

    void glLoadIdentity();

    void glLoadMatrixf(FloatBuffer floatBuffer);

    void glLoadMatrixf(float[] fArr, int i2);

    void glLoadMatrixx(IntBuffer intBuffer);

    void glLoadMatrixx(int[] iArr, int i2);

    void glLogicOp(int i2);

    void glMaterialf(int i2, int i3, float f2);

    void glMaterialfv(int i2, int i3, FloatBuffer floatBuffer);

    void glMaterialfv(int i2, int i3, float[] fArr, int i4);

    void glMaterialx(int i2, int i3, int i4);

    void glMaterialxv(int i2, int i3, IntBuffer intBuffer);

    void glMaterialxv(int i2, int i3, int[] iArr, int i4);

    void glMatrixMode(int i2);

    void glMultMatrixf(FloatBuffer floatBuffer);

    void glMultMatrixf(float[] fArr, int i2);

    void glMultMatrixx(IntBuffer intBuffer);

    void glMultMatrixx(int[] iArr, int i2);

    void glMultiTexCoord4f(int i2, float f2, float f3, float f4, float f5);

    void glMultiTexCoord4x(int i2, int i3, int i4, int i5, int i6);

    void glNormal3f(float f2, float f3, float f4);

    void glNormal3x(int i2, int i3, int i4);

    void glNormalPointer(int i2, int i3, Buffer buffer);

    void glOrthof(float f2, float f3, float f4, float f5, float f6, float f7);

    void glOrthox(int i2, int i3, int i4, int i5, int i6, int i7);

    void glPixelStorei(int i2, int i3);

    void glPointSize(float f2);

    void glPointSizex(int i2);

    void glPolygonOffset(float f2, float f3);

    void glPolygonOffsetx(int i2, int i3);

    void glPopMatrix();

    void glPushMatrix();

    void glReadPixels(int i2, int i3, int i4, int i5, int i6, int i7, Buffer buffer);

    void glRotatef(float f2, float f3, float f4, float f5);

    void glRotatex(int i2, int i3, int i4, int i5);

    void glSampleCoverage(float f2, boolean z2);

    void glSampleCoveragex(int i2, boolean z2);

    void glScalef(float f2, float f3, float f4);

    void glScalex(int i2, int i3, int i4);

    void glScissor(int i2, int i3, int i4, int i5);

    void glShadeModel(int i2);

    void glStencilFunc(int i2, int i3, int i4);

    void glStencilMask(int i2);

    void glStencilOp(int i2, int i3, int i4);

    void glTexCoordPointer(int i2, int i3, int i4, Buffer buffer);

    void glTexEnvf(int i2, int i3, float f2);

    void glTexEnvfv(int i2, int i3, FloatBuffer floatBuffer);

    void glTexEnvfv(int i2, int i3, float[] fArr, int i4);

    void glTexEnvx(int i2, int i3, int i4);

    void glTexEnvxv(int i2, int i3, IntBuffer intBuffer);

    void glTexEnvxv(int i2, int i3, int[] iArr, int i4);

    void glTexImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer);

    void glTexParameterf(int i2, int i3, float f2);

    void glTexParameterx(int i2, int i3, int i4);

    void glTexSubImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer);

    void glTranslatef(float f2, float f3, float f4);

    void glTranslatex(int i2, int i3, int i4);

    void glVertexPointer(int i2, int i3, int i4, Buffer buffer);

    void glViewport(int i2, int i3, int i4, int i5);
}
