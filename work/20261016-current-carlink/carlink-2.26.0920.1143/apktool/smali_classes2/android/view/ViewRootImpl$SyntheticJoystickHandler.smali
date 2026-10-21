.class final Landroid/view/ViewRootImpl$SyntheticJoystickHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SyntheticJoystickHandler"
.end annotation


# static fields
.field private static final MSG_ENQUEUE_X_AXIS_KEY_REPEAT:I = 0x1

.field private static final MSG_ENQUEUE_Y_AXIS_KEY_REPEAT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SyntheticJoystickHandler"


# instance fields
.field private mLastXDirection:I

.field private mLastXKeyCode:I

.field private mLastYDirection:I

.field private mLastYKeyCode:I

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic access$2100(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->cancel(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private cancel(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->update(Landroid/view/MotionEvent;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private joystickAxisValueToDirection(F)I
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/high16 v0, -0x41000000    # -0.5f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private update(Landroid/view/MotionEvent;Z)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v14

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    .line 10
    .line 11
    .line 12
    move-result v16

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 14
    .line 15
    .line 16
    move-result v17

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    .line 18
    .line 19
    .line 20
    move-result v18

    .line 21
    const/16 v2, 0xf

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-direct {v0, v2}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-direct {v0, v2}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    :cond_0
    move v13, v2

    .line 42
    const/16 v2, 0x10

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-direct {v0, v2}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    :cond_1
    move v12, v2

    .line 63
    iget v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXDirection:I

    .line 64
    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v10, 0x1

    .line 67
    if-eq v13, v1, :cond_5

    .line 68
    .line 69
    iget v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    .line 70
    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    .line 75
    .line 76
    iget-object v9, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 77
    .line 78
    new-instance v8, Landroid/view/KeyEvent;

    .line 79
    .line 80
    const/4 v6, 0x1

    .line 81
    iget v7, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    .line 82
    .line 83
    const/16 v19, 0x0

    .line 84
    .line 85
    const/16 v20, 0x0

    .line 86
    .line 87
    const/16 v21, 0x400

    .line 88
    .line 89
    move-object v1, v8

    .line 90
    move-wide v2, v14

    .line 91
    move-wide v4, v14

    .line 92
    move-object/from16 v22, v8

    .line 93
    .line 94
    move/from16 v8, v19

    .line 95
    .line 96
    move-object/from16 v23, v9

    .line 97
    .line 98
    move/from16 v9, v16

    .line 99
    .line 100
    move/from16 v10, v17

    .line 101
    .line 102
    move/from16 v11, v20

    .line 103
    .line 104
    move/from16 v24, v12

    .line 105
    .line 106
    move/from16 v12, v21

    .line 107
    .line 108
    move-wide/from16 v19, v14

    .line 109
    .line 110
    move v14, v13

    .line 111
    move/from16 v13, v18

    .line 112
    .line 113
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 114
    .line 115
    .line 116
    move-object/from16 v2, v22

    .line 117
    .line 118
    move-object/from16 v1, v23

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 121
    .line 122
    .line 123
    const/4 v15, 0x0

    .line 124
    iput v15, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_2
    move/from16 v24, v12

    .line 128
    .line 129
    move-wide/from16 v19, v14

    .line 130
    .line 131
    move v15, v11

    .line 132
    move v14, v13

    .line 133
    :goto_0
    iput v14, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXDirection:I

    .line 134
    .line 135
    if-eqz v14, :cond_4

    .line 136
    .line 137
    if-eqz p2, :cond_4

    .line 138
    .line 139
    if-lez v14, :cond_3

    .line 140
    .line 141
    const/16 v1, 0x16

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_3
    const/16 v1, 0x15

    .line 145
    .line 146
    :goto_1
    iput v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    .line 147
    .line 148
    new-instance v14, Landroid/view/KeyEvent;

    .line 149
    .line 150
    const/4 v6, 0x0

    .line 151
    iget v7, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    .line 152
    .line 153
    const/4 v8, 0x0

    .line 154
    const/4 v11, 0x0

    .line 155
    const/16 v12, 0x400

    .line 156
    .line 157
    move-object v1, v14

    .line 158
    move-wide/from16 v2, v19

    .line 159
    .line 160
    move-wide/from16 v4, v19

    .line 161
    .line 162
    move/from16 v9, v16

    .line 163
    .line 164
    move/from16 v10, v17

    .line 165
    .line 166
    move/from16 v13, v18

    .line 167
    .line 168
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 172
    .line 173
    invoke-virtual {v1, v14}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 174
    .line 175
    .line 176
    const/4 v13, 0x1

    .line 177
    invoke-virtual {v0, v13, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v1, v13}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 182
    .line 183
    .line 184
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    int-to-long v2, v2

    .line 189
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_4
    const/4 v13, 0x1

    .line 194
    goto :goto_2

    .line 195
    :cond_5
    move v13, v10

    .line 196
    move/from16 v24, v12

    .line 197
    .line 198
    move-wide/from16 v19, v14

    .line 199
    .line 200
    move v15, v11

    .line 201
    :goto_2
    iget v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYDirection:I

    .line 202
    .line 203
    move/from16 v14, v24

    .line 204
    .line 205
    if-eq v14, v1, :cond_8

    .line 206
    .line 207
    iget v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    .line 208
    .line 209
    const/4 v12, 0x2

    .line 210
    if-eqz v1, :cond_6

    .line 211
    .line 212
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    .line 214
    .line 215
    iget-object v11, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 216
    .line 217
    new-instance v10, Landroid/view/KeyEvent;

    .line 218
    .line 219
    const/4 v6, 0x1

    .line 220
    iget v7, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    .line 221
    .line 222
    const/4 v8, 0x0

    .line 223
    const/16 v21, 0x0

    .line 224
    .line 225
    const/16 v22, 0x400

    .line 226
    .line 227
    move-object v1, v10

    .line 228
    move-wide/from16 v2, v19

    .line 229
    .line 230
    move-wide/from16 v4, v19

    .line 231
    .line 232
    move/from16 v9, v16

    .line 233
    .line 234
    move-object v15, v10

    .line 235
    move/from16 v10, v17

    .line 236
    .line 237
    move-object/from16 v25, v11

    .line 238
    .line 239
    move/from16 v11, v21

    .line 240
    .line 241
    move/from16 v12, v22

    .line 242
    .line 243
    move/from16 v13, v18

    .line 244
    .line 245
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 246
    .line 247
    .line 248
    move-object/from16 v1, v25

    .line 249
    .line 250
    invoke-virtual {v1, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 251
    .line 252
    .line 253
    const/4 v1, 0x0

    .line 254
    iput v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    .line 255
    .line 256
    :cond_6
    iput v14, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYDirection:I

    .line 257
    .line 258
    if-eqz v14, :cond_8

    .line 259
    .line 260
    if-eqz p2, :cond_8

    .line 261
    .line 262
    if-lez v14, :cond_7

    .line 263
    .line 264
    const/16 v1, 0x14

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_7
    const/16 v1, 0x13

    .line 268
    .line 269
    :goto_3
    iput v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    .line 270
    .line 271
    new-instance v14, Landroid/view/KeyEvent;

    .line 272
    .line 273
    const/4 v6, 0x0

    .line 274
    iget v7, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    .line 275
    .line 276
    const/4 v8, 0x0

    .line 277
    const/4 v11, 0x0

    .line 278
    const/16 v12, 0x400

    .line 279
    .line 280
    move-object v1, v14

    .line 281
    move-wide/from16 v2, v19

    .line 282
    .line 283
    move-wide/from16 v4, v19

    .line 284
    .line 285
    move/from16 v9, v16

    .line 286
    .line 287
    move/from16 v10, v17

    .line 288
    .line 289
    move/from16 v13, v18

    .line 290
    .line 291
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 292
    .line 293
    .line 294
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 295
    .line 296
    invoke-virtual {v1, v14}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 297
    .line 298
    .line 299
    const/4 v1, 0x2

    .line 300
    invoke-virtual {v0, v1, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    const/4 v2, 0x1

    .line 305
    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 306
    .line 307
    .line 308
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    .line 309
    .line 310
    .line 311
    move-result v2

    .line 312
    int-to-long v2, v2

    .line 313
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 314
    .line 315
    .line 316
    :cond_8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/view/KeyEvent;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    add-int/2addr v4, v1

    .line 23
    invoke-static {v0, v2, v3, v4}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v2, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 28
    .line 29
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 30
    .line 31
    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 36
    .line 37
    .line 38
    iget p1, p1, Landroid/os/Message;->what:I

    .line 39
    .line 40
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    int-to-long v0, v0

    .line 52
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1000(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Unexpected action: "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->cancel(Landroid/view/MotionEvent;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->update(Landroid/view/MotionEvent;Z)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method
