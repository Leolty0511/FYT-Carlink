package android.opengl;

import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import r.a;
import r.b;
import r.c;
import r.d;
import r.e;
import r.f;

/* JADX INFO: loaded from: classes.dex */
abstract class GLWrapperBase implements f, a, b, c, d, e {
    protected a mgl;
    protected b mgl10Ext;
    protected c mgl11;
    protected d mgl11Ext;
    protected e mgl11ExtensionPack;

    public GLWrapperBase(f fVar) {
        this.mgl = (a) fVar;
        if (fVar instanceof b) {
            this.mgl10Ext = (b) fVar;
        }
        if (fVar instanceof c) {
            this.mgl11 = (c) fVar;
        }
        if (fVar instanceof d) {
            this.mgl11Ext = (d) fVar;
        }
        if (fVar instanceof e) {
            this.mgl11ExtensionPack = (e) fVar;
        }
    }

    public abstract /* synthetic */ void glActiveTexture(int i2);

    public abstract /* synthetic */ void glAlphaFunc(int i2, float f2);

    public abstract /* synthetic */ void glAlphaFuncx(int i2, int i3);

    public abstract /* synthetic */ void glBindBuffer(int i2, int i3);

    public abstract /* synthetic */ void glBindFramebufferOES(int i2, int i3);

    public abstract /* synthetic */ void glBindRenderbufferOES(int i2, int i3);

    public abstract /* synthetic */ void glBindTexture(int i2, int i3);

    public abstract /* synthetic */ void glBlendEquation(int i2);

    public abstract /* synthetic */ void glBlendEquationSeparate(int i2, int i3);

    public abstract /* synthetic */ void glBlendFunc(int i2, int i3);

    public abstract /* synthetic */ void glBlendFuncSeparate(int i2, int i3, int i4, int i5);

    public abstract /* synthetic */ void glBufferData(int i2, int i3, Buffer buffer, int i4);

    public abstract /* synthetic */ void glBufferSubData(int i2, int i3, int i4, Buffer buffer);

    public abstract /* synthetic */ int glCheckFramebufferStatusOES(int i2);

    public abstract /* synthetic */ void glClear(int i2);

    public abstract /* synthetic */ void glClearColor(float f2, float f3, float f4, float f5);

    public abstract /* synthetic */ void glClearColorx(int i2, int i3, int i4, int i5);

    public abstract /* synthetic */ void glClearDepthf(float f2);

    public abstract /* synthetic */ void glClearDepthx(int i2);

    public abstract /* synthetic */ void glClearStencil(int i2);

    public abstract /* synthetic */ void glClientActiveTexture(int i2);

    public abstract /* synthetic */ void glClipPlanef(int i2, FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glClipPlanef(int i2, float[] fArr, int i3);

    public abstract /* synthetic */ void glClipPlanex(int i2, IntBuffer intBuffer);

    public abstract /* synthetic */ void glClipPlanex(int i2, int[] iArr, int i3);

    public abstract /* synthetic */ void glColor4f(float f2, float f3, float f4, float f5);

    public abstract /* synthetic */ void glColor4ub(byte b2, byte b3, byte b4, byte b5);

    public abstract /* synthetic */ void glColor4x(int i2, int i3, int i4, int i5);

    public abstract /* synthetic */ void glColorMask(boolean z2, boolean z3, boolean z4, boolean z5);

    public abstract /* synthetic */ void glColorPointer(int i2, int i3, int i4, int i5);

    public abstract /* synthetic */ void glColorPointer(int i2, int i3, int i4, Buffer buffer);

    public abstract /* synthetic */ void glCompressedTexImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer);

    public abstract /* synthetic */ void glCompressedTexSubImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer);

    public abstract /* synthetic */ void glCopyTexImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    public abstract /* synthetic */ void glCopyTexSubImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    public abstract /* synthetic */ void glCullFace(int i2);

    public abstract /* synthetic */ void glCurrentPaletteMatrixOES(int i2);

    public abstract /* synthetic */ void glDeleteBuffers(int i2, IntBuffer intBuffer);

    public abstract /* synthetic */ void glDeleteBuffers(int i2, int[] iArr, int i3);

    public abstract /* synthetic */ void glDeleteFramebuffersOES(int i2, IntBuffer intBuffer);

    public abstract /* synthetic */ void glDeleteFramebuffersOES(int i2, int[] iArr, int i3);

    public abstract /* synthetic */ void glDeleteRenderbuffersOES(int i2, IntBuffer intBuffer);

    public abstract /* synthetic */ void glDeleteRenderbuffersOES(int i2, int[] iArr, int i3);

    public abstract /* synthetic */ void glDeleteTextures(int i2, IntBuffer intBuffer);

    public abstract /* synthetic */ void glDeleteTextures(int i2, int[] iArr, int i3);

    public abstract /* synthetic */ void glDepthFunc(int i2);

    public abstract /* synthetic */ void glDepthMask(boolean z2);

    public abstract /* synthetic */ void glDepthRangef(float f2, float f3);

    public abstract /* synthetic */ void glDepthRangex(int i2, int i3);

    public abstract /* synthetic */ void glDisable(int i2);

    public abstract /* synthetic */ void glDisableClientState(int i2);

    public abstract /* synthetic */ void glDrawArrays(int i2, int i3, int i4);

    public abstract /* synthetic */ void glDrawElements(int i2, int i3, int i4, int i5);

    public abstract /* synthetic */ void glDrawElements(int i2, int i3, int i4, Buffer buffer);

    public abstract /* synthetic */ void glDrawTexfOES(float f2, float f3, float f4, float f5, float f6);

    public abstract /* synthetic */ void glDrawTexfvOES(FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glDrawTexfvOES(float[] fArr, int i2);

    public abstract /* synthetic */ void glDrawTexiOES(int i2, int i3, int i4, int i5, int i6);

    public abstract /* synthetic */ void glDrawTexivOES(IntBuffer intBuffer);

    public abstract /* synthetic */ void glDrawTexivOES(int[] iArr, int i2);

    public abstract /* synthetic */ void glDrawTexsOES(short s2, short s3, short s4, short s5, short s6);

    public abstract /* synthetic */ void glDrawTexsvOES(ShortBuffer shortBuffer);

    public abstract /* synthetic */ void glDrawTexsvOES(short[] sArr, int i2);

    public abstract /* synthetic */ void glDrawTexxOES(int i2, int i3, int i4, int i5, int i6);

    public abstract /* synthetic */ void glDrawTexxvOES(IntBuffer intBuffer);

    public abstract /* synthetic */ void glDrawTexxvOES(int[] iArr, int i2);

    public abstract /* synthetic */ void glEnable(int i2);

    public abstract /* synthetic */ void glEnableClientState(int i2);

    public abstract /* synthetic */ void glFinish();

    public abstract /* synthetic */ void glFlush();

    public abstract /* synthetic */ void glFogf(int i2, float f2);

    public abstract /* synthetic */ void glFogfv(int i2, FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glFogfv(int i2, float[] fArr, int i3);

    public abstract /* synthetic */ void glFogx(int i2, int i3);

    public abstract /* synthetic */ void glFogxv(int i2, IntBuffer intBuffer);

    public abstract /* synthetic */ void glFogxv(int i2, int[] iArr, int i3);

    public abstract /* synthetic */ void glFramebufferRenderbufferOES(int i2, int i3, int i4, int i5);

    public abstract /* synthetic */ void glFramebufferTexture2DOES(int i2, int i3, int i4, int i5, int i6);

    public abstract /* synthetic */ void glFrontFace(int i2);

    public abstract /* synthetic */ void glFrustumf(float f2, float f3, float f4, float f5, float f6, float f7);

    public abstract /* synthetic */ void glFrustumx(int i2, int i3, int i4, int i5, int i6, int i7);

    public abstract /* synthetic */ void glGenBuffers(int i2, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGenBuffers(int i2, int[] iArr, int i3);

    public abstract /* synthetic */ void glGenFramebuffersOES(int i2, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGenFramebuffersOES(int i2, int[] iArr, int i3);

    public abstract /* synthetic */ void glGenRenderbuffersOES(int i2, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGenRenderbuffersOES(int i2, int[] iArr, int i3);

    public abstract /* synthetic */ void glGenTextures(int i2, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGenTextures(int i2, int[] iArr, int i3);

    public abstract /* synthetic */ void glGenerateMipmapOES(int i2);

    public abstract /* synthetic */ void glGetBooleanv(int i2, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGetBooleanv(int i2, boolean[] zArr, int i3);

    public abstract /* synthetic */ void glGetBufferParameteriv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGetBufferParameteriv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glGetClipPlanef(int i2, FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glGetClipPlanef(int i2, float[] fArr, int i3);

    public abstract /* synthetic */ void glGetClipPlanex(int i2, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGetClipPlanex(int i2, int[] iArr, int i3);

    public abstract /* synthetic */ int glGetError();

    public abstract /* synthetic */ void glGetFixedv(int i2, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGetFixedv(int i2, int[] iArr, int i3);

    public abstract /* synthetic */ void glGetFloatv(int i2, FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glGetFloatv(int i2, float[] fArr, int i3);

    public abstract /* synthetic */ void glGetFramebufferAttachmentParameterivOES(int i2, int i3, int i4, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGetFramebufferAttachmentParameterivOES(int i2, int i3, int i4, int[] iArr, int i5);

    public abstract /* synthetic */ void glGetIntegerv(int i2, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGetIntegerv(int i2, int[] iArr, int i3);

    public abstract /* synthetic */ void glGetLightfv(int i2, int i3, FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glGetLightfv(int i2, int i3, float[] fArr, int i4);

    public abstract /* synthetic */ void glGetLightxv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGetLightxv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glGetMaterialfv(int i2, int i3, FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glGetMaterialfv(int i2, int i3, float[] fArr, int i4);

    public abstract /* synthetic */ void glGetMaterialxv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGetMaterialxv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glGetPointerv(int i2, Buffer[] bufferArr);

    public abstract /* synthetic */ void glGetRenderbufferParameterivOES(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGetRenderbufferParameterivOES(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ String glGetString(int i2);

    public abstract /* synthetic */ void glGetTexEnviv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGetTexEnviv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glGetTexEnvxv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGetTexEnvxv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glGetTexGenfv(int i2, int i3, FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glGetTexGenfv(int i2, int i3, float[] fArr, int i4);

    public abstract /* synthetic */ void glGetTexGeniv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGetTexGeniv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glGetTexGenxv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGetTexGenxv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glGetTexParameterfv(int i2, int i3, FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glGetTexParameterfv(int i2, int i3, float[] fArr, int i4);

    public abstract /* synthetic */ void glGetTexParameteriv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGetTexParameteriv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glGetTexParameterxv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glGetTexParameterxv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glHint(int i2, int i3);

    public abstract /* synthetic */ boolean glIsBuffer(int i2);

    public abstract /* synthetic */ boolean glIsEnabled(int i2);

    public abstract /* synthetic */ boolean glIsFramebufferOES(int i2);

    public abstract /* synthetic */ boolean glIsRenderbufferOES(int i2);

    public abstract /* synthetic */ boolean glIsTexture(int i2);

    public abstract /* synthetic */ void glLightModelf(int i2, float f2);

    public abstract /* synthetic */ void glLightModelfv(int i2, FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glLightModelfv(int i2, float[] fArr, int i3);

    public abstract /* synthetic */ void glLightModelx(int i2, int i3);

    public abstract /* synthetic */ void glLightModelxv(int i2, IntBuffer intBuffer);

    public abstract /* synthetic */ void glLightModelxv(int i2, int[] iArr, int i3);

    public abstract /* synthetic */ void glLightf(int i2, int i3, float f2);

    public abstract /* synthetic */ void glLightfv(int i2, int i3, FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glLightfv(int i2, int i3, float[] fArr, int i4);

    public abstract /* synthetic */ void glLightx(int i2, int i3, int i4);

    public abstract /* synthetic */ void glLightxv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glLightxv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glLineWidth(float f2);

    public abstract /* synthetic */ void glLineWidthx(int i2);

    public abstract /* synthetic */ void glLoadIdentity();

    public abstract /* synthetic */ void glLoadMatrixf(FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glLoadMatrixf(float[] fArr, int i2);

    public abstract /* synthetic */ void glLoadMatrixx(IntBuffer intBuffer);

    public abstract /* synthetic */ void glLoadMatrixx(int[] iArr, int i2);

    public abstract /* synthetic */ void glLoadPaletteFromModelViewMatrixOES();

    public abstract /* synthetic */ void glLogicOp(int i2);

    public abstract /* synthetic */ void glMaterialf(int i2, int i3, float f2);

    public abstract /* synthetic */ void glMaterialfv(int i2, int i3, FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glMaterialfv(int i2, int i3, float[] fArr, int i4);

    public abstract /* synthetic */ void glMaterialx(int i2, int i3, int i4);

    public abstract /* synthetic */ void glMaterialxv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glMaterialxv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glMatrixIndexPointerOES(int i2, int i3, int i4, int i5);

    public abstract /* synthetic */ void glMatrixIndexPointerOES(int i2, int i3, int i4, Buffer buffer);

    public abstract /* synthetic */ void glMatrixMode(int i2);

    public abstract /* synthetic */ void glMultMatrixf(FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glMultMatrixf(float[] fArr, int i2);

    public abstract /* synthetic */ void glMultMatrixx(IntBuffer intBuffer);

    public abstract /* synthetic */ void glMultMatrixx(int[] iArr, int i2);

    public abstract /* synthetic */ void glMultiTexCoord4f(int i2, float f2, float f3, float f4, float f5);

    public abstract /* synthetic */ void glMultiTexCoord4x(int i2, int i3, int i4, int i5, int i6);

    public abstract /* synthetic */ void glNormal3f(float f2, float f3, float f4);

    public abstract /* synthetic */ void glNormal3x(int i2, int i3, int i4);

    public abstract /* synthetic */ void glNormalPointer(int i2, int i3, int i4);

    public abstract /* synthetic */ void glNormalPointer(int i2, int i3, Buffer buffer);

    public abstract /* synthetic */ void glOrthof(float f2, float f3, float f4, float f5, float f6, float f7);

    public abstract /* synthetic */ void glOrthox(int i2, int i3, int i4, int i5, int i6, int i7);

    public abstract /* synthetic */ void glPixelStorei(int i2, int i3);

    public abstract /* synthetic */ void glPointParameterf(int i2, float f2);

    public abstract /* synthetic */ void glPointParameterfv(int i2, FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glPointParameterfv(int i2, float[] fArr, int i3);

    public abstract /* synthetic */ void glPointParameterx(int i2, int i3);

    public abstract /* synthetic */ void glPointParameterxv(int i2, IntBuffer intBuffer);

    public abstract /* synthetic */ void glPointParameterxv(int i2, int[] iArr, int i3);

    public abstract /* synthetic */ void glPointSize(float f2);

    public abstract /* synthetic */ void glPointSizePointerOES(int i2, int i3, Buffer buffer);

    public abstract /* synthetic */ void glPointSizex(int i2);

    public abstract /* synthetic */ void glPolygonOffset(float f2, float f3);

    public abstract /* synthetic */ void glPolygonOffsetx(int i2, int i3);

    public abstract /* synthetic */ void glPopMatrix();

    public abstract /* synthetic */ void glPushMatrix();

    public abstract /* synthetic */ int glQueryMatrixxOES(IntBuffer intBuffer, IntBuffer intBuffer2);

    public abstract /* synthetic */ int glQueryMatrixxOES(int[] iArr, int i2, int[] iArr2, int i3);

    public abstract /* synthetic */ void glReadPixels(int i2, int i3, int i4, int i5, int i6, int i7, Buffer buffer);

    public abstract /* synthetic */ void glRenderbufferStorageOES(int i2, int i3, int i4, int i5);

    public abstract /* synthetic */ void glRotatef(float f2, float f3, float f4, float f5);

    public abstract /* synthetic */ void glRotatex(int i2, int i3, int i4, int i5);

    public abstract /* synthetic */ void glSampleCoverage(float f2, boolean z2);

    public abstract /* synthetic */ void glSampleCoveragex(int i2, boolean z2);

    public abstract /* synthetic */ void glScalef(float f2, float f3, float f4);

    public abstract /* synthetic */ void glScalex(int i2, int i3, int i4);

    public abstract /* synthetic */ void glScissor(int i2, int i3, int i4, int i5);

    public abstract /* synthetic */ void glShadeModel(int i2);

    public abstract /* synthetic */ void glStencilFunc(int i2, int i3, int i4);

    public abstract /* synthetic */ void glStencilMask(int i2);

    public abstract /* synthetic */ void glStencilOp(int i2, int i3, int i4);

    public abstract /* synthetic */ void glTexCoordPointer(int i2, int i3, int i4, int i5);

    public abstract /* synthetic */ void glTexCoordPointer(int i2, int i3, int i4, Buffer buffer);

    public abstract /* synthetic */ void glTexEnvf(int i2, int i3, float f2);

    public abstract /* synthetic */ void glTexEnvfv(int i2, int i3, FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glTexEnvfv(int i2, int i3, float[] fArr, int i4);

    public abstract /* synthetic */ void glTexEnvi(int i2, int i3, int i4);

    public abstract /* synthetic */ void glTexEnviv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glTexEnviv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glTexEnvx(int i2, int i3, int i4);

    public abstract /* synthetic */ void glTexEnvxv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glTexEnvxv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glTexGenf(int i2, int i3, float f2);

    public abstract /* synthetic */ void glTexGenfv(int i2, int i3, FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glTexGenfv(int i2, int i3, float[] fArr, int i4);

    public abstract /* synthetic */ void glTexGeni(int i2, int i3, int i4);

    public abstract /* synthetic */ void glTexGeniv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glTexGeniv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glTexGenx(int i2, int i3, int i4);

    public abstract /* synthetic */ void glTexGenxv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glTexGenxv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glTexImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer);

    public abstract /* synthetic */ void glTexParameterf(int i2, int i3, float f2);

    public abstract /* synthetic */ void glTexParameterfv(int i2, int i3, FloatBuffer floatBuffer);

    public abstract /* synthetic */ void glTexParameterfv(int i2, int i3, float[] fArr, int i4);

    public abstract /* synthetic */ void glTexParameteri(int i2, int i3, int i4);

    public abstract /* synthetic */ void glTexParameteriv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glTexParameteriv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glTexParameterx(int i2, int i3, int i4);

    public abstract /* synthetic */ void glTexParameterxv(int i2, int i3, IntBuffer intBuffer);

    public abstract /* synthetic */ void glTexParameterxv(int i2, int i3, int[] iArr, int i4);

    public abstract /* synthetic */ void glTexSubImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer);

    public abstract /* synthetic */ void glTranslatef(float f2, float f3, float f4);

    public abstract /* synthetic */ void glTranslatex(int i2, int i3, int i4);

    public abstract /* synthetic */ void glVertexPointer(int i2, int i3, int i4, int i5);

    public abstract /* synthetic */ void glVertexPointer(int i2, int i3, int i4, Buffer buffer);

    public abstract /* synthetic */ void glViewport(int i2, int i3, int i4, int i5);

    public abstract /* synthetic */ void glWeightPointerOES(int i2, int i3, int i4, int i5);

    public abstract /* synthetic */ void glWeightPointerOES(int i2, int i3, int i4, Buffer buffer);
}
