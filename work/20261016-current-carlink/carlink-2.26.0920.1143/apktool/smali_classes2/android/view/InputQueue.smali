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
.field private final mActiveEventArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
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

.field private mPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/LongSparseArray;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    .line 12
    .line 13
    new-instance v0, Landroid/util/Pools$SimplePool;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    .line 19
    .line 20
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Landroid/view/InputQueue;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v1, v2}, Landroid/view/InputQueue;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    iput-wide v1, p0, Landroid/view/InputQueue;->mPtr:J

    .line 40
    .line 41
    const-string v1, "dispose"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private finishInputEvent(JZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-ltz p1, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroid/view/InputQueue$ActiveInputEvent;

    .line 16
    .line 17
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p2, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    .line 23
    .line 24
    iget-object v0, p2, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-interface {p1, v0, p3}, Landroid/view/InputQueue$FinishedInputEventCallback;->onFinishedInputEvent(Ljava/lang/Object;Z)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p2}, Landroid/view/InputQueue;->recycleActiveInputEvent(Landroid/view/InputQueue$ActiveInputEvent;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/InputQueue;",
            ">;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method

.method private static native nativeSendKeyEvent(JLandroid/view/KeyEvent;Z)J
.end method

.method private static native nativeSendMotionEvent(JLandroid/view/MotionEvent;)J
.end method

.method private obtainActiveInputEvent(Ljava/lang/Object;Landroid/view/InputQueue$FinishedInputEventCallback;)Landroid/view/InputQueue$ActiveInputEvent;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/InputQueue$ActiveInputEvent;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/view/InputQueue$ActiveInputEvent;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, p0, v1}, Landroid/view/InputQueue$ActiveInputEvent;-><init>(Landroid/view/InputQueue;Landroid/view/InputQueue$1;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iput-object p1, v0, Landroid/view/InputQueue$ActiveInputEvent;->mToken:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p2, v0, Landroid/view/InputQueue$ActiveInputEvent;->mCallback:Landroid/view/InputQueue$FinishedInputEventCallback;

    .line 20
    .line 21
    return-object v0
.end method

.method private recycleActiveInputEvent(Landroid/view/InputQueue$ActiveInputEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/InputQueue$ActiveInputEvent;->recycle()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/InputQueue;->mActiveInputEventPool:Landroid/util/Pools$Pool;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
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
    .locals 4

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
    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 6
    invoke-static {v0, v1}, Landroid/view/InputQueue;->nativeDispose(J)V

    .line 7
    iput-wide v2, p0, Landroid/view/InputQueue;->mPtr:J

    :cond_2
    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/InputQueue;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    return-wide v0
.end method

.method public sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2, p4}, Landroid/view/InputQueue;->obtainActiveInputEvent(Ljava/lang/Object;Landroid/view/InputQueue$FinishedInputEventCallback;)Landroid/view/InputQueue$ActiveInputEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    instance-of p4, p1, Landroid/view/KeyEvent;

    .line 6
    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Landroid/view/InputQueue;->mPtr:J

    .line 10
    .line 11
    check-cast p1, Landroid/view/KeyEvent;

    .line 12
    .line 13
    invoke-static {v0, v1, p1, p3}, Landroid/view/InputQueue;->nativeSendKeyEvent(JLandroid/view/KeyEvent;Z)J

    .line 14
    .line 15
    .line 16
    move-result-wide p3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-wide p3, p0, Landroid/view/InputQueue;->mPtr:J

    .line 19
    .line 20
    check-cast p1, Landroid/view/MotionEvent;

    .line 21
    .line 22
    invoke-static {p3, p4, p1}, Landroid/view/InputQueue;->nativeSendMotionEvent(JLandroid/view/MotionEvent;)J

    .line 23
    .line 24
    .line 25
    move-result-wide p3

    .line 26
    :goto_0
    iget-object p1, p0, Landroid/view/InputQueue;->mActiveEventArray:Landroid/util/LongSparseArray;

    .line 27
    .line 28
    invoke-virtual {p1, p3, p4, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
