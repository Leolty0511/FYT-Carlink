.class public Landroid/filterpacks/base/CallbackFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;
    }
.end annotation


# instance fields
.field private mCallbacksOnUiThread:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "callUiThread"
    .end annotation
.end field

.field private mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "listener"
    .end annotation
.end field

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mUserData:Ljava/lang/Object;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "userData"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroid/filterpacks/base/CallbackFilter;->mUiThreadHandler:Landroid/os/Handler;

    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 6

    .line 1
    const-string p1, "frame"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 4
    .line 5
    .line 6
    move-result-object v4

    .line 7
    iget-object p1, p0, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-boolean v0, p0, Landroid/filterpacks/base/CallbackFilter;->mCallbacksOnUiThread:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    .line 16
    .line 17
    .line 18
    new-instance p1, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/filterpacks/base/CallbackFilter;->mListener:Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;

    .line 21
    .line 22
    iget-object v5, p0, Landroid/filterpacks/base/CallbackFilter;->mUserData:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v0, p1

    .line 25
    move-object v1, p0

    .line 26
    move-object v3, p0

    .line 27
    invoke-direct/range {v0 .. v5}, Landroid/filterpacks/base/CallbackFilter$CallbackRunnable;-><init>(Landroid/filterpacks/base/CallbackFilter;Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/filterpacks/base/CallbackFilter;->mUiThreadHandler:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    const-string v0, "Unable to send callback to UI thread!"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/base/CallbackFilter;->mUserData:Ljava/lang/Object;

    .line 48
    .line 49
    invoke-interface {p1, p0, v4, v0}, Landroid/filterfw/core/FilterContext$OnFrameReceivedListener;->onFrameReceived(Landroid/filterfw/core/Filter;Landroid/filterfw/core/Frame;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 54
    .line 55
    const-string v0, "CallbackFilter received frame, but no listener set!"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public setupPorts()V
    .locals 1

    .line 1
    const-string v0, "frame"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->addInputPort(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
