.class Landroid/net/wifi/RttManager$ServiceHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/RttManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/RttManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

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
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RTT manager get message: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "RttManager"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget v0, p1, Landroid/os/Message;->what:I

    .line 23
    .line 24
    const v2, 0x11002

    .line 25
    .line 26
    .line 27
    if-eq v0, v2, :cond_2

    .line 28
    .line 29
    const v2, 0x11004

    .line 30
    .line 31
    .line 32
    if-eq v0, v2, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    .line 35
    .line 36
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 37
    .line 38
    invoke-static {v0, v2}, Landroid/net/wifi/RttManager;->access$100(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v2, "invalid listener key = "

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 53
    .line 54
    invoke-static {v0, p1, v1}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string/jumbo v3, "listener key = "

    .line 61
    .line 62
    .line 63
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget v1, p1, Landroid/os/Message;->what:I

    .line 79
    .line 80
    packed-switch v1, :pswitch_data_0

    .line 81
    .line 82
    .line 83
    :pswitch_0
    return-void

    .line 84
    :pswitch_1
    check-cast v0, Landroid/net/wifi/RttManager$ResponderCallback;

    .line 85
    .line 86
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/net/wifi/RttManager$ResponderCallback;->onResponderEnableFailure(I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    .line 92
    .line 93
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 94
    .line 95
    invoke-static {v0, p1}, Landroid/net/wifi/RttManager;->access$200(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p1, Landroid/net/wifi/RttManager$ResponderConfig;

    .line 102
    .line 103
    check-cast v0, Landroid/net/wifi/RttManager$ResponderCallback;

    .line 104
    .line 105
    invoke-virtual {v0, p1}, Landroid/net/wifi/RttManager$ResponderCallback;->onResponderEnabled(Landroid/net/wifi/RttManager$ResponderConfig;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :pswitch_3
    check-cast v0, Landroid/net/wifi/RttManager$RttListener;

    .line 110
    .line 111
    invoke-interface {v0}, Landroid/net/wifi/RttManager$RttListener;->onAborted()V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    .line 115
    .line 116
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 117
    .line 118
    invoke-static {v0, p1}, Landroid/net/wifi/RttManager;->access$200(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :pswitch_4
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/RttManager$ServiceHandler;->reportSuccess(Ljava/lang/Object;Landroid/os/Message;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    .line 126
    .line 127
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 128
    .line 129
    invoke-static {v0, p1}, Landroid/net/wifi/RttManager;->access$200(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :pswitch_5
    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/RttManager$ServiceHandler;->reportFailure(Ljava/lang/Object;Landroid/os/Message;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    .line 137
    .line 138
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 139
    .line 140
    invoke-static {v0, p1}, Landroid/net/wifi/RttManager;->access$200(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string p1, "Channel connection lost"

    .line 145
    .line 146
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Landroid/net/wifi/RttManager$ServiceHandler;->this$0:Landroid/net/wifi/RttManager;

    .line 150
    .line 151
    const/4 v0, 0x0

    .line 152
    invoke-static {p1, v0}, Landroid/net/wifi/RttManager;->access$002(Landroid/net/wifi/RttManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 160
    .line 161
    .line 162
    :cond_2
    return-void

    .line 163
    :pswitch_data_0
    .packed-switch 0x27202
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reportFailure(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/net/wifi/RttManager$RttListener;

    .line 2
    .line 3
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/os/Bundle;

    .line 6
    .line 7
    iget p2, p2, Landroid/os/Message;->arg1:I

    .line 8
    .line 9
    const-string v1, "android.net.wifi.RttManager.Description"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1, p2, v0}, Landroid/net/wifi/RttManager$RttListener;->onFailure(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public reportSuccess(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/net/wifi/RttManager$RttListener;

    .line 2
    .line 3
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p2, Landroid/net/wifi/RttManager$ParcelableRttResults;

    .line 6
    .line 7
    iget-object p2, p2, Landroid/net/wifi/RttManager$ParcelableRttResults;->mResults:[Landroid/net/wifi/RttManager$RttResult;

    .line 8
    .line 9
    invoke-interface {p1, p2}, Landroid/net/wifi/RttManager$RttListener;->onSuccess([Landroid/net/wifi/RttManager$RttResult;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
