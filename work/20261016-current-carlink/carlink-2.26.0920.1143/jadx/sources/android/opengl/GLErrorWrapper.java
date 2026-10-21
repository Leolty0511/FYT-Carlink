package android.opengl;

import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import r.f;

/* JADX INFO: loaded from: classes.dex */
class GLErrorWrapper extends GLWrapperBase {
    boolean mCheckError;
    boolean mCheckThread;
    Thread mOurThread;

    public GLErrorWrapper(f fVar, int i2) {
        super(fVar);
        this.mCheckError = (i2 & 1) != 0;
        this.mCheckThread = (i2 & 2) != 0;
    }

    private void checkError() {
        int iGlGetError;
        if (this.mCheckError && (iGlGetError = this.mgl.glGetError()) != 0) {
            throw new GLException(iGlGetError);
        }
    }

    private void checkThread() {
        if (this.mCheckThread) {
            Thread threadCurrentThread = Thread.currentThread();
            Thread thread = this.mOurThread;
            if (thread == null) {
                this.mOurThread = threadCurrentThread;
            } else if (!thread.equals(threadCurrentThread)) {
                throw new GLException(28672, "OpenGL method called from wrong thread.");
            }
        }
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glActiveTexture(int i2) {
        checkThread();
        this.mgl.glActiveTexture(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glAlphaFunc(int i2, float f2) {
        checkThread();
        this.mgl.glAlphaFunc(i2, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glAlphaFuncx(int i2, int i3) {
        checkThread();
        this.mgl.glAlphaFuncx(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glBindBuffer(int i2, int i3) {
        checkThread();
        this.mgl11.glBindBuffer(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glBindFramebufferOES(int i2, int i3) {
        checkThread();
        this.mgl11ExtensionPack.glBindFramebufferOES(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glBindRenderbufferOES(int i2, int i3) {
        checkThread();
        this.mgl11ExtensionPack.glBindRenderbufferOES(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glBindTexture(int i2, int i3) {
        checkThread();
        this.mgl.glBindTexture(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glBlendEquation(int i2) {
        checkThread();
        this.mgl11ExtensionPack.glBlendEquation(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glBlendEquationSeparate(int i2, int i3) {
        checkThread();
        this.mgl11ExtensionPack.glBlendEquationSeparate(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glBlendFunc(int i2, int i3) {
        checkThread();
        this.mgl.glBlendFunc(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glBlendFuncSeparate(int i2, int i3, int i4, int i5) {
        checkThread();
        this.mgl11ExtensionPack.glBlendFuncSeparate(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glBufferData(int i2, int i3, Buffer buffer, int i4) {
        checkThread();
        this.mgl11.glBufferData(i2, i3, buffer, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glBufferSubData(int i2, int i3, int i4, Buffer buffer) {
        checkThread();
        this.mgl11.glBufferSubData(i2, i3, i4, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public int glCheckFramebufferStatusOES(int i2) {
        checkThread();
        int iGlCheckFramebufferStatusOES = this.mgl11ExtensionPack.glCheckFramebufferStatusOES(i2);
        checkError();
        return iGlCheckFramebufferStatusOES;
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glClear(int i2) {
        checkThread();
        this.mgl.glClear(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glClearColor(float f2, float f3, float f4, float f5) {
        checkThread();
        this.mgl.glClearColor(f2, f3, f4, f5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glClearColorx(int i2, int i3, int i4, int i5) {
        checkThread();
        this.mgl.glClearColorx(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glClearDepthf(float f2) {
        checkThread();
        this.mgl.glClearDepthf(f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glClearDepthx(int i2) {
        checkThread();
        this.mgl.glClearDepthx(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glClearStencil(int i2) {
        checkThread();
        this.mgl.glClearStencil(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glClientActiveTexture(int i2) {
        checkThread();
        this.mgl.glClientActiveTexture(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glClipPlanef(int i2, float[] fArr, int i3) {
        checkThread();
        this.mgl11.glClipPlanef(i2, fArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glClipPlanex(int i2, int[] iArr, int i3) {
        checkThread();
        this.mgl11.glClipPlanex(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glColor4f(float f2, float f3, float f4, float f5) {
        checkThread();
        this.mgl.glColor4f(f2, f3, f4, f5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glColor4ub(byte b2, byte b3, byte b4, byte b5) {
        checkThread();
        this.mgl11.glColor4ub(b2, b3, b4, b5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glColor4x(int i2, int i3, int i4, int i5) {
        checkThread();
        this.mgl.glColor4x(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glColorMask(boolean z2, boolean z3, boolean z4, boolean z5) {
        checkThread();
        this.mgl.glColorMask(z2, z3, z4, z5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glColorPointer(int i2, int i3, int i4, Buffer buffer) {
        checkThread();
        this.mgl.glColorPointer(i2, i3, i4, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glCompressedTexImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, Buffer buffer) {
        checkThread();
        this.mgl.glCompressedTexImage2D(i2, i3, i4, i5, i6, i7, i8, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glCompressedTexSubImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer) {
        checkThread();
        this.mgl.glCompressedTexSubImage2D(i2, i3, i4, i5, i6, i7, i8, i9, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glCopyTexImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        checkThread();
        this.mgl.glCopyTexImage2D(i2, i3, i4, i5, i6, i7, i8, i9);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glCopyTexSubImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        checkThread();
        this.mgl.glCopyTexSubImage2D(i2, i3, i4, i5, i6, i7, i8, i9);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glCullFace(int i2) {
        checkThread();
        this.mgl.glCullFace(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glCurrentPaletteMatrixOES(int i2) {
        checkThread();
        this.mgl11Ext.glCurrentPaletteMatrixOES(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glDeleteBuffers(int i2, int[] iArr, int i3) {
        checkThread();
        this.mgl11.glDeleteBuffers(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glDeleteFramebuffersOES(int i2, int[] iArr, int i3) {
        checkThread();
        this.mgl11ExtensionPack.glDeleteFramebuffersOES(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glDeleteRenderbuffersOES(int i2, int[] iArr, int i3) {
        checkThread();
        this.mgl11ExtensionPack.glDeleteRenderbuffersOES(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDeleteTextures(int i2, int[] iArr, int i3) {
        checkThread();
        this.mgl.glDeleteTextures(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDepthFunc(int i2) {
        checkThread();
        this.mgl.glDepthFunc(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDepthMask(boolean z2) {
        checkThread();
        this.mgl.glDepthMask(z2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDepthRangef(float f2, float f3) {
        checkThread();
        this.mgl.glDepthRangef(f2, f3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDepthRangex(int i2, int i3) {
        checkThread();
        this.mgl.glDepthRangex(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDisable(int i2) {
        checkThread();
        this.mgl.glDisable(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDisableClientState(int i2) {
        checkThread();
        this.mgl.glDisableClientState(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDrawArrays(int i2, int i3, int i4) {
        checkThread();
        this.mgl.glDrawArrays(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDrawElements(int i2, int i3, int i4, Buffer buffer) {
        checkThread();
        this.mgl.glDrawElements(i2, i3, i4, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexfOES(float f2, float f3, float f4, float f5, float f6) {
        checkThread();
        this.mgl11Ext.glDrawTexfOES(f2, f3, f4, f5, f6);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexfvOES(float[] fArr, int i2) {
        checkThread();
        this.mgl11Ext.glDrawTexfvOES(fArr, i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexiOES(int i2, int i3, int i4, int i5, int i6) {
        checkThread();
        this.mgl11Ext.glDrawTexiOES(i2, i3, i4, i5, i6);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexivOES(int[] iArr, int i2) {
        checkThread();
        this.mgl11Ext.glDrawTexivOES(iArr, i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexsOES(short s2, short s3, short s4, short s5, short s6) {
        checkThread();
        this.mgl11Ext.glDrawTexsOES(s2, s3, s4, s5, s6);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexsvOES(short[] sArr, int i2) {
        checkThread();
        this.mgl11Ext.glDrawTexsvOES(sArr, i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexxOES(int i2, int i3, int i4, int i5, int i6) {
        checkThread();
        this.mgl11Ext.glDrawTexxOES(i2, i3, i4, i5, i6);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexxvOES(int[] iArr, int i2) {
        checkThread();
        this.mgl11Ext.glDrawTexxvOES(iArr, i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glEnable(int i2) {
        checkThread();
        this.mgl.glEnable(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glEnableClientState(int i2) {
        checkThread();
        this.mgl.glEnableClientState(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFinish() {
        checkThread();
        this.mgl.glFinish();
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFlush() {
        checkThread();
        this.mgl.glFlush();
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFogf(int i2, float f2) {
        checkThread();
        this.mgl.glFogf(i2, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFogfv(int i2, float[] fArr, int i3) {
        checkThread();
        this.mgl.glFogfv(i2, fArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFogx(int i2, int i3) {
        checkThread();
        this.mgl.glFogx(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFogxv(int i2, int[] iArr, int i3) {
        checkThread();
        this.mgl.glFogxv(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glFramebufferRenderbufferOES(int i2, int i3, int i4, int i5) {
        checkThread();
        this.mgl11ExtensionPack.glFramebufferRenderbufferOES(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glFramebufferTexture2DOES(int i2, int i3, int i4, int i5, int i6) {
        checkThread();
        this.mgl11ExtensionPack.glFramebufferTexture2DOES(i2, i3, i4, i5, i6);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFrontFace(int i2) {
        checkThread();
        this.mgl.glFrontFace(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFrustumf(float f2, float f3, float f4, float f5, float f6, float f7) {
        checkThread();
        this.mgl.glFrustumf(f2, f3, f4, f5, f6, f7);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFrustumx(int i2, int i3, int i4, int i5, int i6, int i7) {
        checkThread();
        this.mgl.glFrustumx(i2, i3, i4, i5, i6, i7);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGenBuffers(int i2, int[] iArr, int i3) {
        checkThread();
        this.mgl11.glGenBuffers(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGenFramebuffersOES(int i2, int[] iArr, int i3) {
        checkThread();
        this.mgl11ExtensionPack.glGenFramebuffersOES(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGenRenderbuffersOES(int i2, int[] iArr, int i3) {
        checkThread();
        this.mgl11ExtensionPack.glGenRenderbuffersOES(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glGenTextures(int i2, int[] iArr, int i3) {
        checkThread();
        this.mgl.glGenTextures(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGenerateMipmapOES(int i2) {
        checkThread();
        this.mgl11ExtensionPack.glGenerateMipmapOES(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetBooleanv(int i2, boolean[] zArr, int i3) {
        checkThread();
        this.mgl11.glGetBooleanv(i2, zArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetBufferParameteriv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl11.glGetBufferParameteriv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetClipPlanef(int i2, float[] fArr, int i3) {
        checkThread();
        this.mgl11.glGetClipPlanef(i2, fArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetClipPlanex(int i2, int[] iArr, int i3) {
        checkThread();
        this.mgl11.glGetClipPlanex(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public int glGetError() {
        checkThread();
        return this.mgl.glGetError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetFixedv(int i2, int[] iArr, int i3) {
        checkThread();
        this.mgl11.glGetFixedv(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetFloatv(int i2, float[] fArr, int i3) {
        checkThread();
        this.mgl11.glGetFloatv(i2, fArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetFramebufferAttachmentParameterivOES(int i2, int i3, int i4, int[] iArr, int i5) {
        checkThread();
        this.mgl11ExtensionPack.glGetFramebufferAttachmentParameterivOES(i2, i3, i4, iArr, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glGetIntegerv(int i2, int[] iArr, int i3) {
        checkThread();
        this.mgl.glGetIntegerv(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetLightfv(int i2, int i3, float[] fArr, int i4) {
        checkThread();
        this.mgl11.glGetLightfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetLightxv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl11.glGetLightxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetMaterialfv(int i2, int i3, float[] fArr, int i4) {
        checkThread();
        this.mgl11.glGetMaterialfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetMaterialxv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl11.glGetMaterialxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetPointerv(int i2, Buffer[] bufferArr) {
        checkThread();
        this.mgl11.glGetPointerv(i2, bufferArr);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetRenderbufferParameterivOES(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl11ExtensionPack.glGetRenderbufferParameterivOES(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public String glGetString(int i2) {
        checkThread();
        String strGlGetString = this.mgl.glGetString(i2);
        checkError();
        return strGlGetString;
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexEnviv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl11.glGetTexEnviv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexEnvxv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl11.glGetTexEnvxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetTexGenfv(int i2, int i3, float[] fArr, int i4) {
        checkThread();
        this.mgl11ExtensionPack.glGetTexGenfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetTexGeniv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl11ExtensionPack.glGetTexGeniv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetTexGenxv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl11ExtensionPack.glGetTexGenxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexParameterfv(int i2, int i3, float[] fArr, int i4) {
        checkThread();
        this.mgl11.glGetTexParameterfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexParameteriv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl11.glGetTexParameteriv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexParameterxv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl11.glGetTexParameterxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glHint(int i2, int i3) {
        checkThread();
        this.mgl.glHint(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public boolean glIsBuffer(int i2) {
        checkThread();
        boolean zGlIsBuffer = this.mgl11.glIsBuffer(i2);
        checkError();
        return zGlIsBuffer;
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public boolean glIsEnabled(int i2) {
        checkThread();
        boolean zGlIsEnabled = this.mgl11.glIsEnabled(i2);
        checkError();
        return zGlIsEnabled;
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public boolean glIsFramebufferOES(int i2) {
        checkThread();
        boolean zGlIsFramebufferOES = this.mgl11ExtensionPack.glIsFramebufferOES(i2);
        checkError();
        return zGlIsFramebufferOES;
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public boolean glIsRenderbufferOES(int i2) {
        checkThread();
        this.mgl11ExtensionPack.glIsRenderbufferOES(i2);
        checkError();
        return false;
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public boolean glIsTexture(int i2) {
        checkThread();
        boolean zGlIsTexture = this.mgl11.glIsTexture(i2);
        checkError();
        return zGlIsTexture;
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightModelf(int i2, float f2) {
        checkThread();
        this.mgl.glLightModelf(i2, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightModelfv(int i2, float[] fArr, int i3) {
        checkThread();
        this.mgl.glLightModelfv(i2, fArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightModelx(int i2, int i3) {
        checkThread();
        this.mgl.glLightModelx(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightModelxv(int i2, int[] iArr, int i3) {
        checkThread();
        this.mgl.glLightModelxv(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightf(int i2, int i3, float f2) {
        checkThread();
        this.mgl.glLightf(i2, i3, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightfv(int i2, int i3, float[] fArr, int i4) {
        checkThread();
        this.mgl.glLightfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightx(int i2, int i3, int i4) {
        checkThread();
        this.mgl.glLightx(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightxv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl.glLightxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLineWidth(float f2) {
        checkThread();
        this.mgl.glLineWidth(f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLineWidthx(int i2) {
        checkThread();
        this.mgl.glLineWidthx(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLoadIdentity() {
        checkThread();
        this.mgl.glLoadIdentity();
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLoadMatrixf(float[] fArr, int i2) {
        checkThread();
        this.mgl.glLoadMatrixf(fArr, i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLoadMatrixx(int[] iArr, int i2) {
        checkThread();
        this.mgl.glLoadMatrixx(iArr, i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glLoadPaletteFromModelViewMatrixOES() {
        checkThread();
        this.mgl11Ext.glLoadPaletteFromModelViewMatrixOES();
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLogicOp(int i2) {
        checkThread();
        this.mgl.glLogicOp(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMaterialf(int i2, int i3, float f2) {
        checkThread();
        this.mgl.glMaterialf(i2, i3, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMaterialfv(int i2, int i3, float[] fArr, int i4) {
        checkThread();
        this.mgl.glMaterialfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMaterialx(int i2, int i3, int i4) {
        checkThread();
        this.mgl.glMaterialx(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMaterialxv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl.glMaterialxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glMatrixIndexPointerOES(int i2, int i3, int i4, Buffer buffer) {
        checkThread();
        this.mgl11Ext.glMatrixIndexPointerOES(i2, i3, i4, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMatrixMode(int i2) {
        checkThread();
        this.mgl.glMatrixMode(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMultMatrixf(float[] fArr, int i2) {
        checkThread();
        this.mgl.glMultMatrixf(fArr, i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMultMatrixx(int[] iArr, int i2) {
        checkThread();
        this.mgl.glMultMatrixx(iArr, i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMultiTexCoord4f(int i2, float f2, float f3, float f4, float f5) {
        checkThread();
        this.mgl.glMultiTexCoord4f(i2, f2, f3, f4, f5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMultiTexCoord4x(int i2, int i3, int i4, int i5, int i6) {
        checkThread();
        this.mgl.glMultiTexCoord4x(i2, i3, i4, i5, i6);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glNormal3f(float f2, float f3, float f4) {
        checkThread();
        this.mgl.glNormal3f(f2, f3, f4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glNormal3x(int i2, int i3, int i4) {
        checkThread();
        this.mgl.glNormal3x(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glNormalPointer(int i2, int i3, Buffer buffer) {
        checkThread();
        this.mgl.glNormalPointer(i2, i3, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glOrthof(float f2, float f3, float f4, float f5, float f6, float f7) {
        checkThread();
        this.mgl.glOrthof(f2, f3, f4, f5, f6, f7);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glOrthox(int i2, int i3, int i4, int i5, int i6, int i7) {
        checkThread();
        this.mgl.glOrthox(i2, i3, i4, i5, i6, i7);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glPixelStorei(int i2, int i3) {
        checkThread();
        this.mgl.glPixelStorei(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glPointParameterf(int i2, float f2) {
        checkThread();
        this.mgl11.glPointParameterf(i2, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glPointParameterfv(int i2, float[] fArr, int i3) {
        checkThread();
        this.mgl11.glPointParameterfv(i2, fArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glPointParameterx(int i2, int i3) {
        checkThread();
        this.mgl11.glPointParameterx(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glPointParameterxv(int i2, int[] iArr, int i3) {
        checkThread();
        this.mgl11.glPointParameterxv(i2, iArr, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glPointSize(float f2) {
        checkThread();
        this.mgl.glPointSize(f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glPointSizePointerOES(int i2, int i3, Buffer buffer) {
        checkThread();
        this.mgl11.glPointSizePointerOES(i2, i3, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glPointSizex(int i2) {
        checkThread();
        this.mgl.glPointSizex(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glPolygonOffset(float f2, float f3) {
        checkThread();
        this.mgl.glPolygonOffset(f2, f3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glPolygonOffsetx(int i2, int i3) {
        checkThread();
        this.mgl.glPolygonOffsetx(i2, i3);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glPopMatrix() {
        checkThread();
        this.mgl.glPopMatrix();
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glPushMatrix() {
        checkThread();
        this.mgl.glPushMatrix();
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.b
    public int glQueryMatrixxOES(int[] iArr, int i2, int[] iArr2, int i3) {
        checkThread();
        int iGlQueryMatrixxOES = this.mgl10Ext.glQueryMatrixxOES(iArr, i2, iArr2, i3);
        checkError();
        return iGlQueryMatrixxOES;
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glReadPixels(int i2, int i3, int i4, int i5, int i6, int i7, Buffer buffer) {
        checkThread();
        this.mgl.glReadPixels(i2, i3, i4, i5, i6, i7, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glRenderbufferStorageOES(int i2, int i3, int i4, int i5) {
        checkThread();
        this.mgl11ExtensionPack.glRenderbufferStorageOES(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glRotatef(float f2, float f3, float f4, float f5) {
        checkThread();
        this.mgl.glRotatef(f2, f3, f4, f5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glRotatex(int i2, int i3, int i4, int i5) {
        checkThread();
        this.mgl.glRotatex(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glSampleCoverage(float f2, boolean z2) {
        checkThread();
        this.mgl.glSampleCoverage(f2, z2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glSampleCoveragex(int i2, boolean z2) {
        checkThread();
        this.mgl.glSampleCoveragex(i2, z2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glScalef(float f2, float f3, float f4) {
        checkThread();
        this.mgl.glScalef(f2, f3, f4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glScalex(int i2, int i3, int i4) {
        checkThread();
        this.mgl.glScalex(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glScissor(int i2, int i3, int i4, int i5) {
        checkThread();
        this.mgl.glScissor(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glShadeModel(int i2) {
        checkThread();
        this.mgl.glShadeModel(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glStencilFunc(int i2, int i3, int i4) {
        checkThread();
        this.mgl.glStencilFunc(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glStencilMask(int i2) {
        checkThread();
        this.mgl.glStencilMask(i2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glStencilOp(int i2, int i3, int i4) {
        checkThread();
        this.mgl.glStencilOp(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexCoordPointer(int i2, int i3, int i4, Buffer buffer) {
        checkThread();
        this.mgl.glTexCoordPointer(i2, i3, i4, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexEnvf(int i2, int i3, float f2) {
        checkThread();
        this.mgl.glTexEnvf(i2, i3, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexEnvfv(int i2, int i3, float[] fArr, int i4) {
        checkThread();
        this.mgl.glTexEnvfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexEnvi(int i2, int i3, int i4) {
        checkThread();
        this.mgl11.glTexEnvi(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexEnviv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl11.glTexEnviv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexEnvx(int i2, int i3, int i4) {
        checkThread();
        this.mgl.glTexEnvx(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexEnvxv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl.glTexEnvxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGenf(int i2, int i3, float f2) {
        checkThread();
        this.mgl11ExtensionPack.glTexGenf(i2, i3, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGenfv(int i2, int i3, float[] fArr, int i4) {
        checkThread();
        this.mgl11ExtensionPack.glTexGenfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGeni(int i2, int i3, int i4) {
        checkThread();
        this.mgl11ExtensionPack.glTexGeni(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGeniv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl11ExtensionPack.glTexGeniv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGenx(int i2, int i3, int i4) {
        checkThread();
        this.mgl11ExtensionPack.glTexGenx(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGenxv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl11ExtensionPack.glTexGenxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer) {
        checkThread();
        this.mgl.glTexImage2D(i2, i3, i4, i5, i6, i7, i8, i9, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexParameterf(int i2, int i3, float f2) {
        checkThread();
        this.mgl.glTexParameterf(i2, i3, f2);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexParameterfv(int i2, int i3, float[] fArr, int i4) {
        checkThread();
        this.mgl11.glTexParameterfv(i2, i3, fArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexParameteri(int i2, int i3, int i4) {
        checkThread();
        this.mgl11.glTexParameteri(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexParameteriv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl11.glTexParameteriv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexParameterx(int i2, int i3, int i4) {
        checkThread();
        this.mgl.glTexParameterx(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexParameterxv(int i2, int i3, int[] iArr, int i4) {
        checkThread();
        this.mgl11.glTexParameterxv(i2, i3, iArr, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexSubImage2D(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, Buffer buffer) {
        checkThread();
        this.mgl.glTexSubImage2D(i2, i3, i4, i5, i6, i7, i8, i9, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTranslatef(float f2, float f3, float f4) {
        checkThread();
        this.mgl.glTranslatef(f2, f3, f4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTranslatex(int i2, int i3, int i4) {
        checkThread();
        this.mgl.glTranslatex(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glVertexPointer(int i2, int i3, int i4, Buffer buffer) {
        checkThread();
        this.mgl.glVertexPointer(i2, i3, i4, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glViewport(int i2, int i3, int i4, int i5) {
        checkThread();
        this.mgl.glViewport(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glWeightPointerOES(int i2, int i3, int i4, Buffer buffer) {
        checkThread();
        this.mgl11Ext.glWeightPointerOES(i2, i3, i4, buffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glClipPlanef(int i2, FloatBuffer floatBuffer) {
        checkThread();
        this.mgl11.glClipPlanef(i2, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glClipPlanex(int i2, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glClipPlanex(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glColorPointer(int i2, int i3, int i4, int i5) {
        checkThread();
        this.mgl11.glColorPointer(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glDeleteBuffers(int i2, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glDeleteBuffers(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glDeleteFramebuffersOES(int i2, IntBuffer intBuffer) {
        checkThread();
        this.mgl11ExtensionPack.glDeleteFramebuffersOES(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glDeleteRenderbuffersOES(int i2, IntBuffer intBuffer) {
        checkThread();
        this.mgl11ExtensionPack.glDeleteRenderbuffersOES(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glDeleteTextures(int i2, IntBuffer intBuffer) {
        checkThread();
        this.mgl.glDeleteTextures(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glDrawElements(int i2, int i3, int i4, int i5) {
        checkThread();
        this.mgl11.glDrawElements(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexfvOES(FloatBuffer floatBuffer) {
        checkThread();
        this.mgl11Ext.glDrawTexfvOES(floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexivOES(IntBuffer intBuffer) {
        checkThread();
        this.mgl11Ext.glDrawTexivOES(intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexsvOES(ShortBuffer shortBuffer) {
        checkThread();
        this.mgl11Ext.glDrawTexsvOES(shortBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glDrawTexxvOES(IntBuffer intBuffer) {
        checkThread();
        this.mgl11Ext.glDrawTexxvOES(intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFogfv(int i2, FloatBuffer floatBuffer) {
        checkThread();
        this.mgl.glFogfv(i2, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glFogxv(int i2, IntBuffer intBuffer) {
        checkThread();
        this.mgl.glFogxv(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGenBuffers(int i2, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glGenBuffers(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGenFramebuffersOES(int i2, IntBuffer intBuffer) {
        checkThread();
        this.mgl11ExtensionPack.glGenFramebuffersOES(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGenRenderbuffersOES(int i2, IntBuffer intBuffer) {
        checkThread();
        this.mgl11ExtensionPack.glGenRenderbuffersOES(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glGenTextures(int i2, IntBuffer intBuffer) {
        checkThread();
        this.mgl.glGenTextures(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetBooleanv(int i2, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glGetBooleanv(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetBufferParameteriv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glGetBufferParameteriv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetClipPlanef(int i2, FloatBuffer floatBuffer) {
        checkThread();
        this.mgl11.glGetClipPlanef(i2, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetClipPlanex(int i2, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glGetClipPlanex(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetFixedv(int i2, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glGetFixedv(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetFloatv(int i2, FloatBuffer floatBuffer) {
        checkThread();
        this.mgl11.glGetFloatv(i2, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetFramebufferAttachmentParameterivOES(int i2, int i3, int i4, IntBuffer intBuffer) {
        checkThread();
        this.mgl11ExtensionPack.glGetFramebufferAttachmentParameterivOES(i2, i3, i4, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glGetIntegerv(int i2, IntBuffer intBuffer) {
        checkThread();
        this.mgl.glGetIntegerv(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetLightfv(int i2, int i3, FloatBuffer floatBuffer) {
        checkThread();
        this.mgl11.glGetLightfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetLightxv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glGetLightxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetMaterialfv(int i2, int i3, FloatBuffer floatBuffer) {
        checkThread();
        this.mgl11.glGetMaterialfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetMaterialxv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glGetMaterialxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetRenderbufferParameterivOES(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl11ExtensionPack.glGetRenderbufferParameterivOES(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexEnviv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glGetTexEnviv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexEnvxv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glGetTexEnvxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetTexGenfv(int i2, int i3, FloatBuffer floatBuffer) {
        checkThread();
        this.mgl11ExtensionPack.glGetTexGenfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetTexGeniv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl11ExtensionPack.glGetTexGeniv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glGetTexGenxv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl11ExtensionPack.glGetTexGenxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexParameterfv(int i2, int i3, FloatBuffer floatBuffer) {
        checkThread();
        this.mgl11.glGetTexParameterfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexParameteriv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glGetTexParameteriv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glGetTexParameterxv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glGetTexParameterxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightModelfv(int i2, FloatBuffer floatBuffer) {
        checkThread();
        this.mgl.glLightModelfv(i2, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightModelxv(int i2, IntBuffer intBuffer) {
        checkThread();
        this.mgl.glLightModelxv(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightfv(int i2, int i3, FloatBuffer floatBuffer) {
        checkThread();
        this.mgl.glLightfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLightxv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl.glLightxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLoadMatrixf(FloatBuffer floatBuffer) {
        checkThread();
        this.mgl.glLoadMatrixf(floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glLoadMatrixx(IntBuffer intBuffer) {
        checkThread();
        this.mgl.glLoadMatrixx(intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMaterialfv(int i2, int i3, FloatBuffer floatBuffer) {
        checkThread();
        this.mgl.glMaterialfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMaterialxv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl.glMaterialxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glMatrixIndexPointerOES(int i2, int i3, int i4, int i5) {
        checkThread();
        this.mgl11Ext.glMatrixIndexPointerOES(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMultMatrixf(FloatBuffer floatBuffer) {
        checkThread();
        this.mgl.glMultMatrixf(floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glMultMatrixx(IntBuffer intBuffer) {
        checkThread();
        this.mgl.glMultMatrixx(intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glNormalPointer(int i2, int i3, int i4) {
        checkThread();
        this.mgl11.glNormalPointer(i2, i3, i4);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glPointParameterfv(int i2, FloatBuffer floatBuffer) {
        checkThread();
        this.mgl11.glPointParameterfv(i2, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glPointParameterxv(int i2, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glPointParameterxv(i2, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.b
    public int glQueryMatrixxOES(IntBuffer intBuffer, IntBuffer intBuffer2) {
        checkThread();
        int iGlQueryMatrixxOES = this.mgl10Ext.glQueryMatrixxOES(intBuffer, intBuffer2);
        checkError();
        return iGlQueryMatrixxOES;
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexCoordPointer(int i2, int i3, int i4, int i5) {
        checkThread();
        this.mgl11.glTexCoordPointer(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexEnvfv(int i2, int i3, FloatBuffer floatBuffer) {
        checkThread();
        this.mgl.glTexEnvfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexEnviv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glTexEnviv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.a
    public void glTexEnvxv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl.glTexEnvxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGenfv(int i2, int i3, FloatBuffer floatBuffer) {
        checkThread();
        this.mgl11ExtensionPack.glTexGenfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGeniv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl11ExtensionPack.glTexGeniv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.e
    public void glTexGenxv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl11ExtensionPack.glTexGenxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexParameterfv(int i2, int i3, FloatBuffer floatBuffer) {
        checkThread();
        this.mgl11.glTexParameterfv(i2, i3, floatBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexParameteriv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glTexParameteriv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glTexParameterxv(int i2, int i3, IntBuffer intBuffer) {
        checkThread();
        this.mgl11.glTexParameterxv(i2, i3, intBuffer);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.c
    public void glVertexPointer(int i2, int i3, int i4, int i5) {
        checkThread();
        this.mgl11.glVertexPointer(i2, i3, i4, i5);
        checkError();
    }

    @Override // android.opengl.GLWrapperBase, r.d
    public void glWeightPointerOES(int i2, int i3, int i4, int i5) {
        checkThread();
        this.mgl11Ext.glWeightPointerOES(i2, i3, i4, i5);
        checkError();
    }
}
