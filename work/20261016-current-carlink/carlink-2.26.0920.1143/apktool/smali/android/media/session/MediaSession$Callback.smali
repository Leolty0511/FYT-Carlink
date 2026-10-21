.class public abstract Landroid/media/session/MediaSession$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private mMediaPlayPauseKeyPending:Z

.field private mSession:Landroid/media/session/MediaSession;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;
    .locals 0

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    return-object p1
.end method

.method public static synthetic access$2602(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$CallbackMessageHandler;
    .locals 0

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    return-object p1
.end method

.method public static synthetic access$2900(Landroid/media/session/MediaSession$Callback;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    return-void
.end method

.method private handleMediaPlayPauseKeySingleTapIfPending()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 8
    .line 9
    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 10
    .line 11
    const/16 v2, 0x17

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    .line 17
    .line 18
    invoke-static {v1}, Landroid/media/session/MediaSession;->access$200(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    move-wide v4, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    :goto_0
    const/4 v6, 0x1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    const/4 v7, 0x3

    .line 40
    if-ne v1, v7, :cond_2

    .line 41
    .line 42
    move v1, v6

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v1, v0

    .line 45
    :goto_1
    const-wide/16 v7, 0x204

    .line 46
    .line 47
    and-long/2addr v7, v4

    .line 48
    cmp-long v7, v7, v2

    .line 49
    .line 50
    if-eqz v7, :cond_3

    .line 51
    .line 52
    move v7, v6

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    move v7, v0

    .line 55
    :goto_2
    const-wide/16 v8, 0x202

    .line 56
    .line 57
    and-long/2addr v4, v8

    .line 58
    cmp-long v2, v4, v2

    .line 59
    .line 60
    if-eqz v2, :cond_4

    .line 61
    .line 62
    move v0, v6

    .line 63
    :cond_4
    if-eqz v1, :cond_5

    .line 64
    .line 65
    if-eqz v0, :cond_5

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_5
    if-nez v1, :cond_6

    .line 72
    .line 73
    if-eqz v7, :cond_6

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 76
    .line 77
    .line 78
    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onFastForward()V
    .locals 0

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_7

    .line 5
    .line 6
    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 7
    .line 8
    if-eqz v0, :cond_7

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v2, "android.intent.action.MEDIA_BUTTON"

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_7

    .line 21
    .line 22
    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/view/KeyEvent;

    .line 29
    .line 30
    if-eqz p1, :cond_7

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_7

    .line 37
    .line 38
    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    .line 39
    .line 40
    invoke-static {v0}, Landroid/media/session/MediaSession;->access$200(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-wide/16 v2, 0x0

    .line 45
    .line 46
    if-nez v0, :cond_0

    .line 47
    .line 48
    move-wide v4, v2

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getActions()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/16 v6, 0x4f

    .line 59
    .line 60
    const-wide/16 v7, 0x20

    .line 61
    .line 62
    const/4 v9, 0x1

    .line 63
    if-eq v0, v6, :cond_3

    .line 64
    .line 65
    const/16 v6, 0x55

    .line 66
    .line 67
    if-eq v0, v6, :cond_3

    .line 68
    .line 69
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    const/16 v0, 0x7e

    .line 77
    .line 78
    if-eq p1, v0, :cond_2

    .line 79
    .line 80
    const/16 v0, 0x7f

    .line 81
    .line 82
    if-eq p1, v0, :cond_1

    .line 83
    .line 84
    packed-switch p1, :pswitch_data_0

    .line 85
    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :pswitch_0
    const-wide/16 v6, 0x40

    .line 90
    .line 91
    and-long/2addr v4, v6

    .line 92
    cmp-long p1, v4, v2

    .line 93
    .line 94
    if-eqz p1, :cond_7

    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    .line 97
    .line 98
    .line 99
    return v9

    .line 100
    :pswitch_1
    const-wide/16 v6, 0x8

    .line 101
    .line 102
    and-long/2addr v4, v6

    .line 103
    cmp-long p1, v4, v2

    .line 104
    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    .line 108
    .line 109
    .line 110
    return v9

    .line 111
    :pswitch_2
    const-wide/16 v6, 0x10

    .line 112
    .line 113
    and-long/2addr v4, v6

    .line 114
    cmp-long p1, v4, v2

    .line 115
    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    .line 119
    .line 120
    .line 121
    return v9

    .line 122
    :pswitch_3
    and-long/2addr v4, v7

    .line 123
    cmp-long p1, v4, v2

    .line 124
    .line 125
    if-eqz p1, :cond_7

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    .line 128
    .line 129
    .line 130
    return v9

    .line 131
    :pswitch_4
    const-wide/16 v6, 0x1

    .line 132
    .line 133
    and-long/2addr v4, v6

    .line 134
    cmp-long p1, v4, v2

    .line 135
    .line 136
    if-eqz p1, :cond_7

    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onStop()V

    .line 139
    .line 140
    .line 141
    return v9

    .line 142
    :cond_1
    const-wide/16 v6, 0x2

    .line 143
    .line 144
    and-long/2addr v4, v6

    .line 145
    cmp-long p1, v4, v2

    .line 146
    .line 147
    if-eqz p1, :cond_7

    .line 148
    .line 149
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    .line 150
    .line 151
    .line 152
    return v9

    .line 153
    :cond_2
    const-wide/16 v6, 0x4

    .line 154
    .line 155
    and-long/2addr v4, v6

    .line 156
    cmp-long p1, v4, v2

    .line 157
    .line 158
    if-eqz p1, :cond_7

    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 161
    .line 162
    .line 163
    return v9

    .line 164
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-lez p1, :cond_4

    .line 169
    .line 170
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_4
    iget-boolean p1, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 175
    .line 176
    const/16 v0, 0x17

    .line 177
    .line 178
    if-eqz p1, :cond_5

    .line 179
    .line 180
    iget-object p1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 181
    .line 182
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 183
    .line 184
    .line 185
    iput-boolean v1, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 186
    .line 187
    and-long v0, v4, v7

    .line 188
    .line 189
    cmp-long p1, v0, v2

    .line 190
    .line 191
    if-eqz p1, :cond_6

    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    .line 194
    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_5
    iput-boolean v9, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 198
    .line 199
    iget-object p1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    .line 200
    .line 201
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    int-to-long v1, v1

    .line 206
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 207
    .line 208
    .line 209
    :cond_6
    :goto_1
    return v9

    .line 210
    :cond_7
    :goto_2
    return v1

    .line 211
    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPlay()V
    .locals 0

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepare()V
    .locals 0

    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onRewind()V
    .locals 0

    return-void
.end method

.method public onSeekTo(J)V
    .locals 0

    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 0

    return-void
.end method

.method public onSkipToNext()V
    .locals 0

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 0

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
