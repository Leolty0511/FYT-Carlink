.class Landroid/view/SurfaceView$MyWindow;
.super Lv/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyWindow"
.end annotation


# instance fields
.field public mCurHeight:I

.field public mCurWidth:I

.field private final mSurfaceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv/b;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/view/SurfaceView$MyWindow;->mCurWidth:I

    .line 3
    iput v0, p0, Landroid/view/SurfaceView$MyWindow;->mCurHeight:I

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public dispatchAppVisibility(Z)V
    .locals 0

    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3
    iget-object v0, v0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method

.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceView;

    if-eqz p2, :cond_3

    .line 2
    iget-object p3, p2, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 p3, 0x3

    const/4 p4, 0x1

    if-eqz p5, :cond_0

    .line 3
    :try_start_0
    iput-boolean p4, p2, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 4
    iput-boolean p4, p2, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 5
    iget-object p1, p2, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p5, p2, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p6

    if-ne p5, p6, :cond_1

    iget-object p5, p2, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result p5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-eq p5, p1, :cond_2

    .line 7
    :cond_1
    iput-boolean p4, p2, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 8
    iget-object p1, p2, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p2, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p2, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected focus in surface: focus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", touchEnabled="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SurfaceView"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
