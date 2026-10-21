.class Landroid/service/trust/TrustAgentService$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/TrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/trust/TrustAgentService;


# direct methods
.method public constructor <init>(Landroid/service/trust/TrustAgentService;)V
    .locals 0

    iput-object p1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string/jumbo v0, "token_handle"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-string/jumbo v2, "token_removed_result"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object v2, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    .line 28
    .line 29
    invoke-virtual {v2, v0, v1, p1}, Landroid/service/trust/TrustAgentService;->onEscrowTokenRemoved(JZ)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string/jumbo v0, "token_handle"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    const-string/jumbo v0, "token_state"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    .line 53
    .line 54
    invoke-virtual {v0, v2, v3, p1}, Landroid/service/trust/TrustAgentService;->onEscrowTokenStateReceived(JI)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string/jumbo v0, "token"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string/jumbo v1, "token_handle"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    const-string/jumbo v3, "user_handle"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/os/UserHandle;

    .line 85
    .line 86
    iget-object v3, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    .line 87
    .line 88
    invoke-virtual {v3, v0, v1, v2, p1}, Landroid/service/trust/TrustAgentService;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_3
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    .line 93
    .line 94
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 95
    .line 96
    int-to-long v1, p1

    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/service/trust/TrustAgentService;->onDeviceUnlockLockout(J)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :pswitch_4
    iget-object p1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    .line 102
    .line 103
    invoke-virtual {p1}, Landroid/service/trust/TrustAgentService;->onDeviceUnlocked()V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_5
    iget-object p1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/service/trust/TrustAgentService;->onDeviceLocked()V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :pswitch_6
    iget-object p1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/service/trust/TrustAgentService;->onTrustTimeout()V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast p1, Landroid/service/trust/TrustAgentService$ConfigurationData;

    .line 122
    .line 123
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    .line 124
    .line 125
    iget-object v1, p1, Landroid/service/trust/TrustAgentService$ConfigurationData;->options:Ljava/util/List;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Landroid/service/trust/TrustAgentService;->onConfigure(Ljava/util/List;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    iget-object v1, p1, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    .line 132
    .line 133
    if-eqz v1, :cond_1

    .line 134
    .line 135
    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    .line 136
    .line 137
    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->access$000(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    iget-object v2, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    .line 143
    .line 144
    invoke-static {v2}, Landroid/service/trust/TrustAgentService;->access$100(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iget-object p1, p1, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    .line 149
    .line 150
    invoke-interface {v2, v0, p1}, Landroid/service/trust/ITrustAgentServiceCallback;->onConfigureCompleted(ZLandroid/os/IBinder;)V

    .line 151
    .line 152
    .line 153
    monitor-exit v1

    .line 154
    goto :goto_0

    .line 155
    :catchall_0
    move-exception p1

    .line 156
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 158
    :catch_0
    iget-object p1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    .line 159
    .line 160
    const-string v0, "calling onSetTrustAgentFeaturesEnabledCompleted()"

    .line 161
    .line 162
    invoke-static {p1, v0}, Landroid/service/trust/TrustAgentService;->access$200(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :pswitch_8
    iget-object v0, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    .line 167
    .line 168
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 169
    .line 170
    if-eqz p1, :cond_0

    .line 171
    .line 172
    const/4 v1, 0x1

    .line 173
    :cond_0
    invoke-virtual {v0, v1}, Landroid/service/trust/TrustAgentService;->onUnlockAttempt(Z)V

    .line 174
    .line 175
    .line 176
    :cond_1
    :goto_0
    return-void

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
