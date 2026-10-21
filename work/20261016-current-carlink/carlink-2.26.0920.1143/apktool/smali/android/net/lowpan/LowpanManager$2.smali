.class Landroid/net/lowpan/LowpanManager$2;
.super Landroid/net/lowpan/ILowpanManagerListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanManager;->registerCallback(Landroid/net/lowpan/LowpanManager$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/lowpan/LowpanManager;

.field final synthetic val$cb:Landroid/net/lowpan/LowpanManager$Callback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/net/lowpan/LowpanManager;Landroid/os/Handler;Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    .line 2
    .line 3
    iput-object p2, p0, Landroid/net/lowpan/LowpanManager$2;->val$handler:Landroid/os/Handler;

    .line 4
    .line 5
    iput-object p3, p0, Landroid/net/lowpan/LowpanManager$2;->val$cb:Landroid/net/lowpan/LowpanManager$Callback;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/net/lowpan/ILowpanManagerListener$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iput-object p2, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1}, Landroid/net/lowpan/LowpanManager;->access$100(Landroid/net/lowpan/LowpanManager;)Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    new-instance p2, Landroid/os/Handler;

    .line 22
    .line 23
    invoke-static {p1}, Landroid/net/lowpan/LowpanManager;->access$100(Landroid/net/lowpan/LowpanManager;)Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance p1, Landroid/os/Handler;

    .line 34
    .line 35
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public static synthetic a(Landroid/net/lowpan/LowpanManager$2;Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/lowpan/LowpanManager$2;->lambda$onInterfaceRemoved$1(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V

    return-void
.end method

.method public static synthetic b(Landroid/net/lowpan/LowpanManager$2;Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/lowpan/LowpanManager$2;->lambda$onInterfaceAdded$0(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V

    return-void
.end method

.method private synthetic lambda$onInterfaceAdded$0(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanManager;->getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/net/lowpan/LowpanManager$Callback;->onInterfaceAdded(Landroid/net/lowpan/LowpanInterface;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private synthetic lambda$onInterfaceRemoved$1(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanManager;->getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/net/lowpan/LowpanManager$Callback;->onInterfaceRemoved(Landroid/net/lowpan/LowpanInterface;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public onInterfaceAdded(Landroid/net/lowpan/ILowpanInterface;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->val$cb:Landroid/net/lowpan/LowpanManager$Callback;

    .line 2
    .line 3
    new-instance v1, Landroid/net/lowpan/g;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v0, v2}, Landroid/net/lowpan/g;-><init>(Landroid/net/lowpan/LowpanManager$2;Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onInterfaceRemoved(Landroid/net/lowpan/ILowpanInterface;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->val$cb:Landroid/net/lowpan/LowpanManager$Callback;

    .line 2
    .line 3
    new-instance v1, Landroid/net/lowpan/g;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v0, v2}, Landroid/net/lowpan/g;-><init>(Landroid/net/lowpan/LowpanManager$2;Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
