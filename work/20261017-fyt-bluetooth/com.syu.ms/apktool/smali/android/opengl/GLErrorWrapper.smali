.class Landroid/opengl/GLErrorWrapper;
.super Landroid/opengl/GLWrapperBase;
.source "SourceFile"


# instance fields
.field public mCheckError:Z

.field public mCheckThread:Z

.field public mOurThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lb0/f;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/GLWrapperBase;-><init>(Lb0/f;)V

    and-int/lit8 p1, p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 2
    :goto_0
    iput-boolean p1, p0, Landroid/opengl/GLErrorWrapper;->mCheckError:Z

    and-int/lit8 p1, p2, 0x2

    if-eqz p1, :cond_1

    move v0, v1

    .line 3
    :cond_1
    iput-boolean v0, p0, Landroid/opengl/GLErrorWrapper;->mCheckThread:Z

    return-void
.end method

.method private checkError()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/opengl/GLErrorWrapper;->mCheckError:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0}, Lb0/a;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Landroid/opengl/GLException;

    invoke-direct {v1, v0}, Landroid/opengl/GLException;-><init>(I)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private checkThread()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/opengl/GLErrorWrapper;->mCheckThread:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 4
    iput-object v0, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Landroid/opengl/GLException;

    const/16 v1, 0x7000

    const-string v2, "OpenGL method called from wrong thread."

    invoke-direct {v0, v1, v2}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glActiveTexture(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glAlphaFunc(IF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glAlphaFuncx(II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glBindBuffer(II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glBindFramebufferOES(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2}, Lb0/e;->glBindFramebufferOES(II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glBindRenderbufferOES(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2}, Lb0/e;->glBindRenderbufferOES(II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glBindTexture(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glBindTexture(II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glBlendEquation(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1}, Lb0/e;->glBlendEquation(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2}, Lb0/e;->glBlendEquationSeparate(II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glBlendFunc(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glBlendFunc(II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glBlendFuncSeparate(IIII)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glBufferData(IILjava/nio/Buffer;I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glCheckFramebufferStatusOES(I)I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1}, Lb0/e;->glCheckFramebufferStatusOES(I)I

    move-result p1

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return p1
.end method

.method public glClear(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glClear(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glClearColor(FFFF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glClearColorx(IIII)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glClearDepthf(F)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glClearDepthx(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClearStencil(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glClearStencil(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glClientActiveTexture(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanef(I[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glClipPlanef(I[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glClipPlanex(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanex(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glClipPlanex(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glColor4f(FFFF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glColor4ub(BBBB)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glColor4x(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glColor4x(IIII)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glColorMask(ZZZZ)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glColorPointer(IIII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glColorPointer(IIII)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lb0/a;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lb0/a;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 10

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lb0/a;->glCopyTexImage2D(IIIIIIII)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 10

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lb0/a;->glCopyTexSubImage2D(IIIIIIII)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glCullFace(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glCullFace(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glCurrentPaletteMatrixOES(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1}, Lb0/d;->glCurrentPaletteMatrixOES(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteBuffers(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glDeleteBuffers(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2}, Lb0/e;->glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteFramebuffersOES(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glDeleteFramebuffersOES(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2}, Lb0/e;->glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteRenderbuffersOES(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glDeleteRenderbuffersOES(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glDeleteTextures(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glDepthFunc(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glDepthMask(Z)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glDepthRangef(FF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDepthRangex(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glDepthRangex(II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDisable(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glDisable(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDisableClientState(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glDisableClientState(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawArrays(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glDrawArrays(III)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glDrawElements(IIII)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfOES(FFFFF)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lb0/d;->glDrawTexfOES(FFFFF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1}, Lb0/d;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1, p2}, Lb0/d;->glDrawTexfvOES([FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexiOES(IIIII)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lb0/d;->glDrawTexiOES(IIIII)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1}, Lb0/d;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexivOES([II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1, p2}, Lb0/d;->glDrawTexivOES([II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsOES(SSSSS)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lb0/d;->glDrawTexsOES(SSSSS)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1}, Lb0/d;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1, p2}, Lb0/d;->glDrawTexsvOES([SI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxOES(IIIII)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lb0/d;->glDrawTexxOES(IIIII)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1}, Lb0/d;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxvOES([II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1, p2}, Lb0/d;->glDrawTexxvOES([II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glEnable(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glEnable(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glEnableClientState(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glEnableClientState(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFinish()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0}, Lb0/a;->glFinish()V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFlush()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0}, Lb0/a;->glFlush()V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFogf(IF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glFogf(IF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glFogfv(I[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFogx(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glFogx(II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glFogxv(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFogxv(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glFogxv(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFramebufferRenderbufferOES(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glFramebufferRenderbufferOES(IIII)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFramebufferTexture2DOES(IIIII)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lb0/e;->glFramebufferTexture2DOES(IIIII)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFrontFace(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glFrontFace(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lb0/a;->glFrustumf(FFFFFF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lb0/a;->glFrustumx(IIIIII)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenBuffers(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGenBuffers(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2}, Lb0/e;->glGenFramebuffersOES(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenFramebuffersOES(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glGenFramebuffersOES(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2}, Lb0/e;->glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenRenderbuffersOES(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glGenRenderbuffersOES(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glGenTextures(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenerateMipmapOES(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1}, Lb0/e;->glGenerateMipmapOES(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetBooleanv(I[ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetBooleanv(I[ZI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetBufferParameteriv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetBufferParameteriv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glGetClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanef(I[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetClipPlanef(I[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glGetClipPlanex(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanex(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetClipPlanex(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetError()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0}, Lb0/a;->glGetError()I

    move-result v0

    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glGetFixedv(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetFixedv(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetFixedv(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetFloatv(I[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetFloatv(I[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(III[II)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lb0/e;->glGetFramebufferAttachmentParameterivOES(III[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glGetIntegerv(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetLightfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetLightfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetLightfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetLightxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetLightxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetLightxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetMaterialfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetMaterialxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetMaterialxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glGetPointerv(I[Ljava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetRenderbufferParameterivOES(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glGetRenderbufferParameterivOES(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-object p1
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetTexEnviv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnviv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetTexEnviv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnvxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetTexEnvxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glGetTexGenfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glGetTexGenfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glGetTexGeniv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGeniv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glGetTexGeniv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glGetTexGenxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glGetTexGenxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetTexParameterfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameteriv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetTexParameteriv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glGetTexParameterxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glGetTexParameterxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glHint(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glHint(II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1}, Lb0/c;->glIsBuffer(I)Z

    move-result p1

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return p1
.end method

.method public glIsEnabled(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1}, Lb0/c;->glIsEnabled(I)Z

    move-result p1

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return p1
.end method

.method public glIsFramebufferOES(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1}, Lb0/e;->glIsFramebufferOES(I)Z

    move-result p1

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return p1
.end method

.method public glIsRenderbufferOES(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1}, Lb0/e;->glIsRenderbufferOES(I)Z

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    const/4 p1, 0x0

    return p1
.end method

.method public glIsTexture(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1}, Lb0/c;->glIsTexture(I)Z

    move-result p1

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return p1
.end method

.method public glLightModelf(IF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glLightModelf(IF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glLightModelfv(I[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightModelx(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glLightModelx(II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glLightModelxv(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glLightModelxv(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightf(IIF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glLightf(IIF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glLightfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glLightfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightx(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glLightx(III)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glLightxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glLightxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLineWidth(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glLineWidth(F)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glLineWidthx(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLoadIdentity()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0}, Lb0/a;->glLoadIdentity()V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glLoadMatrixf([FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glLoadMatrixx([II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLoadPaletteFromModelViewMatrixOES()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0}, Lb0/d;->glLoadPaletteFromModelViewMatrixOES()V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLogicOp(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glLogicOp(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glMaterialf(IIF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glMaterialfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMaterialx(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glMaterialx(III)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glMaterialxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glMaterialxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMatrixIndexPointerOES(IIII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/d;->glMatrixIndexPointerOES(IIII)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/d;->glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMatrixMode(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glMatrixMode(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glMultMatrixf([FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glMultMatrixx([II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lb0/a;->glMultiTexCoord4f(IFFFF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lb0/a;->glMultiTexCoord4x(IIIII)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glNormal3f(FFF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glNormal3x(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glNormal3x(III)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glNormalPointer(III)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glNormalPointer(III)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lb0/a;->glOrthof(FFFFFF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lb0/a;->glOrthox(IIIIII)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glPixelStorei(II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glPointParameterf(IF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glPointParameterfv(ILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterfv(I[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glPointParameterfv(I[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterx(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glPointParameterx(II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2}, Lb0/c;->glPointParameterxv(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterxv(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glPointParameterxv(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointSize(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glPointSize(F)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glPointSizePointerOES(IILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointSizex(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glPointSizex(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glPolygonOffset(FF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glPolygonOffsetx(II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0}, Lb0/a;->glPopMatrix()V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPushMatrix()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0}, Lb0/a;->glPushMatrix()V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Lb0/b;

    invoke-interface {v0, p1, p2}, Lb0/b;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result p1

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return p1
.end method

.method public glQueryMatrixxOES([II[II)I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Lb0/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/b;->glQueryMatrixxOES([II[II)I

    move-result p1

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return p1
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lb0/a;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glRenderbufferStorageOES(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glRenderbufferStorageOES(IIII)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glRotatef(FFFF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glRotatex(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glRotatex(IIII)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glSampleCoverage(FZ)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2}, Lb0/a;->glSampleCoveragex(IZ)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glScalef(FFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glScalef(FFF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glScalex(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glScalex(III)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glScissor(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glScissor(IIII)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glShadeModel(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glShadeModel(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glStencilFunc(III)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glStencilMask(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1}, Lb0/a;->glStencilMask(I)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glStencilOp(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glStencilOp(III)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexCoordPointer(IIII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glTexCoordPointer(IIII)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glTexEnvf(IIF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glTexEnvfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvi(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glTexEnvi(III)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glTexEnviv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnviv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glTexEnviv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvx(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glTexEnvx(III)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glTexEnvxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexGenf(IIF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glTexGenf(IIF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glTexGenfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexGenfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glTexGenfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexGeni(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glTexGeni(III)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glTexGeniv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexGeniv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glTexGeniv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexGenx(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glTexGenx(III)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3}, Lb0/e;->glTexGenxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexGenxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lb0/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/e;->glTexGenxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lb0/a;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glTexParameterf(IIF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glTexParameterfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteri(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glTexParameteri(III)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glTexParameteriv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterx(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glTexParameterx(III)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3}, Lb0/c;->glTexParameterxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glTexParameterxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lb0/a;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glTranslatef(FFF)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTranslatex(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3}, Lb0/a;->glTranslatex(III)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glVertexPointer(IIII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lb0/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/c;->glVertexPointer(IIII)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glViewport(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lb0/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/a;->glViewport(IIII)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glWeightPointerOES(IIII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/d;->glWeightPointerOES(IIII)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glWeightPointerOES(IIILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lb0/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lb0/d;->glWeightPointerOES(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method
