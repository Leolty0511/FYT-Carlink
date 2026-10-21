.class Lcom/android/ims/internal/ImsVideoCallProvider$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsVideoCallProvider;


# direct methods
.method public constructor <init>(Lcom/android/ims/internal/ImsVideoCallProvider;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

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
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    .line 9
    .line 10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroid/net/Uri;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetPauseImage(Landroid/net/Uri;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :pswitch_1
    iget-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/android/ims/internal/ImsVideoCallProvider;->onRequestCallDataUsage()V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :pswitch_2
    iget-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/android/ims/internal/ImsVideoCallProvider;->onRequestCameraCapabilities()V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :pswitch_3
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    .line 34
    .line 35
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Landroid/telecom/VideoProfile;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 46
    .line 47
    :try_start_0
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Landroid/telecom/VideoProfile;

    .line 50
    .line 51
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Landroid/telecom/VideoProfile;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    .line 56
    .line 57
    invoke-virtual {v2, v0, v1}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 66
    .line 67
    .line 68
    throw v0

    .line 69
    :pswitch_5
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    .line 70
    .line 71
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Ljava/lang/Float;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetZoom(F)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :pswitch_6
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    .line 84
    .line 85
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetDeviceOrientation(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :pswitch_7
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    .line 92
    .line 93
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p1, Landroid/view/Surface;

    .line 96
    .line 97
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetDisplaySurface(Landroid/view/Surface;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :pswitch_8
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    .line 102
    .line 103
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, Landroid/view/Surface;

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetPreviewSurface(Landroid/view/Surface;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 114
    .line 115
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    .line 116
    .line 117
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v1, Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetCamera(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    .line 125
    .line 126
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v1, Ljava/lang/String;

    .line 129
    .line 130
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 131
    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/android/ims/internal/ImsVideoCallProvider;->onSetCamera(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catchall_1
    move-exception v0

    .line 140
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :pswitch_a
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$1;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    .line 145
    .line 146
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p1, Lcom/android/ims/internal/IImsVideoCallCallback;

    .line 149
    .line 150
    invoke-static {v0, p1}, Lcom/android/ims/internal/ImsVideoCallProvider;->access$002(Lcom/android/ims/internal/ImsVideoCallProvider;Lcom/android/ims/internal/IImsVideoCallCallback;)Lcom/android/ims/internal/IImsVideoCallCallback;

    .line 151
    .line 152
    .line 153
    :goto_0
    return-void

    .line 154
    nop

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
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
