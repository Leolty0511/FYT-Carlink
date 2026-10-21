.class Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;
.super Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanCommissioningSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/lowpan/LowpanCommissioningSession;


# direct methods
.method private constructor <init>(Landroid/net/lowpan/LowpanCommissioningSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/lowpan/LowpanCommissioningSession;Landroid/net/lowpan/LowpanCommissioningSession$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;-><init>(Landroid/net/lowpan/LowpanCommissioningSession;)V

    return-void
.end method

.method public static synthetic a(Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;[B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->lambda$onReceiveFromCommissioner$0([B)V

    return-void
.end method

.method private synthetic lambda$onReceiveFromCommissioner$0([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    .line 5
    .line 6
    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->access$100(Landroid/net/lowpan/LowpanCommissioningSession;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    .line 13
    .line 14
    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->access$400(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    .line 21
    .line 22
    invoke-static {v1}, Landroid/net/lowpan/LowpanCommissioningSession;->access$400(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p1}, Landroid/net/lowpan/LowpanCommissioningSession$Callback;->onReceiveFromCommissioner([B)V

    .line 27
    .line 28
    .line 29
    :cond_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p1
.end method


# virtual methods
.method public onConnectedChanged(Z)V
    .locals 0

    return-void
.end method

.method public onEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onLinkAddressAdded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLinkAddressRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLinkNetworkAdded(Landroid/net/IpPrefix;)V
    .locals 0

    return-void
.end method

.method public onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
    .locals 0

    return-void
.end method

.method public onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
    .locals 0

    return-void
.end method

.method public onReceiveFromCommissioner([B)V
    .locals 3

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->access$300(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/lowpan/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroid/net/lowpan/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRoleChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->access$100(Landroid/net/lowpan/LowpanCommissioningSession;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "offline"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string v0, "fault"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    .line 31
    .line 32
    monitor-enter p1

    .line 33
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    .line 34
    .line 35
    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->access$200(Landroid/net/lowpan/LowpanCommissioningSession;)V

    .line 36
    .line 37
    .line 38
    monitor-exit p1

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw v0

    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method public onUpChanged(Z)V
    .locals 0

    return-void
.end method
