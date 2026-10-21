.class Landroid/net/nsd/NsdManager$ServiceHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/nsd/NsdManager;


# direct methods
.method public constructor <init>(Landroid/net/nsd/NsdManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x11000

    if-eq v0, v1, :cond_4

    const v1, 0x11002

    if-eq v0, v1, :cond_3

    const v1, 0x11004

    const-string v2, "NsdManager"

    if-eq v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Landroid/net/nsd/NsdManager;->access$200(Landroid/net/nsd/NsdManager;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stale key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 4
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/nsd/NsdManager;->access$300(Landroid/net/nsd/NsdManager;I)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v3

    .line 5
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    .line 6
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 7
    :pswitch_1
    check-cast v0, Landroid/net/nsd/NsdManager$ResolveListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v2}, Landroid/net/nsd/NsdManager$ResolveListener;->onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V

    goto/16 :goto_1

    .line 8
    :pswitch_2
    check-cast v0, Landroid/net/nsd/NsdManager$ResolveListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3, v2}, Landroid/net/nsd/NsdManager$ResolveListener;->onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto/16 :goto_1

    .line 9
    :pswitch_3
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    invoke-interface {v0, v3}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_1

    .line 10
    :pswitch_4
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3, v2}, Landroid/net/nsd/NsdManager$RegistrationListener;->onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto :goto_1

    .line 11
    :pswitch_5
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v1}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_0

    .line 12
    :pswitch_6
    check-cast v0, Landroid/net/nsd/NsdManager$RegistrationListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3, v2}, Landroid/net/nsd/NsdManager$RegistrationListener;->onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto :goto_1

    .line 13
    :pswitch_7
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v3}, Landroid/net/nsd/NsdManager;->access$400(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStopped(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :pswitch_8
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v3}, Landroid/net/nsd/NsdManager;->access$400(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, v3}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStopDiscoveryFailed(Ljava/lang/String;I)V

    goto :goto_1

    .line 15
    :pswitch_9
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_0

    .line 16
    :pswitch_a
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v0, v1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_0

    .line 17
    :pswitch_b
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v3}, Landroid/net/nsd/NsdManager;->access$400(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, v3}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStartDiscoveryFailed(Ljava/lang/String;I)V

    goto :goto_1

    .line 18
    :pswitch_c
    iget-object v1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/nsd/NsdServiceInfo;

    invoke-static {v1, v2}, Landroid/net/nsd/NsdManager;->access$400(Landroid/net/nsd/NsdManager;Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v1

    .line 19
    check-cast v0, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-interface {v0, v1}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStarted(Ljava/lang/String;)V

    :goto_0
    move v1, v5

    :goto_1
    if-eqz v1, :cond_1

    .line 20
    iget-object v0, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p1}, Landroid/net/nsd/NsdManager;->access$500(Landroid/net/nsd/NsdManager;I)V

    :cond_1
    return-void

    :cond_2
    const-string p1, "Channel lost"

    .line 21
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 22
    :cond_3
    iget-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {p1}, Landroid/net/nsd/NsdManager;->access$100(Landroid/net/nsd/NsdManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 23
    :cond_4
    iget-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {p1}, Landroid/net/nsd/NsdManager;->access$000(Landroid/net/nsd/NsdManager;)Lu/b;

    move-result-object p1

    const v0, 0x11001

    invoke-virtual {p1, v0}, Lu/b;->k(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x60002
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
