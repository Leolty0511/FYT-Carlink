.class public Lcom/android/internal/widget/PointerLocationView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;,
        Lcom/android/internal/widget/PointerLocationView$PointerState;
    }
.end annotation


# static fields
.field private static final ALT_STRATEGY_PROPERY_KEY:Ljava/lang/String; = "debug.velocitytracker.alt"

.field private static final TAG:Ljava/lang/String; = "Pointer"


# instance fields
.field private final ESTIMATE_FUTURE_POINTS:I

.field private final ESTIMATE_INTERVAL:F

.field private final ESTIMATE_PAST_POINTS:I

.field private mActivePointerId:I

.field private final mAltVelocity:Landroid/view/VelocityTracker;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private final mCurrentPointPaint:Landroid/graphics/Paint;

.field private mHeaderBottom:I

.field private final mIm:Landroid/hardware/input/InputManager;

.field private mMaxNumPointers:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/PointerLocationView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintCoords:Z

.field private mReusableOvalRect:Landroid/graphics/RectF;

.field private final mTargetPaint:Landroid/graphics/Paint;

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

.field private final mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final mTextLevelPaint:Landroid/graphics/Paint;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private final mVelocity:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_PAST_POINTS:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_FUTURE_POINTS:I

    .line 9
    .line 10
    const v0, 0x3ca3d70a    # 0.02f

    .line 11
    .line 12
    .line 13
    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->ESTIMATE_INTERVAL:F

    .line 14
    .line 15
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 35
    .line 36
    new-instance v1, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 45
    .line 46
    new-instance v2, Landroid/graphics/RectF;

    .line 47
    .line 48
    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 54
    .line 55
    .line 56
    const-class v2, Landroid/hardware/input/InputManager;

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/hardware/input/InputManager;

    .line 63
    .line 64
    iput-object v2, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    .line 65
    .line 66
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    .line 71
    .line 72
    new-instance p1, Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 91
    .line 92
    const/high16 v3, 0x41200000    # 10.0f

    .line 93
    .line 94
    mul-float/2addr v2, v3

    .line 95
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    .line 97
    .line 98
    const/16 v2, 0xff

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    invoke-virtual {p1, v2, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 102
    .line 103
    .line 104
    new-instance p1, Landroid/graphics/Paint;

    .line 105
    .line 106
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 110
    .line 111
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    .line 113
    .line 114
    const/16 v4, 0x80

    .line 115
    .line 116
    invoke-virtual {p1, v4, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 117
    .line 118
    .line 119
    new-instance p1, Landroid/graphics/Paint;

    .line 120
    .line 121
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 122
    .line 123
    .line 124
    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 125
    .line 126
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    .line 128
    .line 129
    const/16 v4, 0xc0

    .line 130
    .line 131
    invoke-virtual {p1, v4, v2, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 132
    .line 133
    .line 134
    new-instance p1, Landroid/graphics/Paint;

    .line 135
    .line 136
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 145
    .line 146
    .line 147
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 148
    .line 149
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    .line 151
    .line 152
    const/high16 v6, 0x40000000    # 2.0f

    .line 153
    .line 154
    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    .line 156
    .line 157
    new-instance v7, Landroid/graphics/Paint;

    .line 158
    .line 159
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 160
    .line 161
    .line 162
    iput-object v7, p0, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    .line 163
    .line 164
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, v2, v2, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    .line 175
    .line 176
    new-instance v1, Landroid/graphics/Paint;

    .line 177
    .line 178
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 179
    .line 180
    .line 181
    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    .line 182
    .line 183
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 187
    .line 188
    .line 189
    new-instance v1, Landroid/graphics/Paint;

    .line 190
    .line 191
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 192
    .line 193
    .line 194
    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    .line 195
    .line 196
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 197
    .line 198
    .line 199
    const/16 v4, 0x60

    .line 200
    .line 201
    invoke-virtual {v1, v2, v3, v4, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 205
    .line 206
    .line 207
    const/high16 v1, 0x3f800000    # 1.0f

    .line 208
    .line 209
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 210
    .line 211
    .line 212
    new-instance p1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 213
    .line 214
    invoke-direct {p1}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    iput v3, p0, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 221
    .line 222
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    .line 227
    .line 228
    const-string p1, "debug.velocitytracker.alt"

    .line 229
    .line 230
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_0

    .line 239
    .line 240
    const-string v0, "Comparing default velocity tracker strategy with "

    .line 241
    .line 242
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    const-string v1, "Pointer"

    .line 247
    .line 248
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    invoke-static {p1}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    .line 256
    .line 257
    goto :goto_0

    .line 258
    :cond_0
    const/4 p1, 0x0

    .line 259
    iput-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    .line 260
    .line 261
    :goto_0
    return-void
.end method

.method private drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 3
    .line 4
    .line 5
    const/high16 v0, 0x43340000    # 180.0f

    .line 6
    .line 7
    mul-float/2addr p6, v0

    .line 8
    float-to-double v0, p6

    .line 9
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    div-double/2addr v0, v2

    .line 15
    double-to-float p6, v0

    .line 16
    invoke-virtual {p1, p6, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 17
    .line 18
    .line 19
    iget-object p6, p0, Lcom/android/internal/widget/PointerLocationView;->mReusableOvalRect:Landroid/graphics/RectF;

    .line 20
    .line 21
    const/high16 v0, 0x40000000    # 2.0f

    .line 22
    .line 23
    div-float/2addr p5, v0

    .line 24
    sub-float v1, p2, p5

    .line 25
    .line 26
    iput v1, p6, Landroid/graphics/RectF;->left:F

    .line 27
    .line 28
    add-float/2addr p2, p5

    .line 29
    iput p2, p6, Landroid/graphics/RectF;->right:F

    .line 30
    .line 31
    div-float/2addr p4, v0

    .line 32
    sub-float p2, p3, p4

    .line 33
    .line 34
    iput p2, p6, Landroid/graphics/RectF;->top:F

    .line 35
    .line 36
    add-float/2addr p3, p4

    .line 37
    iput p3, p6, Landroid/graphics/RectF;->bottom:F

    .line 38
    .line 39
    invoke-virtual {p1, p6, p7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V
    .locals 8

    .line 1
    invoke-virtual {p6, p3}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p6}, Landroid/view/MotionEvent;->getButtonState()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    and-int/lit16 v2, p2, 0xff

    .line 10
    .line 11
    const v3, 0xff00

    .line 12
    .line 13
    .line 14
    const-string v4, "UP"

    .line 15
    .line 16
    const-string v5, "DOWN"

    .line 17
    .line 18
    const-string v6, "MOVE"

    .line 19
    .line 20
    packed-switch v2, :pswitch_data_0

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    goto :goto_1

    .line 28
    :pswitch_0
    const-string v4, "HOVER EXIT"

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :pswitch_1
    const-string v4, "HOVER ENTER"

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :pswitch_2
    const-string v4, "SCROLL"

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :pswitch_3
    const-string v4, "HOVER MOVE"

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :pswitch_4
    and-int/2addr p2, v3

    .line 41
    shr-int/lit8 p2, p2, 0x8

    .line 42
    .line 43
    if-ne p3, p2, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :pswitch_5
    and-int/2addr p2, v3

    .line 47
    shr-int/lit8 p2, p2, 0x8

    .line 48
    .line 49
    if-ne p3, p2, :cond_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_6
    const-string v4, "OUTSIDE"

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_7
    const-string v4, "CANCEL"

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    :pswitch_8
    move-object v4, v6

    .line 59
    goto :goto_1

    .line 60
    :goto_0
    :pswitch_9
    move-object v4, v5

    .line 61
    :goto_1
    :pswitch_a
    iget-object p2, p0, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2, p1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p2, " id "

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const/4 p2, 0x1

    .line 78
    add-int/2addr p5, p2

    .line 79
    invoke-virtual {p1, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string p3, ": "

    .line 84
    .line 85
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string p3, " ("

    .line 94
    .line 95
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget p3, p4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 100
    .line 101
    const/4 p5, 0x3

    .line 102
    invoke-virtual {p1, p3, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string p3, ", "

    .line 107
    .line 108
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget v2, p4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 113
    .line 114
    invoke-virtual {p1, v2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string v2, ") Pressure="

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget v2, p4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 125
    .line 126
    invoke-virtual {p1, v2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const-string v2, " Size="

    .line 131
    .line 132
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget v2, p4, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 137
    .line 138
    invoke-virtual {p1, v2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string v2, " TouchMajor="

    .line 143
    .line 144
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iget v2, p4, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 149
    .line 150
    invoke-virtual {p1, v2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const-string v2, " TouchMinor="

    .line 155
    .line 156
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iget v2, p4, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 161
    .line 162
    invoke-virtual {p1, v2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const-string v2, " ToolMajor="

    .line 167
    .line 168
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    iget v2, p4, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 173
    .line 174
    invoke-virtual {p1, v2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    const-string v2, " ToolMinor="

    .line 179
    .line 180
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iget v2, p4, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 185
    .line 186
    invoke-virtual {p1, v2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    const-string v2, " Orientation="

    .line 191
    .line 192
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iget v2, p4, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 197
    .line 198
    const/high16 v3, 0x43340000    # 180.0f

    .line 199
    .line 200
    mul-float/2addr v2, v3

    .line 201
    float-to-double v4, v2

    .line 202
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    div-double/2addr v4, v6

    .line 208
    double-to-float v2, v4

    .line 209
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    const-string v2, "deg"

    .line 214
    .line 215
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    const-string v4, " Tilt="

    .line 220
    .line 221
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    const/16 v4, 0x19

    .line 226
    .line 227
    invoke-virtual {p4, v4}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    mul-float/2addr v4, v3

    .line 232
    float-to-double v3, v4

    .line 233
    div-double/2addr v3, v6

    .line 234
    double-to-float v3, v3

    .line 235
    invoke-virtual {p1, v3, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    const-string v2, " Distance="

    .line 244
    .line 245
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    const/16 v2, 0x18

    .line 250
    .line 251
    invoke-virtual {p4, v2}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    const-string v2, " VScroll="

    .line 260
    .line 261
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    const/16 v2, 0x9

    .line 266
    .line 267
    invoke-virtual {p4, v2}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    invoke-virtual {p1, v2, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    const-string v2, " HScroll="

    .line 276
    .line 277
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    const/16 v2, 0xa

    .line 282
    .line 283
    invoke-virtual {p4, v2}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    .line 284
    .line 285
    .line 286
    move-result p4

    .line 287
    invoke-virtual {p1, p4, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    const-string p2, " BoundingBox=[("

    .line 292
    .line 293
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    const/16 p2, 0x20

    .line 298
    .line 299
    invoke-virtual {p6, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 300
    .line 301
    .line 302
    move-result p2

    .line 303
    invoke-virtual {p1, p2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    const/16 p2, 0x21

    .line 312
    .line 313
    invoke-virtual {p6, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 314
    .line 315
    .line 316
    move-result p2

    .line 317
    invoke-virtual {p1, p2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    const-string p2, ")"

    .line 322
    .line 323
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    const-string p2, ", ("

    .line 328
    .line 329
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    const/16 p2, 0x22

    .line 334
    .line 335
    invoke-virtual {p6, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 336
    .line 337
    .line 338
    move-result p2

    .line 339
    invoke-virtual {p1, p2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    const/16 p2, 0x23

    .line 348
    .line 349
    invoke-virtual {p6, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 350
    .line 351
    .line 352
    move-result p2

    .line 353
    invoke-virtual {p1, p2, p5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    const-string p2, ")]"

    .line 358
    .line 359
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    const-string p2, " ToolType="

    .line 364
    .line 365
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-static {v0}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p2

    .line 373
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    const-string p2, " ButtonState="

    .line 378
    .line 379
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 380
    .line 381
    .line 382
    move-result-object p1

    .line 383
    invoke-static {v1}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object p2

    .line 387
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    invoke-virtual {p1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    const-string p2, "Pointer"

    .line 396
    .line 397
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
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

.method private logInputDeviceState(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ": "

    .line 8
    .line 9
    const-string v2, "Pointer"

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method private logInputDevices()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, v0

    .line 7
    if-ge v1, v2, :cond_0

    .line 8
    .line 9
    aget v2, v0, v1

    .line 10
    .line 11
    const-string v3, "Device Enumerated"

    .line 12
    .line 13
    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void
.end method

.method private logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 13

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v7

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 6
    .line 7
    .line 8
    move-result v8

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 10
    .line 11
    .line 12
    move-result v9

    .line 13
    const/4 v10, 0x0

    .line 14
    move v11, v10

    .line 15
    :goto_0
    if-ge v11, v8, :cond_1

    .line 16
    .line 17
    move v12, v10

    .line 18
    :goto_1
    if-ge v12, v9, :cond_0

    .line 19
    .line 20
    invoke-virtual {p2, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 25
    .line 26
    invoke-virtual {p2, v12, v11, v0}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 27
    .line 28
    .line 29
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 30
    .line 31
    move-object v0, p0

    .line 32
    move-object v1, p1

    .line 33
    move v2, v7

    .line 34
    move v3, v12

    .line 35
    move-object v6, p2

    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 37
    .line 38
    .line 39
    add-int/lit8 v12, v12, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    add-int/lit8 v11, v11, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    :goto_2
    if-ge v10, v9, :cond_2

    .line 46
    .line 47
    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 52
    .line 53
    invoke-virtual {p2, v10, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 54
    .line 55
    .line 56
    iget-object v4, p0, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 57
    .line 58
    move-object v0, p0

    .line 59
    move-object v1, p1

    .line 60
    move v2, v7

    .line 61
    move v3, v10

    .line 62
    move-object v6, p2

    .line 63
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v10, v10, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    return-void
.end method

.method private static shouldLogKey(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    invoke-static {p0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_0
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :cond_1
    :goto_0
    return v0

    .line 21
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/android/internal/widget/PointerLocationView;->logInputDevices()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mIm:Landroid/hardware/input/InputManager;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v6

    .line 9
    div-int/lit8 v7, v6, 0x7

    .line 10
    .line 11
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 12
    .line 13
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 14
    .line 15
    neg-int v0, v0

    .line 16
    const/4 v10, 0x1

    .line 17
    add-int/lit8 v11, v0, 0x1

    .line 18
    .line 19
    iget v0, v8, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    .line 20
    .line 21
    iget-object v1, v8, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v12

    .line 27
    iget v1, v8, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 28
    .line 29
    const/4 v14, 0x0

    .line 30
    if-ltz v1, :cond_5

    .line 31
    .line 32
    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    move-object v15, v1

    .line 39
    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    const/4 v2, 0x0

    .line 43
    add-int/lit8 v3, v7, -0x1

    .line 44
    .line 45
    int-to-float v3, v3

    .line 46
    int-to-float v5, v0

    .line 47
    iget-object v4, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 48
    .line 49
    move-object/from16 v0, p1

    .line 50
    .line 51
    move-object/from16 v16, v4

    .line 52
    .line 53
    move v4, v5

    .line 54
    move/from16 v17, v5

    .line 55
    .line 56
    move-object/from16 v5, v16

    .line 57
    .line 58
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "P: "

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget v1, v8, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v1, " / "

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    iget v1, v8, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    int-to-float v11, v11

    .line 96
    iget-object v1, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 97
    .line 98
    const/high16 v5, 0x3f800000    # 1.0f

    .line 99
    .line 100
    invoke-virtual {v9, v0, v5, v11, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iget-boolean v1, v8, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 108
    .line 109
    if-eqz v1, :cond_0

    .line 110
    .line 111
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_1

    .line 116
    .line 117
    :cond_0
    if-nez v0, :cond_2

    .line 118
    .line 119
    :cond_1
    int-to-float v1, v7

    .line 120
    const/4 v2, 0x0

    .line 121
    mul-int/lit8 v4, v7, 0x2

    .line 122
    .line 123
    add-int/lit8 v0, v4, -0x1

    .line 124
    .line 125
    int-to-float v3, v0

    .line 126
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 127
    .line 128
    move-object/from16 v16, v0

    .line 129
    .line 130
    move-object/from16 v0, p1

    .line 131
    .line 132
    move v13, v4

    .line 133
    move/from16 v4, v17

    .line 134
    .line 135
    move/from16 v18, v5

    .line 136
    .line 137
    move-object/from16 v5, v16

    .line 138
    .line 139
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const-string v1, "X: "

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 159
    .line 160
    invoke-virtual {v0, v1, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    add-int/lit8 v1, v7, 0x1

    .line 169
    .line 170
    int-to-float v1, v1

    .line 171
    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 172
    .line 173
    invoke-virtual {v9, v0, v1, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 174
    .line 175
    .line 176
    int-to-float v1, v13

    .line 177
    const/4 v2, 0x0

    .line 178
    mul-int/lit8 v0, v7, 0x3

    .line 179
    .line 180
    sub-int/2addr v0, v10

    .line 181
    int-to-float v3, v0

    .line 182
    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 183
    .line 184
    move-object/from16 v0, p1

    .line 185
    .line 186
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const-string v1, "Y: "

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 206
    .line 207
    invoke-virtual {v0, v1, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    add-int/lit8 v4, v13, 0x1

    .line 216
    .line 217
    int-to-float v1, v4

    .line 218
    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 219
    .line 220
    invoke-virtual {v9, v0, v1, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_2

    .line 224
    .line 225
    :cond_2
    move/from16 v18, v5

    .line 226
    .line 227
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    sub-int/2addr v0, v10

    .line 232
    aget v1, v1, v0

    .line 233
    .line 234
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    aget v2, v2, v14

    .line 239
    .line 240
    sub-float v13, v1, v2

    .line 241
    .line 242
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    aget v0, v1, v0

    .line 247
    .line 248
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    aget v1, v1, v14

    .line 253
    .line 254
    sub-float v5, v0, v1

    .line 255
    .line 256
    int-to-float v1, v7

    .line 257
    const/4 v2, 0x0

    .line 258
    mul-int/lit8 v4, v7, 0x2

    .line 259
    .line 260
    add-int/lit8 v0, v4, -0x1

    .line 261
    .line 262
    int-to-float v3, v0

    .line 263
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    iget-object v14, v8, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    .line 268
    .line 269
    invoke-virtual {v14}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 270
    .line 271
    .line 272
    move-result v14

    .line 273
    int-to-float v14, v14

    .line 274
    cmpg-float v0, v0, v14

    .line 275
    .line 276
    if-gez v0, :cond_3

    .line 277
    .line 278
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 279
    .line 280
    goto :goto_0

    .line 281
    :cond_3
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 282
    .line 283
    :goto_0
    move-object v14, v0

    .line 284
    move-object/from16 v0, p1

    .line 285
    .line 286
    move/from16 v19, v4

    .line 287
    .line 288
    move/from16 v4, v17

    .line 289
    .line 290
    move/from16 v20, v5

    .line 291
    .line 292
    move-object v5, v14

    .line 293
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 294
    .line 295
    .line 296
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 297
    .line 298
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    const-string v1, "dX: "

    .line 303
    .line 304
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-virtual {v0, v13, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    add-int/lit8 v1, v7, 0x1

    .line 317
    .line 318
    int-to-float v1, v1

    .line 319
    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 320
    .line 321
    invoke-virtual {v9, v0, v1, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 322
    .line 323
    .line 324
    move/from16 v13, v19

    .line 325
    .line 326
    int-to-float v1, v13

    .line 327
    const/4 v2, 0x0

    .line 328
    mul-int/lit8 v0, v7, 0x3

    .line 329
    .line 330
    sub-int/2addr v0, v10

    .line 331
    int-to-float v3, v0

    .line 332
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    iget-object v4, v8, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    .line 337
    .line 338
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    int-to-float v4, v4

    .line 343
    cmpg-float v0, v0, v4

    .line 344
    .line 345
    if-gez v0, :cond_4

    .line 346
    .line 347
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 348
    .line 349
    goto :goto_1

    .line 350
    :cond_4
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 351
    .line 352
    :goto_1
    move-object v5, v0

    .line 353
    move-object/from16 v0, p1

    .line 354
    .line 355
    move/from16 v4, v17

    .line 356
    .line 357
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 358
    .line 359
    .line 360
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 361
    .line 362
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    const-string v1, "dY: "

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    move/from16 v1, v20

    .line 373
    .line 374
    invoke-virtual {v0, v1, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    add-int/lit8 v4, v13, 0x1

    .line 383
    .line 384
    int-to-float v1, v4

    .line 385
    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 386
    .line 387
    invoke-virtual {v9, v0, v1, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 388
    .line 389
    .line 390
    :goto_2
    mul-int/lit8 v13, v7, 0x3

    .line 391
    .line 392
    int-to-float v1, v13

    .line 393
    const/4 v2, 0x0

    .line 394
    mul-int/lit8 v14, v7, 0x4

    .line 395
    .line 396
    add-int/lit8 v0, v14, -0x1

    .line 397
    .line 398
    int-to-float v3, v0

    .line 399
    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 400
    .line 401
    move-object/from16 v0, p1

    .line 402
    .line 403
    move/from16 v4, v17

    .line 404
    .line 405
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 406
    .line 407
    .line 408
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 409
    .line 410
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    const-string v1, "Xv: "

    .line 415
    .line 416
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    const/4 v5, 0x3

    .line 425
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    add-int/2addr v13, v10

    .line 434
    int-to-float v1, v13

    .line 435
    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 436
    .line 437
    invoke-virtual {v9, v0, v1, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 438
    .line 439
    .line 440
    int-to-float v1, v14

    .line 441
    const/4 v2, 0x0

    .line 442
    mul-int/lit8 v13, v7, 0x5

    .line 443
    .line 444
    add-int/lit8 v0, v13, -0x1

    .line 445
    .line 446
    int-to-float v3, v0

    .line 447
    iget-object v4, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 448
    .line 449
    move-object/from16 v0, p1

    .line 450
    .line 451
    move-object/from16 v19, v4

    .line 452
    .line 453
    move/from16 v4, v17

    .line 454
    .line 455
    move v10, v5

    .line 456
    move-object/from16 v5, v19

    .line 457
    .line 458
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 459
    .line 460
    .line 461
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 462
    .line 463
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    const-string v1, "Yv: "

    .line 468
    .line 469
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    invoke-virtual {v0, v1, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    const/4 v1, 0x1

    .line 486
    add-int/2addr v14, v1

    .line 487
    int-to-float v1, v14

    .line 488
    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 489
    .line 490
    invoke-virtual {v9, v0, v1, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 491
    .line 492
    .line 493
    int-to-float v10, v13

    .line 494
    const/4 v2, 0x0

    .line 495
    mul-int/lit8 v14, v7, 0x6

    .line 496
    .line 497
    add-int/lit8 v0, v14, -0x1

    .line 498
    .line 499
    int-to-float v3, v0

    .line 500
    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 501
    .line 502
    move-object/from16 v0, p1

    .line 503
    .line 504
    move v1, v10

    .line 505
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 506
    .line 507
    .line 508
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 513
    .line 514
    int-to-float v7, v7

    .line 515
    mul-float/2addr v0, v7

    .line 516
    add-float/2addr v0, v10

    .line 517
    sub-float v3, v0, v18

    .line 518
    .line 519
    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 520
    .line 521
    move-object/from16 v0, p1

    .line 522
    .line 523
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 524
    .line 525
    .line 526
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 527
    .line 528
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 529
    .line 530
    .line 531
    move-result-object v0

    .line 532
    const-string v1, "Prs: "

    .line 533
    .line 534
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 543
    .line 544
    const/4 v2, 0x2

    .line 545
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    const/4 v1, 0x1

    .line 554
    add-int/2addr v13, v1

    .line 555
    int-to-float v1, v13

    .line 556
    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 557
    .line 558
    invoke-virtual {v9, v0, v1, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 559
    .line 560
    .line 561
    int-to-float v10, v14

    .line 562
    const/4 v2, 0x0

    .line 563
    int-to-float v3, v6

    .line 564
    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 565
    .line 566
    move-object/from16 v0, p1

    .line 567
    .line 568
    move v1, v10

    .line 569
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 570
    .line 571
    .line 572
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 577
    .line 578
    mul-float/2addr v0, v7

    .line 579
    add-float/2addr v0, v10

    .line 580
    sub-float v3, v0, v18

    .line 581
    .line 582
    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 583
    .line 584
    move-object/from16 v0, p1

    .line 585
    .line 586
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 587
    .line 588
    .line 589
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 590
    .line 591
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    const-string v1, "Size: "

    .line 596
    .line 597
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 606
    .line 607
    const/4 v2, 0x2

    .line 608
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-virtual {v0}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    const/4 v10, 0x1

    .line 617
    add-int/2addr v14, v10

    .line 618
    int-to-float v1, v14

    .line 619
    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 620
    .line 621
    invoke-virtual {v9, v0, v1, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 622
    .line 623
    .line 624
    :cond_5
    const/4 v11, 0x0

    .line 625
    :goto_3
    if-ge v11, v12, :cond_12

    .line 626
    .line 627
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    .line 628
    .line 629
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    move-object v13, v0

    .line 634
    check-cast v13, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 635
    .line 636
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    .line 637
    .line 638
    .line 639
    move-result v6

    .line 640
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 641
    .line 642
    const/16 v14, 0xff

    .line 643
    .line 644
    const/16 v15, 0x80

    .line 645
    .line 646
    invoke-virtual {v0, v14, v15, v14, v14}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 647
    .line 648
    .line 649
    const/4 v0, 0x0

    .line 650
    move v5, v0

    .line 651
    move v7, v5

    .line 652
    const/4 v0, 0x0

    .line 653
    const/4 v1, 0x0

    .line 654
    const/4 v4, 0x0

    .line 655
    :goto_4
    if-ge v4, v6, :cond_9

    .line 656
    .line 657
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    aget v17, v2, v4

    .line 662
    .line 663
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    .line 664
    .line 665
    .line 666
    move-result-object v2

    .line 667
    aget v18, v2, v4

    .line 668
    .line 669
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    .line 670
    .line 671
    .line 672
    move-result v2

    .line 673
    if-eqz v2, :cond_6

    .line 674
    .line 675
    move/from16 v20, v4

    .line 676
    .line 677
    const/4 v1, 0x0

    .line 678
    goto :goto_7

    .line 679
    :cond_6
    if-eqz v1, :cond_8

    .line 680
    .line 681
    iget-object v3, v8, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    .line 682
    .line 683
    move-object/from16 v0, p1

    .line 684
    .line 685
    move v1, v7

    .line 686
    move v2, v5

    .line 687
    move-object/from16 v19, v3

    .line 688
    .line 689
    move/from16 v3, v17

    .line 690
    .line 691
    move/from16 v20, v4

    .line 692
    .line 693
    move/from16 v4, v18

    .line 694
    .line 695
    move v10, v5

    .line 696
    move-object/from16 v5, v19

    .line 697
    .line 698
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 699
    .line 700
    .line 701
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$700(Lcom/android/internal/widget/PointerLocationView$PointerState;)[Z

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    aget-boolean v0, v0, v20

    .line 706
    .line 707
    if-eqz v0, :cond_7

    .line 708
    .line 709
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mCurrentPointPaint:Landroid/graphics/Paint;

    .line 710
    .line 711
    goto :goto_5

    .line 712
    :cond_7
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 713
    .line 714
    :goto_5
    invoke-virtual {v9, v7, v10, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 715
    .line 716
    .line 717
    const/4 v1, 0x1

    .line 718
    goto :goto_6

    .line 719
    :cond_8
    move/from16 v20, v4

    .line 720
    .line 721
    move v1, v0

    .line 722
    :goto_6
    move v0, v1

    .line 723
    move/from16 v7, v17

    .line 724
    .line 725
    move/from16 v5, v18

    .line 726
    .line 727
    const/4 v1, 0x1

    .line 728
    :goto_7
    add-int/lit8 v4, v20, 0x1

    .line 729
    .line 730
    const/4 v10, 0x1

    .line 731
    goto :goto_4

    .line 732
    :cond_9
    move v10, v5

    .line 733
    if-eqz v0, :cond_c

    .line 734
    .line 735
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 736
    .line 737
    const/4 v1, 0x0

    .line 738
    invoke-virtual {v0, v15, v15, v1, v15}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 739
    .line 740
    .line 741
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    const v6, -0x425c28f6    # -0.08f

    .line 746
    .line 747
    .line 748
    invoke-virtual {v0, v6}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    .line 749
    .line 750
    .line 751
    move-result v0

    .line 752
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    .line 757
    .line 758
    .line 759
    move-result v1

    .line 760
    const/16 v17, -0x3

    .line 761
    .line 762
    move v2, v1

    .line 763
    move/from16 v5, v17

    .line 764
    .line 765
    move v1, v0

    .line 766
    :goto_8
    const v18, 0x3ca3d70a    # 0.02f

    .line 767
    .line 768
    .line 769
    const/4 v0, 0x2

    .line 770
    if-gt v5, v0, :cond_a

    .line 771
    .line 772
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    int-to-float v3, v5

    .line 777
    mul-float v3, v3, v18

    .line 778
    .line 779
    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    .line 780
    .line 781
    .line 782
    move-result v18

    .line 783
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    .line 788
    .line 789
    .line 790
    move-result v19

    .line 791
    iget-object v4, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 792
    .line 793
    move-object/from16 v0, p1

    .line 794
    .line 795
    move/from16 v3, v18

    .line 796
    .line 797
    move-object/from16 v20, v4

    .line 798
    .line 799
    move/from16 v4, v19

    .line 800
    .line 801
    move/from16 v21, v5

    .line 802
    .line 803
    move-object/from16 v5, v20

    .line 804
    .line 805
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 806
    .line 807
    .line 808
    add-int/lit8 v5, v21, 0x1

    .line 809
    .line 810
    move/from16 v1, v18

    .line 811
    .line 812
    move/from16 v2, v19

    .line 813
    .line 814
    goto :goto_8

    .line 815
    :cond_a
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 816
    .line 817
    const/16 v5, 0x40

    .line 818
    .line 819
    invoke-virtual {v0, v14, v14, v5, v15}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 820
    .line 821
    .line 822
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    .line 823
    .line 824
    .line 825
    move-result v0

    .line 826
    const/high16 v19, 0x41800000    # 16.0f

    .line 827
    .line 828
    mul-float v0, v0, v19

    .line 829
    .line 830
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    .line 831
    .line 832
    .line 833
    move-result v1

    .line 834
    mul-float v1, v1, v19

    .line 835
    .line 836
    add-float v3, v7, v0

    .line 837
    .line 838
    add-float v4, v10, v1

    .line 839
    .line 840
    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 841
    .line 842
    move-object/from16 v0, p1

    .line 843
    .line 844
    move v1, v7

    .line 845
    move-object/from16 v20, v2

    .line 846
    .line 847
    move v2, v10

    .line 848
    move-object/from16 v5, v20

    .line 849
    .line 850
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 851
    .line 852
    .line 853
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    .line 854
    .line 855
    if-eqz v0, :cond_c

    .line 856
    .line 857
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 858
    .line 859
    const/4 v1, 0x0

    .line 860
    invoke-virtual {v0, v15, v1, v15, v15}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 861
    .line 862
    .line 863
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    invoke-virtual {v0, v6}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    .line 868
    .line 869
    .line 870
    move-result v0

    .line 871
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    .line 876
    .line 877
    .line 878
    move-result v1

    .line 879
    move v2, v1

    .line 880
    move/from16 v6, v17

    .line 881
    .line 882
    move v1, v0

    .line 883
    :goto_9
    const/4 v0, 0x2

    .line 884
    if-gt v6, v0, :cond_b

    .line 885
    .line 886
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    int-to-float v3, v6

    .line 891
    mul-float v3, v3, v18

    .line 892
    .line 893
    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    .line 894
    .line 895
    .line 896
    move-result v17

    .line 897
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    .line 902
    .line 903
    .line 904
    move-result v20

    .line 905
    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 906
    .line 907
    move-object/from16 v0, p1

    .line 908
    .line 909
    move/from16 v3, v17

    .line 910
    .line 911
    move/from16 v4, v20

    .line 912
    .line 913
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 914
    .line 915
    .line 916
    add-int/lit8 v6, v6, 0x1

    .line 917
    .line 918
    move/from16 v1, v17

    .line 919
    .line 920
    move/from16 v2, v20

    .line 921
    .line 922
    goto :goto_9

    .line 923
    :cond_b
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 924
    .line 925
    const/16 v1, 0x40

    .line 926
    .line 927
    invoke-virtual {v0, v14, v1, v14, v15}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 928
    .line 929
    .line 930
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1000(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    .line 931
    .line 932
    .line 933
    move-result v0

    .line 934
    mul-float v0, v0, v19

    .line 935
    .line 936
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1100(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    .line 937
    .line 938
    .line 939
    move-result v1

    .line 940
    mul-float v1, v1, v19

    .line 941
    .line 942
    add-float v3, v7, v0

    .line 943
    .line 944
    add-float v4, v10, v1

    .line 945
    .line 946
    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 947
    .line 948
    move-object/from16 v0, p1

    .line 949
    .line 950
    move v1, v7

    .line 951
    move v2, v10

    .line 952
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 953
    .line 954
    .line 955
    :cond_c
    iget-boolean v0, v8, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 956
    .line 957
    if-eqz v0, :cond_10

    .line 958
    .line 959
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    .line 960
    .line 961
    .line 962
    move-result v0

    .line 963
    if-eqz v0, :cond_10

    .line 964
    .line 965
    const/4 v1, 0x0

    .line 966
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 967
    .line 968
    .line 969
    move-result-object v0

    .line 970
    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 971
    .line 972
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 973
    .line 974
    .line 975
    move-result v0

    .line 976
    int-to-float v3, v0

    .line 977
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 982
    .line 983
    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    .line 984
    .line 985
    move-object/from16 v0, p1

    .line 986
    .line 987
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 988
    .line 989
    .line 990
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 991
    .line 992
    .line 993
    move-result-object v0

    .line 994
    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 995
    .line 996
    const/4 v2, 0x0

    .line 997
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    iget v3, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1002
    .line 1003
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 1004
    .line 1005
    .line 1006
    move-result v0

    .line 1007
    int-to-float v4, v0

    .line 1008
    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    .line 1009
    .line 1010
    move-object/from16 v0, p1

    .line 1011
    .line 1012
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1013
    .line 1014
    .line 1015
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v0

    .line 1019
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1020
    .line 1021
    const/high16 v1, 0x437f0000    # 255.0f

    .line 1022
    .line 1023
    mul-float/2addr v0, v1

    .line 1024
    float-to-int v10, v0

    .line 1025
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 1026
    .line 1027
    rsub-int v7, v10, 0xff

    .line 1028
    .line 1029
    invoke-virtual {v0, v14, v10, v14, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1030
    .line 1031
    .line 1032
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1037
    .line 1038
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v1

    .line 1042
    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1043
    .line 1044
    iget-object v2, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 1045
    .line 1046
    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 1047
    .line 1048
    .line 1049
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 1050
    .line 1051
    invoke-virtual {v0, v14, v10, v7, v15}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1052
    .line 1053
    .line 1054
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1059
    .line 1060
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v0

    .line 1064
    iget v3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1065
    .line 1066
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v0

    .line 1070
    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 1071
    .line 1072
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v0

    .line 1076
    iget v5, v0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 1077
    .line 1078
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v0

    .line 1082
    iget v6, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 1083
    .line 1084
    iget-object v1, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 1085
    .line 1086
    move-object/from16 v0, p0

    .line 1087
    .line 1088
    move-object/from16 v17, v1

    .line 1089
    .line 1090
    move-object/from16 v1, p1

    .line 1091
    .line 1092
    move/from16 v18, v12

    .line 1093
    .line 1094
    move v12, v7

    .line 1095
    move-object/from16 v7, v17

    .line 1096
    .line 1097
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 1098
    .line 1099
    .line 1100
    iget-object v0, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 1101
    .line 1102
    invoke-virtual {v0, v14, v10, v15, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1103
    .line 1104
    .line 1105
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v0

    .line 1109
    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1110
    .line 1111
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v0

    .line 1115
    iget v3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1116
    .line 1117
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v0

    .line 1121
    iget v4, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 1122
    .line 1123
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    iget v5, v0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 1128
    .line 1129
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v0

    .line 1133
    iget v6, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 1134
    .line 1135
    iget-object v7, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 1136
    .line 1137
    move-object/from16 v0, p0

    .line 1138
    .line 1139
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/PointerLocationView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 1140
    .line 1141
    .line 1142
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v0

    .line 1146
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 1147
    .line 1148
    const v1, 0x3f333333    # 0.7f

    .line 1149
    .line 1150
    .line 1151
    mul-float/2addr v0, v1

    .line 1152
    const/high16 v1, 0x41a00000    # 20.0f

    .line 1153
    .line 1154
    cmpg-float v2, v0, v1

    .line 1155
    .line 1156
    if-gez v2, :cond_d

    .line 1157
    .line 1158
    move v0, v1

    .line 1159
    :cond_d
    iget-object v1, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 1160
    .line 1161
    const/4 v6, 0x0

    .line 1162
    invoke-virtual {v1, v14, v10, v14, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1163
    .line 1164
    .line 1165
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v1

    .line 1169
    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 1170
    .line 1171
    float-to-double v1, v1

    .line 1172
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 1173
    .line 1174
    .line 1175
    move-result-wide v1

    .line 1176
    float-to-double v3, v0

    .line 1177
    mul-double/2addr v1, v3

    .line 1178
    double-to-float v7, v1

    .line 1179
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v0

    .line 1183
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 1184
    .line 1185
    float-to-double v0, v0

    .line 1186
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 1187
    .line 1188
    .line 1189
    move-result-wide v0

    .line 1190
    neg-double v0, v0

    .line 1191
    mul-double/2addr v0, v3

    .line 1192
    double-to-float v10, v0

    .line 1193
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1200(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    .line 1194
    .line 1195
    .line 1196
    move-result v0

    .line 1197
    const/4 v12, 0x2

    .line 1198
    if-eq v0, v12, :cond_f

    .line 1199
    .line 1200
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1200(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    .line 1201
    .line 1202
    .line 1203
    move-result v0

    .line 1204
    const/4 v1, 0x4

    .line 1205
    if-ne v0, v1, :cond_e

    .line 1206
    .line 1207
    goto :goto_a

    .line 1208
    :cond_e
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v0

    .line 1212
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1213
    .line 1214
    sub-float v1, v0, v7

    .line 1215
    .line 1216
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v0

    .line 1220
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1221
    .line 1222
    sub-float v2, v0, v10

    .line 1223
    .line 1224
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v0

    .line 1228
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1229
    .line 1230
    add-float v3, v0, v7

    .line 1231
    .line 1232
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1233
    .line 1234
    .line 1235
    move-result-object v0

    .line 1236
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1237
    .line 1238
    add-float v4, v0, v10

    .line 1239
    .line 1240
    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 1241
    .line 1242
    move-object/from16 v0, p1

    .line 1243
    .line 1244
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1245
    .line 1246
    .line 1247
    goto :goto_b

    .line 1248
    :cond_f
    :goto_a
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v0

    .line 1252
    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1253
    .line 1254
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v0

    .line 1258
    iget v2, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1259
    .line 1260
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v0

    .line 1264
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1265
    .line 1266
    add-float v3, v0, v7

    .line 1267
    .line 1268
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v0

    .line 1272
    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1273
    .line 1274
    add-float v4, v0, v10

    .line 1275
    .line 1276
    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 1277
    .line 1278
    move-object/from16 v0, p1

    .line 1279
    .line 1280
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1281
    .line 1282
    .line 1283
    :goto_b
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v0

    .line 1287
    const/16 v1, 0x19

    .line 1288
    .line 1289
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    .line 1290
    .line 1291
    .line 1292
    move-result v0

    .line 1293
    float-to-double v0, v0

    .line 1294
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 1295
    .line 1296
    .line 1297
    move-result-wide v0

    .line 1298
    double-to-float v0, v0

    .line 1299
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v1

    .line 1303
    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1304
    .line 1305
    mul-float/2addr v7, v0

    .line 1306
    add-float/2addr v7, v1

    .line 1307
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v1

    .line 1311
    iget v1, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1312
    .line 1313
    mul-float/2addr v10, v0

    .line 1314
    add-float/2addr v10, v1

    .line 1315
    const/high16 v0, 0x40400000    # 3.0f

    .line 1316
    .line 1317
    iget-object v1, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 1318
    .line 1319
    invoke-virtual {v9, v7, v10, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1320
    .line 1321
    .line 1322
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1300(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    .line 1323
    .line 1324
    .line 1325
    move-result v0

    .line 1326
    if-eqz v0, :cond_11

    .line 1327
    .line 1328
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1400(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    .line 1329
    .line 1330
    .line 1331
    move-result v1

    .line 1332
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    .line 1333
    .line 1334
    .line 1335
    move-result v2

    .line 1336
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    .line 1337
    .line 1338
    .line 1339
    move-result v3

    .line 1340
    invoke-static {v13}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1700(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    .line 1341
    .line 1342
    .line 1343
    move-result v4

    .line 1344
    iget-object v5, v8, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 1345
    .line 1346
    move-object/from16 v0, p1

    .line 1347
    .line 1348
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1349
    .line 1350
    .line 1351
    goto :goto_c

    .line 1352
    :cond_10
    move/from16 v18, v12

    .line 1353
    .line 1354
    const/4 v6, 0x0

    .line 1355
    const/4 v12, 0x2

    .line 1356
    :cond_11
    :goto_c
    add-int/lit8 v11, v11, 0x1

    .line 1357
    .line 1358
    move/from16 v12, v18

    .line 1359
    .line 1360
    const/4 v10, 0x1

    .line 1361
    goto/16 :goto_3

    .line 1362
    .line 1363
    :cond_12
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x2

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    and-int/lit8 v1, v0, 0x10

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const-string v0, "Joystick"

    .line 18
    .line 19
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    and-int/lit8 v0, v0, 0x8

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const-string v0, "Position"

    .line 28
    .line 29
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const-string v0, "Generic"

    .line 34
    .line 35
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    const/4 p1, 0x1

    .line 39
    return p1
.end method

.method public onInputDeviceAdded(I)V
    .locals 1

    .line 1
    const-string v0, "Device Added"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1

    .line 1
    const-string v0, "Device Changed"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    .line 1
    const-string v0, "Device Removed"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PointerLocationView;->logInputDeviceState(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const-string v0, "Pointer"

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "Key Down: "

    .line 18
    .line 19
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v2, "Key Repeat #"

    .line 36
    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, ": "

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :goto_0
    const/4 p1, 0x1

    .line 59
    return p1

    .line 60
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/internal/widget/PointerLocationView;->shouldLogKey(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v0, "Key Up: "

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "Pointer"

    .line 22
    .line 23
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 5
    .line 6
    iget-object p2, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 12
    .line 13
    iget p2, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 14
    .line 15
    neg-int p2, p2

    .line 16
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 17
    .line 18
    add-int/2addr p2, p1

    .line 19
    add-int/lit8 p2, p2, 0x2

    .line 20
    .line 21
    iput p2, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    .line 22
    .line 23
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 3
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x20

    const v2, 0xff00

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_1

    and-int/lit16 v3, v9, 0xff

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v12, v0

    goto/16 :goto_5

    :cond_1
    :goto_1
    and-int/2addr v2, v9

    shr-int/lit8 v2, v2, 0x8

    if-nez v9, :cond_3

    move v3, v10

    :goto_2
    if-ge v3, v0, :cond_2

    .line 4
    iget-object v4, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 5
    invoke-virtual {v4}, Lcom/android/internal/widget/PointerLocationView$PointerState;->clearTrace()V

    .line 6
    invoke-static {v4, v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 7
    :cond_2
    iput-boolean v11, v7, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 8
    iput v10, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 9
    iput v10, v7, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 10
    iget-object v3, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 11
    iget-object v3, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 13
    :cond_3
    iget v3, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    add-int/2addr v3, v11

    iput v3, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 14
    iget v4, v7, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    if-ge v4, v3, :cond_4

    .line 15
    iput v3, v7, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 16
    :cond_4
    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    :goto_3
    if-gt v0, v2, :cond_5

    .line 17
    new-instance v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v3}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 18
    iget-object v4, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 19
    :cond_5
    iget v3, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ltz v3, :cond_6

    iget-object v4, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-static {v3}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 21
    :cond_6
    iput v2, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    .line 22
    :cond_7
    iget-object v3, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 23
    invoke-static {v2, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 25
    invoke-virtual {v3, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    if-eqz v1, :cond_8

    move v1, v11

    goto :goto_4

    :cond_8
    move v1, v10

    .line 26
    :goto_4
    invoke-static {v2, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1302(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    goto/16 :goto_0

    .line 27
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    .line 28
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 29
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 30
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {v0, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 32
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 33
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v14

    move v15, v10

    :goto_6
    const/16 v16, 0x0

    if-ge v15, v14, :cond_f

    move v6, v10

    :goto_7
    if-ge v6, v13, :cond_e

    .line 34
    invoke-virtual {v8, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 35
    iget-boolean v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v0, :cond_a

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    move-object v4, v0

    goto :goto_8

    :cond_a
    move-object/from16 v4, v16

    :goto_8
    if-eqz v4, :cond_b

    .line 36
    invoke-static {v4}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    goto :goto_9

    :cond_b
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    :goto_9
    move-object v3, v0

    .line 37
    invoke-virtual {v8, v6, v15, v3}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 38
    iget-boolean v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v0, :cond_c

    const-string v1, "Pointer"

    move-object/from16 v0, p0

    move v2, v9

    move-object/from16 v17, v3

    move v3, v6

    move-object v11, v4

    move-object/from16 v4, v17

    move/from16 v18, v6

    move-object/from16 v6, p1

    .line 39
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    goto :goto_a

    :cond_c
    move-object/from16 v17, v3

    move-object v11, v4

    move/from16 v18, v6

    :goto_a
    if-eqz v11, :cond_d

    move-object/from16 v0, v17

    .line 40
    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v11, v1, v0, v10}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    :cond_d
    add-int/lit8 v6, v18, 0x1

    const/4 v11, 0x1

    goto :goto_7

    :cond_e
    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x1

    goto :goto_6

    :cond_f
    :goto_b
    if-ge v10, v13, :cond_15

    .line 41
    invoke-virtual {v8, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    .line 42
    iget-boolean v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v0, :cond_10

    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    move-object v14, v0

    goto :goto_c

    :cond_10
    move-object/from16 v14, v16

    :goto_c
    if-eqz v14, :cond_11

    .line 43
    invoke-static {v14}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v0

    goto :goto_d

    :cond_11
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    :goto_d
    move-object v15, v0

    .line 44
    invoke-virtual {v8, v10, v15}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 45
    iget-boolean v0, v7, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v0, :cond_12

    const-string v1, "Pointer"

    move-object/from16 v0, p0

    move v2, v9

    move v3, v10

    move-object v4, v15

    move v5, v11

    move-object/from16 v6, p1

    .line 46
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/PointerLocationView;->logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    :cond_12
    if-eqz v14, :cond_14

    .line 47
    iget v0, v15, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v1, v15, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v2, 0x1

    invoke-virtual {v14, v0, v1, v2}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    .line 48
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    invoke-static {v14, v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 49
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    invoke-static {v14, v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 50
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-static {v14}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    .line 51
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_13

    .line 52
    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    invoke-static {v14, v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1002(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 53
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    invoke-static {v14, v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1102(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 54
    iget-object v0, v7, Lcom/android/internal/widget/PointerLocationView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-static {v14}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    .line 55
    :cond_13
    invoke-virtual {v8, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    invoke-static {v14, v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1202(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I

    .line 56
    invoke-static {v14}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1300(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v0, 0x20

    .line 57
    invoke-virtual {v8, v0, v10}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    invoke-static {v14, v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1402(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    const/16 v0, 0x21

    .line 58
    invoke-virtual {v8, v0, v10}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    invoke-static {v14, v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    const/16 v0, 0x22

    .line 59
    invoke-virtual {v8, v0, v10}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    invoke-static {v14, v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    const/16 v0, 0x23

    .line 60
    invoke-virtual {v8, v0, v10}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v0

    invoke-static {v14, v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1702(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    :cond_14
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_b

    :cond_15
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq v9, v1, :cond_16

    if-eq v9, v0, :cond_16

    and-int/lit16 v1, v9, 0xff

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1c

    :cond_16
    const v1, 0xff00

    and-int/2addr v1, v9

    shr-int/lit8 v1, v1, 0x8

    .line 61
    invoke-virtual {v8, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-lt v2, v12, :cond_17

    const-string v0, "Got pointer ID out of bounds: id="

    const-string v3, " arraysize="

    const-string v4, " pointerindex="

    .line 62
    invoke-static {v0, v2, v3, v12, v4}, Landroid/accessibilityservice/c;->t(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " action=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pointer"

    .line 65
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 66
    :cond_17
    iget-object v3, v7, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/PointerLocationView$PointerState;

    const/4 v4, 0x0

    .line 67
    invoke-static {v3, v4}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    const/4 v4, 0x1

    if-eq v9, v4, :cond_1b

    if-ne v9, v0, :cond_18

    goto :goto_f

    .line 68
    :cond_18
    iget v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    sub-int/2addr v0, v4

    iput v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 69
    iget v0, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    if-ne v0, v2, :cond_1a

    if-nez v1, :cond_19

    move v11, v4

    goto :goto_e

    :cond_19
    const/4 v11, 0x0

    .line 70
    :goto_e
    invoke-virtual {v8, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v7, Lcom/android/internal/widget/PointerLocationView;->mActivePointerId:I

    :cond_1a
    const/high16 v0, 0x7fc00000    # Float.NaN

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v3, v0, v0, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    goto :goto_10

    :cond_1b
    :goto_f
    const/4 v0, 0x0

    .line 72
    iput-boolean v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 73
    iput v0, v7, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 74
    :cond_1c
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final synthetic onPointerEvent(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/view/l;->a(Landroid/view/WindowManagerPolicy$PointerEventListener;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->onPointerEvent(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 17
    .line 18
    .line 19
    :cond_0
    const/4 p1, 0x1

    .line 20
    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "Trackball"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/PointerLocationView;->logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method

.method public setPrintCoords(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    return-void
.end method
