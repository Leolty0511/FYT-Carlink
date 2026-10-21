.class public abstract Landroid/view/DisplayEventReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayEventReceiver"

.field public static final VSYNC_SOURCE_APP:I = 0x0

.field public static final VSYNC_SOURCE_SURFACE_FLINGER:I = 0x1


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mReceiverPtr:J


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    iput-object p1, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 5
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {p1, v1, p2}, Landroid/view/DisplayEventReceiver;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    const-string p1, "dispose"

    .line 6
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "looper must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private dispatchHotplug(JIZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/DisplayEventReceiver;->onHotplug(JIZ)V

    return-void
.end method

.method private dispatchVsync(JII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/DisplayEventReceiver;->onVsync(JII)V

    return-void
.end method

.method private dispose(Z)V
    .locals 4

    .line 2
    iget-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {p1}, Ldalvik/system/CloseGuard;->close()V

    .line 5
    :cond_1
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 6
    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeDispose(J)V

    .line 7
    iput-wide v2, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    :cond_2
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    return-void
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/os/MessageQueue;I)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/DisplayEventReceiver;",
            ">;",
            "Landroid/os/MessageQueue;",
            "I)J"
        }
    .end annotation
.end method

.method private static native nativeScheduleVsync(J)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/view/DisplayEventReceiver;->dispose(Z)V

    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/DisplayEventReceiver;->dispose(Z)V
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

.method public onHotplug(JIZ)V
    .locals 0

    return-void
.end method

.method public onVsync(JII)V
    .locals 0

    return-void
.end method

.method public scheduleVsync()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    const-string v0, "DisplayEventReceiver"

    .line 10
    .line 11
    const-string v1, "Attempted to schedule a vertical sync pulse but the display event receiver has already been disposed."

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {v0, v1}, Landroid/view/DisplayEventReceiver;->nativeScheduleVsync(J)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method
