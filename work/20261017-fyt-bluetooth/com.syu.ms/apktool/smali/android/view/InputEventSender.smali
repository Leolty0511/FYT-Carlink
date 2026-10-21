.class public abstract Landroid/view/InputEventSender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEventSender"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mInputChannel:Landroid/view/InputChannel;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field private mSenderPtr:I


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InputEventSender;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iput-object p1, p0, Landroid/view/InputEventSender;->mInputChannel:Landroid/view/InputChannel;

    .line 4
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p2

    iput-object p2, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    .line 5
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    invoke-static {p2, p1, v1}, Landroid/view/InputEventSender;->nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)I

    move-result p1

    iput p1, p0, Landroid/view/InputEventSender;->mSenderPtr:I

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

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputChannel must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private dispatchInputEventFinished(IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/InputEventSender;->onInputEventFinished(IZ)V

    return-void
.end method

.method private dispose(Z)V
    .locals 1

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
    iget p1, p0, Landroid/view/InputEventSender;->mSenderPtr:I

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p1}, Landroid/view/InputEventSender;->nativeDispose(I)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroid/view/InputEventSender;->mSenderPtr:I

    :cond_2
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroid/view/InputEventSender;->mInputChannel:Landroid/view/InputChannel;

    .line 9
    iput-object p1, p0, Landroid/view/InputEventSender;->mMessageQueue:Landroid/os/MessageQueue;

    return-void
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeInit(Ljava/lang/ref/WeakReference;Landroid/view/InputChannel;Landroid/os/MessageQueue;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/InputEventSender;",
            ">;",
            "Landroid/view/InputChannel;",
            "Landroid/os/MessageQueue;",
            ")I"
        }
    .end annotation
.end method

.method private static native nativeSendKeyEvent(IILandroid/view/KeyEvent;)Z
.end method

.method private static native nativeSendMotionEvent(IILandroid/view/MotionEvent;)Z
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

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/InputEventSender;->dispose(Z)V
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

.method public onInputEventFinished(IZ)V
    .locals 0

    return-void
.end method

.method public final sendInputEvent(ILandroid/view/InputEvent;)Z
    .locals 2

    if-eqz p2, :cond_2

    .line 1
    iget v0, p0, Landroid/view/InputEventSender;->mSenderPtr:I

    if-nez v0, :cond_0

    const-string p1, "InputEventSender"

    const-string p2, "Attempted to send an input event but the input event sender has already been disposed."

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    instance-of v1, p2, Landroid/view/KeyEvent;

    if-eqz v1, :cond_1

    .line 4
    check-cast p2, Landroid/view/KeyEvent;

    invoke-static {v0, p1, p2}, Landroid/view/InputEventSender;->nativeSendKeyEvent(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    check-cast p2, Landroid/view/MotionEvent;

    invoke-static {v0, p1, p2}, Landroid/view/InputEventSender;->nativeSendMotionEvent(IILandroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "event must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
