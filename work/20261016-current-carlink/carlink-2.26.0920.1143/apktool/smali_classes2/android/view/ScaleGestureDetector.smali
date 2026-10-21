.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final ANCHORED_SCALE_MODE_DOUBLE_TAP:I = 0x1

.field private static final ANCHORED_SCALE_MODE_NONE:I = 0x0

.field private static final ANCHORED_SCALE_MODE_STYLUS:I = 0x2

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private mSpanSlop:I

.field private mStylusScaleEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 4
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v1, p0, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 5
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 7
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1050039

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    .line 10
    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p2, 0x12

    const/4 p3, 0x1

    if-le p1, p2, :cond_1

    .line 12
    invoke-virtual {p0, p3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_1
    const/16 p2, 0x16

    if-le p1, p2, :cond_2

    .line 13
    invoke-virtual {p0, p3}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    :cond_2
    return-void
.end method

.method public static synthetic access$002(Landroid/view/ScaleGestureDetector;F)F
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    return p1
.end method

.method public static synthetic access$102(Landroid/view/ScaleGestureDetector;F)F
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    return p1
.end method

.method public static synthetic access$202(Landroid/view/ScaleGestureDetector;I)I
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    return p1
.end method

.method private inAnchoredScaleMode()Z
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    .line 15
    .line 16
    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 17
    .line 18
    cmpg-float v3, v3, v4

    .line 19
    .line 20
    if-ltz v3, :cond_1

    .line 21
    .line 22
    :cond_0
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    .line 25
    .line 26
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 27
    .line 28
    cmpl-float v0, v0, v3

    .line 29
    .line 30
    if-lez v0, :cond_2

    .line 31
    .line 32
    :cond_1
    const/4 v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    .line 36
    .line 37
    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 38
    .line 39
    div-float/2addr v3, v4

    .line 40
    sub-float v3, v2, v3

    .line 41
    .line 42
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    const/high16 v4, 0x3f000000    # 0.5f

    .line 47
    .line 48
    mul-float/2addr v3, v4

    .line 49
    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 50
    .line 51
    cmpg-float v1, v4, v1

    .line 52
    .line 53
    if-gtz v1, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    if-eqz v0, :cond_4

    .line 57
    .line 58
    add-float/2addr v2, v3

    .line 59
    goto :goto_1

    .line 60
    :cond_4
    sub-float/2addr v2, v3

    .line 61
    :goto_1
    return v2

    .line 62
    :cond_5
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 63
    .line 64
    cmpl-float v1, v0, v1

    .line 65
    .line 66
    if-lez v1, :cond_6

    .line 67
    .line 68
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    .line 69
    .line 70
    div-float v2, v1, v0

    .line 71
    .line 72
    :cond_6
    return v2
.end method

.method public getTimeDelta()J
    .locals 4

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public isStylusScaleEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    iput-wide v4, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-boolean v4, v0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    .line 24
    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    iget-object v4, v0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 28
    .line 29
    invoke-virtual {v4, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    and-int/lit8 v5, v5, 0x20

    .line 41
    .line 42
    const/4 v6, 0x1

    .line 43
    if-eqz v5, :cond_2

    .line 44
    .line 45
    move v5, v6

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move v5, v3

    .line 48
    :goto_0
    iget v7, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 49
    .line 50
    const/4 v8, 0x2

    .line 51
    if-ne v7, v8, :cond_3

    .line 52
    .line 53
    if-nez v5, :cond_3

    .line 54
    .line 55
    move v7, v6

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    move v7, v3

    .line 58
    :goto_1
    if-eq v2, v6, :cond_5

    .line 59
    .line 60
    const/4 v9, 0x3

    .line 61
    if-eq v2, v9, :cond_5

    .line 62
    .line 63
    if-eqz v7, :cond_4

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    move v9, v3

    .line 67
    goto :goto_3

    .line 68
    :cond_5
    :goto_2
    move v9, v6

    .line 69
    :goto_3
    const/4 v10, 0x0

    .line 70
    if-eqz v2, :cond_6

    .line 71
    .line 72
    if-eqz v9, :cond_9

    .line 73
    .line 74
    :cond_6
    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 75
    .line 76
    if-eqz v11, :cond_7

    .line 77
    .line 78
    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 79
    .line 80
    invoke-interface {v11, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 81
    .line 82
    .line 83
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 84
    .line 85
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 86
    .line 87
    iput v3, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    if-eqz v11, :cond_8

    .line 95
    .line 96
    if-eqz v9, :cond_8

    .line 97
    .line 98
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 99
    .line 100
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 101
    .line 102
    iput v3, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 103
    .line 104
    :cond_8
    :goto_4
    if-eqz v9, :cond_9

    .line 105
    .line 106
    return v6

    .line 107
    :cond_9
    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 108
    .line 109
    if-nez v11, :cond_a

    .line 110
    .line 111
    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    .line 112
    .line 113
    if-eqz v11, :cond_a

    .line 114
    .line 115
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    if-nez v11, :cond_a

    .line 120
    .line 121
    if-nez v9, :cond_a

    .line 122
    .line 123
    if-eqz v5, :cond_a

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    iput v5, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 130
    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    iput v5, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 136
    .line 137
    iput v8, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 138
    .line 139
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 140
    .line 141
    :cond_a
    const/4 v5, 0x6

    .line 142
    if-eqz v2, :cond_c

    .line 143
    .line 144
    if-eq v2, v5, :cond_c

    .line 145
    .line 146
    const/4 v9, 0x5

    .line 147
    if-eq v2, v9, :cond_c

    .line 148
    .line 149
    if-eqz v7, :cond_b

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_b
    move v7, v3

    .line 153
    goto :goto_6

    .line 154
    :cond_c
    :goto_5
    move v7, v6

    .line 155
    :goto_6
    if-ne v2, v5, :cond_d

    .line 156
    .line 157
    move v5, v6

    .line 158
    goto :goto_7

    .line 159
    :cond_d
    move v5, v3

    .line 160
    :goto_7
    if-eqz v5, :cond_e

    .line 161
    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    goto :goto_8

    .line 167
    :cond_e
    const/4 v9, -0x1

    .line 168
    :goto_8
    if-eqz v5, :cond_f

    .line 169
    .line 170
    add-int/lit8 v5, v4, -0x1

    .line 171
    .line 172
    goto :goto_9

    .line 173
    :cond_f
    move v5, v4

    .line 174
    :goto_9
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    .line 175
    .line 176
    .line 177
    move-result v11

    .line 178
    if-eqz v11, :cond_11

    .line 179
    .line 180
    iget v11, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 181
    .line 182
    iget v12, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 183
    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    cmpg-float v13, v13, v12

    .line 189
    .line 190
    if-gez v13, :cond_10

    .line 191
    .line 192
    iput-boolean v6, v0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    .line 193
    .line 194
    goto :goto_c

    .line 195
    :cond_10
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    .line 196
    .line 197
    goto :goto_c

    .line 198
    :cond_11
    move v11, v3

    .line 199
    move v12, v10

    .line 200
    move v13, v12

    .line 201
    :goto_a
    if-ge v11, v4, :cond_13

    .line 202
    .line 203
    if-ne v9, v11, :cond_12

    .line 204
    .line 205
    goto :goto_b

    .line 206
    :cond_12
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    .line 207
    .line 208
    .line 209
    move-result v14

    .line 210
    add-float/2addr v12, v14

    .line 211
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    .line 212
    .line 213
    .line 214
    move-result v14

    .line 215
    add-float/2addr v13, v14

    .line 216
    :goto_b
    add-int/lit8 v11, v11, 0x1

    .line 217
    .line 218
    goto :goto_a

    .line 219
    :cond_13
    int-to-float v11, v5

    .line 220
    div-float/2addr v12, v11

    .line 221
    div-float v11, v13, v11

    .line 222
    .line 223
    move/from16 v16, v12

    .line 224
    .line 225
    move v12, v11

    .line 226
    move/from16 v11, v16

    .line 227
    .line 228
    :goto_c
    move v14, v3

    .line 229
    move v13, v10

    .line 230
    :goto_d
    if-ge v14, v4, :cond_15

    .line 231
    .line 232
    if-ne v9, v14, :cond_14

    .line 233
    .line 234
    goto :goto_e

    .line 235
    :cond_14
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getX(I)F

    .line 236
    .line 237
    .line 238
    move-result v15

    .line 239
    sub-float/2addr v15, v11

    .line 240
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 241
    .line 242
    .line 243
    move-result v15

    .line 244
    add-float/2addr v15, v10

    .line 245
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getY(I)F

    .line 246
    .line 247
    .line 248
    move-result v10

    .line 249
    sub-float/2addr v10, v12

    .line 250
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 251
    .line 252
    .line 253
    move-result v10

    .line 254
    add-float/2addr v10, v13

    .line 255
    move v13, v10

    .line 256
    move v10, v15

    .line 257
    :goto_e
    add-int/lit8 v14, v14, 0x1

    .line 258
    .line 259
    goto :goto_d

    .line 260
    :cond_15
    int-to-float v1, v5

    .line 261
    div-float/2addr v10, v1

    .line 262
    div-float/2addr v13, v1

    .line 263
    const/high16 v1, 0x40000000    # 2.0f

    .line 264
    .line 265
    mul-float/2addr v10, v1

    .line 266
    mul-float/2addr v13, v1

    .line 267
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_16

    .line 272
    .line 273
    move v1, v13

    .line 274
    goto :goto_f

    .line 275
    :cond_16
    float-to-double v4, v10

    .line 276
    float-to-double v14, v13

    .line 277
    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    .line 278
    .line 279
    .line 280
    move-result-wide v4

    .line 281
    double-to-float v1, v4

    .line 282
    :goto_f
    iget-boolean v4, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 283
    .line 284
    iput v11, v0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 285
    .line 286
    iput v12, v0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 287
    .line 288
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-nez v5, :cond_18

    .line 293
    .line 294
    iget-boolean v5, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 295
    .line 296
    if-eqz v5, :cond_18

    .line 297
    .line 298
    iget v5, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    .line 299
    .line 300
    int-to-float v5, v5

    .line 301
    cmpg-float v5, v1, v5

    .line 302
    .line 303
    if-ltz v5, :cond_17

    .line 304
    .line 305
    if-eqz v7, :cond_18

    .line 306
    .line 307
    :cond_17
    iget-object v5, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 308
    .line 309
    invoke-interface {v5, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 310
    .line 311
    .line 312
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 313
    .line 314
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 315
    .line 316
    :cond_18
    if-eqz v7, :cond_19

    .line 317
    .line 318
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    .line 319
    .line 320
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 321
    .line 322
    iput v13, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    .line 323
    .line 324
    iput v13, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 325
    .line 326
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    .line 327
    .line 328
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 329
    .line 330
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 331
    .line 332
    :cond_19
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    if-eqz v3, :cond_1a

    .line 337
    .line 338
    iget v3, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    .line 339
    .line 340
    goto :goto_10

    .line 341
    :cond_1a
    iget v3, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    .line 342
    .line 343
    :goto_10
    iget-boolean v5, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 344
    .line 345
    if-nez v5, :cond_1c

    .line 346
    .line 347
    int-to-float v3, v3

    .line 348
    cmpl-float v3, v1, v3

    .line 349
    .line 350
    if-ltz v3, :cond_1c

    .line 351
    .line 352
    if-nez v4, :cond_1b

    .line 353
    .line 354
    iget v3, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 355
    .line 356
    sub-float v3, v1, v3

    .line 357
    .line 358
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    iget v4, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    .line 363
    .line 364
    int-to-float v4, v4

    .line 365
    cmpl-float v3, v3, v4

    .line 366
    .line 367
    if-lez v3, :cond_1c

    .line 368
    .line 369
    :cond_1b
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    .line 370
    .line 371
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 372
    .line 373
    iput v13, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    .line 374
    .line 375
    iput v13, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 376
    .line 377
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    .line 378
    .line 379
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 380
    .line 381
    iget-wide v3, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    .line 382
    .line 383
    iput-wide v3, v0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    .line 384
    .line 385
    iget-object v3, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 386
    .line 387
    invoke-interface {v3, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 392
    .line 393
    :cond_1c
    if-ne v2, v8, :cond_1e

    .line 394
    .line 395
    iput v10, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    .line 396
    .line 397
    iput v13, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    .line 398
    .line 399
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    .line 400
    .line 401
    iget-boolean v1, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 402
    .line 403
    if-eqz v1, :cond_1d

    .line 404
    .line 405
    iget-object v1, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 406
    .line 407
    invoke-interface {v1, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    goto :goto_11

    .line 412
    :cond_1d
    move v1, v6

    .line 413
    :goto_11
    if-eqz v1, :cond_1e

    .line 414
    .line 415
    iget v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    .line 416
    .line 417
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 418
    .line 419
    iget v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    .line 420
    .line 421
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 422
    .line 423
    iget v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    .line 424
    .line 425
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 426
    .line 427
    iget-wide v1, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    .line 428
    .line 429
    iput-wide v1, v0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    .line 430
    .line 431
    :cond_1e
    return v6
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Landroid/view/ScaleGestureDetector$1;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroid/view/GestureDetector;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-direct {v0, v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return-void
.end method
