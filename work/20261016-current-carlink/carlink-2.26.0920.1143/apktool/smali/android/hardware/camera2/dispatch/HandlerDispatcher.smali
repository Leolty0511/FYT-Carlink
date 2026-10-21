.class public Landroid/hardware/camera2/dispatch/HandlerDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/camera2/dispatch/Dispatchable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/dispatch/Dispatchable<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HandlerDispatcher"


# instance fields
.field private final mDispatchTarget:Landroid/hardware/camera2/dispatch/Dispatchable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/dispatch/Dispatchable<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/dispatch/Dispatchable;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/dispatch/Dispatchable<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "dispatchTarget must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/hardware/camera2/dispatch/Dispatchable;

    .line 11
    .line 12
    iput-object p1, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher;->mDispatchTarget:Landroid/hardware/camera2/dispatch/Dispatchable;

    .line 13
    .line 14
    const-string/jumbo p1, "handler must not be null"

    .line 15
    .line 16
    .line 17
    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/os/Handler;

    .line 22
    .line 23
    iput-object p1, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic access$000(Landroid/hardware/camera2/dispatch/HandlerDispatcher;)Landroid/hardware/camera2/dispatch/Dispatchable;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher;->mDispatchTarget:Landroid/hardware/camera2/dispatch/Dispatchable;

    return-object p0
.end method


# virtual methods
.method public dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/dispatch/HandlerDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/hardware/camera2/dispatch/HandlerDispatcher$1;-><init>(Landroid/hardware/camera2/dispatch/HandlerDispatcher;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return-object p1
.end method
