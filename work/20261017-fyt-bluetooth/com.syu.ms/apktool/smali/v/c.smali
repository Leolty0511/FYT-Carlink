.class public abstract Lv/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder;


# static fields
.field public static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseSurfaceHolder"


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

.field public mHaveGottenCallbacks:Z

.field public mLastLockTime:J

.field public mRequestedFormat:I

.field public mRequestedHeight:I

.field public mRequestedType:I

.field public mRequestedWidth:I

.field public mSurface:Landroid/view/Surface;

.field public final mSurfaceFrame:Landroid/graphics/Rect;

.field public final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field public mTmpDirty:Landroid/graphics/Rect;

.field public mType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lv/c;->mCallbacks:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lv/c;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 4
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lv/c;->mSurface:Landroid/view/Surface;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lv/c;->mRequestedWidth:I

    .line 6
    iput v0, p0, Lv/c;->mRequestedHeight:I

    .line 7
    iput v0, p0, Lv/c;->mRequestedFormat:I

    .line 8
    iput v0, p0, Lv/c;->mRequestedType:I

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lv/c;->mLastLockTime:J

    .line 10
    iput v0, p0, Lv/c;->mType:I

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lv/c;->mSurfaceFrame:Landroid/graphics/Rect;

    return-void
.end method

.method private final internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 8

    .line 1
    iget v0, p0, Lv/c;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    .line 2
    iget-object v0, p0, Lv/c;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 3
    invoke-virtual {p0}, Lv/c;->onAllowLockCanvas()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lv/c;->mTmpDirty:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lv/c;->mTmpDirty:Landroid/graphics/Rect;

    .line 6
    :cond_0
    iget-object p1, p0, Lv/c;->mTmpDirty:Landroid/graphics/Rect;

    iget-object v0, p0, Lv/c;->mSurfaceFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7
    iget-object p1, p0, Lv/c;->mTmpDirty:Landroid/graphics/Rect;

    .line 8
    :cond_1
    :try_start_0
    iget-object v0, p0, Lv/c;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BaseSurfaceHolder"

    const-string v2, "Exception locking surface"

    .line 9
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lv/c;->mLastLockTime:J

    return-object p1

    .line 11
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 12
    iget-wide v4, p0, Lv/c;->mLastLockTime:J

    const-wide/16 v6, 0x64

    add-long/2addr v4, v6

    cmp-long p1, v4, v2

    if-lez p1, :cond_4

    sub-long/2addr v4, v2

    .line 13
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 14
    :catch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 15
    :cond_4
    iput-wide v2, p0, Lv/c;->mLastLockTime:J

    .line 16
    iget-object p1, p0, Lv/c;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 17
    :cond_5
    new-instance p1, Landroid/view/SurfaceHolder$BadSurfaceTypeException;

    const-string v0, "Surface type is SURFACE_TYPE_PUSH_BUFFERS"

    invoke-direct {p1, v0}, Landroid/view/SurfaceHolder$BadSurfaceTypeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv/c;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lv/c;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lv/c;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lv/c;->mHaveGottenCallbacks:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lv/c;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lv/c;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lv/c;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 5
    iget-object v2, p0, Lv/c;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    if-eqz v2, :cond_1

    array-length v2, v2

    if-eq v2, v1, :cond_2

    .line 6
    :cond_1
    new-array v1, v1, [Landroid/view/SurfaceHolder$Callback;

    iput-object v1, p0, Lv/c;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    .line 7
    :cond_2
    iget-object v1, p0, Lv/c;->mCallbacks:Ljava/util/ArrayList;

    iget-object v2, p0, Lv/c;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lv/c;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    :goto_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lv/c;->mHaveGottenCallbacks:Z

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lv/c;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    return-object v0

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getRequestedFormat()I
    .locals 1

    .line 1
    iget v0, p0, Lv/c;->mRequestedFormat:I

    return v0
.end method

.method public getRequestedHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lv/c;->mRequestedHeight:I

    return v0
.end method

.method public getRequestedType()I
    .locals 1

    .line 1
    iget v0, p0, Lv/c;->mRequestedType:I

    return v0
.end method

.method public getRequestedWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lv/c;->mRequestedWidth:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/c;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lv/c;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lv/c;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lv/c;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object p1

    return-object p1
.end method

.method public abstract onAllowLockCanvas()Z
.end method

.method public abstract onRelayoutContainer()V
.end method

.method public abstract onUpdateSurface()V
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv/c;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lv/c;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFixedSize(II)V
    .locals 1

    .line 1
    iget v0, p0, Lv/c;->mRequestedWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lv/c;->mRequestedHeight:I

    if-eq v0, p2, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Lv/c;->mRequestedWidth:I

    .line 3
    iput p2, p0, Lv/c;->mRequestedHeight:I

    .line 4
    invoke-virtual {p0}, Lv/c;->onRelayoutContainer()V

    :cond_1
    return-void
.end method

.method public setFormat(I)V
    .locals 1

    .line 1
    iget v0, p0, Lv/c;->mRequestedFormat:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lv/c;->mRequestedFormat:I

    .line 3
    invoke-virtual {p0}, Lv/c;->onUpdateSurface()V

    :cond_0
    return-void
.end method

.method public setSizeFromLayout()V
    .locals 2

    .line 1
    iget v0, p0, Lv/c;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lv/c;->mRequestedHeight:I

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iput v1, p0, Lv/c;->mRequestedHeight:I

    iput v1, p0, Lv/c;->mRequestedWidth:I

    .line 3
    invoke-virtual {p0}, Lv/c;->onRelayoutContainer()V

    :cond_1
    return-void
.end method

.method public setSurfaceFrameSize(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv/c;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 3
    iput p1, v0, Landroid/graphics/Rect;->right:I

    .line 4
    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setType(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    iget v0, p0, Lv/c;->mRequestedType:I

    if-eq v0, p1, :cond_2

    .line 2
    iput p1, p0, Lv/c;->mRequestedType:I

    .line 3
    invoke-virtual {p0}, Lv/c;->onUpdateSurface()V

    :cond_2
    :goto_1
    return-void
.end method

.method public ungetCallbacks()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lv/c;->mHaveGottenCallbacks:Z

    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv/c;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 2
    iget-object p1, p0, Lv/c;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
