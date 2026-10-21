.class Landroid/opengl/GLErrorWrapper;
.super Landroid/opengl/GLWrapperBase;
.source "SourceFile"


# instance fields
.field mCheckError:Z

.field mCheckThread:Z

.field mOurThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lr/f;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/GLWrapperBase;-><init>(Lr/f;)V

    .line 2
    .line 3
    .line 4
    and-int/lit8 p1, p2, 0x1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    move p1, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p1, v0

    .line 13
    :goto_0
    iput-boolean p1, p0, Landroid/opengl/GLErrorWrapper;->mCheckError:Z

    .line 14
    .line 15
    and-int/lit8 p1, p2, 0x2

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    move v0, v1

    .line 20
    :cond_1
    iput-boolean v0, p0, Landroid/opengl/GLErrorWrapper;->mCheckThread:Z

    .line 21
    .line 22
    return-void
.end method

.method private checkError()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/opengl/GLErrorWrapper;->mCheckError:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 6
    .line 7
    invoke-interface {v0}, Lr/a;->glGetError()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Landroid/opengl/GLException;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Landroid/opengl/GLException;-><init>(I)V

    .line 17
    .line 18
    .line 19
    throw v1

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method private checkThread()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/opengl/GLErrorWrapper;->mCheckThread:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iput-object v0, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Landroid/opengl/GLException;

    .line 24
    .line 25
    const/16 v1, 0x7000

    .line 26
    .line 27
    const-string v2, "OpenGL method called from wrong thread."

    .line 28
    .line 29
    invoke-direct {v0, v1, v2}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0

    .line 33
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
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glActiveTexture(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/a;->glAlphaFunc(IF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/a;->glAlphaFuncx(II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/c;->glBindBuffer(II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glBindFramebufferOES(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/e;->glBindFramebufferOES(II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glBindRenderbufferOES(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/e;->glBindRenderbufferOES(II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glBindTexture(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/a;->glBindTexture(II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glBlendEquation(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/e;->glBlendEquation(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/e;->glBlendEquationSeparate(II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/a;->glBlendFunc(II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glBlendFuncSeparate(IIII)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glBufferData(IILjava/nio/Buffer;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glBufferSubData(IIILjava/nio/Buffer;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glCheckFramebufferStatusOES(I)I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/e;->glCheckFramebufferStatusOES(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 11
    .line 12
    .line 13
    return p1
.end method

.method public glClear(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glClear(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glClearColor(FFFF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glClearColorx(IIII)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glClearDepthf(F)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glClearDepthx(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glClearStencil(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glClearStencil(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glClientActiveTexture(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanef(I[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glClipPlanef(I[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glClipPlanex(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanex(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glClipPlanex(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glColor4f(FFFF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glColor4ub(BBBB)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glColor4x(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glColor4x(IIII)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glColorMask(ZZZZ)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glColorPointer(IIII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glColorPointer(IIII)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    iget-object v1, v0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 6
    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move v4, p3

    .line 10
    move v5, p4

    .line 11
    move v6, p5

    .line 12
    move/from16 v7, p6

    .line 13
    .line 14
    move/from16 v8, p7

    .line 15
    .line 16
    move-object/from16 v9, p8

    .line 17
    .line 18
    invoke-interface/range {v1 .. v9}, Lr/a;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    iget-object v1, v0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 6
    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move v4, p3

    .line 10
    move v5, p4

    .line 11
    move/from16 v6, p5

    .line 12
    .line 13
    move/from16 v7, p6

    .line 14
    .line 15
    move/from16 v8, p7

    .line 16
    .line 17
    move/from16 v9, p8

    .line 18
    .line 19
    move-object/from16 v10, p9

    .line 20
    .line 21
    invoke-interface/range {v1 .. v10}, Lr/a;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 10

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    iget-object v1, v0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 6
    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move v4, p3

    .line 10
    move v5, p4

    .line 11
    move v6, p5

    .line 12
    move/from16 v7, p6

    .line 13
    .line 14
    move/from16 v8, p7

    .line 15
    .line 16
    move/from16 v9, p8

    .line 17
    .line 18
    invoke-interface/range {v1 .. v9}, Lr/a;->glCopyTexImage2D(IIIIIIII)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 10

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    iget-object v1, v0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 6
    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move v4, p3

    .line 10
    move v5, p4

    .line 11
    move v6, p5

    .line 12
    move/from16 v7, p6

    .line 13
    .line 14
    move/from16 v8, p7

    .line 15
    .line 16
    move/from16 v9, p8

    .line 17
    .line 18
    invoke-interface/range {v1 .. v9}, Lr/a;->glCopyTexSubImage2D(IIIIIIII)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public glCullFace(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glCullFace(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glCurrentPaletteMatrixOES(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/d;->glCurrentPaletteMatrixOES(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteBuffers(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glDeleteBuffers(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2}, Lr/e;->glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteFramebuffersOES(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glDeleteFramebuffersOES(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2}, Lr/e;->glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteRenderbuffersOES(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glDeleteRenderbuffersOES(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glDeleteTextures(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glDepthFunc(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glDepthMask(Z)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/a;->glDepthRangef(FF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glDepthRangex(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/a;->glDepthRangex(II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glDisable(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glDisable(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glDisableClientState(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glDisableClientState(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glDrawArrays(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glDrawArrays(III)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glDrawElements(IIII)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfOES(FFFFF)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    .line 5
    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-interface/range {v0 .. v5}, Lr/d;->glDrawTexfOES(FFFFF)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1}, Lr/d;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1, p2}, Lr/d;->glDrawTexfvOES([FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexiOES(IIIII)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    .line 5
    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-interface/range {v0 .. v5}, Lr/d;->glDrawTexiOES(IIIII)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1}, Lr/d;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexivOES([II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1, p2}, Lr/d;->glDrawTexivOES([II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsOES(SSSSS)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    .line 5
    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-interface/range {v0 .. v5}, Lr/d;->glDrawTexsOES(SSSSS)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1}, Lr/d;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1, p2}, Lr/d;->glDrawTexsvOES([SI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxOES(IIIII)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    .line 5
    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-interface/range {v0 .. v5}, Lr/d;->glDrawTexxOES(IIIII)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1}, Lr/d;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxvOES([II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1, p2}, Lr/d;->glDrawTexxvOES([II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glEnable(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glEnable(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glEnableClientState(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glEnableClientState(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glFinish()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0}, Lr/a;->glFinish()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glFlush()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0}, Lr/a;->glFlush()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glFogf(IF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/a;->glFogf(IF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glFogfv(I[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFogx(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/a;->glFogx(II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glFogxv(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFogxv(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glFogxv(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glFramebufferRenderbufferOES(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glFramebufferRenderbufferOES(IIII)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glFramebufferTexture2DOES(IIIII)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 5
    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-interface/range {v0 .. v5}, Lr/e;->glFramebufferTexture2DOES(IIIII)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public glFrontFace(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glFrontFace(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    move v6, p6

    .line 12
    invoke-interface/range {v0 .. v6}, Lr/a;->glFrustumf(FFFFFF)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    move v6, p6

    .line 12
    invoke-interface/range {v0 .. v6}, Lr/a;->glFrustumx(IIIIII)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenBuffers(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGenBuffers(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenFramebuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2}, Lr/e;->glGenFramebuffersOES(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenFramebuffersOES(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glGenFramebuffersOES(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2}, Lr/e;->glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenRenderbuffersOES(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glGenRenderbuffersOES(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glGenTextures(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGenerateMipmapOES(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/e;->glGenerateMipmapOES(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetBooleanv(I[ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetBooleanv(I[ZI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetBufferParameteriv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetBufferParameteriv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glGetClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanef(I[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetClipPlanef(I[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glGetClipPlanex(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanex(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetClipPlanex(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetError()I
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0}, Lr/a;->glGetError()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glGetFixedv(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetFixedv(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetFixedv(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetFloatv(I[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetFloatv(I[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(III[II)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lr/e;->glGetFramebufferAttachmentParameterivOES(III[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glGetIntegerv(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetLightfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetLightfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetLightfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetLightxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetLightxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetLightxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetMaterialfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetMaterialxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetMaterialxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/c;->glGetPointerv(I[Ljava/nio/Buffer;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetRenderbufferParameterivOES(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glGetRenderbufferParameterivOES(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glGetString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 11
    .line 12
    .line 13
    return-object p1
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetTexEnviv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnviv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetTexEnviv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnvxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetTexEnvxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glGetTexGenfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glGetTexGenfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glGetTexGeniv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGeniv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glGetTexGeniv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glGetTexGenxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glGetTexGenxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetTexParameterfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameteriv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetTexParameteriv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glGetTexParameterxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glGetTexParameterxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glHint(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/a;->glHint(II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/c;->glIsBuffer(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 11
    .line 12
    .line 13
    return p1
.end method

.method public glIsEnabled(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/c;->glIsEnabled(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 11
    .line 12
    .line 13
    return p1
.end method

.method public glIsFramebufferOES(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/e;->glIsFramebufferOES(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 11
    .line 12
    .line 13
    return p1
.end method

.method public glIsRenderbufferOES(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/e;->glIsRenderbufferOES(I)Z

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public glIsTexture(I)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/c;->glIsTexture(I)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 11
    .line 12
    .line 13
    return p1
.end method

.method public glLightModelf(IF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/a;->glLightModelf(IF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glLightModelfv(I[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightModelx(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/a;->glLightModelx(II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glLightModelxv(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glLightModelxv(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightf(IIF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glLightf(IIF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glLightfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glLightfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightx(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glLightx(III)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glLightxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLightxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glLightxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLineWidth(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glLineWidth(F)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glLineWidthx(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glLoadIdentity()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0}, Lr/a;->glLoadIdentity()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1}, Lr/a;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glLoadMatrixf([FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1}, Lr/a;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glLoadMatrixx([II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glLoadPaletteFromModelViewMatrixOES()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    .line 5
    .line 6
    invoke-interface {v0}, Lr/d;->glLoadPaletteFromModelViewMatrixOES()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glLogicOp(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glLogicOp(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glMaterialf(IIF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glMaterialfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMaterialx(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glMaterialx(III)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glMaterialxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glMaterialxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMatrixIndexPointerOES(IIII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/d;->glMatrixIndexPointerOES(IIII)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/d;->glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMatrixMode(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glMatrixMode(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1}, Lr/a;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glMultMatrixf([FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1}, Lr/a;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2}, Lr/a;->glMultMatrixx([II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-interface/range {v0 .. v5}, Lr/a;->glMultiTexCoord4f(IFFFF)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-interface/range {v0 .. v5}, Lr/a;->glMultiTexCoord4x(IIIII)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glNormal3f(FFF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glNormal3x(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glNormal3x(III)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glNormalPointer(III)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glNormalPointer(III)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    move v6, p6

    .line 12
    invoke-interface/range {v0 .. v6}, Lr/a;->glOrthof(FFFFFF)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    move v6, p6

    .line 12
    invoke-interface/range {v0 .. v6}, Lr/a;->glOrthox(IIIIII)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/a;->glPixelStorei(II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/c;->glPointParameterf(IF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glPointParameterfv(ILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterfv(I[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glPointParameterfv(I[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterx(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/c;->glPointParameterx(II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2}, Lr/c;->glPointParameterxv(ILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterxv(I[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glPointParameterxv(I[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glPointSize(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glPointSize(F)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/c;->glPointSizePointerOES(IILjava/nio/Buffer;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glPointSizex(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glPointSizex(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/a;->glPolygonOffset(FF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/a;->glPolygonOffsetx(II)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0}, Lr/a;->glPopMatrix()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glPushMatrix()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0}, Lr/a;->glPushMatrix()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Lr/b;

    invoke-interface {v0, p1, p2}, Lr/b;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

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
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl10Ext:Lr/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/b;->glQueryMatrixxOES([II[II)I

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
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    move v6, p6

    .line 12
    move-object v7, p7

    .line 13
    invoke-interface/range {v0 .. v7}, Lr/a;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public glRenderbufferStorageOES(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glRenderbufferStorageOES(IIII)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glRotatef(FFFF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glRotatex(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glRotatex(IIII)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/a;->glSampleCoverage(FZ)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lr/a;->glSampleCoveragex(IZ)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glScalef(FFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glScalef(FFF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glScalex(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glScalex(III)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glScissor(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glScissor(IIII)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glShadeModel(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glShadeModel(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glStencilFunc(III)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glStencilMask(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lr/a;->glStencilMask(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glStencilOp(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glStencilOp(III)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glTexCoordPointer(IIII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glTexCoordPointer(IIII)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glTexEnvf(IIF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glTexEnvfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvi(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/c;->glTexEnvi(III)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glTexEnviv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnviv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glTexEnviv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvx(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glTexEnvx(III)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3}, Lr/a;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glTexEnvxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexGenf(IIF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/e;->glTexGenf(IIF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glTexGenfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glTexGenfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexGenfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glTexGenfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexGeni(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/e;->glTexGeni(III)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glTexGeniv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glTexGeniv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexGeniv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glTexGeniv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexGenx(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/e;->glTexGenx(III)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glTexGenxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3}, Lr/e;->glTexGenxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexGenxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11ExtensionPack:Lr/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/e;->glTexGenxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    iget-object v1, v0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 6
    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move v4, p3

    .line 10
    move v5, p4

    .line 11
    move/from16 v6, p5

    .line 12
    .line 13
    move/from16 v7, p6

    .line 14
    .line 15
    move/from16 v8, p7

    .line 16
    .line 17
    move/from16 v9, p8

    .line 18
    .line 19
    move-object/from16 v10, p9

    .line 20
    .line 21
    invoke-interface/range {v1 .. v10}, Lr/a;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glTexParameterf(IIF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterfv(II[FI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glTexParameterfv(II[FI)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteri(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/c;->glTexParameteri(III)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glTexParameteriv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterx(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glTexParameterx(III)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3}, Lr/c;->glTexParameterxv(IILjava/nio/IntBuffer;)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterxv(II[II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glTexParameterxv(II[II)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    move-object v0, p0

    .line 5
    iget-object v1, v0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 6
    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move v4, p3

    .line 10
    move v5, p4

    .line 11
    move/from16 v6, p5

    .line 12
    .line 13
    move/from16 v7, p6

    .line 14
    .line 15
    move/from16 v8, p7

    .line 16
    .line 17
    move/from16 v9, p8

    .line 18
    .line 19
    move-object/from16 v10, p9

    .line 20
    .line 21
    invoke-interface/range {v1 .. v10}, Lr/a;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glTranslatef(FFF)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glTranslatex(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lr/a;->glTranslatex(III)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glVertexPointer(IIII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11:Lr/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/c;->glVertexPointer(IIII)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glViewport(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl:Lr/a;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lr/a;->glViewport(IIII)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public glWeightPointerOES(IIII)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 5
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/d;->glWeightPointerOES(IIII)V

    .line 6
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method

.method public glWeightPointerOES(IIILjava/nio/Buffer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 2
    iget-object v0, p0, Landroid/opengl/GLWrapperBase;->mgl11Ext:Lr/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lr/d;->glWeightPointerOES(IIILjava/nio/Buffer;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    return-void
.end method
