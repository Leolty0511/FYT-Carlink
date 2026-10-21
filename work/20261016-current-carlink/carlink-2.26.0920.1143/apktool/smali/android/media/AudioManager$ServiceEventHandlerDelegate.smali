.class Landroid/media/AudioManager$ServiceEventHandlerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 24
    .line 25
    new-instance v0, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;

    .line 26
    .line 27
    invoke-direct {v0, p0, p2, p1}, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;-><init>(Landroid/media/AudioManager$ServiceEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioManager;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 35
    .line 36
    :goto_1
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
