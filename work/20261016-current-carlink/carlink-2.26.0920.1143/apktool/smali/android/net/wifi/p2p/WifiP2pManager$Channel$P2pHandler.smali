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
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$000(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    sparse-switch v1, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "Ignored "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "WifiP2pManager"

    .line 30
    .line 31
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :sswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Landroid/os/Bundle;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    const-string v1, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_0
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .line 51
    .line 52
    invoke-interface {v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;->onHandoverMessageAvailable(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :sswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    .line 63
    .line 64
    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;->onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :sswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast p1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .line 71
    .line 72
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 73
    .line 74
    invoke-static {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$200(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :sswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .line 85
    .line 86
    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :sswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p1, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 93
    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .line 97
    .line 98
    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :sswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 105
    .line 106
    if-eqz v0, :cond_1

    .line 107
    .line 108
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .line 109
    .line 110
    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :sswitch_6
    if-eqz v0, :cond_1

    .line 115
    .line 116
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 117
    .line 118
    invoke-interface {v0}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :sswitch_7
    if-eqz v0, :cond_1

    .line 123
    .line 124
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 125
    .line 126
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 127
    .line 128
    invoke-interface {v0, p1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :sswitch_8
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 133
    .line 134
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-eqz p1, :cond_1

    .line 139
    .line 140
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 141
    .line 142
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-interface {p1}, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;->onChannelDisconnected()V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 150
    .line 151
    invoke-static {p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$102(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .line 152
    .line 153
    .line 154
    :cond_1
    :goto_0
    return-void

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_8
        0x22002 -> :sswitch_7
        0x22003 -> :sswitch_6
        0x22005 -> :sswitch_7
        0x22006 -> :sswitch_6
        0x22008 -> :sswitch_7
        0x22009 -> :sswitch_6
        0x2200b -> :sswitch_7
        0x2200c -> :sswitch_6
        0x2200e -> :sswitch_7
        0x2200f -> :sswitch_6
        0x22011 -> :sswitch_7
        0x22012 -> :sswitch_6
        0x22014 -> :sswitch_5
        0x22016 -> :sswitch_4
        0x22018 -> :sswitch_3
        0x2201d -> :sswitch_7
        0x2201e -> :sswitch_6
        0x22020 -> :sswitch_7
        0x22021 -> :sswitch_6
        0x22023 -> :sswitch_7
        0x22024 -> :sswitch_6
        0x22026 -> :sswitch_7
        0x22027 -> :sswitch_6
        0x22029 -> :sswitch_7
        0x2202a -> :sswitch_6
        0x2202c -> :sswitch_7
        0x2202d -> :sswitch_6
        0x2202f -> :sswitch_7
        0x22030 -> :sswitch_6
        0x22032 -> :sswitch_2
        0x22034 -> :sswitch_7
        0x22035 -> :sswitch_6
        0x22037 -> :sswitch_7
        0x22038 -> :sswitch_6
        0x2203a -> :sswitch_1
        0x2203c -> :sswitch_7
        0x2203d -> :sswitch_6
        0x2203f -> :sswitch_7
        0x22040 -> :sswitch_6
        0x22042 -> :sswitch_7
        0x22043 -> :sswitch_6
        0x22045 -> :sswitch_7
        0x22046 -> :sswitch_6
        0x22048 -> :sswitch_7
        0x22049 -> :sswitch_6
        0x2204d -> :sswitch_0
        0x22050 -> :sswitch_6
        0x22051 -> :sswitch_7
    .end sparse-switch
.end method
