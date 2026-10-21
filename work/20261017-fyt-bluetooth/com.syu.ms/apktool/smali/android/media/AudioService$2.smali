.class Landroid/media/AudioService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    iget-object p1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v3, p2}, Landroid/media/AudioService;->access$2802(Landroid/media/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 3
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object p2

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 5
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 6
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object p2

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v3}, Landroid/media/AudioService;->access$2800(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    .line 8
    iget-object v3, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/16 v4, 0x80

    if-ne v6, v2, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v3, v4, v0}, Landroid/media/AudioService;->access$3000(Landroid/media/AudioService;II)I

    move-result v9

    .line 9
    iget-object v3, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v3}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v4

    const/16 v5, 0x65

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->access$3100(Landroid/media/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 10
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 11
    :cond_2
    :goto_0
    monitor-exit p1

    goto/16 :goto_3

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2

    .line 12
    :cond_3
    iget-object p1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    .line 13
    :try_start_3
    iget-object v2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v2}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    iget-object v2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v2, p2}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 15
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object p2

    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 17
    iget-object v2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2, p2}, Landroid/media/AudioService;->access$2502(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_1

    .line 18
    :cond_4
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/media/AudioService;->access$2502(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 19
    :goto_1
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)V

    .line 20
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result p2

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-eq p2, v1, :cond_5

    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result p2

    if-eq p2, v3, :cond_5

    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result p2

    if-ne p2, v2, :cond_c

    .line 21
    :cond_5
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 22
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result p2

    if-eq p2, v1, :cond_9

    if-eq p2, v2, :cond_8

    if-eq p2, v3, :cond_6

    goto :goto_2

    .line 23
    :cond_6
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)I

    move-result p2

    if-ne p2, v1, :cond_7

    .line 24
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    move-result v0

    goto :goto_2

    .line 25
    :cond_7
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p2

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_2

    .line 26
    :cond_8
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p2

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    goto :goto_2

    .line 27
    :cond_9
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    const/4 v0, 0x3

    invoke-static {p2, v0}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    .line 28
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;)I

    move-result p2

    if-ne p2, v1, :cond_a

    .line 29
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    move-result v0

    goto :goto_2

    .line 30
    :cond_a
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object p2

    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    :cond_b
    :goto_2
    if-nez v0, :cond_c

    .line 31
    iget-object p2, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p2}, Landroid/media/AudioService;->access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 32
    :cond_c
    monitor-exit p1

    :goto_3
    return-void

    :catchall_2
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p2
.end method

.method public onServiceDisconnected(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v0, v1}, Landroid/media/AudioService;->access$2802(Landroid/media/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 3
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v0}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v1}, Landroid/media/AudioService;->access$2900(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/media/AudioService;->access$3200(Landroid/media/AudioService;Ljava/lang/String;)V

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v0

    .line 9
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 10
    :cond_2
    iget-object p1, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {p1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    .line 11
    :try_start_5
    iget-object v0, p0, Landroid/media/AudioService$2;->this$0:Landroid/media/AudioService;

    invoke-static {v0, v1}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 12
    monitor-exit p1

    :goto_0
    return-void

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method
