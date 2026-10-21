.class final Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnTabletModeChangedListenerDelegate"
.end annotation


# static fields
.field private static final MSG_TABLET_MODE_CHANGED:I


# instance fields
.field public final mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;


# direct methods
.method public constructor <init>(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :goto_0
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 9
    .line 10
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 11
    .line 12
    int-to-long v0, v0

    .line 13
    const-wide v2, 0xffffffffL

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    and-long/2addr v0, v2

    .line 19
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 20
    .line 21
    int-to-long v2, v2

    .line 22
    const/16 v4, 0x20

    .line 23
    .line 24
    shl-long/2addr v2, v4

    .line 25
    or-long/2addr v0, v2

    .line 26
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-object v2, p0, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    .line 35
    .line 36
    invoke-interface {v2, v0, v1, p1}, Landroid/hardware/input/InputManager$OnTabletModeChangedListener;->onTabletModeChanged(JZ)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public sendTabletModeChanged(JZ)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/16 v1, -0x1

    .line 6
    .line 7
    and-long/2addr v1, p1

    .line 8
    long-to-int v1, v1

    .line 9
    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 10
    .line 11
    const/16 v1, 0x20

    .line 12
    .line 13
    shr-long/2addr p1, v1

    .line 14
    long-to-int p1, p1

    .line 15
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 16
    .line 17
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
