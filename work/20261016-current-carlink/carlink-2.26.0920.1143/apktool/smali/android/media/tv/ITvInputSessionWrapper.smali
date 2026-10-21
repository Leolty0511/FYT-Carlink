.class public Landroid/media/tv/ITvInputSessionWrapper;
.super Landroid/media/tv/ITvInputSession$Stub;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;
    }
.end annotation


# static fields
.field private static final DO_APP_PRIVATE_COMMAND:I = 0x9

.field private static final DO_CREATE_OVERLAY_VIEW:I = 0xa

.field private static final DO_DISPATCH_SURFACE_CHANGED:I = 0x4

.field private static final DO_RELAYOUT_OVERLAY_VIEW:I = 0xb

.field private static final DO_RELEASE:I = 0x1

.field private static final DO_REMOVE_OVERLAY_VIEW:I = 0xc

.field private static final DO_SELECT_TRACK:I = 0x8

.field private static final DO_SET_CAPTION_ENABLED:I = 0x7

.field private static final DO_SET_MAIN:I = 0x2

.field private static final DO_SET_STREAM_VOLUME:I = 0x5

.field private static final DO_SET_SURFACE:I = 0x3

.field private static final DO_START_RECORDING:I = 0x14

.field private static final DO_STOP_RECORDING:I = 0x15

.field private static final DO_TIME_SHIFT_ENABLE_POSITION_TRACKING:I = 0x13

.field private static final DO_TIME_SHIFT_PAUSE:I = 0xf

.field private static final DO_TIME_SHIFT_PLAY:I = 0xe

.field private static final DO_TIME_SHIFT_RESUME:I = 0x10

.field private static final DO_TIME_SHIFT_SEEK_TO:I = 0x11

.field private static final DO_TIME_SHIFT_SET_PLAYBACK_PARAMS:I = 0x12

.field private static final DO_TUNE:I = 0x6

.field private static final DO_UNBLOCK_CONTENT:I = 0xd

.field private static final EXECUTE_MESSAGE_TIMEOUT_LONG_MILLIS:I = 0x1388

.field private static final EXECUTE_MESSAGE_TIMEOUT_SHORT_MILLIS:I = 0x32

.field private static final EXECUTE_MESSAGE_TUNE_TIMEOUT_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "TvInputSessionWrapper"


# instance fields
.field private final mCaller:Lcom/android/internal/os/HandlerCaller;

.field private mChannel:Landroid/view/InputChannel;

.field private final mIsRecordingSession:Z

.field private mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

.field private mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

.field private mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/tv/TvInputService$RecordingSession;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Landroid/media/tv/ITvInputSession$Stub;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    .line 9
    new-instance v1, Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p0, v0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 10
    iput-object p2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/tv/TvInputService$Session;Landroid/view/InputChannel;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/media/tv/ITvInputSession$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    .line 3
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 4
    iput-object p2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 5
    iput-object p3, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz p3, :cond_0

    .line 6
    new-instance p2, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p3, p1}, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;-><init>(Landroid/media/tv/ITvInputSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Landroid/media/tv/ITvInputSessionWrapper;)Landroid/media/tv/TvInputService$Session;
    .locals 0

    iget-object p0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    return-object p0
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public dispatchSurfaceChanged(III)V
    .locals 7

    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIII(IIIII)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    :cond_0
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :cond_1
    return-void

    .line 16
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget v2, p1, Landroid/os/Message;->what:I

    .line 21
    .line 22
    const-string v3, "TvInputSessionWrapper"

    .line 23
    .line 24
    packed-switch v2, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v4, "Unhandled message code: "

    .line 30
    .line 31
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget v4, p1, Landroid/os/Message;->what:I

    .line 35
    .line 36
    invoke-static {v2, v4, v3}, Landroid/accessibilityservice/c;->A(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :pswitch_0
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    .line 42
    .line 43
    invoke-virtual {v2}, Landroid/media/tv/TvInputService$RecordingSession;->stopRecording()V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :pswitch_1
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    .line 49
    .line 50
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v4, Landroid/net/Uri;

    .line 53
    .line 54
    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$RecordingSession;->startRecording(Landroid/net/Uri;)V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :pswitch_2
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 60
    .line 61
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v4, Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->timeShiftEnablePositionTracking(Z)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :pswitch_3
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 75
    .line 76
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v4, Landroid/media/PlaybackParams;

    .line 79
    .line 80
    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 81
    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :pswitch_4
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 86
    .line 87
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v4, Ljava/lang/Long;

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 92
    .line 93
    .line 94
    move-result-wide v4

    .line 95
    invoke-virtual {v2, v4, v5}, Landroid/media/tv/TvInputService$Session;->timeShiftSeekTo(J)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :pswitch_5
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/media/tv/TvInputService$Session;->timeShiftResume()V

    .line 103
    .line 104
    .line 105
    goto/16 :goto_2

    .line 106
    .line 107
    :pswitch_6
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 108
    .line 109
    invoke-virtual {v2}, Landroid/media/tv/TvInputService$Session;->timeShiftPause()V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_2

    .line 113
    .line 114
    :pswitch_7
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 115
    .line 116
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast v4, Landroid/net/Uri;

    .line 119
    .line 120
    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->timeShiftPlay(Landroid/net/Uri;)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :pswitch_8
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 126
    .line 127
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v4, Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->unblockContent(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_2

    .line 135
    .line 136
    :pswitch_9
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 137
    .line 138
    const/4 v4, 0x1

    .line 139
    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    .line 140
    .line 141
    .line 142
    goto/16 :goto_2

    .line 143
    .line 144
    :pswitch_a
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 145
    .line 146
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v4, Landroid/graphics/Rect;

    .line 149
    .line 150
    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->relayoutOverlayView(Landroid/graphics/Rect;)V

    .line 151
    .line 152
    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :pswitch_b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 156
    .line 157
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 158
    .line 159
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 160
    .line 161
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v5, Landroid/os/IBinder;

    .line 164
    .line 165
    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v6, Landroid/graphics/Rect;

    .line 168
    .line 169
    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$Session;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_2

    .line 176
    .line 177
    :pswitch_c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 180
    .line 181
    iget-boolean v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    .line 182
    .line 183
    if-eqz v4, :cond_3

    .line 184
    .line 185
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    .line 186
    .line 187
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v5, Ljava/lang/String;

    .line 190
    .line 191
    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v6, Landroid/os/Bundle;

    .line 194
    .line 195
    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$RecordingSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_3
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 200
    .line 201
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v5, Ljava/lang/String;

    .line 204
    .line 205
    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v6, Landroid/os/Bundle;

    .line 208
    .line 209
    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$Session;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 210
    .line 211
    .line 212
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_2

    .line 216
    .line 217
    :pswitch_d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 220
    .line 221
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 222
    .line 223
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v5, Ljava/lang/Integer;

    .line 226
    .line 227
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v6, Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$Session;->selectTrack(ILjava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_2

    .line 242
    .line 243
    :pswitch_e
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 244
    .line 245
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v4, Ljava/lang/Boolean;

    .line 248
    .line 249
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->setCaptionEnabled(Z)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_2

    .line 257
    .line 258
    :pswitch_f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 261
    .line 262
    iget-boolean v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    .line 263
    .line 264
    if-eqz v4, :cond_4

    .line 265
    .line 266
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    .line 267
    .line 268
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v5, Landroid/net/Uri;

    .line 271
    .line 272
    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v6, Landroid/os/Bundle;

    .line 275
    .line 276
    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$RecordingSession;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 277
    .line 278
    .line 279
    goto :goto_1

    .line 280
    :cond_4
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 281
    .line 282
    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v5, Landroid/net/Uri;

    .line 285
    .line 286
    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v6, Landroid/os/Bundle;

    .line 289
    .line 290
    invoke-virtual {v4, v5, v6}, Landroid/media/tv/TvInputService$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 291
    .line 292
    .line 293
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 294
    .line 295
    .line 296
    goto :goto_2

    .line 297
    :pswitch_10
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 298
    .line 299
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v4, Ljava/lang/Float;

    .line 302
    .line 303
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->setStreamVolume(F)V

    .line 308
    .line 309
    .line 310
    goto :goto_2

    .line 311
    :pswitch_11
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    .line 314
    .line 315
    iget-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 316
    .line 317
    iget v5, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 318
    .line 319
    iget v6, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 320
    .line 321
    iget v7, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 322
    .line 323
    invoke-virtual {v4, v5, v6, v7}, Landroid/media/tv/TvInputService$Session;->dispatchSurfaceChanged(III)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 327
    .line 328
    .line 329
    goto :goto_2

    .line 330
    :pswitch_12
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 331
    .line 332
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast v4, Landroid/view/Surface;

    .line 335
    .line 336
    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->setSurface(Landroid/view/Surface;)V

    .line 337
    .line 338
    .line 339
    goto :goto_2

    .line 340
    :pswitch_13
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 341
    .line 342
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 343
    .line 344
    check-cast v4, Ljava/lang/Boolean;

    .line 345
    .line 346
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 347
    .line 348
    .line 349
    move-result v4

    .line 350
    invoke-virtual {v2, v4}, Landroid/media/tv/TvInputService$Session;->setMain(Z)V

    .line 351
    .line 352
    .line 353
    goto :goto_2

    .line 354
    :pswitch_14
    iget-boolean v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    .line 355
    .line 356
    const/4 v4, 0x0

    .line 357
    if-eqz v2, :cond_5

    .line 358
    .line 359
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    .line 360
    .line 361
    invoke-virtual {v2}, Landroid/media/tv/TvInputService$RecordingSession;->release()V

    .line 362
    .line 363
    .line 364
    iput-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    .line 365
    .line 366
    goto :goto_2

    .line 367
    :cond_5
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 368
    .line 369
    invoke-virtual {v2}, Landroid/media/tv/TvInputService$Session;->release()V

    .line 370
    .line 371
    .line 372
    iput-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 373
    .line 374
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    .line 375
    .line 376
    if-eqz v2, :cond_6

    .line 377
    .line 378
    invoke-virtual {v2}, Landroid/view/InputEventReceiver;->dispose()V

    .line 379
    .line 380
    .line 381
    iput-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    .line 382
    .line 383
    :cond_6
    iget-object v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    .line 384
    .line 385
    if-eqz v2, :cond_7

    .line 386
    .line 387
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 388
    .line 389
    .line 390
    iput-object v4, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    .line 391
    .line 392
    :cond_7
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 393
    .line 394
    .line 395
    move-result-wide v4

    .line 396
    sub-long/2addr v4, v0

    .line 397
    const-wide/32 v0, 0xf4240

    .line 398
    .line 399
    .line 400
    div-long/2addr v4, v0

    .line 401
    const-wide/16 v0, 0x32

    .line 402
    .line 403
    cmp-long v0, v4, v0

    .line 404
    .line 405
    if-lez v0, :cond_b

    .line 406
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    const-string v1, "Handling message ("

    .line 410
    .line 411
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    iget v1, p1, Landroid/os/Message;->what:I

    .line 415
    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    const-string v1, ") took too long time (duration="

    .line 420
    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    const-string/jumbo v1, "ms)"

    .line 428
    .line 429
    .line 430
    invoke-static {v0, v1, v3}, Landroid/accessibilityservice/c;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    iget v0, p1, Landroid/os/Message;->what:I

    .line 434
    .line 435
    const/4 v1, 0x6

    .line 436
    if-ne v0, v1, :cond_9

    .line 437
    .line 438
    const-wide/16 v0, 0x7d0

    .line 439
    .line 440
    cmp-long v0, v4, v0

    .line 441
    .line 442
    if-gtz v0, :cond_8

    .line 443
    .line 444
    goto :goto_3

    .line 445
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 446
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    const-string v1, "Too much time to handle tune request. ("

    .line 450
    .line 451
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string/jumbo v1, "ms > 2000ms) Consider handling the tune request in a separate thread."

    .line 458
    .line 459
    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw p1

    .line 471
    :cond_9
    :goto_3
    const-wide/16 v0, 0x1388

    .line 472
    .line 473
    cmp-long v0, v4, v0

    .line 474
    .line 475
    if-gtz v0, :cond_a

    .line 476
    .line 477
    goto :goto_4

    .line 478
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    .line 479
    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    .line 481
    .line 482
    const-string v2, "Too much time to handle a request. (type="

    .line 483
    .line 484
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    iget p1, p1, Landroid/os/Message;->what:I

    .line 488
    .line 489
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    const-string p1, ", "

    .line 493
    .line 494
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    const-string/jumbo p1, "ms > 5000ms)."

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object p1

    .line 510
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    throw v0

    .line 514
    :cond_b
    :goto_4
    return-void

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public relayoutOverlayView(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/tv/TvInputService$Session;->scheduleOverlayViewCleanup()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public removeOverlayView()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public selectTrack(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setCaptionEnabled(Z)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setMain(Z)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final setVolume(F)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public startRecording(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public stopRecording()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public timeShiftEnablePositionTracking(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2
    .line 3
    const/16 v1, 0x13

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public timeShiftPause()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public timeShiftPlay(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public timeShiftResume()V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public timeShiftSeekTo(J)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x11

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public unblockContent(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method
