.class public abstract Landroid/view/InputEventSender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEventSender"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInputChannel:Landroid/view/InputChannel;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mSenderPtr:J


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Landroid/view/InputEventSender;->mInputChannel:Landroid/view/InputChannel;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    .line 28
    .line 29
    invoke-static {p2, p1, v1}, Landroid/view/InputEventSender;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J

    .line 30
    .line 31
    .line 32
    move-result-wide p1

    .line 33
    iput-wide p1, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    .line 34
    .line 35
    const-string p1, "dispose"

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 42
    .line 43
    const-string p2, "looper must not be null"

    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p2, "inputChannel must not be null"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method private dispatchInputEventFinished(IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/InputEventSender;->onInputEventFinished(IZ)V

    return-void
.end method

.method private dispose(Z)V
    .locals 4

    .line 2
    iget-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {p1}, Ldalvik/system/CloseGuard;->close()V

    .line 5
    :cond_1
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 6
    invoke-static {v0, v1}, Landroid/view/InputEventSender;->nativeDispose(J)V

    .line 7
    iput-wide v2, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    :cond_2
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroid/view/InputEventSender;->mInputChannel:Landroid/view/InputChannel;

    .line 9
    iput-object p1, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    return-void
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/InputEventSender;",
            ">;",
            "Landroid/view/InputChannel;",
            "Landroid/os/MessageQueue;",
            ")J"
        }
    .end annotation
.end method

.method private static native nativeSendKeyEvent(JILandroid/view/KeyEvent;)Z
.end method

.method private static native nativeSendMotionEvent(JILandroid/view/MotionEvent;)Z
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/view/InputEventSender;->dispose(Z)V

    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/InputEventSender;->dispose(Z)V
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

.method public onInputEventFinished(IZ)V
    .locals 0

    return-void
.end method

.method public final sendInputEvent(ILandroid/view/InputEvent;)Z
    .locals 4

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    iget-wide v0, p0, Landroid/view/InputEventSender;->mSenderPtr:J

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const-string p1, "InputEventSender"

    .line 12
    .line 13
    const-string p2, "Attempted to send an input event but the input event sender has already been disposed."

    .line 14
    .line 15
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_0
    instance-of v2, p2, Landroid/view/KeyEvent;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    check-cast p2, Landroid/view/KeyEvent;

    .line 25
    .line 26
    invoke-static {v0, v1, p1, p2}, Landroid/view/InputEventSender;->nativeSendKeyEvent(JILandroid/view/KeyEvent;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :cond_1
    check-cast p2, Landroid/view/MotionEvent;

    .line 32
    .line 33
    invoke-static {v0, v1, p1, p2}, Landroid/view/InputEventSender;->nativeSendMotionEvent(JILandroid/view/MotionEvent;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p2, "event must not be null"

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method
