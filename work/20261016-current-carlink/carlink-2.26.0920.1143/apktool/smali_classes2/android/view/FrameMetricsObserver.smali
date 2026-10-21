.class public Landroid/view/FrameMetricsObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFrameMetrics:Landroid/view/FrameMetrics;

.field mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

.field private mMessageQueue:Landroid/os/MessageQueue;

.field mNative:Lcom/android/internal/util/VirtualRefBasePtr;

.field private mWindow:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/Window;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/os/Looper;Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p0, Landroid/view/FrameMetricsObserver;->mMessageQueue:Landroid/os/MessageQueue;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    new-instance p2, Landroid/view/FrameMetrics;

    .line 15
    .line 16
    invoke-direct {p2}, Landroid/view/FrameMetrics;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Landroid/view/FrameMetricsObserver;->mFrameMetrics:Landroid/view/FrameMetrics;

    .line 20
    .line 21
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Landroid/view/FrameMetricsObserver;->mWindow:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    iput-object p3, p0, Landroid/view/FrameMetricsObserver;->mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string p2, "invalid looper, null message queue\n"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 40
    .line 41
    const-string p2, "looper cannot be null"

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method private notifyDataAvailable(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/FrameMetricsObserver;->mWindow:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/Window;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroid/view/FrameMetricsObserver;->mListener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    .line 12
    .line 13
    iget-object v2, p0, Landroid/view/FrameMetricsObserver;->mFrameMetrics:Landroid/view/FrameMetrics;

    .line 14
    .line 15
    invoke-interface {v1, v0, v2, p1}, Landroid/view/Window$OnFrameMetricsAvailableListener;->onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
