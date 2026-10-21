.class public abstract Landroid/net/NetworkAgent;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final BASE:I = 0x81000

.field private static final BW_REFRESH_MIN_WIN_MS:J = 0x1f4L

.field public static final CMD_PREVENT_AUTOMATIC_RECONNECT:I = 0x8100f

.field public static final CMD_REPORT_NETWORK_STATUS:I = 0x81007

.field public static final CMD_REQUEST_BANDWIDTH_UPDATE:I = 0x8100a

.field public static final CMD_SAVE_ACCEPT_UNVALIDATED:I = 0x81009

.field public static final CMD_SET_SIGNAL_STRENGTH_THRESHOLDS:I = 0x8100e

.field public static final CMD_START_PACKET_KEEPALIVE:I = 0x8100b

.field public static final CMD_STOP_PACKET_KEEPALIVE:I = 0x8100c

.field public static final CMD_SUSPECT_BAD:I = 0x81000

.field private static final DBG:Z = true

.field public static final EVENT_NETWORK_CAPABILITIES_CHANGED:I = 0x81002

.field public static final EVENT_NETWORK_INFO_CHANGED:I = 0x81001

.field public static final EVENT_NETWORK_PROPERTIES_CHANGED:I = 0x81003

.field public static final EVENT_NETWORK_SCORE_CHANGED:I = 0x81004

.field public static final EVENT_PACKET_KEEPALIVE:I = 0x8100d

.field public static final EVENT_SET_EXPLICITLY_SELECTED:I = 0x81008

.field public static final EVENT_UID_RANGES_ADDED:I = 0x81005

.field public static final EVENT_UID_RANGES_REMOVED:I = 0x81006

.field public static final INVALID_NETWORK:I = 0x2

.field public static REDIRECT_URL_KEY:Ljava/lang/String; = "redirect URL"

.field public static final VALID_NETWORK:I = 0x1

.field private static final VDBG:Z = false

.field public static final WIFI_BASE_SCORE:I = 0x3c


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private volatile mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mContext:Landroid/content/Context;

.field private volatile mLastBwRefreshTime:J

.field private mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPollLceScheduled:Z

.field private final mPreConnectedQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final netId:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    .line 1
    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V
    .locals 7

    .line 2
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    iput-object p3, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Landroid/net/NetworkAgent;->mContext:Landroid/content/Context;

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    const-string p1, "connectivity"

    .line 9
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 10
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v2, Landroid/net/NetworkInfo;

    invoke-direct {v2, p4}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3, p6}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v4, Landroid/net/NetworkCapabilities;

    invoke-direct {v4, p5}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    move v5, p7

    move-object v6, p8

    invoke-virtual/range {v0 .. v6}, Landroid/net/ConnectivityManager;->registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I

    move-result p1

    iput p1, p0, Landroid/net/NetworkAgent;->netId:I

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private queueOrSendMessage(III)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private queueOrSendMessage(IIILjava/lang/Object;)V
    .locals 1

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4
    iput p1, v0, Landroid/os/Message;->what:I

    .line 5
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 6
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 7
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    invoke-direct {p0, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private queueOrSendMessage(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0, p2}, Landroid/net/NetworkAgent;->queueOrSendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private queueOrSendMessage(Landroid/os/Message;)V
    .locals 2

    .line 9
    iget-object v0, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addUidRanges([Landroid/net/UidRange;)V
    .locals 1

    const v0, 0x81005

    invoke-direct {p0, v0, p1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public explicitlySelected(Z)V
    .locals 1

    const v0, 0x81008

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    sparse-switch v0, :sswitch_data_0

    .line 7
    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :sswitch_0
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->preventAutomaticReconnect()V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :sswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Landroid/os/Bundle;

    .line 19
    .line 20
    const-string/jumbo v0, "thresholds"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v3

    .line 35
    :goto_0
    new-array v1, v0, [I

    .line 36
    .line 37
    :goto_1
    if-ge v3, v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/Integer;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    aput v2, v1, v3

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p0, v1}, Landroid/net/NetworkAgent;->setSignalStrengthThresholds([I)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :sswitch_2
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->stopPacketKeepalive(Landroid/os/Message;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :sswitch_3
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->startPacketKeepalive(Landroid/os/Message;)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_4

    .line 68
    .line 69
    :sswitch_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    iget-wide v4, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    .line 74
    .line 75
    const-wide/16 v6, 0x1f4

    .line 76
    .line 77
    add-long/2addr v4, v6

    .line 78
    cmp-long p1, v0, v4

    .line 79
    .line 80
    if-ltz p1, :cond_2

    .line 81
    .line 82
    iput-boolean v3, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    .line 83
    .line 84
    iget-object p1, p0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_6

    .line 91
    .line 92
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->pollLceData()V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_4

    .line 96
    .line 97
    :cond_2
    iget-boolean p1, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    .line 98
    .line 99
    if-nez p1, :cond_6

    .line 100
    .line 101
    iget-wide v2, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    .line 102
    .line 103
    add-long/2addr v2, v6

    .line 104
    sub-long/2addr v2, v0

    .line 105
    const-wide/16 v0, 0x1

    .line 106
    .line 107
    add-long/2addr v2, v0

    .line 108
    const p1, 0x8100a

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iput-boolean p1, p0, Landroid/net/NetworkAgent;->mPollLceScheduled:Z

    .line 116
    .line 117
    goto/16 :goto_4

    .line 118
    .line 119
    :sswitch_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 120
    .line 121
    if-eqz p1, :cond_3

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    move v2, v3

    .line 125
    :goto_2
    invoke-virtual {p0, v2}, Landroid/net/NetworkAgent;->saveAcceptUnvalidated(Z)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_4

    .line 129
    .line 130
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Landroid/os/Bundle;

    .line 133
    .line 134
    sget-object v1, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 141
    .line 142
    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkAgent;->networkStatus(ILjava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_4

    .line 146
    :sswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v1, "Unhandled Message "

    .line 149
    .line 150
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto :goto_4

    .line 164
    :sswitch_8
    const-string p1, "NetworkAgent channel lost"

    .line 165
    .line 166
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/net/NetworkAgent;->unwanted()V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    .line 173
    .line 174
    monitor-enter p1

    .line 175
    :try_start_0
    iput-object v1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 176
    .line 177
    monitor-exit p1

    .line 178
    goto :goto_4

    .line 179
    :catchall_0
    move-exception v0

    .line 180
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    throw v0

    .line 182
    :sswitch_9
    iget-object p1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 183
    .line 184
    if-eqz p1, :cond_6

    .line 185
    .line 186
    iget-object p1, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :sswitch_a
    iget-object v0, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 193
    .line 194
    if-eqz v0, :cond_4

    .line 195
    .line 196
    const-string p1, "Received new connection while already connected!"

    .line 197
    .line 198
    invoke-virtual {p0, p1}, Landroid/net/NetworkAgent;->log(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_4
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    .line 203
    .line 204
    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 205
    .line 206
    .line 207
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 208
    .line 209
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/util/AsyncChannel;->connected(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 210
    .line 211
    .line 212
    const v1, 0x11002

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, p1, v1, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    .line 216
    .line 217
    .line 218
    iget-object p1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    .line 219
    .line 220
    monitor-enter p1

    .line 221
    :try_start_1
    iput-object v0, p0, Landroid/net/NetworkAgent;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 222
    .line 223
    iget-object v1, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_5

    .line 234
    .line 235
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    check-cast v2, Landroid/os/Message;

    .line 240
    .line 241
    invoke-virtual {v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_5
    iget-object v0, p0, Landroid/net/NetworkAgent;->mPreConnectedQueue:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    .line 249
    .line 250
    monitor-exit p1

    .line 251
    goto :goto_4

    .line 252
    :catchall_1
    move-exception v0

    .line 253
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    throw v0

    .line 255
    :cond_6
    :goto_4
    return-void

    .line 256
    nop

    .line 257
    :sswitch_data_0
    .sparse-switch
        0x11001 -> :sswitch_a
        0x11003 -> :sswitch_9
        0x11004 -> :sswitch_8
        0x81000 -> :sswitch_7
        0x81007 -> :sswitch_6
        0x81009 -> :sswitch_5
        0x8100a -> :sswitch_4
        0x8100b -> :sswitch_3
        0x8100c -> :sswitch_2
        0x8100e -> :sswitch_1
        0x8100f -> :sswitch_0
    .end sparse-switch
.end method

.method public log(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/net/NetworkAgent;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetworkAgent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public networkStatus(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPacketKeepaliveEvent(II)V
    .locals 1

    const v0, 0x8100d

    invoke-direct {p0, v0, p1, p2}, Landroid/net/NetworkAgent;->queueOrSendMessage(III)V

    return-void
.end method

.method public pollLceData()V
    .locals 0

    return-void
.end method

.method public preventAutomaticReconnect()V
    .locals 0

    return-void
.end method

.method public removeUidRanges([Landroid/net/UidRange;)V
    .locals 1

    const v0, 0x81006

    invoke-direct {p0, v0, p1}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public saveAcceptUnvalidated(Z)V
    .locals 0

    return-void
.end method

.method public sendLinkProperties(Landroid/net/LinkProperties;)V
    .locals 1

    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0, p1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    const p1, 0x81003

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/NetworkAgent;->mPollLcePending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Landroid/net/NetworkAgent;->mLastBwRefreshTime:J

    .line 12
    .line 13
    new-instance v0, Landroid/net/NetworkCapabilities;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 16
    .line 17
    .line 18
    const p1, 0x81002

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public sendNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 1

    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    const p1, 0x81001

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendNetworkScore(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const p1, 0x81004

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, v0}, Landroid/net/NetworkAgent;->queueOrSendMessage(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v0, "Score must be >= 0"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public setSignalStrengthThresholds([I)V
    .locals 0

    return-void
.end method

.method public startPacketKeepalive(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, -0x1e

    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkAgent;->onPacketKeepaliveEvent(II)V

    return-void
.end method

.method public stopPacketKeepalive(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v0, -0x1e

    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkAgent;->onPacketKeepaliveEvent(II)V

    return-void
.end method

.method public abstract unwanted()V
.end method
