package com.google.android.gles_jni;

import android.app.AppGlobals;
import android.content.pm.ApplicationInfo;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import b0.a;
import b0.b;
import b0.c;
import b0.d;
import b0.e;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes.dex */
public class GLImpl implements a, b, c, d, e {
    private boolean haveCheckedExtensions;
    private boolean have_OES_blend_equation_separate;
    private boolean have_OES_blend_subtract;
    private boolean have_OES_framebuffer_object;
    private boolean have_OES_texture_cube_map;
    public Buffer _colorPointer = null;
    public Buffer _normalPointer = null;
    public Buffer _texCoordPointer = null;
    public Buffer _vertexPointer = null;
    public Buffer _pointSizePointerOES = null;
    public Buffer _matrixIndexPointerOES = null;
    public Buffer _weightPointerOES = null;

    static {
        _nativeClassInit();
    }

    private static native void _nativeClassInit();

    private static boolean allowIndirectBuffers(String str) {
        int i2;
        try {
            ApplicationInfo applicationInfo = AppGlobals.getPackageManager().getApplicationInfo(str, 0, UserHandle.myUserId());
            i2 = applicationInfo != null ? applicationInfo.targetSdkVersion : 0;
        } catch (RemoteException unused) {
        }
        Log.e("OpenGLES", String.format("Application %s (SDK target %d) called a GL11 Pointer method with an indirect Buffer.", str, Integer.valueOf(i2)));
        return i2 <= 3;
    }

    private native void glColorPointerBounds(int i2, int i3, int i4, Buffer buffer, int i5);

    private native void glMatrixIndexPointerOESBounds(int i2, int i3, int i4, Buffer buffer, int i5);

    private native void glNormalPointerBounds(int i2, int i3, Buffer buffer, int i4);

    private native void glPointSizePointerOESBounds(int i2, int i3, Buffer buffer, int i4);

    private native void glTexCoordPointerBounds(int i2, int i3, int i4, Buffer buffer, int i5);

    private native void glVertexPointerBounds(int i2, int i3, int i4, Buffer buffer, int i5);

    private native void glWeightPointerOESBounds(int i2, int i3, int i4, Buffer buffer, int i5);

    public native String _glGetString(int i2);

    @Override // b0.a
    public native void glActiveTexture(int i2);

    @Override // b0.a
    public native void glAlphaFunc(int i2, float f2);

    @Override // b0.a
    public native void glAlphaFuncx(int i2, int i3);

    @Override // b0.c
    public native void glBindBuffer(int i2, int i3);

    @Override // b0.e
    public native void glBindFramebufferOES(int i2, int i3);

    @Override // b0.e
    public native void glBindRenderbufferOES(int i2, int i3);

    @Override // b0.a
    public native void glBindTexture(int i2, int i3);

    @Override // b0.e
    public native void glBlendEquation(int i2);

    @Override // b0.e
    public native void glBlendEquationSeparate(int i2, int i3);

    @Override // b0.a
    public native void glBlendFunc(int i2, int i3);

    @Override // b0.e
    public native void glBlendFuncSeparate(int i2, int i3, int i4, int i5);

    @Override // b0.c
    public native void glBufferData(int i2, int i3, Buffer buffer, int i4);

    @Override // b0.c
    public native void glBufferSubData(int i2, int i3, int i4, Buffer buffer);

    @Override // b0.e
    public native int glCheckFramebufferStatusOES(int i2);

    @Override // b0.a
    public native void glClear(int i2);

    @Override // b0.a
    public native void glClearColor(float f2, float f3, float f4, float f5);

    @Override // b0.a
    public native void glClearColorx(int i2, int i3, int i4, int i5);

    @Override // b0.a
    public native void glClearDepthf(float f2);

    @Override // b0.a
    public native void glClearDepthx(int i2);

    @Override // b0.a
    public native void glClearStencil(int i2);

    @Override // b0.a
    public native void glClientActiveTexture(int i2);

    @Override // b0.c
    public native void glClipPlanef(int i2, FloatBuffer floatBuffer);

    @Override // b0.c
    public native void glClipPlanef(int i2, float[] fArr, int i3);

    @Override // b0.c
    public native void glClipPlanex(int i2, IntBuffer intBuffer);

    @Override // b0.c
    public native void glClipPlanex(int i2, int[] iArr, int i3);

    @Override // b0.a
    public native void glColor4f(float f2, float f3, float f4, float f5);

    @Override // b0.c
    public native void glColor4ub(byte b2, byte b3, byte b4, byte b5);

    @Override // b0.a
    public native void glColor4x(int i2, int i3, int i4, int i5);

    @Override // b0.a
    public native void glColorMask(boolean z2, boolean z3, boolean z4, boolean z5);

    @Override // b0.c
    public native void glColorPointer(int i2, int i3, int i4, int i5);

    @Override // b0.a
    public void glColorPointer(int i2, int i3, int i4, Buffer buffer) {
        glColorPointerBounds(i2, i3, i4, buffer, buffer.remaining());
        if (i2 == 4) {
            if ((i3 == 5126 || i3 == 5121 || i3 == 5132) && i4 >= 0) {
                this._colorPointer = buffer;
            }
        }
    }

    @Override // b0.a
    public native void glCompressedTexImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer);

    @Override // b0.a
    public native void glCompressedTexSubImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer);

    @Override // b0.a
    public native void glCopyTexImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    @Override // b0.a
    public native void glCopyTexSubImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    @Override // b0.a
    public native void glCullFace(int i2);

    @Override // b0.d
    public native void glCurrentPaletteMatrixOES(int i2);

    @Override // b0.c
    public native void glDeleteBuffers(int i2, IntBuffer intBuffer);

    @Override // b0.c
    public native void glDeleteBuffers(int i2, int[] iArr, int i3);

    @Override // b0.e
    public native void glDeleteFramebuffersOES(int i2, IntBuffer intBuffer);

    @Override // b0.e
    public native void glDeleteFramebuffersOES(int i2, int[] iArr, int i3);

    @Override // b0.e
    public native void glDeleteRenderbuffersOES(int i2, IntBuffer intBuffer);

    @Override // b0.e
    public native void glDeleteRenderbuffersOES(int i2, int[] iArr, int i3);

    @Override // b0.a
    public native void glDeleteTextures(int i2, IntBuffer intBuffer);

    @Override // b0.a
    public native void glDeleteTextures(int i2, int[] iArr, int i3);

    @Override // b0.a
    public native void glDepthFunc(int i2);

    @Override // b0.a
    public native void glDepthMask(boolean z2);

    @Override // b0.a
    public native void glDepthRangef(float f2, float f3);

    @Override // b0.a
    public native void glDepthRangex(int i2, int i3);

    @Override // b0.a
    public native void glDisable(int i2);

    @Override // b0.a
    public native void glDisableClientState(int i2);

    @Override // b0.a
    public native void glDrawArrays(int i2, int i3, int i4);

    @Override // b0.c
    public native void glDrawElements(int i2, int i3, int i4, int i5);

    @Override // b0.a
    public native void glDrawElements(int i2, int i3, int i4, Buffer buffer);

    @Override // b0.d
    public native void glDrawTexfOES(float f2, float f3, float f4, float f5, float f6);

    @Override // b0.d
    public native void glDrawTexfvOES(FloatBuffer floatBuffer);

    @Override // b0.d
    public native void glDrawTexfvOES(float[] fArr, int i2);

    @Override // b0.d
    public native void glDrawTexiOES(int i2, int i3, int i4, int i5, int i6);

    @Override // b0.d
    public native void glDrawTexivOES(IntBuffer intBuffer);

    @Override // b0.d
    public native void glDrawTexivOES(int[] iArr, int i2);

    @Override // b0.d
    public native void glDrawTexsOES(short s2, short s3, short s4, short s5, short s6);

    @Override // b0.d
    public native void glDrawTexsvOES(ShortBuffer shortBuffer);

    @Override // b0.d
    public native void glDrawTexsvOES(short[] sArr, int i2);

    @Override // b0.d
    public native void glDrawTexxOES(int i2, int i3, int i4, int i5, int i6);

    @Override // b0.d
    public native void glDrawTexxvOES(IntBuffer intBuffer);

    @Override // b0.d
    public native void glDrawTexxvOES(int[] iArr, int i2);

    @Override // b0.a
    public native void glEnable(int i2);

    @Override // b0.a
    public native void glEnableClientState(int i2);

    @Override // b0.a
    public native void glFinish();

    @Override // b0.a
    public native void glFlush();

    @Override // b0.a
    public native void glFogf(int i2, float f2);

    @Override // b0.a
    public native void glFogfv(int i2, FloatBuffer floatBuffer);

    @Override // b0.a
    public native void glFogfv(int i2, float[] fArr, int i3);

    @Override // b0.a
    public native void glFogx(int i2, int i3);

    @Override // b0.a
    public native void glFogxv(int i2, IntBuffer intBuffer);

    @Override // b0.a
    public native void glFogxv(int i2, int[] iArr, int i3);

    @Override // b0.e
    public native void glFramebufferRenderbufferOES(int i2, int i3, int i4, int i5);

    @Override // b0.e
    public native void glFramebufferTexture2DOES(int i2, int i3, int i4, int i5, int i6);

    @Override // b0.a
    public native void glFrontFace(int i2);

    @Override // b0.a
    public native void glFrustumf(float f2, float f3, float f4, float f5, float f6, float f7);

    @Override // b0.a
    public native void glFrustumx(int i2, int i3, int i4, int i5, int i6, int i7);

    @Override // b0.c
    public native void glGenBuffers(int i2, IntBuffer intBuffer);

    @Override // b0.c
    public native void glGenBuffers(int i2, int[] iArr, int i3);

    @Override // b0.e
    public native void glGenFramebuffersOES(int i2, IntBuffer intBuffer);

    @Override // b0.e
    public native void glGenFramebuffersOES(int i2, int[] iArr, int i3);

    @Override // b0.e
    public native void glGenRenderbuffersOES(int i2, IntBuffer intBuffer);

    @Override // b0.e
    public native void glGenRenderbuffersOES(int i2, int[] iArr, int i3);

    @Override // b0.a
    public native void glGenTextures(int i2, IntBuffer intBuffer);

    @Override // b0.a
    public native void glGenTextures(int i2, int[] iArr, int i3);

    @Override // b0.e
    public native void glGenerateMipmapOES(int i2);

    @Override // b0.c
    public native void glGetBooleanv(int i2, IntBuffer intBuffer);

    @Override // b0.c
    public native void glGetBooleanv(int i2, boolean[] zArr, int i3);

    @Override // b0.c
    public native void glGetBufferParameteriv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.c
    public native void glGetBufferParameteriv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.c
    public native void glGetClipPlanef(int i2, FloatBuffer floatBuffer);

    @Override // b0.c
    public native void glGetClipPlanef(int i2, float[] fArr, int i3);

    @Override // b0.c
    public native void glGetClipPlanex(int i2, IntBuffer intBuffer);

    @Override // b0.c
    public native void glGetClipPlanex(int i2, int[] iArr, int i3);

    @Override // b0.a
    public native int glGetError();

    @Override // b0.c
    public native void glGetFixedv(int i2, IntBuffer intBuffer);

    @Override // b0.c
    public native void glGetFixedv(int i2, int[] iArr, int i3);

    @Override // b0.c
    public native void glGetFloatv(int i2, FloatBuffer floatBuffer);

    @Override // b0.c
    public native void glGetFloatv(int i2, float[] fArr, int i3);

    @Override // b0.e
    public native void glGetFramebufferAttachmentParameterivOES(int i2, int i3, int i4, IntBuffer intBuffer);

    @Override // b0.e
    public native void glGetFramebufferAttachmentParameterivOES(int i2, int i3, int i4, int[] iArr, int i5);

    @Override // b0.a
    public native void glGetIntegerv(int i2, IntBuffer intBuffer);

    @Override // b0.a
    public native void glGetIntegerv(int i2, int[] iArr, int i3);

    @Override // b0.c
    public native void glGetLightfv(int i2, int i3, FloatBuffer floatBuffer);

    @Override // b0.c
    public native void glGetLightfv(int i2, int i3, float[] fArr, int i4);

    @Override // b0.c
    public native void glGetLightxv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.c
    public native void glGetLightxv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.c
    public native void glGetMaterialfv(int i2, int i3, FloatBuffer floatBuffer);

    @Override // b0.c
    public native void glGetMaterialfv(int i2, int i3, float[] fArr, int i4);

    @Override // b0.c
    public native void glGetMaterialxv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.c
    public native void glGetMaterialxv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.c
    public void glGetPointerv(int i2, Buffer[] bufferArr) {
        throw new UnsupportedOperationException("glGetPointerv");
    }

    @Override // b0.e
    public native void glGetRenderbufferParameterivOES(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.e
    public native void glGetRenderbufferParameterivOES(int i2, int i3, int[] iArr, int i4);

    @Override // b0.a
    public String glGetString(int i2) {
        return _glGetString(i2);
    }

    @Override // b0.c
    public native void glGetTexEnviv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.c
    public native void glGetTexEnviv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.c
    public native void glGetTexEnvxv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.c
    public native void glGetTexEnvxv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.e
    public native void glGetTexGenfv(int i2, int i3, FloatBuffer floatBuffer);

    @Override // b0.e
    public native void glGetTexGenfv(int i2, int i3, float[] fArr, int i4);

    @Override // b0.e
    public native void glGetTexGeniv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.e
    public native void glGetTexGeniv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.e
    public native void glGetTexGenxv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.e
    public native void glGetTexGenxv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.c
    public native void glGetTexParameterfv(int i2, int i3, FloatBuffer floatBuffer);

    @Override // b0.c
    public native void glGetTexParameterfv(int i2, int i3, float[] fArr, int i4);

    @Override // b0.c
    public native void glGetTexParameteriv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.c
    public native void glGetTexParameteriv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.c
    public native void glGetTexParameterxv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.c
    public native void glGetTexParameterxv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.a
    public native void glHint(int i2, int i3);

    @Override // b0.c
    public native boolean glIsBuffer(int i2);

    @Override // b0.c
    public native boolean glIsEnabled(int i2);

    @Override // b0.e
    public native boolean glIsFramebufferOES(int i2);

    @Override // b0.e
    public native boolean glIsRenderbufferOES(int i2);

    @Override // b0.c
    public native boolean glIsTexture(int i2);

    @Override // b0.a
    public native void glLightModelf(int i2, float f2);

    @Override // b0.a
    public native void glLightModelfv(int i2, FloatBuffer floatBuffer);

    @Override // b0.a
    public native void glLightModelfv(int i2, float[] fArr, int i3);

    @Override // b0.a
    public native void glLightModelx(int i2, int i3);

    @Override // b0.a
    public native void glLightModelxv(int i2, IntBuffer intBuffer);

    @Override // b0.a
    public native void glLightModelxv(int i2, int[] iArr, int i3);

    @Override // b0.a
    public native void glLightf(int i2, int i3, float f2);

    @Override // b0.a
    public native void glLightfv(int i2, int i3, FloatBuffer floatBuffer);

    @Override // b0.a
    public native void glLightfv(int i2, int i3, float[] fArr, int i4);

    @Override // b0.a
    public native void glLightx(int i2, int i3, int i4);

    @Override // b0.a
    public native void glLightxv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.a
    public native void glLightxv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.a
    public native void glLineWidth(float f2);

    @Override // b0.a
    public native void glLineWidthx(int i2);

    @Override // b0.a
    public native void glLoadIdentity();

    @Override // b0.a
    public native void glLoadMatrixf(FloatBuffer floatBuffer);

    @Override // b0.a
    public native void glLoadMatrixf(float[] fArr, int i2);

    @Override // b0.a
    public native void glLoadMatrixx(IntBuffer intBuffer);

    @Override // b0.a
    public native void glLoadMatrixx(int[] iArr, int i2);

    @Override // b0.d
    public native void glLoadPaletteFromModelViewMatrixOES();

    @Override // b0.a
    public native void glLogicOp(int i2);

    @Override // b0.a
    public native void glMaterialf(int i2, int i3, float f2);

    @Override // b0.a
    public native void glMaterialfv(int i2, int i3, FloatBuffer floatBuffer);

    @Override // b0.a
    public native void glMaterialfv(int i2, int i3, float[] fArr, int i4);

    @Override // b0.a
    public native void glMaterialx(int i2, int i3, int i4);

    @Override // b0.a
    public native void glMaterialxv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.a
    public native void glMaterialxv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.d
    public native void glMatrixIndexPointerOES(int i2, int i3, int i4, int i5);

    @Override // b0.d
    public void glMatrixIndexPointerOES(int i2, int i3, int i4, Buffer buffer) {
        glMatrixIndexPointerOESBounds(i2, i3, i4, buffer, buffer.remaining());
        if (i2 == 2 || i2 == 3 || i2 == 4) {
            if ((i3 == 5126 || i3 == 5120 || i3 == 5122 || i3 == 5132) && i4 >= 0) {
                this._matrixIndexPointerOES = buffer;
            }
        }
    }

    @Override // b0.a
    public native void glMatrixMode(int i2);

    @Override // b0.a
    public native void glMultMatrixf(FloatBuffer floatBuffer);

    @Override // b0.a
    public native void glMultMatrixf(float[] fArr, int i2);

    @Override // b0.a
    public native void glMultMatrixx(IntBuffer intBuffer);

    @Override // b0.a
    public native void glMultMatrixx(int[] iArr, int i2);

    @Override // b0.a
    public native void glMultiTexCoord4f(int i2, float f2, float f3, float f4, float f5);

    @Override // b0.a
    public native void glMultiTexCoord4x(int i2, int i3, int i4, int i5, int i6);

    @Override // b0.a
    public native void glNormal3f(float f2, float f3, float f4);

    @Override // b0.a
    public native void glNormal3x(int i2, int i3, int i4);

    @Override // b0.c
    public native void glNormalPointer(int i2, int i3, int i4);

    @Override // b0.a
    public void glNormalPointer(int i2, int i3, Buffer buffer) {
        glNormalPointerBounds(i2, i3, buffer, buffer.remaining());
        if ((i2 == 5126 || i2 == 5120 || i2 == 5122 || i2 == 5132) && i3 >= 0) {
            this._normalPointer = buffer;
        }
    }

    @Override // b0.a
    public native void glOrthof(float f2, float f3, float f4, float f5, float f6, float f7);

    @Override // b0.a
    public native void glOrthox(int i2, int i3, int i4, int i5, int i6, int i7);

    @Override // b0.a
    public native void glPixelStorei(int i2, int i3);

    @Override // b0.c
    public native void glPointParameterf(int i2, float f2);

    @Override // b0.c
    public native void glPointParameterfv(int i2, FloatBuffer floatBuffer);

    @Override // b0.c
    public native void glPointParameterfv(int i2, float[] fArr, int i3);

    @Override // b0.c
    public native void glPointParameterx(int i2, int i3);

    @Override // b0.c
    public native void glPointParameterxv(int i2, IntBuffer intBuffer);

    @Override // b0.c
    public native void glPointParameterxv(int i2, int[] iArr, int i3);

    @Override // b0.a
    public native void glPointSize(float f2);

    @Override // b0.c
    public void glPointSizePointerOES(int i2, int i3, Buffer buffer) {
        glPointSizePointerOESBounds(i2, i3, buffer, buffer.remaining());
        if ((i2 == 5126 || i2 == 5132) && i3 >= 0) {
            this._pointSizePointerOES = buffer;
        }
    }

    @Override // b0.a
    public native void glPointSizex(int i2);

    @Override // b0.a
    public native void glPolygonOffset(float f2, float f3);

    @Override // b0.a
    public native void glPolygonOffsetx(int i2, int i3);

    @Override // b0.a
    public native void glPopMatrix();

    @Override // b0.a
    public native void glPushMatrix();

    @Override // b0.b
    public native int glQueryMatrixxOES(IntBuffer intBuffer, IntBuffer intBuffer2);

    @Override // b0.b
    public native int glQueryMatrixxOES(int[] iArr, int i2, int[] iArr2, int i3);

    @Override // b0.a
    public native void glReadPixels(int i2, int i3, int i4, int i5, int i6, int i7, Buffer buffer);

    @Override // b0.e
    public native void glRenderbufferStorageOES(int i2, int i3, int i4, int i5);

    @Override // b0.a
    public native void glRotatef(float f2, float f3, float f4, float f5);

    @Override // b0.a
    public native void glRotatex(int i2, int i3, int i4, int i5);

    @Override // b0.a
    public native void glSampleCoverage(float f2, boolean z2);

    @Override // b0.a
    public native void glSampleCoveragex(int i2, boolean z2);

    @Override // b0.a
    public native void glScalef(float f2, float f3, float f4);

    @Override // b0.a
    public native void glScalex(int i2, int i3, int i4);

    @Override // b0.a
    public native void glScissor(int i2, int i3, int i4, int i5);

    @Override // b0.a
    public native void glShadeModel(int i2);

    @Override // b0.a
    public native void glStencilFunc(int i2, int i3, int i4);

    @Override // b0.a
    public native void glStencilMask(int i2);

    @Override // b0.a
    public native void glStencilOp(int i2, int i3, int i4);

    @Override // b0.c
    public native void glTexCoordPointer(int i2, int i3, int i4, int i5);

    @Override // b0.a
    public void glTexCoordPointer(int i2, int i3, int i4, Buffer buffer) {
        glTexCoordPointerBounds(i2, i3, i4, buffer, buffer.remaining());
        if (i2 == 2 || i2 == 3 || i2 == 4) {
            if ((i3 == 5126 || i3 == 5120 || i3 == 5122 || i3 == 5132) && i4 >= 0) {
                this._texCoordPointer = buffer;
            }
        }
    }

    @Override // b0.a
    public native void glTexEnvf(int i2, int i3, float f2);

    @Override // b0.a
    public native void glTexEnvfv(int i2, int i3, FloatBuffer floatBuffer);

    @Override // b0.a
    public native void glTexEnvfv(int i2, int i3, float[] fArr, int i4);

    @Override // b0.c
    public native void glTexEnvi(int i2, int i3, int i4);

    @Override // b0.c
    public native void glTexEnviv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.c
    public native void glTexEnviv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.a
    public native void glTexEnvx(int i2, int i3, int i4);

    @Override // b0.a
    public native void glTexEnvxv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.a
    public native void glTexEnvxv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.e
    public native void glTexGenf(int i2, int i3, float f2);

    @Override // b0.e
    public native void glTexGenfv(int i2, int i3, FloatBuffer floatBuffer);

    @Override // b0.e
    public native void glTexGenfv(int i2, int i3, float[] fArr, int i4);

    @Override // b0.e
    public native void glTexGeni(int i2, int i3, int i4);

    @Override // b0.e
    public native void glTexGeniv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.e
    public native void glTexGeniv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.e
    public native void glTexGenx(int i2, int i3, int i4);

    @Override // b0.e
    public native void glTexGenxv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.e
    public native void glTexGenxv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.a
    public native void glTexImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer);

    @Override // b0.a
    public native void glTexParameterf(int i2, int i3, float f2);

    @Override // b0.c
    public native void glTexParameterfv(int i2, int i3, FloatBuffer floatBuffer);

    @Override // b0.c
    public native void glTexParameterfv(int i2, int i3, float[] fArr, int i4);

    @Override // b0.c
    public native void glTexParameteri(int i2, int i3, int i4);

    @Override // b0.c
    public native void glTexParameteriv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.c
    public native void glTexParameteriv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.a
    public native void glTexParameterx(int i2, int i3, int i4);

    @Override // b0.c
    public native void glTexParameterxv(int i2, int i3, IntBuffer intBuffer);

    @Override // b0.c
    public native void glTexParameterxv(int i2, int i3, int[] iArr, int i4);

    @Override // b0.a
    public native void glTexSubImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer);

    @Override // b0.a
    public native void glTranslatef(float f2, float f3, float f4);

    @Override // b0.a
    public native void glTranslatex(int i2, int i3, int i4);

    @Override // b0.c
    public native void glVertexPointer(int i2, int i3, int i4, int i5);

    @Override // b0.a
    public void glVertexPointer(int i2, int i3, int i4, Buffer buffer) {
        glVertexPointerBounds(i2, i3, i4, buffer, buffer.remaining());
        if (i2 == 2 || i2 == 3 || i2 == 4) {
            if ((i3 == 5126 || i3 == 5120 || i3 == 5122 || i3 == 5132) && i4 >= 0) {
                this._vertexPointer = buffer;
            }
        }
    }

    @Override // b0.a
    public native void glViewport(int i2, int i3, int i4, int i5);

    @Override // b0.d
    public native void glWeightPointerOES(int i2, int i3, int i4, int i5);

    @Override // b0.d
    public void glWeightPointerOES(int i2, int i3, int i4, Buffer buffer) {
        glWeightPointerOESBounds(i2, i3, i4, buffer, buffer.remaining());
    }
}
