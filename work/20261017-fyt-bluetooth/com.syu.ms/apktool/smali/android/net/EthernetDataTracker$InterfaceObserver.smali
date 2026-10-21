.class Landroid/net/EthernetDataTracker$InterfaceObserver;
.super Landroid/net/INetworkManagementEventObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/EthernetDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InterfaceObserver"
.end annotation


# instance fields
.field private mTracker:Landroid/net/EthernetDataTracker;

.field public final synthetic this$0:Landroid/net/EthernetDataTracker;


# direct methods
.method public constructor <init>(Landroid/net/EthernetDataTracker;Landroid/net/EthernetDataTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->this$0:Landroid/net/EthernetDataTracker;

    .line 2
    invoke-direct {p0}, Landroid/net/INetworkManagementEventObserver$Stub;-><init>()V

    .line 3
    iput-object p2, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->mTracker:Landroid/net/EthernetDataTracker;

    return-void
.end method


# virtual methods
.method public addressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public addressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->mTracker:Landroid/net/EthernetDataTracker;

    invoke-static {v0, p1}, Landroid/net/EthernetDataTracker;->access$300(Landroid/net/EthernetDataTracker;Ljava/lang/String;)V

    const-string p1, "Ethernet"

    const-string v0, "interfaceAdded"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public interfaceClassDataActivityChanged(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/net/EthernetDataTracker;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/net/EthernetDataTracker;->access$100()Z

    move-result v0

    if-eq v0, p2, :cond_2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " link "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string/jumbo p1, "up"

    goto :goto_0

    :cond_0
    const-string p1, "down"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ethernet"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p2}, Landroid/net/EthernetDataTracker;->access$102(Z)Z

    const-wide/16 v0, 0xc8

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {p2}, Landroid/net/EthernetDataTracker;->access$200(Landroid/net/EthernetDataTracker;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object p2, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {p2}, Landroid/net/EthernetDataTracker;->access$200(Landroid/net/EthernetDataTracker;)Landroid/os/Handler;

    move-result-object p2

    iget-object v2, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v2}, Landroid/net/EthernetDataTracker;->access$200(Landroid/net/EthernetDataTracker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 6
    :cond_1
    iget-object p2, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {p2}, Landroid/net/EthernetDataTracker;->access$200(Landroid/net/EthernetDataTracker;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-object p2, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {p2}, Landroid/net/EthernetDataTracker;->access$200(Landroid/net/EthernetDataTracker;)Landroid/os/Handler;

    move-result-object p2

    iget-object v2, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v2}, Landroid/net/EthernetDataTracker;->access$200(Landroid/net/EthernetDataTracker;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1, p1, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->this$0:Landroid/net/EthernetDataTracker;

    invoke-static {v0}, Landroid/net/EthernetDataTracker;->access$200(Landroid/net/EthernetDataTracker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Landroid/net/EthernetDataTracker$InterfaceObserver;->mTracker:Landroid/net/EthernetDataTracker;

    invoke-static {v0, p1}, Landroid/net/EthernetDataTracker;->access$400(Landroid/net/EthernetDataTracker;Ljava/lang/String;)V

    const-string p1, "Ethernet"

    const-string v0, "interfaceRemoved"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interface status changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string/jumbo p1, "up"

    goto :goto_0

    :cond_0
    const-string p1, "down"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Ethernet"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
