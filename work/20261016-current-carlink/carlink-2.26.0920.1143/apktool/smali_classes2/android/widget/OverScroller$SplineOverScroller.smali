.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    div-double/2addr v0, v2

    .line 20
    double-to-float v0, v0

    .line 21
    sput v0, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 22
    .line 23
    const/16 v0, 0x65

    .line 24
    .line 25
    new-array v1, v0, [F

    .line 26
    .line 27
    sput-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 28
    .line 29
    new-array v0, v0, [F

    .line 30
    .line 31
    sput-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    const/4 v1, 0x0

    .line 35
    move v2, v1

    .line 36
    move v1, v0

    .line 37
    :goto_0
    const/16 v3, 0x64

    .line 38
    .line 39
    const/high16 v4, 0x3f800000    # 1.0f

    .line 40
    .line 41
    if-ge v2, v3, :cond_4

    .line 42
    .line 43
    int-to-float v3, v2

    .line 44
    const/high16 v5, 0x42c80000    # 100.0f

    .line 45
    .line 46
    div-float v5, v3, v5

    .line 47
    .line 48
    move v3, v4

    .line 49
    :goto_1
    sub-float v6, v3, v0

    .line 50
    .line 51
    const/high16 v7, 0x40000000    # 2.0f

    .line 52
    .line 53
    div-float/2addr v6, v7

    .line 54
    add-float/2addr v6, v0

    .line 55
    const/high16 v8, 0x40400000    # 3.0f

    .line 56
    .line 57
    mul-float v9, v6, v8

    .line 58
    .line 59
    sub-float v10, v4, v6

    .line 60
    .line 61
    mul-float/2addr v9, v10

    .line 62
    const v11, 0x3e333333    # 0.175f

    .line 63
    .line 64
    .line 65
    mul-float v12, v10, v11

    .line 66
    .line 67
    const v13, 0x3eb33334    # 0.35000002f

    .line 68
    .line 69
    .line 70
    mul-float v14, v6, v13

    .line 71
    .line 72
    add-float/2addr v14, v12

    .line 73
    mul-float/2addr v14, v9

    .line 74
    mul-float v12, v6, v6

    .line 75
    .line 76
    mul-float/2addr v12, v6

    .line 77
    add-float/2addr v14, v12

    .line 78
    sub-float v15, v14, v5

    .line 79
    .line 80
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 81
    .line 82
    .line 83
    move-result v15

    .line 84
    move/from16 v16, v14

    .line 85
    .line 86
    float-to-double v13, v15

    .line 87
    const-wide v17, 0x3ee4f8b588e368f1L    # 1.0E-5

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    cmpg-double v13, v13, v17

    .line 93
    .line 94
    if-gez v13, :cond_2

    .line 95
    .line 96
    sget-object v3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 97
    .line 98
    const/high16 v13, 0x3f000000    # 0.5f

    .line 99
    .line 100
    mul-float/2addr v10, v13

    .line 101
    add-float/2addr v10, v6

    .line 102
    mul-float/2addr v10, v9

    .line 103
    add-float/2addr v10, v12

    .line 104
    aput v10, v3, v2

    .line 105
    .line 106
    move v3, v4

    .line 107
    :goto_2
    sub-float v6, v3, v1

    .line 108
    .line 109
    div-float/2addr v6, v7

    .line 110
    add-float/2addr v6, v1

    .line 111
    mul-float v9, v6, v8

    .line 112
    .line 113
    sub-float v10, v4, v6

    .line 114
    .line 115
    mul-float/2addr v9, v10

    .line 116
    mul-float v12, v10, v13

    .line 117
    .line 118
    add-float/2addr v12, v6

    .line 119
    mul-float/2addr v12, v9

    .line 120
    mul-float v14, v6, v6

    .line 121
    .line 122
    mul-float/2addr v14, v6

    .line 123
    add-float/2addr v12, v14

    .line 124
    sub-float v15, v12, v5

    .line 125
    .line 126
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    float-to-double v7, v15

    .line 131
    cmpg-double v7, v7, v17

    .line 132
    .line 133
    if-gez v7, :cond_0

    .line 134
    .line 135
    sget-object v3, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 136
    .line 137
    mul-float/2addr v10, v11

    .line 138
    const v7, 0x3eb33334    # 0.35000002f

    .line 139
    .line 140
    .line 141
    mul-float/2addr v6, v7

    .line 142
    add-float/2addr v6, v10

    .line 143
    mul-float/2addr v6, v9

    .line 144
    add-float/2addr v6, v14

    .line 145
    aput v6, v3, v2

    .line 146
    .line 147
    add-int/lit8 v2, v2, 0x1

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_0
    const v7, 0x3eb33334    # 0.35000002f

    .line 151
    .line 152
    .line 153
    cmpl-float v8, v12, v5

    .line 154
    .line 155
    if-lez v8, :cond_1

    .line 156
    .line 157
    move v3, v6

    .line 158
    goto :goto_3

    .line 159
    :cond_1
    move v1, v6

    .line 160
    :goto_3
    const/high16 v7, 0x40000000    # 2.0f

    .line 161
    .line 162
    const/high16 v8, 0x40400000    # 3.0f

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_2
    cmpl-float v7, v16, v5

    .line 166
    .line 167
    if-lez v7, :cond_3

    .line 168
    .line 169
    move v3, v6

    .line 170
    goto :goto_1

    .line 171
    :cond_3
    move v0, v6

    .line 172
    goto :goto_1

    .line 173
    :cond_4
    sget-object v0, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 174
    .line 175
    sget-object v1, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 176
    .line 177
    aput v4, v1, v3

    .line 178
    .line 179
    aput v4, v0, v3

    .line 180
    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 25
    .line 26
    const/high16 v0, 0x43200000    # 160.0f

    .line 27
    .line 28
    mul-float/2addr p1, v0

    .line 29
    const v0, 0x43c10b3d

    .line 30
    .line 31
    .line 32
    mul-float/2addr p1, v0

    .line 33
    const v0, 0x3f570a3d    # 0.84f

    .line 34
    .line 35
    .line 36
    mul-float/2addr p1, v0

    .line 37
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p0
.end method

.method public static synthetic access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method public static synthetic access$100(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return p0
.end method

.method public static synthetic access$200(Landroid/widget/OverScroller$SplineOverScroller;)F
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return p0
.end method

.method public static synthetic access$300(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return p0
.end method

.method public static synthetic access$400(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return p0
.end method

.method public static synthetic access$500(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return p0
.end method

.method public static synthetic access$600(Landroid/widget/OverScroller$SplineOverScroller;)J
    .locals 2

    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method public static synthetic access$700(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return p0
.end method

.method private adjustDuration(III)V
    .locals 3

    .line 1
    sub-int/2addr p2, p1

    .line 2
    sub-int/2addr p3, p1

    .line 3
    int-to-float p1, p3

    .line 4
    int-to-float p2, p2

    .line 5
    div-float/2addr p1, p2

    .line 6
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/high16 p2, 0x42c80000    # 100.0f

    .line 11
    .line 12
    mul-float p3, p1, p2

    .line 13
    .line 14
    float-to-int p3, p3

    .line 15
    const/16 v0, 0x64

    .line 16
    .line 17
    if-ge p3, v0, :cond_0

    .line 18
    .line 19
    int-to-float v0, p3

    .line 20
    div-float/2addr v0, p2

    .line 21
    add-int/lit8 v1, p3, 0x1

    .line 22
    .line 23
    int-to-float v2, v1

    .line 24
    div-float/2addr v2, p2

    .line 25
    sget-object p2, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 26
    .line 27
    aget p3, p2, p3

    .line 28
    .line 29
    aget p2, p2, v1

    .line 30
    .line 31
    sub-float/2addr p1, v0

    .line 32
    sub-float/2addr v2, v0

    .line 33
    div-float/2addr p1, v2

    .line 34
    invoke-static {p2, p3, p1, p3}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iget p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 39
    .line 40
    int-to-float p2, p2

    .line 41
    mul-float/2addr p2, p1

    .line 42
    float-to-int p1, p2

    .line 43
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 5

    .line 1
    neg-int v0, p3

    .line 2
    int-to-float v0, v0

    .line 3
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 4
    .line 5
    div-float/2addr v0, v1

    .line 6
    int-to-float p3, p3

    .line 7
    mul-float/2addr p3, p3

    .line 8
    const/high16 v2, 0x40000000    # 2.0f

    .line 9
    .line 10
    div-float/2addr p3, v2

    .line 11
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    div-float/2addr p3, v1

    .line 16
    sub-int p1, p2, p1

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    int-to-float p1, p1

    .line 23
    add-float/2addr p3, p1

    .line 24
    float-to-double v1, p3

    .line 25
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 26
    .line 27
    mul-double/2addr v1, v3

    .line 28
    iget p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    float-to-double v3, p1

    .line 35
    div-double/2addr v1, v3

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    double-to-float p1, v1

    .line 41
    iget-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 42
    .line 43
    const/high16 p3, 0x447a0000    # 1000.0f

    .line 44
    .line 45
    sub-float v0, p1, v0

    .line 46
    .line 47
    mul-float/2addr v0, p3

    .line 48
    float-to-int p3, v0

    .line 49
    int-to-long v3, p3

    .line 50
    sub-long/2addr v1, v3

    .line 51
    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 52
    .line 53
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 54
    .line 55
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 56
    .line 57
    iget p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 58
    .line 59
    neg-float p2, p2

    .line 60
    mul-float/2addr p2, p1

    .line 61
    float-to-int p1, p2

    .line 62
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 63
    .line 64
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 0

    if-lez p0, :cond_0

    const/high16 p0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x44fa0000    # 2000.0f

    :goto_0
    return p0
.end method

.method private getSplineDeceleration(I)D
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p1, v0

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget p1, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 6
    .line 7
    float-to-double v2, p1

    .line 8
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    sub-double/2addr v2, v4

    .line 11
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 12
    .line 13
    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 14
    .line 15
    mul-float/2addr v4, v5

    .line 16
    float-to-double v4, v4

    .line 17
    float-to-double v6, p1

    .line 18
    div-double/2addr v6, v2

    .line 19
    mul-double/2addr v6, v0

    .line 20
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    mul-double/2addr v0, v4

    .line 25
    return-wide v0
.end method

.method private getSplineFlingDuration(I)I
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget p1, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 6
    .line 7
    float-to-double v2, p1

    .line 8
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 9
    .line 10
    sub-double/2addr v2, v4

    .line 11
    div-double/2addr v0, v2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    mul-double/2addr v0, v2

    .line 22
    double-to-int p1, v0

    .line 23
    return p1
.end method

.method private onEdgeReached()V
    .locals 6

    .line 1
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 2
    .line 3
    int-to-float v1, v0

    .line 4
    int-to-float v0, v0

    .line 5
    mul-float/2addr v1, v0

    .line 6
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/high16 v2, 0x40000000    # 2.0f

    .line 13
    .line 14
    mul-float/2addr v0, v2

    .line 15
    div-float v0, v1, v0

    .line 16
    .line 17
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 18
    .line 19
    int-to-float v3, v3

    .line 20
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 25
    .line 26
    int-to-float v5, v4

    .line 27
    cmpl-float v5, v0, v5

    .line 28
    .line 29
    if-lez v5, :cond_0

    .line 30
    .line 31
    neg-float v0, v3

    .line 32
    mul-float/2addr v0, v1

    .line 33
    int-to-float v1, v4

    .line 34
    mul-float/2addr v1, v2

    .line 35
    div-float/2addr v0, v1

    .line 36
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 37
    .line 38
    int-to-float v0, v4

    .line 39
    :cond_0
    float-to-int v1, v0

    .line 40
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 44
    .line 45
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 46
    .line 47
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 48
    .line 49
    if-lez v2, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    neg-float v0, v0

    .line 53
    :goto_0
    float-to-int v0, v0

    .line 54
    add-int/2addr v1, v0

    .line 55
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 56
    .line 57
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 58
    .line 59
    int-to-float v1, v2

    .line 60
    mul-float/2addr v1, v0

    .line 61
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 62
    .line 63
    div-float/2addr v1, v0

    .line 64
    float-to-int v0, v1

    .line 65
    neg-int v0, v0

    .line 66
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 67
    .line 68
    return-void
.end method

.method private startAfterEdge(IIII)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-le p1, p2, :cond_0

    .line 3
    .line 4
    if-ge p1, p3, :cond_0

    .line 5
    .line 6
    const-string p1, "OverScroller"

    .line 7
    .line 8
    const-string/jumbo p2, "startAfterEdge called from a valid position"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    if-le p1, p3, :cond_1

    .line 19
    .line 20
    move v2, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v2, v1

    .line 23
    :goto_0
    if-eqz v2, :cond_2

    .line 24
    .line 25
    move v3, p3

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move v3, p2

    .line 28
    :goto_1
    sub-int v4, p1, v3

    .line 29
    .line 30
    mul-int v5, v4, p4

    .line 31
    .line 32
    if-ltz v5, :cond_3

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_3
    move v0, v1

    .line 36
    :goto_2
    if-eqz v0, :cond_4

    .line 37
    .line 38
    invoke-direct {p0, p1, v3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    .line 39
    .line 40
    .line 41
    goto :goto_5

    .line 42
    :cond_4
    invoke-direct {p0, p4}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    int-to-double v4, v4

    .line 51
    cmpl-double v0, v0, v4

    .line 52
    .line 53
    if-lez v0, :cond_7

    .line 54
    .line 55
    if-eqz v2, :cond_5

    .line 56
    .line 57
    move v7, p2

    .line 58
    goto :goto_3

    .line 59
    :cond_5
    move v7, p1

    .line 60
    :goto_3
    if-eqz v2, :cond_6

    .line 61
    .line 62
    move v8, p1

    .line 63
    goto :goto_4

    .line 64
    :cond_6
    move v8, p3

    .line 65
    :goto_4
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 66
    .line 67
    move-object v4, p0

    .line 68
    move v5, p1

    .line 69
    move v6, p4

    .line 70
    invoke-virtual/range {v4 .. v9}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    .line 71
    .line 72
    .line 73
    goto :goto_5

    .line 74
    :cond_7
    invoke-direct {p0, p1, v3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 75
    .line 76
    .line 77
    :goto_5
    return-void
.end method

.method private startBounceAfterEdge(III)V
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    sub-int v0, p1, p2

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    move v0, p3

    .line 7
    :goto_0
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private startSpringback(III)V
    .locals 2

    .line 1
    const/4 p3, 0x0

    .line 2
    iput-boolean p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 3
    .line 4
    const/4 p3, 0x1

    .line 5
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 6
    .line 7
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 8
    .line 9
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 10
    .line 11
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 12
    .line 13
    sub-int/2addr p1, p2

    .line 14
    invoke-static {p1}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 19
    .line 20
    neg-int p2, p1

    .line 21
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 28
    .line 29
    const-wide/high16 p2, -0x4000000000000000L    # -2.0

    .line 30
    .line 31
    int-to-double v0, p1

    .line 32
    mul-double/2addr v0, p2

    .line 33
    iget p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 34
    .line 35
    float-to-double p1, p1

    .line 36
    div-double/2addr v0, p1

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 38
    .line 39
    .line 40
    move-result-wide p1

    .line 41
    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    mul-double/2addr p1, v0

    .line 47
    double-to-int p1, p1

    .line 48
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public continueWhenFinished()Z
    .locals 7

    .line 1
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-wide v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 14
    .line 15
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 16
    .line 17
    int-to-long v5, v0

    .line 18
    add-long/2addr v3, v5

    .line 19
    iput-wide v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 20
    .line 21
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 22
    .line 23
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 24
    .line 25
    invoke-direct {p0, v0, v3, v2}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v2

    .line 30
    :cond_2
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 31
    .line 32
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    .line 33
    .line 34
    if-ge v0, v3, :cond_3

    .line 35
    .line 36
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 37
    .line 38
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 39
    .line 40
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 41
    .line 42
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 43
    .line 44
    float-to-int v0, v0

    .line 45
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 46
    .line 47
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 52
    .line 53
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 54
    .line 55
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 56
    .line 57
    int-to-long v4, v0

    .line 58
    add-long/2addr v2, v4

    .line 59
    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 60
    .line 61
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    .line 65
    .line 66
    .line 67
    return v1

    .line 68
    :cond_3
    return v2
.end method

.method public extendDuration(I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    long-to-int v0, v0

    .line 9
    add-int/2addr v0, p1

    .line 10
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 14
    .line 15
    return-void
.end method

.method public finish()V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 2
    .line 3
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 7
    .line 8
    return-void
.end method

.method public fling(IIIII)V
    .locals 5

    .line 1
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 2
    .line 3
    const/4 p5, 0x0

    .line 4
    iput-boolean p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 5
    .line 6
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 7
    .line 8
    int-to-float v0, p2

    .line 9
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 10
    .line 11
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    .line 12
    .line 13
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 14
    .line 15
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 20
    .line 21
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 22
    .line 23
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 24
    .line 25
    if-gt p1, p4, :cond_4

    .line 26
    .line 27
    if-ge p1, p3, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    .line 35
    .line 36
    .line 37
    move-result p5

    .line 38
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    .line 39
    .line 40
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 41
    .line 42
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-wide/16 v1, 0x0

    .line 48
    .line 49
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    float-to-double v3, p2

    .line 54
    mul-double/2addr v1, v3

    .line 55
    double-to-int p2, v1

    .line 56
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 57
    .line 58
    add-int/2addr p1, p2

    .line 59
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 60
    .line 61
    if-ge p1, p3, :cond_2

    .line 62
    .line 63
    iget p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 64
    .line 65
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 66
    .line 67
    .line 68
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 69
    .line 70
    :cond_2
    iget p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 71
    .line 72
    if-le p1, p4, :cond_3

    .line 73
    .line 74
    iget p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 75
    .line 76
    invoke-direct {p0, p2, p1, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 77
    .line 78
    .line 79
    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 80
    .line 81
    :cond_3
    return-void

    .line 82
    :cond_4
    :goto_1
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public notifyEdgeReached(III)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 6
    .line 7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 12
    .line 13
    iget p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 14
    .line 15
    float-to-int p3, p3

    .line 16
    invoke-direct {p0, p1, p2, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setFinalPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 5
    .line 6
    return-void
.end method

.method public setFriction(F)V
    .locals 0

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    return-void
.end method

.method public springback(III)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 3
    .line 4
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 5
    .line 6
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 7
    .line 8
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 12
    .line 13
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 18
    .line 19
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 20
    .line 21
    if-ge p1, p2, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    if-le p1, p3, :cond_1

    .line 28
    .line 29
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    iget-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 33
    .line 34
    xor-int/2addr p1, v0

    .line 35
    return p1
.end method

.method public startScroll(III)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 3
    .line 4
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 5
    .line 6
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 7
    .line 8
    add-int/2addr p1, p2

    .line 9
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 10
    .line 11
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    iput-wide p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 16
    .line 17
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 21
    .line 22
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 23
    .line 24
    return-void
.end method

.method public update()Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 17
    .line 18
    if-lez v0, :cond_0

    .line 19
    .line 20
    move v3, v4

    .line 21
    :cond_0
    return v3

    .line 22
    :cond_1
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 23
    .line 24
    int-to-long v5, v2

    .line 25
    cmp-long v5, v0, v5

    .line 26
    .line 27
    if-lez v5, :cond_2

    .line 28
    .line 29
    return v3

    .line 30
    :cond_2
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 31
    .line 32
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 33
    .line 34
    if-eqz v3, :cond_5

    .line 35
    .line 36
    const/high16 v6, 0x40000000    # 2.0f

    .line 37
    .line 38
    if-eq v3, v4, :cond_4

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    if-eq v3, v2, :cond_3

    .line 42
    .line 43
    const-wide/16 v0, 0x0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    long-to-float v0, v0

    .line 47
    div-float/2addr v0, v5

    .line 48
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 49
    .line 50
    int-to-float v2, v1

    .line 51
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 52
    .line 53
    mul-float v5, v3, v0

    .line 54
    .line 55
    add-float/2addr v5, v2

    .line 56
    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 57
    .line 58
    int-to-float v1, v1

    .line 59
    mul-float/2addr v1, v0

    .line 60
    mul-float/2addr v3, v0

    .line 61
    mul-float/2addr v3, v0

    .line 62
    div-float/2addr v3, v6

    .line 63
    add-float/2addr v3, v1

    .line 64
    float-to-double v0, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    long-to-float v0, v0

    .line 67
    int-to-float v1, v2

    .line 68
    div-float/2addr v0, v1

    .line 69
    mul-float v1, v0, v0

    .line 70
    .line 71
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 72
    .line 73
    int-to-float v2, v2

    .line 74
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 79
    .line 80
    int-to-float v5, v3

    .line 81
    mul-float/2addr v5, v2

    .line 82
    const/high16 v7, 0x40400000    # 3.0f

    .line 83
    .line 84
    mul-float/2addr v7, v1

    .line 85
    mul-float/2addr v6, v0

    .line 86
    mul-float/2addr v6, v1

    .line 87
    sub-float/2addr v7, v6

    .line 88
    mul-float/2addr v7, v5

    .line 89
    float-to-double v5, v7

    .line 90
    int-to-float v3, v3

    .line 91
    mul-float/2addr v2, v3

    .line 92
    const/high16 v3, 0x40c00000    # 6.0f

    .line 93
    .line 94
    mul-float/2addr v2, v3

    .line 95
    neg-float v0, v0

    .line 96
    add-float/2addr v0, v1

    .line 97
    mul-float/2addr v0, v2

    .line 98
    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 99
    .line 100
    move-wide v0, v5

    .line 101
    goto :goto_1

    .line 102
    :cond_5
    long-to-float v0, v0

    .line 103
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    .line 104
    .line 105
    int-to-float v2, v1

    .line 106
    div-float/2addr v0, v2

    .line 107
    const/high16 v2, 0x42c80000    # 100.0f

    .line 108
    .line 109
    mul-float v3, v0, v2

    .line 110
    .line 111
    float-to-int v3, v3

    .line 112
    const/16 v6, 0x64

    .line 113
    .line 114
    if-ge v3, v6, :cond_6

    .line 115
    .line 116
    int-to-float v6, v3

    .line 117
    div-float/2addr v6, v2

    .line 118
    add-int/lit8 v7, v3, 0x1

    .line 119
    .line 120
    int-to-float v8, v7

    .line 121
    div-float/2addr v8, v2

    .line 122
    sget-object v2, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 123
    .line 124
    aget v3, v2, v3

    .line 125
    .line 126
    aget v2, v2, v7

    .line 127
    .line 128
    sub-float/2addr v2, v3

    .line 129
    sub-float/2addr v8, v6

    .line 130
    div-float/2addr v2, v8

    .line 131
    invoke-static {v0, v6, v2, v3}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    goto :goto_0

    .line 136
    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 137
    .line 138
    const/4 v2, 0x0

    .line 139
    :goto_0
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 140
    .line 141
    int-to-float v6, v3

    .line 142
    mul-float/2addr v0, v6

    .line 143
    float-to-double v6, v0

    .line 144
    int-to-float v0, v3

    .line 145
    mul-float/2addr v2, v0

    .line 146
    int-to-float v0, v1

    .line 147
    div-float/2addr v2, v0

    .line 148
    mul-float/2addr v2, v5

    .line 149
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 150
    .line 151
    move-wide v0, v6

    .line 152
    :goto_1
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 153
    .line 154
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 155
    .line 156
    .line 157
    move-result-wide v0

    .line 158
    long-to-int v0, v0

    .line 159
    add-int/2addr v2, v0

    .line 160
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 161
    .line 162
    return v4
.end method

.method public updateScroll(F)V
    .locals 2

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return-void
.end method
