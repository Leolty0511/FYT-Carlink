.class public Landroid/filterfw/core/FilterSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static STATE_ALLOCATED:I = 0x0

.field private static STATE_CREATED:I = 0x1

.field private static STATE_INITIALIZED:I = 0x2


# instance fields
.field private mFormat:I

.field private mGLEnv:Landroid/filterfw/core/GLEnvironment;

.field private mHeight:I

.field private mListener:Landroid/view/SurfaceHolder$Callback;

.field private mState:I

.field private mSurfaceId:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    sget p1, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    iput p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    sget p1, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    iput p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    .line 8
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private registerSurface()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->registerSurface(Landroid/view/Surface;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    .line 16
    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Could not register Surface: "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, " in FilterSurfaceView!"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method private unregisterSurface()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    .line 6
    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized bindToListener(Landroid/view/SurfaceHolder$Callback;Landroid/filterfw/core/GLEnvironment;)V
    .locals 3

    .line 1
    const-string v0, "Attempting to bind filter "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, " to SurfaceView with another open filter "

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, " attached already!"

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p2

    .line 46
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    .line 47
    .line 48
    iget-object p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    if-eq p1, p2, :cond_2

    .line 53
    .line 54
    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/filterfw/core/GLEnvironment;->unregisterSurfaceId(I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    iput-object p2, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    .line 60
    .line 61
    iget p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    .line 62
    .line 63
    sget p2, Landroid/filterfw/core/FilterSurfaceView;->STATE_CREATED:I

    .line 64
    .line 65
    if-lt p1, p2, :cond_3

    .line 66
    .line 67
    invoke-direct {p0}, Landroid/filterfw/core/FilterSurfaceView;->registerSurface()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 77
    .line 78
    .line 79
    iget p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    .line 80
    .line 81
    sget p2, Landroid/filterfw/core/FilterSurfaceView;->STATE_INITIALIZED:I

    .line 82
    .line 83
    if-ne p1, p2, :cond_3

    .line 84
    .line 85
    iget-object p1, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mFormat:I

    .line 92
    .line 93
    iget v1, p0, Landroid/filterfw/core/FilterSurfaceView;->mWidth:I

    .line 94
    .line 95
    iget v2, p0, Landroid/filterfw/core/FilterSurfaceView;->mHeight:I

    .line 96
    .line 97
    invoke-interface {p1, p2, v0, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    :cond_3
    monitor-exit p0

    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    goto :goto_1

    .line 104
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 105
    .line 106
    const-string p2, "Attempting to bind null filter to SurfaceView!"

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :goto_1
    monitor-exit p0

    .line 113
    throw p1
.end method

.method public declared-synchronized getGLEnv()Landroid/filterfw/core/GLEnvironment;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized getSurfaceId()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mSurfaceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p2, p0, Landroid/filterfw/core/FilterSurfaceView;->mFormat:I

    .line 3
    .line 4
    iput p3, p0, Landroid/filterfw/core/FilterSurfaceView;->mWidth:I

    .line 5
    .line 6
    iput p4, p0, Landroid/filterfw/core/FilterSurfaceView;->mHeight:I

    .line 7
    .line 8
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_INITIALIZED:I

    .line 9
    .line 10
    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    .line 11
    .line 12
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    :cond_0
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0

    .line 23
    throw p1
.end method

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_CREATED:I

    .line 3
    .line 4
    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    .line 5
    .line 6
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mGLEnv:Landroid/filterfw/core/GLEnvironment;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Landroid/filterfw/core/FilterSurfaceView;->registerSurface()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :cond_1
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method

.method public declared-synchronized surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget v0, Landroid/filterfw/core/FilterSurfaceView;->STATE_ALLOCATED:I

    .line 3
    .line 4
    iput v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mState:I

    .line 5
    .line 6
    iget-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Landroid/filterfw/core/FilterSurfaceView;->unregisterSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public declared-synchronized unbind()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Landroid/filterfw/core/FilterSurfaceView;->mListener:Landroid/view/SurfaceHolder$Callback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method
