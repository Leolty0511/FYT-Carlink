.class Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "P2pHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$000(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignored "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiP2pManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :sswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pGroupList;

    if-eqz v0, :cond_0

    .line 5
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;->onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    goto :goto_0

    .line 6
    :sswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .line 7
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$200(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    goto :goto_0

    .line 8
    :sswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_0

    .line 9
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_0

    .line 10
    :sswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pInfo;

    if-eqz v0, :cond_0

    .line 11
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    goto :goto_0

    .line 12
    :sswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    if-eqz v0, :cond_0

    .line 13
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_0

    :sswitch_5
    if-eqz v0, :cond_0

    .line 14
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-interface {v0}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    goto :goto_0

    :sswitch_6
    if-eqz v0, :cond_0

    .line 15
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    goto :goto_0

    .line 16
    :sswitch_7
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object p1

    invoke-interface {p1}, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;->onChannelDisconnected()V

    .line 18
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$102(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_7
        0x22002 -> :sswitch_6
        0x22003 -> :sswitch_5
        0x22005 -> :sswitch_6
        0x22006 -> :sswitch_5
        0x22008 -> :sswitch_6
        0x22009 -> :sswitch_5
        0x2200b -> :sswitch_6
        0x2200c -> :sswitch_5
        0x2200e -> :sswitch_6
        0x2200f -> :sswitch_5
        0x22011 -> :sswitch_6
        0x22012 -> :sswitch_5
        0x22014 -> :sswitch_4
        0x22016 -> :sswitch_3
        0x22018 -> :sswitch_2
        0x2201d -> :sswitch_6
        0x2201e -> :sswitch_5
        0x22020 -> :sswitch_6
        0x22021 -> :sswitch_5
        0x22023 -> :sswitch_6
        0x22024 -> :sswitch_5
        0x22026 -> :sswitch_6
        0x22027 -> :sswitch_5
        0x22029 -> :sswitch_6
        0x2202a -> :sswitch_5
        0x2202c -> :sswitch_6
        0x2202d -> :sswitch_5
        0x2202f -> :sswitch_6
        0x22030 -> :sswitch_5
        0x22032 -> :sswitch_1
        0x22034 -> :sswitch_6
        0x22035 -> :sswitch_5
        0x22037 -> :sswitch_6
        0x22038 -> :sswitch_5
        0x2203a -> :sswitch_0
        0x2203c -> :sswitch_6
        0x2203d -> :sswitch_5
        0x2203f -> :sswitch_6
        0x22040 -> :sswitch_5
        0x22042 -> :sswitch_6
        0x22043 -> :sswitch_5
        0x22045 -> :sswitch_6
        0x22046 -> :sswitch_5
        0x22048 -> :sswitch_6
        0x22049 -> :sswitch_5
    .end sparse-switch
.end method
