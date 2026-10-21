.class Landroid/net/lowpan/LowpanInterface$1;
.super Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanInterface;->registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/lowpan/LowpanInterface;

.field final synthetic val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/net/lowpan/LowpanInterface;Landroid/os/Handler;Landroid/net/lowpan/LowpanInterface$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->this$0:Landroid/net/lowpan/LowpanInterface;

    .line 2
    .line 3
    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$handler:Landroid/os/Handler;

    .line 4
    .line 5
    iput-object p3, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;-><init>()V

    .line 8
    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1}, Landroid/net/lowpan/LowpanInterface;->access$000(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;

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
    invoke-static {p1}, Landroid/net/lowpan/LowpanInterface;->access$000(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

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
    iput-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public static synthetic a(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$onUpChanged$2(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    return-void
.end method

.method public static synthetic b(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$onEnabledChanged$0(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    return-void
.end method

.method public static synthetic c(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$onStateChanged$4(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$onConnectedChanged$1(Landroid/net/lowpan/LowpanInterface$Callback;Z)V

    return-void
.end method

.method public static synthetic e(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$onLinkAddressAdded$8(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public static synthetic f(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$onLinkNetworkAdded$6(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V

    return-void
.end method

.method public static synthetic g(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$onRoleChanged$3(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic h(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/lowpan/LowpanIdentity;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$onLowpanIdentityChanged$5(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/lowpan/LowpanIdentity;)V

    return-void
.end method

.method public static synthetic i(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$onLinkAddressRemoved$9(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public static synthetic j(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$onLinkNetworkRemoved$7(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V

    return-void
.end method

.method private static synthetic lambda$onConnectedChanged$1(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onConnectedChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$onEnabledChanged$0(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onEnabledChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$onLinkAddressAdded$8(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkAddressAdded(Landroid/net/LinkAddress;)V

    return-void
.end method

.method private static synthetic lambda$onLinkAddressRemoved$9(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkAddressRemoved(Landroid/net/LinkAddress;)V

    return-void
.end method

.method private static synthetic lambda$onLinkNetworkAdded$6(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkNetworkAdded(Landroid/net/IpPrefix;)V

    return-void
.end method

.method private static synthetic lambda$onLinkNetworkRemoved$7(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkNetworkRemoved(Landroid/net/IpPrefix;)V

    return-void
.end method

.method private static synthetic lambda$onLowpanIdentityChanged$5(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/lowpan/LowpanIdentity;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V

    return-void
.end method

.method private static synthetic lambda$onRoleChanged$3(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onRoleChanged(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onStateChanged$4(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onUpChanged$2(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onUpChanged(Z)V

    return-void
.end method


# virtual methods
.method public onConnectedChanged(Z)V
    .locals 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/e;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Landroid/net/lowpan/e;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;ZI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnabledChanged(Z)V
    .locals 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/e;

    const/4 v3, 0x1

    invoke-direct {v2, v1, p1, v3}, Landroid/net/lowpan/e;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;ZI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLinkAddressAdded(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/net/LinkAddress;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    .line 9
    .line 10
    new-instance v2, Landroid/net/lowpan/c;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-direct {v2, v1, v0, v3}, Landroid/net/lowpan/c;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-static {}, Landroid/net/lowpan/LowpanInterface;->access$100()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v3, "onLinkAddressAdded: Bad LinkAddress \""

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, "\", "

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onLinkAddressRemoved(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Landroid/net/LinkAddress;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    .line 9
    .line 10
    new-instance v2, Landroid/net/lowpan/c;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-direct {v2, v1, v0, v3}, Landroid/net/lowpan/c;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-static {}, Landroid/net/lowpan/LowpanInterface;->access$100()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v3, "onLinkAddressRemoved: Bad LinkAddress \""

    .line 28
    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, "\", "

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onLinkNetworkAdded(Landroid/net/IpPrefix;)V
    .locals 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/f;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Landroid/net/lowpan/f;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
    .locals 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/f;

    const/4 v3, 0x1

    invoke-direct {v2, v1, p1, v3}, Landroid/net/lowpan/f;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
    .locals 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/a;

    const/4 v3, 0x1

    invoke-direct {v2, v1, p1, v3}, Landroid/net/lowpan/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onReceiveFromCommissioner([B)V
    .locals 0

    return-void
.end method

.method public onRoleChanged(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/d;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Landroid/net/lowpan/d;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStateChanged(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/d;

    const/4 v3, 0x1

    invoke-direct {v2, v1, p1, v3}, Landroid/net/lowpan/d;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUpChanged(Z)V
    .locals 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    new-instance v2, Landroid/net/lowpan/e;

    const/4 v3, 0x2

    invoke-direct {v2, v1, p1, v3}, Landroid/net/lowpan/e;-><init>(Landroid/net/lowpan/LowpanInterface$Callback;ZI)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
