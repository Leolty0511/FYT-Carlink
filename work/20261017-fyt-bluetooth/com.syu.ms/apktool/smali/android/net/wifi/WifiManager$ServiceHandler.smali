.class Landroid/net/wifi/WifiManager$ServiceHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    if-eqz v0, :cond_2

    .line 3
    check-cast v0, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_1

    :sswitch_1
    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/RssiPacketCountInfo;

    if-eqz p1, :cond_0

    .line 5
    check-cast v0, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    iget v1, p1, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    iget p1, p1, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onSuccess(I)V

    goto/16 :goto_1

    .line 6
    :cond_0
    check-cast v0, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_1

    :sswitch_2
    if-eqz v0, :cond_2

    .line 7
    check-cast v0, Landroid/net/wifi/WifiManager$WpsListener;

    invoke-interface {v0}, Landroid/net/wifi/WifiManager$WpsListener;->onCompletion()V

    goto/16 :goto_1

    :sswitch_3
    if-eqz v0, :cond_2

    .line 8
    check-cast v0, Landroid/net/wifi/WifiManager$WpsListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$WpsListener;->onFailure(I)V

    goto :goto_1

    :sswitch_4
    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WpsResult;

    .line 10
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/WifiManager$WpsListener;

    iget-object v1, v1, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-interface {v2, v1}, Landroid/net/wifi/WifiManager$WpsListener;->onStartSuccess(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$300()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 12
    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$400()Landroid/util/SparseArray;

    move-result-object v2

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :sswitch_5
    if-eqz v0, :cond_2

    .line 14
    check-cast v0, Landroid/net/wifi/WifiManager$ActionListener;

    invoke-interface {v0}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    goto :goto_1

    :sswitch_6
    if-eqz v0, :cond_2

    .line 15
    check-cast v0, Landroid/net/wifi/WifiManager$ActionListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    goto :goto_1

    :sswitch_7
    const-string p1, "WifiManager"

    const-string v0, "Channel connection lost"

    .line 16
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {v2}, Landroid/net/wifi/WifiManager;->access$102(Lu/b;)Lu/b;

    .line 18
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto :goto_1

    .line 19
    :sswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_1

    .line 20
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$100()Lu/b;

    move-result-object p1

    const v0, 0x11001

    invoke-virtual {p1, v0}, Lu/b;->k(I)V

    goto :goto_0

    :cond_1
    const-string p1, "WifiManager"

    const-string v0, "Failed to set up channel connection"

    .line 21
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {v2}, Landroid/net/wifi/WifiManager;->access$102(Lu/b;)Lu/b;

    .line 23
    :goto_0
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$200()Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_8
        0x11004 -> :sswitch_7
        0x25002 -> :sswitch_6
        0x25003 -> :sswitch_5
        0x25005 -> :sswitch_6
        0x25006 -> :sswitch_5
        0x25008 -> :sswitch_6
        0x25009 -> :sswitch_5
        0x2500b -> :sswitch_4
        0x2500c -> :sswitch_3
        0x2500d -> :sswitch_2
        0x2500f -> :sswitch_6
        0x25010 -> :sswitch_5
        0x25012 -> :sswitch_6
        0x25013 -> :sswitch_5
        0x25015 -> :sswitch_1
        0x25016 -> :sswitch_0
    .end sparse-switch
.end method
