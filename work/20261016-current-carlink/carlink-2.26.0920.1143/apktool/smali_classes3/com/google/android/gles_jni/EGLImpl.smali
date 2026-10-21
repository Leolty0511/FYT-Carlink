.class public Lcom/google/android/gles_jni/EGLImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/a;


# instance fields
.field private mContext:Lcom/google/android/gles_jni/EGLContextImpl;

.field private mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

.field private mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/google/android/gles_jni/EGLImpl;->_nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gles_jni/EGLContextImpl;

    .line 5
    .line 6
    const-wide/16 v1, -0x1

    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(J)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 19
    .line 20
    new-instance v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 21
    .line 22
    invoke-direct {v0, v1, v2}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 26
    .line 27
    return-void
.end method

.method private native _eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)J
.end method

.method private native _eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)J
.end method

.method private native _eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)V
.end method

.method private native _eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J
.end method

.method private native _eglCreateWindowSurfaceTexture(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J
.end method

.method private native _eglGetCurrentContext()J
.end method

.method private native _eglGetCurrentDisplay()J
.end method

.method private native _eglGetCurrentSurface(I)J
.end method

.method private native _eglGetDisplay(Ljava/lang/Object;)J
.end method

.method private static native _nativeClassInit()V
.end method

.method public static native getInitCount(Ljavax/microedition/khronos/egl/EGLDisplay;)I
.end method


# virtual methods
.method public native eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public native eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
.end method

.method public eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    const-wide/16 p3, 0x0

    .line 6
    .line 7
    cmp-long p3, p1, p3

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    sget-object p1, Lq/a;->b:Lcom/google/android/gles_jni/EGLContextImpl;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance p3, Lcom/google/android/gles_jni/EGLContextImpl;

    .line 15
    .line 16
    invoke-direct {p3, p1, p2}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(J)V

    .line 17
    .line 18
    .line 19
    return-object p3
.end method

.method public eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long p3, p1, v0

    .line 8
    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    sget-object p1, Lq/a;->c:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance p3, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 15
    .line 16
    invoke-direct {p3, p1, p2}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    .line 17
    .line 18
    .line 19
    return-object p3
.end method

.method public eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 2
    .line 3
    invoke-direct {v6}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, v6

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v4, p3

    .line 11
    move-object v5, p4

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)V

    .line 13
    .line 14
    .line 15
    iget-wide p1, v6, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    .line 16
    .line 17
    const-wide/16 p3, 0x0

    .line 18
    .line 19
    cmp-long p1, p1, p3

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    sget-object p1, Lq/a;->c:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    return-object v6
.end method

.method public eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1

    .line 1
    instance-of v0, p3, Landroid/view/SurfaceView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroid/view/SurfaceView;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of v0, p3, Landroid/view/SurfaceHolder;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    move-object v0, p3

    .line 22
    check-cast v0, Landroid/view/SurfaceHolder;

    .line 23
    .line 24
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    instance-of v0, p3, Landroid/view/Surface;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    move-object v0, p3

    .line 34
    check-cast v0, Landroid/view/Surface;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    :goto_0
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    goto :goto_1

    .line 45
    :cond_3
    instance-of v0, p3, Landroid/graphics/SurfaceTexture;

    .line 46
    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gles_jni/EGLImpl;->_eglCreateWindowSurfaceTexture(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    :goto_1
    const-wide/16 p3, 0x0

    .line 54
    .line 55
    cmp-long p3, p1, p3

    .line 56
    .line 57
    if-nez p3, :cond_4

    .line 58
    .line 59
    sget-object p1, Lq/a;->c:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_4
    new-instance p3, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 63
    .line 64
    invoke-direct {p3, p1, p2}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    .line 65
    .line 66
    .line 67
    return-object p3

    .line 68
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 69
    .line 70
    const-string p2, "eglCreateWindowSurface() can only be called with an instance of Surface, SurfaceView, SurfaceHolder or SurfaceTexture at the moment."

    .line 71
    .line 72
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1
.end method

.method public native eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
.end method

.method public native eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
.end method

.method public native eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public native eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
.end method

.method public declared-synchronized eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentContext()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    sget-object v0, Lq/a;->b:Lcom/google/android/gles_jni/EGLContextImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object v0

    .line 16
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    .line 17
    .line 18
    iget-wide v2, v2, Lcom/google/android/gles_jni/EGLContextImpl;->mEGLContext:J

    .line 19
    .line 20
    cmp-long v2, v2, v0

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    new-instance v2, Lcom/google/android/gles_jni/EGLContextImpl;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLContextImpl;-><init>(J)V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mContext:Lcom/google/android/gles_jni/EGLContextImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    monitor-exit p0

    .line 37
    throw v0
.end method

.method public declared-synchronized eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentDisplay()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    sget-object v0, Lq/a;->a:Lcom/google/android/gles_jni/EGLDisplayImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object v0

    .line 16
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 17
    .line 18
    iget-wide v2, v2, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    .line 19
    .line 20
    cmp-long v2, v2, v0

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    new-instance v2, Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(J)V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    monitor-exit p0

    .line 37
    throw v0
.end method

.method public declared-synchronized eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetCurrentSurface(I)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long p1, v0, v2

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    sget-object p1, Lq/a;->c:Lcom/google/android/gles_jni/EGLSurfaceImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object p1

    .line 16
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 17
    .line 18
    iget-wide v2, p1, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    .line 19
    .line 20
    cmp-long p1, v2, v0

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    new-instance p1, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 25
    .line 26
    invoke-direct {p1, v0, v1}, Lcom/google/android/gles_jni/EGLSurfaceImpl;-><init>(J)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/google/android/gles_jni/EGLImpl;->mSurface:Lcom/google/android/gles_jni/EGLSurfaceImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-object p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0

    .line 37
    throw p1
.end method

.method public declared-synchronized eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gles_jni/EGLImpl;->_eglGetDisplay(Ljava/lang/Object;)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long p1, v0, v2

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    sget-object p1, Lq/a;->a:Lcom/google/android/gles_jni/EGLDisplayImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object p1

    .line 16
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 17
    .line 18
    iget-wide v2, p1, Lcom/google/android/gles_jni/EGLDisplayImpl;->mEGLDisplay:J

    .line 19
    .line 20
    cmp-long p1, v2, v0

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    new-instance p1, Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 25
    .line 26
    invoke-direct {p1, v0, v1}, Lcom/google/android/gles_jni/EGLDisplayImpl;-><init>(J)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/google/android/gles_jni/EGLImpl;->mDisplay:Lcom/google/android/gles_jni/EGLDisplayImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-object p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0

    .line 37
    throw p1
.end method

.method public native eglGetError()I
.end method

.method public native eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
.end method

.method public native eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
.end method

.method public native eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
.end method

.method public native eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
.end method

.method public native eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
.end method

.method public native eglReleaseThread()Z
.end method

.method public native eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
.end method

.method public native eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
.end method

.method public native eglWaitGL()Z
.end method

.method public native eglWaitNative(ILjava/lang/Object;)Z
.end method
