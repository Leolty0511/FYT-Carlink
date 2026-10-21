.class public final Landroid/view/InputQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputQueue$FinishedInputEventCallback;,
        Landroid/view/InputQueue$Callback;,
        Landroid/view/InputQueue$ActiveInputEvent;
    }
.end annotation


# instance fields
.field private final mActiveEventArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InputQueue$ActiveInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mActiveInputEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Landroid/view/InputQueue$ActiveInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mPtr:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    .line 4
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 5
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/view/InputQueue;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)I

    move-result v1

    iput v1, p0, Landroid/view/InputQueue;->mPtr:I

    const-string v1, "dispose"

    .line 6
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private finishInputEvent(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputQueue$ActiveInputEvent;

    .line 3
    iget-object v1, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4
    iget-object p1, v0, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    iget-object v1, v0, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    invoke-interface {p1, v1, p2}, Landroid/view/InputQueue$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    .line 5
    invoke-direct {p0, v0}, Landroid/view/InputQueue;->recycleActiveInputEvent(Landroid/view/InputQueue$ActiveInputEvent;)V

    :cond_0
    return-void
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/InputQueue;",
            ">;",
            "Landroid/os/MessageQueue;",
            ")I"
        }
    .end annotation
.end method

.method private static native nativeSendKeyEvent(ILandroid/view/KeyEvent;Z)I
.end method

.method private static native nativeSendMotionEvent(ILandroid/view/MotionEvent;)I
.end method

.method private obtainActiveInputEvent(Ljava/lang/Object;Landroid/view/InputQueue$FinishedInputEventCallback;)Landroid/view/InputQueue$ActiveInputEvent;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputQueue$ActiveInputEvent;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/view/InputQueue$ActiveInputEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputQueue$ActiveInputEvent;-><init>(Landroid/view/InputQueue;Landroid/view/InputQueue$1;)V

    .line 3
    :cond_0
    iput-object p1, v0, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    .line 4
    iput-object p2, v0, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    return-object v0
.end method

.method private recycleActiveInputEvent(Landroid/view/InputQueue$ActiveInputEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/InputQueue$ActiveInputEvent;->recycle()V

    .line 2
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/InputQueue;->dispose(Z)V

    return-void
.end method

.method public dispose(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {p1}, Ldalvik/system/CloseGuard;->close()V

    .line 5
    :cond_1
    iget p1, p0, Landroid/view/InputQueue;->mPtr:I

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p1}, Landroid/view/InputQueue;->nativeDispose(I)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroid/view/InputQueue;->mPtr:I

    :cond_2
    return-void
.end method

.method public finalize()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/InputQueue;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getNativePtr()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/InputQueue;->mPtr:I

    return v0
.end method

.method public sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p4}, Landroid/view/InputQueue;->obtainActiveInputEvent(Ljava/lang/Object;Landroid/view/InputQueue$FinishedInputEventCallback;)Landroid/view/InputQueue$ActiveInputEvent;

    move-result-object p2

    .line 2
    instance-of p4, p1, Landroid/view/KeyEvent;

    if-eqz p4, :cond_0

    .line 3
    iget p4, p0, Landroid/view/InputQueue;->mPtr:I

    check-cast p1, Landroid/view/KeyEvent;

    invoke-static {p4, p1, p3}, Landroid/view/InputQueue;->nativeSendKeyEvent(ILandroid/view/KeyEvent;Z)I

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    iget p3, p0, Landroid/view/InputQueue;->mPtr:I

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p3, p1}, Landroid/view/InputQueue;->nativeSendMotionEvent(ILandroid/view/MotionEvent;)I

    move-result p1

    .line 5
    :goto_0
    iget-object p3, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/SparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
