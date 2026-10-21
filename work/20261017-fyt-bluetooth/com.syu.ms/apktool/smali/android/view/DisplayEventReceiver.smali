.class public abstract Landroid/view/DisplayEventReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayEventReceiver"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mReceiverPtr:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayEventReceiver;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    iput-object p1, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 4
    invoke-static {p0, p1}, Landroid/view/DisplayEventReceiver;->nativeInit(Landroid/view/DisplayEventReceiver;Landroid/os/MessageQueue;)I

    move-result p1

    iput p1, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    const-string p1, "dispose"

    .line 5
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "looper must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private dispatchHotplug(JIZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/DisplayEventReceiver;->onHotplug(JIZ)V

    return-void
.end method

.method private dispatchVsync(JII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/DisplayEventReceiver;->onVsync(JII)V

    return-void
.end method

.method private dispose(Z)V
    .locals 1

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
    iget p1, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p1}, Landroid/view/DisplayEventReceiver;->nativeDispose(I)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    :cond_2
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroid/view/DisplayEventReceiver;->mMessageQueue:Landroid/os/MessageQueue;

    return-void
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeInit(Landroid/view/DisplayEventReceiver;Landroid/os/MessageQueue;)I
.end method

.method private static native nativeScheduleVsync(I)V
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

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/DisplayEventReceiver;->dispose(Z)V
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

.method public onHotplug(JIZ)V
    .locals 0

    return-void
.end method

.method public onVsync(JII)V
    .locals 0

    return-void
.end method

.method public scheduleVsync()V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/DisplayEventReceiver;->mReceiverPtr:I

    if-nez v0, :cond_0

    const-string v0, "DisplayEventReceiver"

    const-string v1, "Attempted to schedule a vertical sync pulse but the display event receiver has already been disposed."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Landroid/view/DisplayEventReceiver;->nativeScheduleVsync(I)V

    :goto_0
    return-void
.end method
