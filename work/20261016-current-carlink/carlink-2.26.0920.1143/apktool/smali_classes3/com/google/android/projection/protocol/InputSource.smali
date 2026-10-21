.class public Lcom/google/android/projection/protocol/InputSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/CarServiceProvider;
.implements Lcom/google/android/projection/protocol/InputSourceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/InputSource$InputInjector;,
        Lcom/google/android/projection/protocol/InputSource$OnInputFeedbackListener;
    }
.end annotation


# static fields
.field private static final DBG_TRACE:Z = false

.field public static final FEEDBACK_EVENT_DRAG_END:I

.field public static final FEEDBACK_EVENT_DRAG_SELECT:I

.field public static final FEEDBACK_EVENT_DRAG_START:I

.field public static final FEEDBACK_EVENT_FOCUS_CHANGE:I

.field public static final FEEDBACK_EVENT_SELECT:I

.field private static final TAG:Ljava/lang/String; = "AHU.INPUT"

.field public static final TOUCHSCREEN_TYPE_CAPACITIVE:I

.field public static final TOUCHSCREEN_TYPE_RESISTIVE:I


# instance fields
.field private mFeedbackListener:Lcom/google/android/projection/protocol/InputSource$OnInputFeedbackListener;

.field private final mInputInjector:Lcom/google/android/projection/protocol/InputSource$InputInjector;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mNativeInputSource:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private mOverrideMotionEvent:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/projection/proto/Protos$FeedbackEvent;->FEEDBACK_SELECT:Lcom/google/android/projection/proto/Protos$FeedbackEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$FeedbackEvent;->getNumber()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/google/android/projection/protocol/InputSource;->FEEDBACK_EVENT_SELECT:I

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/projection/proto/Protos$FeedbackEvent;->FEEDBACK_FOCUS_CHANGE:Lcom/google/android/projection/proto/Protos$FeedbackEvent;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$FeedbackEvent;->getNumber()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/google/android/projection/protocol/InputSource;->FEEDBACK_EVENT_FOCUS_CHANGE:I

    .line 16
    .line 17
    sget-object v0, Lcom/google/android/projection/proto/Protos$FeedbackEvent;->FEEDBACK_DRAG_SELECT:Lcom/google/android/projection/proto/Protos$FeedbackEvent;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$FeedbackEvent;->getNumber()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sput v0, Lcom/google/android/projection/protocol/InputSource;->FEEDBACK_EVENT_DRAG_SELECT:I

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/projection/proto/Protos$FeedbackEvent;->FEEDBACK_DRAG_START:Lcom/google/android/projection/proto/Protos$FeedbackEvent;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$FeedbackEvent;->getNumber()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput v0, Lcom/google/android/projection/protocol/InputSource;->FEEDBACK_EVENT_DRAG_START:I

    .line 32
    .line 33
    sget-object v0, Lcom/google/android/projection/proto/Protos$FeedbackEvent;->FEEDBACK_DRAG_END:Lcom/google/android/projection/proto/Protos$FeedbackEvent;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$FeedbackEvent;->getNumber()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    sput v0, Lcom/google/android/projection/protocol/InputSource;->FEEDBACK_EVENT_DRAG_END:I

    .line 40
    .line 41
    sget-object v0, Lcom/google/android/projection/proto/Protos$TouchScreenType;->CAPACITIVE:Lcom/google/android/projection/proto/Protos$TouchScreenType;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$TouchScreenType;->getNumber()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    sput v0, Lcom/google/android/projection/protocol/InputSource;->TOUCHSCREEN_TYPE_CAPACITIVE:I

    .line 48
    .line 49
    sget-object v0, Lcom/google/android/projection/proto/Protos$TouchScreenType;->RESISTIVE:Lcom/google/android/projection/proto/Protos$TouchScreenType;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$TouchScreenType;->getNumber()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    sput v0, Lcom/google/android/projection/protocol/InputSource;->TOUCHSCREEN_TYPE_RESISTIVE:I

    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/google/android/projection/protocol/InputSource$InputInjector;)V
    .locals 0
    .param p1    # Lcom/google/android/projection/protocol/InputSource$InputInjector;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/InputSource;->mInputInjector:Lcom/google/android/projection/protocol/InputSource$InputInjector;

    .line 5
    .line 6
    return-void
.end method

.method private native nativeInit(IJ)I
.end method

.method private native nativeRegisterFeedbackEvents([I)V
.end method

.method private native nativeRegisterKeyCodes([I)V
.end method

.method private native nativeRegisterTouchPad(IIZIIZZ)V
.end method

.method private native nativeRegisterTouchScreen(III)V
.end method

.method private native nativeSendAbsoluteEvent(JII)I
.end method

.method private native nativeSendKeyEvent(JIZI)I
.end method

.method private native nativeSendKeyLongEvent(JII)I
.end method

.method private native nativeSendRelativeEvent(JII)I
.end method

.method private native nativeSendTouchEvent(J[I[I[III)I
.end method

.method private native nativeSendTouchPadEvent(J[I[I[III)I
.end method

.method private native nativeSetDisplayId(I)V
.end method

.method private native nativeShutdown()V
.end method

.method private translateKeycode(I)I
    .locals 0

    return p1
.end method


# virtual methods
.method public create(IJ)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/InputSource;->nativeInit(IJ)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/InputSource;->nativeShutdown()V

    return-void
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/InputSource;->mNativeInputSource:J

    return-wide v0
.end method

.method public injectForTest(Lcom/google/android/projection/proto/Protos$InputReport;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "AHU.INPUT"

    .line 4
    .line 5
    const-string v2, "Received an input report"

    .line 6
    .line 7
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, v1, Lcom/google/android/projection/protocol/InputSource;->mInputInjector:Lcom/google/android/projection/protocol/InputSource$InputInjector;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "AHU.INPUT"

    .line 15
    .line 16
    const-string v2, "Input Injector is null."

    .line 17
    .line 18
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getPointerDataCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x1

    .line 32
    if-lez v0, :cond_3

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getAction()Lcom/google/android/projection/proto/Protos$PointerAction;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$PointerAction;->getNumber()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getActionIndex()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getPointerDataCount()I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    new-array v13, v11, [Landroid/view/MotionEvent$PointerCoords;

    .line 63
    .line 64
    new-array v12, v11, [Landroid/view/MotionEvent$PointerProperties;

    .line 65
    .line 66
    move v5, v2

    .line 67
    :goto_0
    if-ge v5, v11, :cond_2

    .line 68
    .line 69
    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    .line 70
    .line 71
    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v7, v5}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getPointerData(I)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v7}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->getX()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    int-to-float v7, v7

    .line 87
    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 88
    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v7, v5}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getPointerData(I)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v7}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->getY()I

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    int-to-float v7, v7

    .line 102
    iput v7, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 103
    .line 104
    aput-object v6, v13, v5

    .line 105
    .line 106
    new-instance v6, Landroid/view/MotionEvent$PointerProperties;

    .line 107
    .line 108
    invoke-direct {v6}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v7, v5}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getPointerData(I)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    invoke-virtual {v7}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->hasPointerId()Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_1

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getTouchEvent()Lcom/google/android/projection/proto/Protos$TouchEvent;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    invoke-virtual {v7, v5}, Lcom/google/android/projection/proto/Protos$TouchEvent;->getPointerData(I)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-virtual {v7}, Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;->getPointerId()I

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    iput v7, v6, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 138
    .line 139
    :cond_1
    aput-object v6, v12, v5

    .line 140
    .line 141
    add-int/lit8 v5, v5, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getTimestamp()J

    .line 145
    .line 146
    .line 147
    move-result-wide v6

    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getTimestamp()J

    .line 149
    .line 150
    .line 151
    move-result-wide v8

    .line 152
    shl-int/lit8 v4, v4, 0x8

    .line 153
    .line 154
    add-int v10, v4, v0

    .line 155
    .line 156
    const/4 v14, 0x0

    .line 157
    const/4 v15, 0x0

    .line 158
    const/high16 v16, 0x3f800000    # 1.0f

    .line 159
    .line 160
    const/high16 v17, 0x3f800000    # 1.0f

    .line 161
    .line 162
    const/16 v18, 0x0

    .line 163
    .line 164
    const/16 v19, 0x0

    .line 165
    .line 166
    const/16 v20, 0x1002

    .line 167
    .line 168
    const/16 v21, 0x0

    .line 169
    .line 170
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iput-boolean v3, v1, Lcom/google/android/projection/protocol/InputSource;->mOverrideMotionEvent:Z

    .line 176
    .line 177
    iget-object v4, v1, Lcom/google/android/projection/protocol/InputSource;->mInputInjector:Lcom/google/android/projection/protocol/InputSource$InputInjector;

    .line 178
    .line 179
    invoke-interface {v4, v0}, Lcom/google/android/projection/protocol/InputSource$InputInjector;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 180
    .line 181
    .line 182
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :catchall_0
    move-exception v0

    .line 188
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    throw v0

    .line 190
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getKeyEvent()Lcom/google/android/projection/proto/Protos$KeyEvent;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$KeyEvent;->getKeysCount()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-lez v0, :cond_5

    .line 199
    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getKeyEvent()Lcom/google/android/projection/proto/Protos$KeyEvent;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$KeyEvent;->getKeysCount()I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-le v0, v3, :cond_4

    .line 209
    .line 210
    iget-object v0, v1, Lcom/google/android/projection/protocol/InputSource;->mInputInjector:Lcom/google/android/projection/protocol/InputSource$InputInjector;

    .line 211
    .line 212
    new-instance v3, Landroid/view/KeyEvent;

    .line 213
    .line 214
    const/4 v4, 0x4

    .line 215
    invoke-direct {v3, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v0, v3}, Lcom/google/android/projection/protocol/InputSource$InputInjector;->onKeyEvent(Landroid/view/KeyEvent;)V

    .line 219
    .line 220
    .line 221
    return-void

    .line 222
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getKeyEvent()Lcom/google/android/projection/proto/Protos$KeyEvent;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0, v2}, Lcom/google/android/projection/proto/Protos$KeyEvent;->getKeys(I)Lcom/google/android/projection/proto/Protos$KeyEvent$Key;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$KeyEvent$Key;->getDown()Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    xor-int/lit8 v9, v2, 0x1

    .line 235
    .line 236
    new-instance v2, Landroid/view/KeyEvent;

    .line 237
    .line 238
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 239
    .line 240
    .line 241
    move-result-wide v5

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 243
    .line 244
    .line 245
    move-result-wide v7

    .line 246
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$KeyEvent$Key;->getKeycode()I

    .line 247
    .line 248
    .line 249
    move-result v10

    .line 250
    const/4 v11, 0x0

    .line 251
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$KeyEvent$Key;->getMetastate()I

    .line 252
    .line 253
    .line 254
    move-result v12

    .line 255
    move-object v4, v2

    .line 256
    invoke-direct/range {v4 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 257
    .line 258
    .line 259
    iget-object v0, v1, Lcom/google/android/projection/protocol/InputSource;->mInputInjector:Lcom/google/android/projection/protocol/InputSource$InputInjector;

    .line 260
    .line 261
    invoke-interface {v0, v2}, Lcom/google/android/projection/protocol/InputSource$InputInjector;->onKeyEvent(Landroid/view/KeyEvent;)V

    .line 262
    .line 263
    .line 264
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getRelativeEvent()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RelativeEvent;->getDataCount()I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-lez v0, :cond_6

    .line 273
    .line 274
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getRelativeEvent()Lcom/google/android/projection/proto/Protos$RelativeEvent;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$RelativeEvent;->getDataList()Ljava/util/List;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-eqz v2, :cond_6

    .line 291
    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    check-cast v2, Lcom/google/android/projection/proto/Protos$RelativeEvent$Rel;

    .line 297
    .line 298
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$RelativeEvent$Rel;->getKeycode()I

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    invoke-virtual {v2}, Lcom/google/android/projection/proto/Protos$RelativeEvent$Rel;->getDelta()I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    iget-object v4, v1, Lcom/google/android/projection/protocol/InputSource;->mInputInjector:Lcom/google/android/projection/protocol/InputSource$InputInjector;

    .line 307
    .line 308
    invoke-interface {v4, v3, v2}, Lcom/google/android/projection/protocol/InputSource$InputInjector;->onRelativeEvent(II)V

    .line 309
    .line 310
    .line 311
    goto :goto_2

    .line 312
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/projection/proto/Protos$InputReport;->getAbsoluteEvent()Lcom/google/android/projection/proto/Protos$AbsoluteEvent;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/google/android/projection/proto/Protos$AbsoluteEvent;->getDataCount()I

    .line 317
    .line 318
    .line 319
    return-void
.end method

.method public onInputFeedback(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/InputSource;->mFeedbackListener:Lcom/google/android/projection/protocol/InputSource$OnInputFeedbackListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/projection/protocol/InputSource$OnInputFeedbackListener;->onInputFeedback(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public registerFeedbackEvents([ILcom/google/android/projection/protocol/InputSource$OnInputFeedbackListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/projection/protocol/InputSource;->mFeedbackListener:Lcom/google/android/projection/protocol/InputSource$OnInputFeedbackListener;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/InputSource;->nativeRegisterFeedbackEvents([I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public registerKeyCodes([I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    .line 5
    aget v1, p1, v0

    .line 6
    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/projection/protocol/InputSource;->translateKeycode(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aput v1, p1, v0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/InputSource;->nativeRegisterKeyCodes([I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public registerTouchPad(IIZIIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/projection/protocol/InputSource;->nativeRegisterTouchPad(IIZIIZZ)V

    return-void
.end method

.method public registerTouchScreen(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/InputSource;->nativeRegisterTouchScreen(III)V

    return-void
.end method

.method public sendAbsoluteEvent(II)Z
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/projection/protocol/InputSource;->nativeSendAbsoluteEvent(JII)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public sendBackEvent()Z
    .locals 8
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/projection/protocol/InputSource;->translateKeycode(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v1, p0

    .line 13
    move v4, v0

    .line 14
    invoke-direct/range {v1 .. v6}, Lcom/google/android/projection/protocol/InputSource;->nativeSendKeyEvent(JIZI)I

    .line 15
    .line 16
    .line 17
    move-result v7

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/google/android/projection/protocol/InputSource;->nativeSendKeyEvent(JIZI)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v7, :cond_0

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/projection/protocol/InputSource;->translateKeycode(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v6, 0x1

    .line 18
    const/4 v7, 0x0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    move v4, v6

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v4, v7

    .line 24
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    move-object v0, p0

    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/google/android/projection/protocol/InputSource;->nativeSendKeyEvent(JIZI)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v6, v7

    .line 37
    :goto_1
    return v6
.end method

.method public sendKeyLongEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {p0, v2}, Lcom/google/android/projection/protocol/InputSource;->translateKeycode(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/projection/protocol/InputSource;->nativeSendKeyLongEvent(JII)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    return p1
.end method

.method public sendRelativeEvent(II)Z
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/projection/protocol/InputSource;->nativeSendRelativeEvent(JII)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public declared-synchronized sendTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    iget-boolean v2, p0, Lcom/google/android/projection/protocol/InputSource;->mOverrideMotionEvent:Z

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iput-boolean v3, p0, Lcom/google/android/projection/protocol/InputSource;->mOverrideMotionEvent:Z

    .line 16
    .line 17
    :cond_0
    move-wide v5, v0

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 19
    .line 20
    .line 21
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    const/4 v0, 0x1

    .line 23
    if-eqz v10, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    if-eq v10, v1, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    if-eq v10, v1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    if-eq v10, v1, :cond_1

    .line 33
    .line 34
    if-eq v10, v0, :cond_1

    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return v3

    .line 38
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    new-array v8, v1, [I

    .line 43
    .line 44
    new-array v9, v1, [I

    .line 45
    .line 46
    new-array v7, v1, [I

    .line 47
    .line 48
    move v2, v3

    .line 49
    :goto_0
    if-ge v2, v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    float-to-int v4, v4

    .line 56
    aput v4, v8, v2

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    float-to-int v4, v4

    .line 63
    aput v4, v9, v2

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    aput v4, v7, v2

    .line 70
    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    move-object v4, p0

    .line 79
    invoke-direct/range {v4 .. v11}, Lcom/google/android/projection/protocol/InputSource;->nativeSendTouchEvent(J[I[I[III)I

    .line 80
    .line 81
    .line 82
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    if-nez p1, :cond_3

    .line 84
    .line 85
    move v3, v0

    .line 86
    :cond_3
    monitor-exit p0

    .line 87
    return v3

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    monitor-exit p0

    .line 90
    throw p1
.end method

.method public sendTouchPadEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v6

    .line 9
    const/4 v8, 0x1

    .line 10
    const/4 v9, 0x0

    .line 11
    if-eqz v6, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-eq v6, v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq v6, v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x6

    .line 20
    if-eq v6, v0, :cond_0

    .line 21
    .line 22
    if-eq v6, v8, :cond_0

    .line 23
    .line 24
    return v9

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-array v4, v0, [I

    .line 30
    .line 31
    new-array v5, v0, [I

    .line 32
    .line 33
    new-array v3, v0, [I

    .line 34
    .line 35
    move v7, v9

    .line 36
    :goto_0
    if-ge v7, v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    float-to-int v10, v10

    .line 43
    aput v10, v4, v7

    .line 44
    .line 45
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    float-to-int v10, v10

    .line 50
    aput v10, v5, v7

    .line 51
    .line 52
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    aput v10, v3, v7

    .line 57
    .line 58
    add-int/lit8 v7, v7, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    move-object v0, p0

    .line 66
    invoke-direct/range {v0 .. v7}, Lcom/google/android/projection/protocol/InputSource;->nativeSendTouchPadEvent(J[I[I[III)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v8, v9

    .line 74
    :goto_1
    return v8
.end method

.method public setDisplayId(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/InputSource;->nativeSetDisplayId(I)V

    return-void
.end method
