.class final Landroid/media/session/MediaController$MessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageHandler"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/session/MediaController$Callback;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/media/session/MediaController$Callback;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Landroid/media/session/MediaController$MessageHandler;->mRegistered:Z

    .line 8
    .line 9
    iput-object p2, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$102(Landroid/media/session/MediaController$MessageHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/session/MediaController$MessageHandler;->mRegistered:Z

    return p1
.end method

.method public static synthetic access$200(Landroid/media/session/MediaController$MessageHandler;)Landroid/media/session/MediaController$Callback;
    .locals 0

    iget-object p0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/media/session/MediaController$MessageHandler;->mRegistered:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    iget-object p1, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/media/session/MediaController$Callback;->onSessionDestroyed()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_1
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    .line 19
    .line 20
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/media/session/MediaController$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_2
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    .line 29
    .line 30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Ljava/lang/CharSequence;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Landroid/media/session/MediaController$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_3
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    .line 39
    .line 40
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Ljava/util/List;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/media/session/MediaController$Callback;->onQueueChanged(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_4
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    .line 49
    .line 50
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Landroid/media/session/MediaController$PlaybackInfo;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroid/media/session/MediaController$Callback;->onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_5
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    .line 59
    .line 60
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, Landroid/media/MediaMetadata;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_6
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    .line 69
    .line 70
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Landroid/media/session/PlaybackState;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :pswitch_7
    iget-object v0, p0, Landroid/media/session/MediaController$MessageHandler;->mCallback:Landroid/media/session/MediaController$Callback;

    .line 79
    .line 80
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v1, Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, v1, p1}, Landroid/media/session/MediaController$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
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

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
