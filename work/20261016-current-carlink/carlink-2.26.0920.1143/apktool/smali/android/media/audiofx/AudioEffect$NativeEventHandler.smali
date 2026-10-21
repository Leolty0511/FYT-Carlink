.class Landroid/media/audiofx/AudioEffect$NativeEventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/AudioEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private mAudioEffect:Landroid/media/audiofx/AudioEffect;

.field final synthetic this$0:Landroid/media/audiofx/AudioEffect;


# direct methods
.method public constructor <init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

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
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const-string v0, "AudioEffect-JAVA"

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v2, "handleMessage() Unknown event type: "

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget p1, p1, Landroid/os/Message;->what:I

    .line 28
    .line 29
    invoke-static {v1, p1, v0}, Landroid/app/m;->C(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    .line 35
    .line 36
    iget-object v0, v0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 40
    .line 41
    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->access$200(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    if-eqz v1, :cond_6

    .line 47
    .line 48
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 49
    .line 50
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, [B

    .line 53
    .line 54
    invoke-static {p1, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/4 v4, 0x4

    .line 59
    invoke-static {p1, v4}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    const/16 v5, 0x8

    .line 64
    .line 65
    invoke-static {p1, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    new-array v6, v4, [B

    .line 70
    .line 71
    new-array v7, v5, [B

    .line 72
    .line 73
    const/16 v8, 0xc

    .line 74
    .line 75
    invoke-static {p1, v8, v6, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v0, v7, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 82
    .line 83
    invoke-interface {v1, p1, v3, v6, v7}, Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    throw p1

    .line 90
    :cond_2
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    .line 91
    .line 92
    iget-object v0, v0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    .line 93
    .line 94
    monitor-enter v0

    .line 95
    :try_start_2
    iget-object v3, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 96
    .line 97
    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->access$000(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    if-eqz v3, :cond_6

    .line 103
    .line 104
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 105
    .line 106
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 107
    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    move v1, v2

    .line 112
    :goto_0
    invoke-interface {v3, v0, v1}, Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;->onEnableStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :catchall_1
    move-exception p1

    .line 117
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    throw p1

    .line 119
    :cond_4
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    .line 120
    .line 121
    iget-object v0, v0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    .line 122
    .line 123
    monitor-enter v0

    .line 124
    :try_start_4
    iget-object v3, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 125
    .line 126
    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->access$100(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 131
    if-eqz v3, :cond_6

    .line 132
    .line 133
    iget-object v0, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 134
    .line 135
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 136
    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    move v1, v2

    .line 141
    :goto_1
    invoke-interface {v3, v0, v1}, Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;->onControlStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    .line 142
    .line 143
    .line 144
    :cond_6
    :goto_2
    return-void

    .line 145
    :catchall_2
    move-exception p1

    .line 146
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 147
    throw p1
.end method
