.class Landroid/telecom/VideoCallbackServant$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallbackServant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallbackServant;


# direct methods
.method public constructor <init>(Landroid/telecom/VideoCallbackServant;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private internalHandleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto/16 :goto_0

    .line 7
    .line 8
    :pswitch_0
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeVideoQuality(I)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :pswitch_1
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Landroid/telecom/VideoProfile$CameraCapabilities;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 39
    .line 40
    :try_start_0
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    .line 41
    .line 42
    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v1, Ljava/lang/Long;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IVideoCallback;->changeCallDataUsage(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 69
    .line 70
    :try_start_1
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    .line 71
    .line 72
    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 77
    .line 78
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 79
    .line 80
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/IVideoCallback;->changePeerDimensions(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_1
    move-exception v0

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 89
    .line 90
    .line 91
    throw v0

    .line 92
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 95
    .line 96
    :try_start_2
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    .line 97
    .line 98
    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 103
    .line 104
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoCallback;->handleCallSessionEvent(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catchall_2
    move-exception v0

    .line 112
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 119
    .line 120
    :try_start_3
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    .line 121
    .line 122
    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 127
    .line 128
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v2, Landroid/telecom/VideoProfile;

    .line 131
    .line 132
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v3, Landroid/telecom/VideoProfile;

    .line 135
    .line 136
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :catchall_3
    move-exception v0

    .line 144
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :pswitch_6
    iget-object v0, p0, Landroid/telecom/VideoCallbackServant$1;->this$0:Landroid/telecom/VideoCallbackServant;

    .line 149
    .line 150
    invoke-static {v0}, Landroid/telecom/VideoCallbackServant;->access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 155
    .line 156
    check-cast p1, Landroid/telecom/VideoProfile;

    .line 157
    .line 158
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoCallback;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    .line 159
    .line 160
    .line 161
    :goto_0
    return-void

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/telecom/VideoCallbackServant$1;->internalHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
