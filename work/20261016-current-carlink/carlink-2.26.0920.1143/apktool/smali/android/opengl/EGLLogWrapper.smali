.class Landroid/opengl/EGLLogWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/a;


# instance fields
.field private mArgCount:I

.field mCheckError:Z

.field private mEgl10:Lq/a;

.field mLog:Ljava/io/Writer;

.field mLogArgumentNames:Z


# direct methods
.method public constructor <init>(Lq/b;ILjava/io/Writer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    check-cast p1, Lq/a;

    .line 5
    .line 6
    iput-object p1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    .line 9
    .line 10
    and-int/lit8 p1, p2, 0x4

    .line 11
    .line 12
    const/4 p3, 0x0

    .line 13
    const/4 v0, 0x1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    move p1, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, p3

    .line 19
    :goto_0
    iput-boolean p1, p0, Landroid/opengl/EGLLogWrapper;->mLogArgumentNames:Z

    .line 20
    .line 21
    and-int/lit8 p1, p2, 0x1

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    move p3, v0

    .line 26
    :cond_1
    iput-boolean p3, p0, Landroid/opengl/EGLLogWrapper;->mCheckError:Z

    .line 27
    .line 28
    return-void
.end method

.method private arg(Ljava/lang/String;I)V
    .locals 0

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 13
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    if-lez v0, :cond_0

    const-string v0, ", "

    .line 2
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Landroid/opengl/EGLLogWrapper;->mLogArgumentNames:Z

    if-eqz v0, :cond_1

    const-string v0, "="

    .line 4
    invoke-static {p1, v0}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 1

    .line 18
    sget-object v0, Lq/a;->b:Lcom/google/android/gles_jni/EGLContextImpl;

    if-ne p2, v0, :cond_0

    const-string p2, "EGL10.EGL_NO_CONTEXT"

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, "EGL10.EGL_DEFAULT_DISPLAY"

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lq/a;->a:Lcom/google/android/gles_jni/EGLDisplayImpl;

    if-ne p2, v0, :cond_1

    const-string p2, "EGL10.EGL_NO_DISPLAY"

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 1

    .line 21
    sget-object v0, Lq/a;->c:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    if-ne p2, v0, :cond_0

    const-string p2, "EGL10.EGL_NO_SURFACE"

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private arg(Ljava/lang/String;[I)V
    .locals 2

    if-nez p2, :cond_0

    const-string/jumbo p2, "null"

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/opengl/EGLLogWrapper;->toString(I[II)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private arg(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    const-string/jumbo p2, "null"

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/opengl/EGLLogWrapper;->toString(I[Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private begin(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const/16 p1, 0x28

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput p1, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    .line 23
    .line 24
    return-void
.end method

.method private checkError()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lq/a;->eglGetError()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x3000

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "eglError: "

    .line 14
    .line 15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->logLine(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-boolean v2, p0, Landroid/opengl/EGLLogWrapper;->mCheckError:Z

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v2, Landroid/opengl/GLException;

    .line 38
    .line 39
    invoke-direct {v2, v0, v1}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v2

    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method private end()V
    .locals 1

    .line 1
    const-string v0, ");\n"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->flush()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private flush()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Landroid/opengl/EGLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "EGL_CONTEXT_LOST"

    return-object p0

    :pswitch_1
    const-string p0, "EGL_BAD_SURFACE"

    return-object p0

    :pswitch_2
    const-string p0, "EGL_BAD_PARAMETER"

    return-object p0

    :pswitch_3
    const-string p0, "EGL_BAD_NATIVE_WINDOW"

    return-object p0

    :pswitch_4
    const-string p0, "EGL_BAD_NATIVE_PIXMAP"

    return-object p0

    :pswitch_5
    const-string p0, "EGL_BAD_MATCH"

    return-object p0

    :pswitch_6
    const-string p0, "EGL_BAD_DISPLAY"

    return-object p0

    :pswitch_7
    const-string p0, "EGL_BAD_CURRENT_SURFACE"

    return-object p0

    :pswitch_8
    const-string p0, "EGL_BAD_CONTEXT"

    return-object p0

    :pswitch_9
    const-string p0, "EGL_BAD_CONFIG"

    return-object p0

    :pswitch_a
    const-string p0, "EGL_BAD_ATTRIBUTE"

    return-object p0

    :pswitch_b
    const-string p0, "EGL_BAD_ALLOC"

    return-object p0

    :pswitch_c
    const-string p0, "EGL_BAD_ACCESS"

    return-object p0

    :pswitch_d
    const-string p0, "EGL_NOT_INITIALIZED"

    return-object p0

    :pswitch_e
    const-string p0, "EGL_SUCCESS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getHex(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "0x"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0}, Landroid/app/m;->d(ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private logLine(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private returns(I)V
    .locals 0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    return-void
.end method

.method private returns(Ljava/lang/Object;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .locals 2

    const-string v0, " returns "

    const-string v1, ";\n"

    .line 1
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->flush()V

    return-void
.end method

.method private returns(Z)V
    .locals 0

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    return-void
.end method

.method private toString(I[II)Ljava/lang/String;
    .locals 6

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    add-int v3, p3, v2

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    aget v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo v3, "out of bounds"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v3, 0xa

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "}"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toString(I[Ljava/lang/Object;I)Ljava/lang/String;
    .locals 6

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    add-int v3, p3, v2

    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_1

    if-lt v3, v1, :cond_0

    goto :goto_1

    .line 13
    :cond_0
    aget-object v3, p2, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const-string/jumbo v3, "out of bounds"

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v3, 0xa

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "}"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string/jumbo p1, "null"

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 7

    .line 1
    const-string v0, "eglChooseConfig"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "attrib_list"

    .line 12
    .line 13
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "config_size"

    .line 17
    .line 18
    invoke-direct {p0, v0, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 25
    .line 26
    move-object v2, p1

    .line 27
    move-object v3, p2

    .line 28
    move-object v4, p3

    .line 29
    move v5, p4

    .line 30
    move-object v6, p5

    .line 31
    invoke-interface/range {v1 .. v6}, Lq/a;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const-string p2, "configs"

    .line 36
    .line 37
    invoke-direct {p0, p2, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo p2, "num_config"

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p2, p5}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 50
    .line 51
    .line 52
    return p1
.end method

.method public eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const-string v0, "eglCopyBuffers"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "surface"

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "native_pixmap"

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 27
    .line 28
    invoke-interface {v0, p1, p2, p3}, Lq/a;->eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 36
    .line 37
    .line 38
    return p1
.end method

.method public eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .line 1
    const-string v0, "eglCreateContext"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "config"

    .line 12
    .line 13
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "share_context"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "attrib_list"

    .line 23
    .line 24
    invoke-direct {p0, v0, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 31
    .line 32
    invoke-interface {v0, p1, p2, p3, p4}, Lq/a;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method

.method public eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    .line 1
    const-string v0, "eglCreatePbufferSurface"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "config"

    .line 12
    .line 13
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "attrib_list"

    .line 17
    .line 18
    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 25
    .line 26
    invoke-interface {v0, p1, p2, p3}, Lq/a;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 34
    .line 35
    .line 36
    return-object p1
.end method

.method public eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    .line 1
    const-string v0, "eglCreatePixmapSurface"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "config"

    .line 12
    .line 13
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "native_pixmap"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "attrib_list"

    .line 23
    .line 24
    invoke-direct {p0, v0, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 31
    .line 32
    invoke-interface {v0, p1, p2, p3, p4}, Lq/a;->eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method

.method public eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    .line 1
    const-string v0, "eglCreateWindowSurface"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "config"

    .line 12
    .line 13
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "native_window"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "attrib_list"

    .line 23
    .line 24
    invoke-direct {p0, v0, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 31
    .line 32
    invoke-interface {v0, p1, p2, p3, p4}, Lq/a;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 40
    .line 41
    .line 42
    return-object p1
.end method

.method public eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 1

    .line 1
    const-string v0, "eglDestroyContext"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "context"

    .line 12
    .line 13
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Lq/a;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 29
    .line 30
    .line 31
    return p1
.end method

.method public eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 1

    .line 1
    const-string v0, "eglDestroySurface"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "surface"

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Lq/a;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 30
    .line 31
    .line 32
    return p1
.end method

.method public eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 1

    .line 1
    const-string v0, "eglGetConfigAttrib"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "config"

    .line 12
    .line 13
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "attribute"

    .line 17
    .line 18
    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 25
    .line 26
    invoke-interface {v0, p1, p2, p3, p4}, Lq/a;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const-string/jumbo p2, "value"

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p2, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    return p1
.end method

.method public eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .locals 1

    .line 1
    const-string v0, "eglGetConfigs"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "config_size"

    .line 12
    .line 13
    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 20
    .line 21
    invoke-interface {v0, p1, p2, p3, p4}, Lq/a;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const-string p3, "configs"

    .line 26
    .line 27
    invoke-direct {p0, p3, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo p2, "num_config"

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p2, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 40
    .line 41
    .line 42
    return p1
.end method

.method public eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .line 1
    const-string v0, "eglGetCurrentContext"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 10
    .line 11
    invoke-interface {v0}, Lq/a;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1

    .line 1
    const-string v0, "eglGetCurrentDisplay"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 10
    .line 11
    invoke-interface {v0}, Lq/a;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    .line 1
    const-string v0, "eglGetCurrentSurface"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "readdraw"

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lq/a;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method public eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1

    .line 1
    const-string v0, "eglGetDisplay"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "native_display"

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lq/a;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 25
    .line 26
    .line 27
    return-object p1
.end method

.method public eglGetError()I
    .locals 2

    .line 1
    const-string v0, "eglGetError"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 10
    .line 11
    invoke-interface {v0}, Lq/a;->eglGetError()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v0
.end method

.method public eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
    .locals 1

    .line 1
    const-string v0, "eglInitialize"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Lq/a;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 21
    .line 22
    .line 23
    const-string/jumbo v0, "major_minor"

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 30
    .line 31
    .line 32
    return p1
.end method

.method public eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 1

    .line 1
    const-string v0, "eglMakeCurrent"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "draw"

    .line 12
    .line 13
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "read"

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "context"

    .line 23
    .line 24
    invoke-direct {p0, v0, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 31
    .line 32
    invoke-interface {v0, p1, p2, p3, p4}, Lq/a;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 40
    .line 41
    .line 42
    return p1
.end method

.method public eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
    .locals 1

    .line 1
    const-string v0, "eglQueryContext"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "context"

    .line 12
    .line 13
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "attribute"

    .line 17
    .line 18
    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 25
    .line 26
    invoke-interface {v0, p1, p2, p3, p4}, Lq/a;->eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 p2, 0x0

    .line 31
    aget p2, p4, p2

    .line 32
    .line 33
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->returns(I)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 40
    .line 41
    .line 42
    return p1
.end method

.method public eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "eglQueryString"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "name"

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Lq/a;->eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method

.method public eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
    .locals 1

    .line 1
    const-string v0, "eglQuerySurface"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "surface"

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "attribute"

    .line 18
    .line 19
    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 26
    .line 27
    invoke-interface {v0, p1, p2, p3, p4}, Lq/a;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 p2, 0x0

    .line 32
    aget p2, p4, p2

    .line 33
    .line 34
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->returns(I)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 41
    .line 42
    .line 43
    return p1
.end method

.method public eglReleaseThread()Z
    .locals 1

    .line 1
    const-string v0, "eglReleaseThread"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 10
    .line 11
    invoke-interface {v0}, Lq/a;->eglReleaseThread()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 19
    .line 20
    .line 21
    return v0
.end method

.method public eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .locals 1

    .line 1
    const-string v0, "eglSwapBuffers"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "surface"

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Lq/a;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 30
    .line 31
    .line 32
    return p1
.end method

.method public eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
    .locals 1

    .line 1
    const-string v0, "eglTerminate"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "display"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lq/a;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 24
    .line 25
    .line 26
    return p1
.end method

.method public eglWaitGL()Z
    .locals 1

    .line 1
    const-string v0, "eglWaitGL"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 10
    .line 11
    invoke-interface {v0}, Lq/a;->eglWaitGL()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 19
    .line 20
    .line 21
    return v0
.end method

.method public eglWaitNative(ILjava/lang/Object;)Z
    .locals 1

    .line 1
    const-string v0, "eglWaitNative"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "engine"

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string v0, "bindTarget"

    .line 12
    .line 13
    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Lq/a;

    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Lq/a;->eglWaitNative(ILjava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 29
    .line 30
    .line 31
    return p1
.end method
