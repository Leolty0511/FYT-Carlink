.class abstract Landroid/opengl/GLWrapperBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/f;
.implements Lb0/a;
.implements Lb0/b;
.implements Lb0/c;
.implements Lb0/d;
.implements Lb0/e;


# instance fields
.field public mgl:Lb0/a;

.field public mgl10Ext:Lb0/b;

.field public mgl11:Lb0/c;

.field public mgl11Ext:Lb0/d;

.field public mgl11ExtensionPack:Lb0/e;


# direct methods
.method public constructor <init>(Lb0/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    move-object v0, p1

    check-cast v0, Lb0/a;

    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    .line 3
    instance-of v0, p1, Lb0/b;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Lb0/b;

    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Lb0/b;

    .line 5
    :cond_0
    instance-of v0, p1, Lb0/c;

    if-eqz v0, :cond_1

    .line 6
    move-object v0, p1

    check-cast v0, Lb0/c;

    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    .line 7
    :cond_1
    instance-of v0, p1, Lb0/d;

    if-eqz v0, :cond_2

    .line 8
    move-object v0, p1

    check-cast v0, Lb0/d;

    iput-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    .line 9
    :cond_2
    instance-of v0, p1, Lb0/e;

    if-eqz v0, :cond_3

    .line 10
    check-cast p1, Lb0/e;

    iput-object p1, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    :cond_3
    return-void
.end method


# virtual methods
.method public abstract synthetic glActiveTexture(I)V
.end method

.method public abstract synthetic glAlphaFunc(IF)V
.end method

.method public abstract synthetic glAlphaFuncx(II)V
.end method

.method public abstract synthetic glBindBuffer(II)V
.end method

.method public abstract synthetic glBindFramebufferOES(II)V
.end method

.method public abstract synthetic glBindRenderbufferOES(II)V
.end method

.method public abstract synthetic glBindTexture(II)V
.end method

.method public abstract synthetic glBlendEquation(I)V
.end method

.method public abstract synthetic glBlendEquationSeparate(II)V
.end method

.method public abstract synthetic glBlendFunc(II)V
.end method

.method public abstract synthetic glBlendFuncSeparate(IIII)V
.end method

.method public abstract synthetic glBufferData(IILjava/nio/Buffer;I)V
.end method

.method public abstract synthetic glBufferSubData(IIILjava/nio/Buffer;)V
.end method

.method public abstract synthetic glCheckFramebufferStatusOES(I)I
.end method

.method public abstract synthetic glClear(I)V
.end method

.method public abstract synthetic glClearColor(FFFF)V
.end method

.method public abstract synthetic glClearColorx(IIII)V
.end method

.method public abstract synthetic glClearDepthf(F)V
.end method

.method public abstract synthetic glClearDepthx(I)V
.end method

.method public abstract synthetic glClearStencil(I)V
.end method

.method public abstract synthetic glClientActiveTexture(I)V
.end method

.method public abstract synthetic glClipPlanef(ILjava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glClipPlanef(I[FI)V
.end method

.method public abstract synthetic glClipPlanex(ILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glClipPlanex(I[II)V
.end method

.method public abstract synthetic glColor4f(FFFF)V
.end method

.method public abstract synthetic glColor4ub(BBBB)V
.end method

.method public abstract synthetic glColor4x(IIII)V
.end method

.method public abstract synthetic glColorMask(ZZZZ)V
.end method

.method public abstract synthetic glColorPointer(IIII)V
.end method

.method public abstract synthetic glColorPointer(IIILjava/nio/Buffer;)V
.end method

.method public abstract synthetic glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
.end method

.method public abstract synthetic glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
.end method

.method public abstract synthetic glCopyTexImage2D(IIIIIIII)V
.end method

.method public abstract synthetic glCopyTexSubImage2D(IIIIIIII)V
.end method

.method public abstract synthetic glCullFace(I)V
.end method

.method public abstract synthetic glCurrentPaletteMatrixOES(I)V
.end method

.method public abstract synthetic glDeleteBuffers(ILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glDeleteBuffers(I[II)V
.end method

.method public abstract synthetic glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glDeleteFramebuffersOES(I[II)V
.end method

.method public abstract synthetic glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glDeleteRenderbuffersOES(I[II)V
.end method

.method public abstract synthetic glDeleteTextures(ILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glDeleteTextures(I[II)V
.end method

.method public abstract synthetic glDepthFunc(I)V
.end method

.method public abstract synthetic glDepthMask(Z)V
.end method

.method public abstract synthetic glDepthRangef(FF)V
.end method

.method public abstract synthetic glDepthRangex(II)V
.end method

.method public abstract synthetic glDisable(I)V
.end method

.method public abstract synthetic glDisableClientState(I)V
.end method

.method public abstract synthetic glDrawArrays(III)V
.end method

.method public abstract synthetic glDrawElements(IIII)V
.end method

.method public abstract synthetic glDrawElements(IIILjava/nio/Buffer;)V
.end method

.method public abstract synthetic glDrawTexfOES(FFFFF)V
.end method

.method public abstract synthetic glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glDrawTexfvOES([FI)V
.end method

.method public abstract synthetic glDrawTexiOES(IIIII)V
.end method

.method public abstract synthetic glDrawTexivOES(Ljava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glDrawTexivOES([II)V
.end method

.method public abstract synthetic glDrawTexsOES(SSSSS)V
.end method

.method public abstract synthetic glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
.end method

.method public abstract synthetic glDrawTexsvOES([SI)V
.end method

.method public abstract synthetic glDrawTexxOES(IIIII)V
.end method

.method public abstract synthetic glDrawTexxvOES(Ljava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glDrawTexxvOES([II)V
.end method

.method public abstract synthetic glEnable(I)V
.end method

.method public abstract synthetic glEnableClientState(I)V
.end method

.method public abstract synthetic glFinish()V
.end method

.method public abstract synthetic glFlush()V
.end method

.method public abstract synthetic glFogf(IF)V
.end method

.method public abstract synthetic glFogfv(ILjava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glFogfv(I[FI)V
.end method

.method public abstract synthetic glFogx(II)V
.end method

.method public abstract synthetic glFogxv(ILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glFogxv(I[II)V
.end method

.method public abstract synthetic glFramebufferRenderbufferOES(IIII)V
.end method

.method public abstract synthetic glFramebufferTexture2DOES(IIIII)V
.end method

.method public abstract synthetic glFrontFace(I)V
.end method

.method public abstract synthetic glFrustumf(FFFFFF)V
.end method

.method public abstract synthetic glFrustumx(IIIIII)V
.end method

.method public abstract synthetic glGenBuffers(ILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGenBuffers(I[II)V
.end method

.method public abstract synthetic glGenFramebuffersOES(ILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGenFramebuffersOES(I[II)V
.end method

.method public abstract synthetic glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGenRenderbuffersOES(I[II)V
.end method

.method public abstract synthetic glGenTextures(ILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGenTextures(I[II)V
.end method

.method public abstract synthetic glGenerateMipmapOES(I)V
.end method

.method public abstract synthetic glGetBooleanv(ILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGetBooleanv(I[ZI)V
.end method

.method public abstract synthetic glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGetBufferParameteriv(II[II)V
.end method

.method public abstract synthetic glGetClipPlanef(ILjava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glGetClipPlanef(I[FI)V
.end method

.method public abstract synthetic glGetClipPlanex(ILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGetClipPlanex(I[II)V
.end method

.method public abstract synthetic glGetError()I
.end method

.method public abstract synthetic glGetFixedv(ILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGetFixedv(I[II)V
.end method

.method public abstract synthetic glGetFloatv(ILjava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glGetFloatv(I[FI)V
.end method

.method public abstract synthetic glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGetFramebufferAttachmentParameterivOES(III[II)V
.end method

.method public abstract synthetic glGetIntegerv(ILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGetIntegerv(I[II)V
.end method

.method public abstract synthetic glGetLightfv(IILjava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glGetLightfv(II[FI)V
.end method

.method public abstract synthetic glGetLightxv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGetLightxv(II[II)V
.end method

.method public abstract synthetic glGetMaterialfv(IILjava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glGetMaterialfv(II[FI)V
.end method

.method public abstract synthetic glGetMaterialxv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGetMaterialxv(II[II)V
.end method

.method public abstract synthetic glGetPointerv(I[Ljava/nio/Buffer;)V
.end method

.method public abstract synthetic glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGetRenderbufferParameterivOES(II[II)V
.end method

.method public abstract synthetic glGetString(I)Ljava/lang/String;
.end method

.method public abstract synthetic glGetTexEnviv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGetTexEnviv(II[II)V
.end method

.method public abstract synthetic glGetTexEnvxv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGetTexEnvxv(II[II)V
.end method

.method public abstract synthetic glGetTexGenfv(IILjava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glGetTexGenfv(II[FI)V
.end method

.method public abstract synthetic glGetTexGeniv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGetTexGeniv(II[II)V
.end method

.method public abstract synthetic glGetTexGenxv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGetTexGenxv(II[II)V
.end method

.method public abstract synthetic glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glGetTexParameterfv(II[FI)V
.end method

.method public abstract synthetic glGetTexParameteriv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGetTexParameteriv(II[II)V
.end method

.method public abstract synthetic glGetTexParameterxv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glGetTexParameterxv(II[II)V
.end method

.method public abstract synthetic glHint(II)V
.end method

.method public abstract synthetic glIsBuffer(I)Z
.end method

.method public abstract synthetic glIsEnabled(I)Z
.end method

.method public abstract synthetic glIsFramebufferOES(I)Z
.end method

.method public abstract synthetic glIsRenderbufferOES(I)Z
.end method

.method public abstract synthetic glIsTexture(I)Z
.end method

.method public abstract synthetic glLightModelf(IF)V
.end method

.method public abstract synthetic glLightModelfv(ILjava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glLightModelfv(I[FI)V
.end method

.method public abstract synthetic glLightModelx(II)V
.end method

.method public abstract synthetic glLightModelxv(ILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glLightModelxv(I[II)V
.end method

.method public abstract synthetic glLightf(IIF)V
.end method

.method public abstract synthetic glLightfv(IILjava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glLightfv(II[FI)V
.end method

.method public abstract synthetic glLightx(III)V
.end method

.method public abstract synthetic glLightxv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glLightxv(II[II)V
.end method

.method public abstract synthetic glLineWidth(F)V
.end method

.method public abstract synthetic glLineWidthx(I)V
.end method

.method public abstract synthetic glLoadIdentity()V
.end method

.method public abstract synthetic glLoadMatrixf(Ljava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glLoadMatrixf([FI)V
.end method

.method public abstract synthetic glLoadMatrixx(Ljava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glLoadMatrixx([II)V
.end method

.method public abstract synthetic glLoadPaletteFromModelViewMatrixOES()V
.end method

.method public abstract synthetic glLogicOp(I)V
.end method

.method public abstract synthetic glMaterialf(IIF)V
.end method

.method public abstract synthetic glMaterialfv(IILjava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glMaterialfv(II[FI)V
.end method

.method public abstract synthetic glMaterialx(III)V
.end method

.method public abstract synthetic glMaterialxv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glMaterialxv(II[II)V
.end method

.method public abstract synthetic glMatrixIndexPointerOES(IIII)V
.end method

.method public abstract synthetic glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
.end method

.method public abstract synthetic glMatrixMode(I)V
.end method

.method public abstract synthetic glMultMatrixf(Ljava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glMultMatrixf([FI)V
.end method

.method public abstract synthetic glMultMatrixx(Ljava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glMultMatrixx([II)V
.end method

.method public abstract synthetic glMultiTexCoord4f(IFFFF)V
.end method

.method public abstract synthetic glMultiTexCoord4x(IIIII)V
.end method

.method public abstract synthetic glNormal3f(FFF)V
.end method

.method public abstract synthetic glNormal3x(III)V
.end method

.method public abstract synthetic glNormalPointer(III)V
.end method

.method public abstract synthetic glNormalPointer(IILjava/nio/Buffer;)V
.end method

.method public abstract synthetic glOrthof(FFFFFF)V
.end method

.method public abstract synthetic glOrthox(IIIIII)V
.end method

.method public abstract synthetic glPixelStorei(II)V
.end method

.method public abstract synthetic glPointParameterf(IF)V
.end method

.method public abstract synthetic glPointParameterfv(ILjava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glPointParameterfv(I[FI)V
.end method

.method public abstract synthetic glPointParameterx(II)V
.end method

.method public abstract synthetic glPointParameterxv(ILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glPointParameterxv(I[II)V
.end method

.method public abstract synthetic glPointSize(F)V
.end method

.method public abstract synthetic glPointSizePointerOES(IILjava/nio/Buffer;)V
.end method

.method public abstract synthetic glPointSizex(I)V
.end method

.method public abstract synthetic glPolygonOffset(FF)V
.end method

.method public abstract synthetic glPolygonOffsetx(II)V
.end method

.method public abstract synthetic glPopMatrix()V
.end method

.method public abstract synthetic glPushMatrix()V
.end method

.method public abstract synthetic glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
.end method

.method public abstract synthetic glQueryMatrixxOES([II[II)I
.end method

.method public abstract synthetic glReadPixels(IIIIIILjava/nio/Buffer;)V
.end method

.method public abstract synthetic glRenderbufferStorageOES(IIII)V
.end method

.method public abstract synthetic glRotatef(FFFF)V
.end method

.method public abstract synthetic glRotatex(IIII)V
.end method

.method public abstract synthetic glSampleCoverage(FZ)V
.end method

.method public abstract synthetic glSampleCoveragex(IZ)V
.end method

.method public abstract synthetic glScalef(FFF)V
.end method

.method public abstract synthetic glScalex(III)V
.end method

.method public abstract synthetic glScissor(IIII)V
.end method

.method public abstract synthetic glShadeModel(I)V
.end method

.method public abstract synthetic glStencilFunc(III)V
.end method

.method public abstract synthetic glStencilMask(I)V
.end method

.method public abstract synthetic glStencilOp(III)V
.end method

.method public abstract synthetic glTexCoordPointer(IIII)V
.end method

.method public abstract synthetic glTexCoordPointer(IIILjava/nio/Buffer;)V
.end method

.method public abstract synthetic glTexEnvf(IIF)V
.end method

.method public abstract synthetic glTexEnvfv(IILjava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glTexEnvfv(II[FI)V
.end method

.method public abstract synthetic glTexEnvi(III)V
.end method

.method public abstract synthetic glTexEnviv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glTexEnviv(II[II)V
.end method

.method public abstract synthetic glTexEnvx(III)V
.end method

.method public abstract synthetic glTexEnvxv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glTexEnvxv(II[II)V
.end method

.method public abstract synthetic glTexGenf(IIF)V
.end method

.method public abstract synthetic glTexGenfv(IILjava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glTexGenfv(II[FI)V
.end method

.method public abstract synthetic glTexGeni(III)V
.end method

.method public abstract synthetic glTexGeniv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glTexGeniv(II[II)V
.end method

.method public abstract synthetic glTexGenx(III)V
.end method

.method public abstract synthetic glTexGenxv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glTexGenxv(II[II)V
.end method

.method public abstract synthetic glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
.end method

.method public abstract synthetic glTexParameterf(IIF)V
.end method

.method public abstract synthetic glTexParameterfv(IILjava/nio/FloatBuffer;)V
.end method

.method public abstract synthetic glTexParameterfv(II[FI)V
.end method

.method public abstract synthetic glTexParameteri(III)V
.end method

.method public abstract synthetic glTexParameteriv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glTexParameteriv(II[II)V
.end method

.method public abstract synthetic glTexParameterx(III)V
.end method

.method public abstract synthetic glTexParameterxv(IILjava/nio/IntBuffer;)V
.end method

.method public abstract synthetic glTexParameterxv(II[II)V
.end method

.method public abstract synthetic glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
.end method

.method public abstract synthetic glTranslatef(FFF)V
.end method

.method public abstract synthetic glTranslatex(III)V
.end method

.method public abstract synthetic glVertexPointer(IIII)V
.end method

.method public abstract synthetic glVertexPointer(IIILjava/nio/Buffer;)V
.end method

.method public abstract synthetic glViewport(IIII)V
.end method

.method public abstract synthetic glWeightPointerOES(IIII)V
.end method

.method public abstract synthetic glWeightPointerOES(IIILjava/nio/Buffer;)V
.end method
