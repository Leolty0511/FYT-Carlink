.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewRootImpl$WindowStoppedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$SurfaceControlWithBackground;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final DEBUG_SURFACEVIEW:Ljava/lang/String; = "debug.surfaceview"

.field private static final TAG:Ljava/lang/String; = "SurfaceView"


# instance fields
.field private mAttachedToWindow:Z

.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

.field mDrawFinished:Z

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field mHaveFrame:Z

.field mIsCreating:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastWindowVisibility:Z

.field final mLocation:[I

.field private mPendingReportDraws:I

.field private mRTLastReportedPosition:Landroid/graphics/Rect;

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field private volatile mRtHandlingPositionUpdates:Z

.field final mScreenRect:Landroid/graphics/Rect;

.field private final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSubLayer:I

.field final mSurface:Landroid/view/Surface;

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mSurfaceCreated:Z

.field private mSurfaceFlags:I

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field mSurfaceHeight:I

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field mSurfaceWidth:I

.field final mTmpRect:Landroid/graphics/Rect;

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mViewVisibility:Z

.field mVisible:Z

.field mWindowSpaceLeft:I

.field mWindowSpaceTop:I

.field mWindowStopped:Z

.field mWindowVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 6
    iput-object p1, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 7
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1}, Landroid/view/Surface;-><init>()V

    iput-object p1, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 11
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 12
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroid/view/SurfaceView;->mTmpRect:Landroid/graphics/Rect;

    .line 13
    new-instance p3, Landroid/content/res/Configuration;

    invoke-direct {p3}, Landroid/content/res/Configuration;-><init>()V

    iput-object p3, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 p3, -0x2

    .line 14
    iput p3, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 15
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 16
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 17
    new-instance p3, Landroid/view/SurfaceView$1;

    invoke-direct {p3, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object p3, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 18
    new-instance p3, Landroid/view/SurfaceView$2;

    invoke-direct {p3, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object p3, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 19
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 20
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 21
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 22
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 23
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    const/4 p3, -0x1

    .line 24
    iput p3, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 25
    iput p3, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    const/4 p4, 0x4

    .line 26
    iput p4, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 27
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 28
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 30
    iput-boolean p2, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 31
    iput p3, p0, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 32
    iput p3, p0, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 33
    iput p3, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 34
    iput p3, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 35
    iput p3, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 36
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 37
    iput p3, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput p3, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 38
    iput p4, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 39
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 40
    new-instance p3, Landroid/view/SurfaceView$3;

    invoke-direct {p3, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object p3, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 41
    iget-object p3, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {p3, p0}, Landroid/view/RenderNode;->requestPositionUpdates(Landroid/view/SurfaceView;)V

    .line 42
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    const-string p1, "debug.surfaceview"

    .line 43
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Landroid/view/SurfaceView;->DEBUG:Z

    return-void
.end method

.method public static synthetic access$000(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    return v0
.end method

.method public static synthetic c(Landroid/view/SurfaceView;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView;->onDrawFinished()V

    return-void
.end method

.method public static synthetic d(Landroid/view/SurfaceView;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView;->lambda$onDrawFinished$0()V

    return-void
.end method

.method private getParentSurfaceInsets()Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 12
    .line 13
    return-object v0
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    new-array v1, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 11
    .line 12
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1
.end method

.method private isAboveParent()Z
    .locals 1

    iget v0, p0, Landroid/view/SurfaceView;->mSubLayer:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$onDrawFinished$0()V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView;->performDrawFinished()V

    return-void
.end method

.method private onDrawFinished()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " finishedDrawing"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "SurfaceView"

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    .line 40
    .line 41
    :cond_1
    new-instance v0, Landroid/view/e;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-direct {v0, p0, v1}, Landroid/view/e;-><init>(Ljava/lang/Object;I)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0}, Landroid/view/SurfaceView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private performDrawFinished()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 7
    .line 8
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/SurfaceView;->notifyDrawFinished()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, "finished drawing but no pending report draw (extra call to draw completion runnable?)"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "SurfaceView"

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method private setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    cmp-long v1, p2, v1

    .line 11
    .line 12
    if-lez v1, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 15
    .line 16
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 17
    .line 18
    invoke-virtual {v1, v0, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 22
    .line 23
    iget p3, p1, Landroid/graphics/Rect;->left:I

    .line 24
    .line 25
    int-to-float p3, p3

    .line 26
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 27
    .line 28
    int-to-float v0, v0

    .line 29
    invoke-virtual {p2, p3, v0}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    int-to-float p3, p3

    .line 39
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 40
    .line 41
    int-to-float v0, v0

    .line 42
    div-float/2addr p3, v0

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    int-to-float p1, p1

    .line 48
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 49
    .line 50
    int-to-float v0, v0

    .line 51
    div-float/2addr p1, v0

    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p2, p3, v0, v0, p1}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method private updateOpaqueFlag()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 10
    .line 11
    or-int/lit16 v0, v0, 0x400

    .line 12
    .line 13
    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 17
    .line 18
    and-int/lit16 v0, v0, -0x401

    .line 19
    .line 20
    iput v0, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method private updateRequestedVisibility()V
    .locals 1

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12
    .line 13
    const/16 v1, 0x80

    .line 14
    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 12
    .line 13
    and-int/lit16 v0, v0, 0x80

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 11

    .line 1
    invoke-direct {p0}, Landroid/view/SurfaceView;->isAboveParent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 13
    .line 14
    and-int/lit16 v0, v0, 0x80

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-lez v2, :cond_2

    .line 36
    .line 37
    if-lez v3, :cond_2

    .line 38
    .line 39
    iget-object v4, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 40
    .line 41
    invoke-virtual {p0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 42
    .line 43
    .line 44
    iget-object v4, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 45
    .line 46
    aget v6, v4, v1

    .line 47
    .line 48
    aget v7, v4, v0

    .line 49
    .line 50
    add-int v8, v6, v2

    .line 51
    .line 52
    add-int v9, v7, v3

    .line 53
    .line 54
    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 55
    .line 56
    move-object v5, p1

    .line 57
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 58
    .line 59
    .line 60
    :cond_2
    move p1, v0

    .line 61
    :goto_0
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 62
    .line 63
    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move v1, p1

    .line 71
    :goto_1
    return v1

    .line 72
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    return p1
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public isFixedSize()Z
    .locals 2

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public notifyDrawFinished()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget v0, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    iput v0, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    .line 15
    .line 16
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    move v0, v2

    .line 22
    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 23
    .line 24
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 25
    .line 26
    .line 27
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 28
    .line 29
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 37
    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 52
    .line 53
    .line 54
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mAttachedToWindow:Z

    .line 12
    .line 13
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 29
    .line 30
    .line 31
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 32
    .line 33
    :cond_1
    :goto_0
    iget v1, p0, Landroid/view/SurfaceView;->mPendingReportDraws:I

    .line 34
    .line 35
    if-lez v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/SurfaceView;->notifyDrawFinished()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->destroy()V

    .line 51
    .line 52
    .line 53
    :cond_3
    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 55
    .line 56
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 57
    .line 58
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v1, p1}, Landroid/view/View;->getDefaultSize(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    :goto_0
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 16
    .line 17
    if-ltz v0, :cond_1

    .line 18
    .line 19
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-static {v1, p2}, Landroid/view/View;->getDefaultSize(II)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 6
    .line 7
    .line 8
    return p1
.end method

.method public setSecure(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 4
    .line 5
    or-int/lit16 p1, p1, 0x80

    .line 6
    .line 7
    iput p1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget p1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 11
    .line 12
    and-int/lit16 p1, p1, -0x81

    .line 13
    .line 14
    iput p1, p0, Landroid/view/SurfaceView;->mSurfaceFlags:I

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    move p1, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v1

    .line 11
    :goto_0
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 12
    .line 13
    iget-boolean v2, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, v1

    .line 25
    :goto_1
    iget-boolean p1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 26
    .line 27
    if-eq v0, p1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 30
    .line 31
    .line 32
    :cond_2
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public setWindowType(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 10
    .line 11
    const/16 v1, 0x1a

    .line 12
    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x3e8

    .line 16
    .line 17
    const-string v1, "SurfaceView"

    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    new-instance p1, Ljava/lang/Throwable;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v0, "If you are calling SurfaceView#setWindowType(TYPE_APPLICATION_PANEL) just to make the SurfaceView to be placed on top of its window, you must call setZOrderOnTop(true) instead."

    .line 27
    .line 28
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    const-string v0, "SurfaceView#setWindowType(int) is deprecated and now does nothing. type="

    .line 37
    .line 38
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Ljava/lang/Throwable;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 52
    .line 53
    const-string v0, "SurfaceView#setWindowType() has never been a public API."

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    :goto_0
    iput p1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput p1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, -0x2

    .line 8
    iput p1, p0, Landroid/view/SurfaceView;->mSubLayer:I

    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public final surfacePositionLost_uiRtSync(J)V
    .locals 7

    .line 1
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    const-string v4, "SurfaceView"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-array v0, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v5

    .line 16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    aput-object v5, v0, v3

    .line 21
    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    aput-object v5, v0, v1

    .line 27
    .line 28
    const-string v5, "%d windowPositionLost, frameNr = %d"

    .line 29
    .line 30
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 48
    .line 49
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 52
    .line 53
    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 62
    .line 63
    iget-object v5, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    :try_start_0
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    const-string v0, "%d updateSurfacePosition, postion = [%d, %d, %d, %d]"

    .line 76
    .line 77
    const/4 v5, 0x5

    .line 78
    new-array v5, v5, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    aput-object v6, v5, v3

    .line 89
    .line 90
    iget-object v3, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 91
    .line 92
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 93
    .line 94
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    aput-object v3, v5, v1

    .line 99
    .line 100
    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 101
    .line 102
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 103
    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    aput-object v1, v5, v2

    .line 109
    .line 110
    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 111
    .line 112
    iget v1, v1, Landroid/graphics/Rect;->right:I

    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const/4 v2, 0x3

    .line 119
    aput-object v1, v5, v2

    .line 120
    .line 121
    iget-object v1, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 122
    .line 123
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const/4 v2, 0x4

    .line 130
    aput-object v1, v5, v2

    .line 131
    .line 132
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :cond_2
    iget-object v0, p0, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 140
    .line 141
    invoke-direct {p0, v0, p1, p2}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :catch_0
    move-exception p1

    .line 146
    const-string p2, "Exception configuring surface"

    .line 147
    .line 148
    invoke-static {v4, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .line 150
    .line 151
    :cond_3
    :goto_0
    return-void
.end method

.method public updateSurface()V
    .locals 24

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    const-string v10, " h="

    .line 4
    .line 5
    const-string v11, " w="

    .line 6
    .line 7
    const-string v0, "SurfaceView - "

    .line 8
    .line 9
    iget-boolean v1, v9, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 15
    .line 16
    .line 17
    move-result-object v12

    .line 18
    if-eqz v12, :cond_3f

    .line 19
    .line 20
    iget-object v1, v12, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 21
    .line 22
    if-eqz v1, :cond_3f

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto/16 :goto_24

    .line 31
    .line 32
    :cond_1
    iget-object v1, v12, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 33
    .line 34
    iput-object v1, v9, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    iget-object v2, v9, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget v1, v9, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 44
    .line 45
    if-gtz v1, :cond_3

    .line 46
    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    :cond_3
    move v13, v1

    .line 52
    iget v1, v9, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 53
    .line 54
    if-gtz v1, :cond_4

    .line 55
    .line 56
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    :cond_4
    move v14, v1

    .line 61
    iget v1, v9, Landroid/view/SurfaceView;->mFormat:I

    .line 62
    .line 63
    iget v2, v9, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 64
    .line 65
    const/4 v15, 0x1

    .line 66
    const/4 v8, 0x0

    .line 67
    if-eq v1, v2, :cond_5

    .line 68
    .line 69
    move v7, v15

    .line 70
    goto :goto_0

    .line 71
    :cond_5
    move v7, v8

    .line 72
    :goto_0
    iget-boolean v1, v9, Landroid/view/SurfaceView;->mVisible:Z

    .line 73
    .line 74
    iget-boolean v2, v9, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 75
    .line 76
    if-eq v1, v2, :cond_6

    .line 77
    .line 78
    move v6, v15

    .line 79
    goto :goto_1

    .line 80
    :cond_6
    move v6, v8

    .line 81
    :goto_1
    iget-object v1, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 82
    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    if-nez v7, :cond_7

    .line 86
    .line 87
    if-eqz v6, :cond_8

    .line 88
    .line 89
    :cond_7
    if-eqz v2, :cond_8

    .line 90
    .line 91
    move v5, v15

    .line 92
    goto :goto_2

    .line 93
    :cond_8
    move v5, v8

    .line 94
    :goto_2
    iget v1, v9, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 95
    .line 96
    if-ne v1, v13, :cond_a

    .line 97
    .line 98
    iget v1, v9, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 99
    .line 100
    if-eq v1, v14, :cond_9

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_9
    move v4, v8

    .line 104
    goto :goto_4

    .line 105
    :cond_a
    :goto_3
    move v4, v15

    .line 106
    :goto_4
    iget-boolean v1, v9, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 107
    .line 108
    iget-boolean v2, v9, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 109
    .line 110
    if-eq v1, v2, :cond_b

    .line 111
    .line 112
    move v1, v15

    .line 113
    goto :goto_5

    .line 114
    :cond_b
    move v1, v8

    .line 115
    :goto_5
    const-string v3, "Exception configuring surface"

    .line 116
    .line 117
    const-string v2, "SurfaceView"

    .line 118
    .line 119
    if-nez v5, :cond_16

    .line 120
    .line 121
    if-nez v7, :cond_16

    .line 122
    .line 123
    if-nez v4, :cond_16

    .line 124
    .line 125
    if-nez v6, :cond_16

    .line 126
    .line 127
    if-eqz v1, :cond_c

    .line 128
    .line 129
    goto/16 :goto_a

    .line 130
    .line 131
    :cond_c
    iget-object v0, v9, Landroid/view/SurfaceView;->mLocation:[I

    .line 132
    .line 133
    invoke-virtual {v9, v0}, Landroid/view/View;->getLocationInSurface([I)V

    .line 134
    .line 135
    .line 136
    iget v0, v9, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 137
    .line 138
    iget-object v1, v9, Landroid/view/SurfaceView;->mLocation:[I

    .line 139
    .line 140
    aget v4, v1, v8

    .line 141
    .line 142
    if-ne v0, v4, :cond_e

    .line 143
    .line 144
    iget v0, v9, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 145
    .line 146
    aget v1, v1, v15

    .line 147
    .line 148
    if-eq v0, v1, :cond_d

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_d
    move v0, v8

    .line 152
    goto :goto_7

    .line 153
    :cond_e
    :goto_6
    move v0, v15

    .line 154
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    iget-object v4, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 159
    .line 160
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-ne v1, v4, :cond_10

    .line 165
    .line 166
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    iget-object v4, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 171
    .line 172
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eq v1, v4, :cond_f

    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_f
    move v1, v8

    .line 180
    goto :goto_9

    .line 181
    :cond_10
    :goto_8
    move v1, v15

    .line 182
    :goto_9
    if-nez v0, :cond_11

    .line 183
    .line 184
    if-eqz v1, :cond_3f

    .line 185
    .line 186
    :cond_11
    iget-object v0, v9, Landroid/view/SurfaceView;->mLocation:[I

    .line 187
    .line 188
    aget v1, v0, v8

    .line 189
    .line 190
    iput v1, v9, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 191
    .line 192
    aget v1, v0, v15

    .line 193
    .line 194
    iput v1, v9, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 195
    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    aput v1, v0, v8

    .line 201
    .line 202
    iget-object v0, v9, Landroid/view/SurfaceView;->mLocation:[I

    .line 203
    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    aput v1, v0, v15

    .line 209
    .line 210
    iget-object v0, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 211
    .line 212
    iget v1, v9, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 213
    .line 214
    iget v4, v9, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 215
    .line 216
    iget-object v5, v9, Landroid/view/SurfaceView;->mLocation:[I

    .line 217
    .line 218
    aget v6, v5, v8

    .line 219
    .line 220
    add-int/2addr v6, v1

    .line 221
    aget v5, v5, v15

    .line 222
    .line 223
    add-int/2addr v5, v4

    .line 224
    invoke-virtual {v0, v1, v4, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 225
    .line 226
    .line 227
    iget-object v0, v9, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 228
    .line 229
    if-eqz v0, :cond_12

    .line 230
    .line 231
    iget-object v1, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 232
    .line 233
    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 234
    .line 235
    .line 236
    :cond_12
    iget-object v0, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 237
    .line 238
    if-nez v0, :cond_13

    .line 239
    .line 240
    return-void

    .line 241
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isHardwareAccelerated()Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_14

    .line 246
    .line 247
    iget-boolean v0, v9, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 248
    .line 249
    if-nez v0, :cond_3f

    .line 250
    .line 251
    :cond_14
    :try_start_0
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    .line 252
    .line 253
    if-eqz v0, :cond_15

    .line 254
    .line 255
    const-string v0, "%d updateSurfacePosition UI, postion = [%d, %d, %d, %d]"

    .line 256
    .line 257
    const/4 v1, 0x5

    .line 258
    new-array v1, v1, [Ljava/lang/Object;

    .line 259
    .line 260
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    aput-object v4, v1, v8

    .line 269
    .line 270
    iget-object v4, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 271
    .line 272
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 273
    .line 274
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    aput-object v4, v1, v15

    .line 279
    .line 280
    iget-object v4, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 281
    .line 282
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 283
    .line 284
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    const/4 v5, 0x2

    .line 289
    aput-object v4, v1, v5

    .line 290
    .line 291
    iget-object v4, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 292
    .line 293
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 294
    .line 295
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    const/4 v5, 0x3

    .line 300
    aput-object v4, v1, v5

    .line 301
    .line 302
    iget-object v4, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 303
    .line 304
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 305
    .line 306
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    const/4 v5, 0x4

    .line 311
    aput-object v4, v1, v5

    .line 312
    .line 313
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    :cond_15
    iget-object v0, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 321
    .line 322
    const-wide/16 v4, -0x1

    .line 323
    .line 324
    invoke-direct {v9, v0, v4, v5}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .line 326
    .line 327
    goto/16 :goto_24

    .line 328
    .line 329
    :catch_0
    move-exception v0

    .line 330
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    .line 332
    .line 333
    goto/16 :goto_24

    .line 334
    .line 335
    :cond_16
    :goto_a
    iget-object v1, v9, Landroid/view/SurfaceView;->mLocation:[I

    .line 336
    .line 337
    invoke-virtual {v9, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 338
    .line 339
    .line 340
    sget-boolean v1, Landroid/view/SurfaceView;->DEBUG:Z

    .line 341
    .line 342
    if-eqz v1, :cond_19

    .line 343
    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 350
    .line 351
    .line 352
    move-result v15

    .line 353
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    const-string v15, " Changes: creating="

    .line 357
    .line 358
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v15, " format="

    .line 365
    .line 366
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    const-string v15, " size="

    .line 373
    .line 374
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string v15, " visible="

    .line 381
    .line 382
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v15, " left="

    .line 389
    .line 390
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    iget v15, v9, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 394
    .line 395
    move-object/from16 v17, v3

    .line 396
    .line 397
    iget-object v3, v9, Landroid/view/SurfaceView;->mLocation:[I

    .line 398
    .line 399
    aget v3, v3, v8

    .line 400
    .line 401
    if-eq v15, v3, :cond_17

    .line 402
    .line 403
    const/4 v3, 0x1

    .line 404
    goto :goto_b

    .line 405
    :cond_17
    move v3, v8

    .line 406
    :goto_b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v3, " top="

    .line 410
    .line 411
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    iget v3, v9, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 415
    .line 416
    iget-object v15, v9, Landroid/view/SurfaceView;->mLocation:[I

    .line 417
    .line 418
    const/16 v16, 0x1

    .line 419
    .line 420
    aget v15, v15, v16

    .line 421
    .line 422
    if-eq v3, v15, :cond_18

    .line 423
    .line 424
    const/4 v3, 0x1

    .line 425
    goto :goto_c

    .line 426
    :cond_18
    move v3, v8

    .line 427
    :goto_c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .line 436
    .line 437
    goto :goto_d

    .line 438
    :cond_19
    move-object/from16 v17, v3

    .line 439
    .line 440
    :goto_d
    :try_start_1
    iget-boolean v15, v9, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 441
    .line 442
    iput-boolean v15, v9, Landroid/view/SurfaceView;->mVisible:Z

    .line 443
    .line 444
    iget-object v1, v9, Landroid/view/SurfaceView;->mLocation:[I

    .line 445
    .line 446
    aget v3, v1, v8

    .line 447
    .line 448
    iput v3, v9, Landroid/view/SurfaceView;->mWindowSpaceLeft:I

    .line 449
    .line 450
    const/16 v16, 0x1

    .line 451
    .line 452
    aget v1, v1, v16

    .line 453
    .line 454
    iput v1, v9, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 455
    .line 456
    iput v13, v9, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 457
    .line 458
    iput v14, v9, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 459
    .line 460
    iget v8, v9, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 461
    .line 462
    iput v8, v9, Landroid/view/SurfaceView;->mFormat:I

    .line 463
    .line 464
    iget-boolean v8, v9, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 465
    .line 466
    iput-boolean v8, v9, Landroid/view/SurfaceView;->mLastWindowVisibility:Z

    .line 467
    .line 468
    iget-object v8, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 469
    .line 470
    iput v3, v8, Landroid/graphics/Rect;->left:I

    .line 471
    .line 472
    iput v1, v8, Landroid/graphics/Rect;->top:I

    .line 473
    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    add-int/2addr v3, v1

    .line 479
    iput v3, v8, Landroid/graphics/Rect;->right:I

    .line 480
    .line 481
    iget-object v1, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 482
    .line 483
    iget v3, v9, Landroid/view/SurfaceView;->mWindowSpaceTop:I

    .line 484
    .line 485
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 486
    .line 487
    .line 488
    move-result v8

    .line 489
    add-int/2addr v3, v8

    .line 490
    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 491
    .line 492
    iget-object v1, v9, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 493
    .line 494
    if-eqz v1, :cond_1a

    .line 495
    .line 496
    iget-object v3, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 497
    .line 498
    invoke-virtual {v1, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 499
    .line 500
    .line 501
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getParentSurfaceInsets()Landroid/graphics/Rect;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    iget-object v3, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 506
    .line 507
    iget v8, v1, Landroid/graphics/Rect;->left:I

    .line 508
    .line 509
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 510
    .line 511
    invoke-virtual {v3, v8, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 512
    .line 513
    .line 514
    if-eqz v5, :cond_1b

    .line 515
    .line 516
    new-instance v1, Landroid/view/SurfaceSession;

    .line 517
    .line 518
    iget-object v3, v12, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 519
    .line 520
    invoke-direct {v1, v3}, Landroid/view/SurfaceSession;-><init>(Landroid/view/Surface;)V

    .line 521
    .line 522
    .line 523
    iput-object v1, v9, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 524
    .line 525
    iget-object v1, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 526
    .line 527
    iput-object v1, v9, Landroid/view/SurfaceView;->mDeferredDestroySurfaceControl:Landroid/view/SurfaceControl;

    .line 528
    .line 529
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->updateOpaqueFlag()V

    .line 530
    .line 531
    .line 532
    new-instance v8, Landroid/view/SurfaceView$SurfaceControlWithBackground;

    .line 533
    .line 534
    iget-object v3, v9, Landroid/view/SurfaceView;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 535
    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    iget v1, v9, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 557
    .line 558
    move/from16 v18, v6

    .line 559
    .line 560
    iget v6, v9, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 561
    .line 562
    move/from16 v19, v7

    .line 563
    .line 564
    iget v7, v9, Landroid/view/SurfaceView;->mFormat:I

    .line 565
    .line 566
    move-object/from16 v20, v12

    .line 567
    .line 568
    iget v12, v9, Landroid/view/SurfaceView;->mSurfaceFlags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 569
    .line 570
    move/from16 v21, v1

    .line 571
    .line 572
    move-object v1, v8

    .line 573
    move/from16 v22, v14

    .line 574
    .line 575
    move-object v14, v2

    .line 576
    move-object/from16 v2, p0

    .line 577
    .line 578
    move-object/from16 v23, v17

    .line 579
    .line 580
    move/from16 v17, v4

    .line 581
    .line 582
    move-object v4, v0

    .line 583
    move v0, v5

    .line 584
    move/from16 v5, v21

    .line 585
    .line 586
    move-object/from16 v21, v10

    .line 587
    .line 588
    move-object v10, v8

    .line 589
    move v8, v12

    .line 590
    :try_start_2
    invoke-direct/range {v1 .. v8}, Landroid/view/SurfaceView$SurfaceControlWithBackground;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .line 591
    .line 592
    .line 593
    iput-object v10, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 594
    .line 595
    goto :goto_e

    .line 596
    :cond_1b
    move v0, v5

    .line 597
    move/from16 v18, v6

    .line 598
    .line 599
    move/from16 v19, v7

    .line 600
    .line 601
    move-object/from16 v21, v10

    .line 602
    .line 603
    move-object/from16 v20, v12

    .line 604
    .line 605
    move/from16 v22, v14

    .line 606
    .line 607
    move-object/from16 v23, v17

    .line 608
    .line 609
    move-object v14, v2

    .line 610
    move/from16 v17, v4

    .line 611
    .line 612
    iget-object v1, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 613
    .line 614
    if-nez v1, :cond_1c

    .line 615
    .line 616
    return-void

    .line 617
    :cond_1c
    :goto_e
    iget-object v1, v9, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 618
    .line 619
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 620
    .line 621
    .line 622
    if-nez v15, :cond_1d

    .line 623
    .line 624
    const/4 v8, 0x1

    .line 625
    goto :goto_f

    .line 626
    :cond_1d
    const/4 v8, 0x0

    .line 627
    :goto_f
    :try_start_3
    iput-boolean v8, v9, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 628
    .line 629
    sget-boolean v1, Landroid/view/SurfaceView;->DEBUG:Z

    .line 630
    .line 631
    if-eqz v1, :cond_1e

    .line 632
    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    .line 634
    .line 635
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    .line 637
    .line 638
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 639
    .line 640
    .line 641
    move-result v2

    .line 642
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    const-string v2, " Cur surface: "

    .line 646
    .line 647
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    iget-object v2, v9, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 651
    .line 652
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    .line 657
    .line 658
    move-result-object v1

    .line 659
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .line 661
    .line 662
    :cond_1e
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 663
    .line 664
    .line 665
    :try_start_4
    iget-object v1, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 666
    .line 667
    iget v2, v9, Landroid/view/SurfaceView;->mSubLayer:I

    .line 668
    .line 669
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 670
    .line 671
    .line 672
    iget-boolean v1, v9, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 673
    .line 674
    if-eqz v1, :cond_1f

    .line 675
    .line 676
    iget-object v1, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 677
    .line 678
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    .line 679
    .line 680
    .line 681
    goto :goto_10

    .line 682
    :cond_1f
    iget-object v1, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 683
    .line 684
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    .line 685
    .line 686
    .line 687
    :goto_10
    if-nez v17, :cond_20

    .line 688
    .line 689
    if-nez v0, :cond_20

    .line 690
    .line 691
    iget-boolean v1, v9, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 692
    .line 693
    if-nez v1, :cond_21

    .line 694
    .line 695
    :cond_20
    iget-object v1, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 696
    .line 697
    iget-object v2, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 698
    .line 699
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 700
    .line 701
    int-to-float v3, v3

    .line 702
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 703
    .line 704
    int-to-float v2, v2

    .line 705
    invoke-virtual {v1, v3, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 706
    .line 707
    .line 708
    iget-object v1, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 709
    .line 710
    iget-object v2, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 711
    .line 712
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 713
    .line 714
    .line 715
    move-result v2

    .line 716
    int-to-float v2, v2

    .line 717
    iget v3, v9, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 718
    .line 719
    int-to-float v3, v3

    .line 720
    div-float/2addr v2, v3

    .line 721
    iget-object v3, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 722
    .line 723
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 724
    .line 725
    .line 726
    move-result v3

    .line 727
    int-to-float v3, v3

    .line 728
    iget v4, v9, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 729
    .line 730
    int-to-float v4, v4

    .line 731
    div-float/2addr v3, v4

    .line 732
    const/4 v4, 0x0

    .line 733
    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 734
    .line 735
    .line 736
    :cond_21
    if-eqz v17, :cond_22

    .line 737
    .line 738
    iget-object v1, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 739
    .line 740
    iget v2, v9, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 741
    .line 742
    iget v3, v9, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 743
    .line 744
    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setSize(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 745
    .line 746
    .line 747
    :cond_22
    :try_start_5
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 748
    .line 749
    .line 750
    if-nez v17, :cond_24

    .line 751
    .line 752
    if-eqz v0, :cond_23

    .line 753
    .line 754
    goto :goto_11

    .line 755
    :cond_23
    const/4 v8, 0x0

    .line 756
    goto :goto_12

    .line 757
    :cond_24
    :goto_11
    const/4 v8, 0x1

    .line 758
    :goto_12
    iget-object v1, v9, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 759
    .line 760
    const/4 v2, 0x0

    .line 761
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 762
    .line 763
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 764
    .line 765
    iget-object v2, v9, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 766
    .line 767
    if-nez v2, :cond_25

    .line 768
    .line 769
    iget v2, v9, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 770
    .line 771
    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 772
    .line 773
    iget v2, v9, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 774
    .line 775
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 776
    .line 777
    goto :goto_13

    .line 778
    :cond_25
    iget v2, v2, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    .line 779
    .line 780
    iget v3, v9, Landroid/view/SurfaceView;->mSurfaceWidth:I

    .line 781
    .line 782
    int-to-float v3, v3

    .line 783
    mul-float/2addr v3, v2

    .line 784
    const/high16 v4, 0x3f000000    # 0.5f

    .line 785
    .line 786
    add-float/2addr v3, v4

    .line 787
    float-to-int v3, v3

    .line 788
    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 789
    .line 790
    iget v3, v9, Landroid/view/SurfaceView;->mSurfaceHeight:I

    .line 791
    .line 792
    int-to-float v3, v3

    .line 793
    mul-float/2addr v3, v2

    .line 794
    add-float/2addr v3, v4

    .line 795
    float-to-int v2, v3

    .line 796
    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 797
    .line 798
    :goto_13
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 799
    .line 800
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 801
    .line 802
    iget v3, v9, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 803
    .line 804
    if-ne v3, v2, :cond_27

    .line 805
    .line 806
    iget v3, v9, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 807
    .line 808
    if-eq v3, v1, :cond_26

    .line 809
    .line 810
    goto :goto_14

    .line 811
    :cond_26
    const/4 v3, 0x0

    .line 812
    goto :goto_15

    .line 813
    :cond_27
    :goto_14
    const/4 v3, 0x1

    .line 814
    :goto_15
    iput v2, v9, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 815
    .line 816
    iput v1, v9, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 817
    .line 818
    :try_start_6
    iget-object v1, v9, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 819
    .line 820
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 821
    .line 822
    .line 823
    const/4 v1, 0x0

    .line 824
    if-eqz v15, :cond_28

    .line 825
    .line 826
    :try_start_7
    iget-boolean v2, v9, Landroid/view/SurfaceView;->mDrawFinished:Z

    .line 827
    .line 828
    if-nez v2, :cond_28

    .line 829
    .line 830
    const/4 v2, 0x1

    .line 831
    goto :goto_16

    .line 832
    :catchall_0
    move-exception v0

    .line 833
    move-object/from16 v3, v21

    .line 834
    .line 835
    goto/16 :goto_1f

    .line 836
    .line 837
    :cond_28
    const/4 v2, 0x0

    .line 838
    :goto_16
    or-int/2addr v2, v8

    .line 839
    iget-boolean v4, v9, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 840
    .line 841
    if-eqz v4, :cond_2c

    .line 842
    .line 843
    if-nez v0, :cond_29

    .line 844
    .line 845
    if-nez v15, :cond_2c

    .line 846
    .line 847
    if-eqz v18, :cond_2c

    .line 848
    .line 849
    :cond_29
    const/4 v4, 0x0

    .line 850
    iput-boolean v4, v9, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 851
    .line 852
    iget-object v4, v9, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 853
    .line 854
    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    .line 855
    .line 856
    .line 857
    move-result v4

    .line 858
    if-eqz v4, :cond_2c

    .line 859
    .line 860
    sget-boolean v4, Landroid/view/SurfaceView;->DEBUG:Z

    .line 861
    .line 862
    if-eqz v4, :cond_2a

    .line 863
    .line 864
    new-instance v4, Ljava/lang/StringBuilder;

    .line 865
    .line 866
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 867
    .line 868
    .line 869
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 870
    .line 871
    .line 872
    move-result v5

    .line 873
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    const-string v5, " visibleChanged -- surfaceDestroyed"

    .line 877
    .line 878
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v4

    .line 885
    invoke-static {v14, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    .line 887
    .line 888
    :cond_2a
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    .line 889
    .line 890
    .line 891
    move-result-object v4

    .line 892
    array-length v5, v4

    .line 893
    const/4 v8, 0x0

    .line 894
    :goto_17
    if-ge v8, v5, :cond_2b

    .line 895
    .line 896
    aget-object v6, v4, v8

    .line 897
    .line 898
    iget-object v7, v9, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 899
    .line 900
    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 901
    .line 902
    .line 903
    add-int/lit8 v8, v8, 0x1

    .line 904
    .line 905
    goto :goto_17

    .line 906
    :cond_2b
    iget-object v5, v9, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 907
    .line 908
    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    .line 909
    .line 910
    .line 911
    move-result v5

    .line 912
    if-eqz v5, :cond_2d

    .line 913
    .line 914
    iget-object v5, v9, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 915
    .line 916
    invoke-virtual {v5}, Landroid/view/Surface;->forceScopedDisconnect()V

    .line 917
    .line 918
    .line 919
    goto :goto_18

    .line 920
    :cond_2c
    move-object v4, v1

    .line 921
    :cond_2d
    :goto_18
    if-eqz v0, :cond_2e

    .line 922
    .line 923
    iget-object v5, v9, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 924
    .line 925
    iget-object v6, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 926
    .line 927
    invoke-virtual {v5, v6}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 928
    .line 929
    .line 930
    :cond_2e
    if-eqz v17, :cond_2f

    .line 931
    .line 932
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 933
    .line 934
    .line 935
    move-result-object v5

    .line 936
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 937
    .line 938
    .line 939
    move-result-object v5

    .line 940
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 941
    .line 942
    const/16 v6, 0x1a

    .line 943
    .line 944
    if-ge v5, v6, :cond_2f

    .line 945
    .line 946
    iget-object v5, v9, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 947
    .line 948
    iget-object v6, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 949
    .line 950
    invoke-virtual {v5, v6}, Landroid/view/Surface;->createFrom(Landroid/view/SurfaceControl;)V

    .line 951
    .line 952
    .line 953
    :cond_2f
    if-eqz v15, :cond_3b

    .line 954
    .line 955
    iget-object v5, v9, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 956
    .line 957
    invoke-virtual {v5}, Landroid/view/Surface;->isValid()Z

    .line 958
    .line 959
    .line 960
    move-result v5

    .line 961
    if-eqz v5, :cond_3b

    .line 962
    .line 963
    iget-boolean v5, v9, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 964
    .line 965
    if-nez v5, :cond_33

    .line 966
    .line 967
    if-nez v0, :cond_30

    .line 968
    .line 969
    if-eqz v18, :cond_33

    .line 970
    .line 971
    :cond_30
    const/4 v5, 0x1

    .line 972
    iput-boolean v5, v9, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 973
    .line 974
    iput-boolean v5, v9, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 975
    .line 976
    sget-boolean v5, Landroid/view/SurfaceView;->DEBUG:Z

    .line 977
    .line 978
    if-eqz v5, :cond_31

    .line 979
    .line 980
    new-instance v5, Ljava/lang/StringBuilder;

    .line 981
    .line 982
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 983
    .line 984
    .line 985
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 986
    .line 987
    .line 988
    move-result v6

    .line 989
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 990
    .line 991
    .line 992
    const-string v6, " visibleChanged -- surfaceCreated"

    .line 993
    .line 994
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 998
    .line 999
    .line 1000
    move-result-object v5

    .line 1001
    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    .line 1003
    .line 1004
    :cond_31
    if-nez v4, :cond_32

    .line 1005
    .line 1006
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v4

    .line 1010
    :cond_32
    array-length v5, v4

    .line 1011
    const/4 v8, 0x0

    .line 1012
    :goto_19
    if-ge v8, v5, :cond_33

    .line 1013
    .line 1014
    aget-object v6, v4, v8

    .line 1015
    .line 1016
    iget-object v7, v9, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1017
    .line 1018
    invoke-interface {v6, v7}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1019
    .line 1020
    .line 1021
    add-int/lit8 v8, v8, 0x1

    .line 1022
    .line 1023
    goto :goto_19

    .line 1024
    :cond_33
    if-nez v0, :cond_35

    .line 1025
    .line 1026
    if-nez v19, :cond_35

    .line 1027
    .line 1028
    if-nez v17, :cond_35

    .line 1029
    .line 1030
    if-nez v18, :cond_35

    .line 1031
    .line 1032
    if-eqz v3, :cond_34

    .line 1033
    .line 1034
    goto :goto_1a

    .line 1035
    :cond_34
    move-object/from16 v3, v21

    .line 1036
    .line 1037
    goto :goto_1d

    .line 1038
    :cond_35
    :goto_1a
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    .line 1039
    .line 1040
    if-eqz v0, :cond_36

    .line 1041
    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1045
    .line 1046
    .line 1047
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 1048
    .line 1049
    .line 1050
    move-result v3

    .line 1051
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    const-string v3, " surfaceChanged -- format="

    .line 1055
    .line 1056
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    .line 1059
    iget v3, v9, Landroid/view/SurfaceView;->mFormat:I

    .line 1060
    .line 1061
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1068
    .line 1069
    .line 1070
    move-object/from16 v3, v21

    .line 1071
    .line 1072
    :try_start_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    .line 1075
    move/from16 v5, v22

    .line 1076
    .line 1077
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v0

    .line 1084
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    .line 1086
    .line 1087
    goto :goto_1b

    .line 1088
    :cond_36
    move-object/from16 v3, v21

    .line 1089
    .line 1090
    move/from16 v5, v22

    .line 1091
    .line 1092
    :goto_1b
    if-nez v4, :cond_37

    .line 1093
    .line 1094
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v0

    .line 1098
    move-object v4, v0

    .line 1099
    :cond_37
    array-length v0, v4

    .line 1100
    const/4 v8, 0x0

    .line 1101
    :goto_1c
    if-ge v8, v0, :cond_38

    .line 1102
    .line 1103
    aget-object v6, v4, v8

    .line 1104
    .line 1105
    iget-object v7, v9, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1106
    .line 1107
    iget v10, v9, Landroid/view/SurfaceView;->mFormat:I

    .line 1108
    .line 1109
    invoke-interface {v6, v7, v10, v13, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1110
    .line 1111
    .line 1112
    add-int/lit8 v8, v8, 0x1

    .line 1113
    .line 1114
    goto :goto_1c

    .line 1115
    :cond_38
    :goto_1d
    if-eqz v2, :cond_3c

    .line 1116
    .line 1117
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    .line 1118
    .line 1119
    if-eqz v0, :cond_39

    .line 1120
    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1124
    .line 1125
    .line 1126
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 1127
    .line 1128
    .line 1129
    move-result v2

    .line 1130
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    .line 1133
    const-string v2, " surfaceRedrawNeeded"

    .line 1134
    .line 1135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v0

    .line 1142
    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    .line 1144
    .line 1145
    :cond_39
    if-nez v4, :cond_3a

    .line 1146
    .line 1147
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v4

    .line 1151
    :cond_3a
    iget v0, v9, Landroid/view/SurfaceView;->mPendingReportDraws:I

    .line 1152
    .line 1153
    const/4 v2, 0x1

    .line 1154
    add-int/2addr v0, v2

    .line 1155
    iput v0, v9, Landroid/view/SurfaceView;->mPendingReportDraws:I

    .line 1156
    .line 1157
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewRootImpl;->drawPending()V

    .line 1158
    .line 1159
    .line 1160
    new-instance v0, Lcom/android/internal/view/SurfaceCallbackHelper;

    .line 1161
    .line 1162
    new-instance v2, Landroid/view/e;

    .line 1163
    .line 1164
    const/4 v5, 0x0

    .line 1165
    invoke-direct {v2, v9, v5}, Landroid/view/e;-><init>(Ljava/lang/Object;I)V

    .line 1166
    .line 1167
    .line 1168
    invoke-direct {v0, v2}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    .line 1169
    .line 1170
    .line 1171
    iget-object v2, v9, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1172
    .line 1173
    invoke-virtual {v0, v2, v4}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1174
    .line 1175
    .line 1176
    goto :goto_1e

    .line 1177
    :catchall_1
    move-exception v0

    .line 1178
    goto :goto_1f

    .line 1179
    :cond_3b
    move-object/from16 v3, v21

    .line 1180
    .line 1181
    :cond_3c
    :goto_1e
    const/4 v2, 0x0

    .line 1182
    :try_start_9
    iput-boolean v2, v9, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1183
    .line 1184
    iget-object v0, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1185
    .line 1186
    if-eqz v0, :cond_3e

    .line 1187
    .line 1188
    iget-boolean v0, v9, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 1189
    .line 1190
    if-nez v0, :cond_3e

    .line 1191
    .line 1192
    iget-object v0, v9, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 1193
    .line 1194
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1195
    .line 1196
    .line 1197
    iget-boolean v0, v9, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 1198
    .line 1199
    if-nez v0, :cond_3e

    .line 1200
    .line 1201
    iget-object v0, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1202
    .line 1203
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 1204
    .line 1205
    .line 1206
    iput-object v1, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1207
    .line 1208
    goto :goto_23

    .line 1209
    :goto_1f
    const/4 v2, 0x0

    .line 1210
    iput-boolean v2, v9, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 1211
    .line 1212
    iget-object v2, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1213
    .line 1214
    if-eqz v2, :cond_3d

    .line 1215
    .line 1216
    iget-boolean v2, v9, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 1217
    .line 1218
    if-nez v2, :cond_3d

    .line 1219
    .line 1220
    iget-object v2, v9, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 1221
    .line 1222
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 1223
    .line 1224
    .line 1225
    iget-boolean v2, v9, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 1226
    .line 1227
    if-nez v2, :cond_3d

    .line 1228
    .line 1229
    iget-object v2, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1230
    .line 1231
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->destroy()V

    .line 1232
    .line 1233
    .line 1234
    iput-object v1, v9, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1235
    .line 1236
    :cond_3d
    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 1237
    :catchall_2
    move-exception v0

    .line 1238
    move-object/from16 v3, v21

    .line 1239
    .line 1240
    :try_start_a
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1241
    .line 1242
    .line 1243
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1244
    :catchall_3
    move-exception v0

    .line 1245
    goto :goto_20

    .line 1246
    :catchall_4
    move-exception v0

    .line 1247
    move-object/from16 v3, v21

    .line 1248
    .line 1249
    :goto_20
    :try_start_b
    iget-object v1, v9, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1250
    .line 1251
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1252
    .line 1253
    .line 1254
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 1255
    :catch_1
    move-exception v0

    .line 1256
    goto :goto_21

    .line 1257
    :catch_2
    move-exception v0

    .line 1258
    move-object/from16 v3, v21

    .line 1259
    .line 1260
    :goto_21
    move-object/from16 v1, v23

    .line 1261
    .line 1262
    goto :goto_22

    .line 1263
    :catch_3
    move-exception v0

    .line 1264
    move-object v14, v2

    .line 1265
    move-object v3, v10

    .line 1266
    move-object/from16 v1, v17

    .line 1267
    .line 1268
    :goto_22
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1269
    .line 1270
    .line 1271
    :cond_3e
    :goto_23
    sget-boolean v0, Landroid/view/SurfaceView;->DEBUG:Z

    .line 1272
    .line 1273
    if-eqz v0, :cond_3f

    .line 1274
    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1276
    .line 1277
    const-string v1, "Layout: x="

    .line 1278
    .line 1279
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1280
    .line 1281
    .line 1282
    iget-object v1, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1283
    .line 1284
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 1285
    .line 1286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1287
    .line 1288
    .line 1289
    const-string v1, " y="

    .line 1290
    .line 1291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    iget-object v1, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1295
    .line 1296
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1297
    .line 1298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    .line 1303
    .line 1304
    iget-object v1, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1305
    .line 1306
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 1307
    .line 1308
    .line 1309
    move-result v1

    .line 1310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    .line 1315
    .line 1316
    iget-object v1, v9, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    .line 1317
    .line 1318
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 1319
    .line 1320
    .line 1321
    move-result v1

    .line 1322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1323
    .line 1324
    .line 1325
    const-string v1, ", frame="

    .line 1326
    .line 1327
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    .line 1329
    .line 1330
    iget-object v1, v9, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 1331
    .line 1332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v0

    .line 1339
    invoke-static {v14, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    .line 1341
    .line 1342
    :cond_3f
    :goto_24
    return-void
.end method

.method public final updateSurfacePosition_renderWorker(JIIII)V
    .locals 6

    .line 1
    const-string v0, "SurfaceView"

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRtHandlingPositionUpdates:Z

    .line 10
    .line 11
    iget-object v2, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 12
    .line 13
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 14
    .line 15
    if-ne v3, p3, :cond_1

    .line 16
    .line 17
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    if-ne v3, p4, :cond_1

    .line 20
    .line 21
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 22
    .line 23
    if-ne v3, p5, :cond_1

    .line 24
    .line 25
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 26
    .line 27
    if-ne v2, p6, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    :try_start_0
    sget-boolean v2, Landroid/view/SurfaceView;->DEBUG:Z

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    const-string v2, "%d updateSurfacePosition RenderWorker, frameNr = %d, postion = [%d, %d, %d, %d]"

    .line 35
    .line 36
    const/4 v3, 0x6

    .line 37
    new-array v3, v3, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const/4 v5, 0x0

    .line 48
    aput-object v4, v3, v5

    .line 49
    .line 50
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    aput-object v4, v3, v1

    .line 55
    .line 56
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/4 v4, 0x2

    .line 61
    aput-object v1, v3, v4

    .line 62
    .line 63
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const/4 v4, 0x3

    .line 68
    aput-object v1, v3, v4

    .line 69
    .line 70
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/4 v4, 0x4

    .line 75
    aput-object v1, v3, v4

    .line 76
    .line 77
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/4 v4, 0x5

    .line 82
    aput-object v1, v3, v4

    .line 83
    .line 84
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-object v1, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 92
    .line 93
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 94
    .line 95
    .line 96
    iget-object p3, p0, Landroid/view/SurfaceView;->mRTLastReportedPosition:Landroid/graphics/Rect;

    .line 97
    .line 98
    invoke-direct {p0, p3, p1, p2}, Landroid/view/SurfaceView;->setParentSpaceRectangle(Landroid/graphics/Rect;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-exception p1

    .line 103
    const-string p2, "Exception from repositionChild"

    .line 104
    .line 105
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void
.end method

.method public windowStopped(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/view/SurfaceView;->mWindowStopped:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/SurfaceView;->updateRequestedVisibility()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
