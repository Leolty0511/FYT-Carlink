.class Landroid/bluetooth/BluetoothTetheringDataTracker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothTetheringDataTracker;->startReverseTether(Landroid/net/LinkProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

.field public final synthetic val$linkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothTetheringDataTracker;Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    iput-object p2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->val$linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Landroid/net/DhcpResults;

    invoke-direct {v0}, Landroid/net/DhcpResults;-><init>()V

    .line 2
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->val$linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result v1

    .line 3
    iget-object v2, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-static {v2}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$100(Landroid/bluetooth/BluetoothTetheringDataTracker;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->val$linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-static {v4}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$200(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/LinkProperties;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_0

    const-string v0, "BluetoothTethering"

    const-string v1, "obsolete DHCP run aborted"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v2

    return-void

    :cond_0
    if-nez v1, :cond_1

    const-string v0, "BluetoothTethering"

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DHCP request error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    monitor-exit v2

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    iget-object v0, v0, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$302(Landroid/bluetooth/BluetoothTetheringDataTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 10
    iget-object v0, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-static {v0}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$400(Landroid/bluetooth/BluetoothTetheringDataTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-static {v1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$500(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 12
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-static {v1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$600(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v1

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-static {v1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$700(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-static {v1}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$700(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/os/Handler;

    move-result-object v1

    const/high16 v3, 0x70000

    new-instance v4, Landroid/net/NetworkInfo;

    iget-object v5, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$2;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-static {v5}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$800(Landroid/bluetooth/BluetoothTetheringDataTracker;)Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v1, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    .line 18
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v0

    .line 19
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
