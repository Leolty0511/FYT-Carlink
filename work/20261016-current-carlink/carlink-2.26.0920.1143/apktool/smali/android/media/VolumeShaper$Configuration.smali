.class public final Landroid/media/VolumeShaper$Configuration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Configuration$Builder;,
        Landroid/media/VolumeShaper$Configuration$OptionFlag;,
        Landroid/media/VolumeShaper$Configuration$InterpolatorType;,
        Landroid/media/VolumeShaper$Configuration$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/VolumeShaper$Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUBIC_RAMP:Landroid/media/VolumeShaper$Configuration;

.field public static final INTERPOLATOR_TYPE_CUBIC:I = 0x2

.field public static final INTERPOLATOR_TYPE_CUBIC_MONOTONIC:I = 0x3

.field public static final INTERPOLATOR_TYPE_LINEAR:I = 0x1

.field public static final INTERPOLATOR_TYPE_STEP:I = 0x0

.field public static final LINEAR_RAMP:Landroid/media/VolumeShaper$Configuration;

.field private static final MAXIMUM_CURVE_POINTS:I = 0x10

.field public static final OPTION_FLAG_CLOCK_TIME:I = 0x2

.field private static final OPTION_FLAG_PUBLIC_ALL:I = 0x3

.field public static final OPTION_FLAG_VOLUME_IN_DBFS:I = 0x1

.field public static final SCURVE_RAMP:Landroid/media/VolumeShaper$Configuration;

.field public static final SINE_RAMP:Landroid/media/VolumeShaper$Configuration;

.field static final TYPE_ID:I = 0x0

.field static final TYPE_SCALE:I = 0x1


# instance fields
.field private final mDurationMs:D

.field private final mId:I

.field private final mInterpolatorType:I

.field private final mOptionFlags:I

.field private final mTimes:[F

.field private final mType:I

.field private final mVolumes:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v2, v1, [F

    .line 13
    .line 14
    fill-array-data v2, :array_0

    .line 15
    .line 16
    .line 17
    new-array v3, v1, [F

    .line 18
    .line 19
    fill-array-data v3, :array_1

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-wide/16 v2, 0x3e8

    .line 27
    .line 28
    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Landroid/media/VolumeShaper$Configuration;->LINEAR_RAMP:Landroid/media/VolumeShaper$Configuration;

    .line 37
    .line 38
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-array v4, v1, [F

    .line 48
    .line 49
    fill-array-data v4, :array_2

    .line 50
    .line 51
    .line 52
    new-array v5, v1, [F

    .line 53
    .line 54
    fill-array-data v5, :array_3

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v4, v5}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Landroid/media/VolumeShaper$Configuration;->CUBIC_RAMP:Landroid/media/VolumeShaper$Configuration;

    .line 70
    .line 71
    const/16 v0, 0x10

    .line 72
    .line 73
    new-array v4, v0, [F

    .line 74
    .line 75
    new-array v5, v0, [F

    .line 76
    .line 77
    new-array v6, v0, [F

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    :goto_0
    if-ge v7, v0, :cond_0

    .line 81
    .line 82
    int-to-float v8, v7

    .line 83
    const/high16 v9, 0x41700000    # 15.0f

    .line 84
    .line 85
    div-float/2addr v8, v9

    .line 86
    aput v8, v4, v7

    .line 87
    .line 88
    float-to-double v8, v8

    .line 89
    const-wide v10, 0x400921fb54442d18L    # Math.PI

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    mul-double/2addr v8, v10

    .line 95
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 96
    .line 97
    div-double/2addr v8, v10

    .line 98
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 99
    .line 100
    .line 101
    move-result-wide v8

    .line 102
    double-to-float v8, v8

    .line 103
    aput v8, v5, v7

    .line 104
    .line 105
    mul-float/2addr v8, v8

    .line 106
    aput v8, v6, v7

    .line 107
    .line 108
    add-int/lit8 v7, v7, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    .line 112
    .line 113
    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0, v4, v5}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sput-object v0, Landroid/media/VolumeShaper$Configuration;->SINE_RAMP:Landroid/media/VolumeShaper$Configuration;

    .line 133
    .line 134
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    .line 135
    .line 136
    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0, v4, v6}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    sput-object v0, Landroid/media/VolumeShaper$Configuration;->SCURVE_RAMP:Landroid/media/VolumeShaper$Configuration;

    .line 156
    .line 157
    new-instance v0, Landroid/media/VolumeShaper$Configuration$1;

    .line 158
    .line 159
    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$1;-><init>()V

    .line 160
    .line 161
    .line 162
    sput-object v0, Landroid/media/VolumeShaper$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 163
    .line 164
    return-void

    .line 165
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    .line 4
    iput p1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    .line 5
    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    .line 6
    iput v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 9
    iput-object p1, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative id "

    .line 11
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(IIIDI[F[F)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    .line 19
    iput p2, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    .line 20
    iput p3, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    .line 21
    iput-wide p4, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    .line 22
    iput p6, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    .line 23
    iput-object p7, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 24
    iput-object p8, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-void
.end method

.method public synthetic constructor <init>(IIIDI[F[FLandroid/media/VolumeShaper$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[F)V

    return-void
.end method

.method public static synthetic access$100([F[FZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/media/VolumeShaper$Configuration;->checkCurveForErrorsAndThrowException([F[FZZ)V

    return-void
.end method

.method public static synthetic access$200(FZ)V
    .locals 0

    invoke-static {p0, p1}, Landroid/media/VolumeShaper$Configuration;->checkValidVolumeAndThrowException(FZ)V

    return-void
.end method

.method public static synthetic access$300([FZ)V
    .locals 0

    invoke-static {p0, p1}, Landroid/media/VolumeShaper$Configuration;->clampVolume([FZ)V

    return-void
.end method

.method private static checkCurveForErrors([F[FZ)Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string/jumbo p0, "times array must be non-null"

    .line 4
    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    if-nez p1, :cond_1

    .line 8
    .line 9
    const-string/jumbo p0, "volumes array must be non-null"

    .line 10
    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    array-length v0, p0

    .line 14
    array-length v1, p1

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const-string p0, "array length must match"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    array-length v0, p0

    .line 21
    const/4 v1, 0x2

    .line 22
    if-ge v0, v1, :cond_3

    .line 23
    .line 24
    const-string p0, "array length must be at least 2"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    array-length v0, p0

    .line 28
    const/16 v1, 0x10

    .line 29
    .line 30
    if-le v0, v1, :cond_4

    .line 31
    .line 32
    const-string p0, "array length must be no larger than 16"

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_4
    const/4 v0, 0x0

    .line 36
    aget v1, p0, v0

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    cmpl-float v1, v1, v2

    .line 40
    .line 41
    if-eqz v1, :cond_5

    .line 42
    .line 43
    const-string/jumbo p0, "times must start at 0.f"

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_5
    array-length v1, p0

    .line 48
    const/4 v3, 0x1

    .line 49
    sub-int/2addr v1, v3

    .line 50
    aget v1, p0, v1

    .line 51
    .line 52
    const/high16 v4, 0x3f800000    # 1.0f

    .line 53
    .line 54
    cmpl-float v1, v1, v4

    .line 55
    .line 56
    if-eqz v1, :cond_6

    .line 57
    .line 58
    const-string/jumbo p0, "times must end at 1.f"

    .line 59
    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_6
    :goto_0
    array-length v1, p0

    .line 63
    if-ge v3, v1, :cond_8

    .line 64
    .line 65
    aget v1, p0, v3

    .line 66
    .line 67
    add-int/lit8 v5, v3, -0x1

    .line 68
    .line 69
    aget v5, p0, v5

    .line 70
    .line 71
    cmpl-float v1, v1, v5

    .line 72
    .line 73
    if-gtz v1, :cond_7

    .line 74
    .line 75
    const-string/jumbo p0, "times not monotonic increasing, check index "

    .line 76
    .line 77
    .line 78
    invoke-static {p0, v3}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    return-object p0

    .line 83
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_8
    if-eqz p2, :cond_a

    .line 87
    .line 88
    :goto_1
    array-length p0, p1

    .line 89
    if-ge v0, p0, :cond_d

    .line 90
    .line 91
    aget p0, p1, v0

    .line 92
    .line 93
    cmpg-float p0, p0, v2

    .line 94
    .line 95
    if-lez p0, :cond_9

    .line 96
    .line 97
    const-string/jumbo p0, "volumes for log scale cannot be positive, check index "

    .line 98
    .line 99
    .line 100
    invoke-static {p0, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_a
    :goto_2
    array-length p0, p1

    .line 109
    if-ge v0, p0, :cond_d

    .line 110
    .line 111
    aget p0, p1, v0

    .line 112
    .line 113
    cmpl-float p2, p0, v2

    .line 114
    .line 115
    if-ltz p2, :cond_c

    .line 116
    .line 117
    cmpg-float p0, p0, v4

    .line 118
    .line 119
    if-lez p0, :cond_b

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_c
    :goto_3
    const-string/jumbo p0, "volumes for linear scale must be between 0.f and 1.f, check index "

    .line 126
    .line 127
    .line 128
    invoke-static {p0, v0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0

    .line 133
    :cond_d
    const/4 p0, 0x0

    .line 134
    return-object p0
.end method

.method private static checkCurveForErrorsAndThrowException([F[FZZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/media/VolumeShaper$Configuration;->checkCurveForErrors([F[FZ)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    return-void
.end method

.method private static checkValidVolumeAndThrowException(FZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    cmpg-float p0, p0, v0

    .line 5
    .line 6
    if-gtz p0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string p1, "dbfs volume must be 0.f or less"

    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0

    .line 17
    :cond_1
    cmpl-float p1, p0, v0

    .line 18
    .line 19
    if-ltz p1, :cond_2

    .line 20
    .line 21
    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    .line 23
    cmpg-float p0, p0, p1

    .line 24
    .line 25
    if-gtz p0, :cond_2

    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 29
    .line 30
    const-string/jumbo p1, "volume must be >= 0.f and <= 1.f"

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p0
.end method

.method private static clampVolume([FZ)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    :goto_0
    array-length p1, p0

    .line 6
    if-ge v0, p1, :cond_4

    .line 7
    .line 8
    aget p1, p0, v0

    .line 9
    .line 10
    cmpg-float p1, p1, v1

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    aput v1, p0, v0

    .line 15
    .line 16
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    :goto_1
    array-length p1, p0

    .line 20
    if-ge v0, p1, :cond_4

    .line 21
    .line 22
    aget p1, p0, v0

    .line 23
    .line 24
    cmpl-float v2, p1, v1

    .line 25
    .line 26
    if-gez v2, :cond_2

    .line 27
    .line 28
    aput v1, p0, v0

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 32
    .line 33
    cmpg-float p1, p1, v2

    .line 34
    .line 35
    if-lez p1, :cond_3

    .line 36
    .line 37
    aput v2, p0, v0

    .line 38
    .line 39
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_4
    return-void
.end method

.method public static getMaximumCurvePoints()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/media/VolumeShaper$Configuration;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    if-ne p1, p0, :cond_1

    .line 9
    .line 10
    return v0

    .line 11
    :cond_1
    check-cast p1, Landroid/media/VolumeShaper$Configuration;

    .line 12
    .line 13
    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    .line 14
    .line 15
    iget v3, p1, Landroid/media/VolumeShaper$Configuration;->mType:I

    .line 16
    .line 17
    if-ne v2, v3, :cond_3

    .line 18
    .line 19
    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    .line 20
    .line 21
    iget v4, p1, Landroid/media/VolumeShaper$Configuration;->mId:I

    .line 22
    .line 23
    if-ne v3, v4, :cond_3

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    .line 28
    .line 29
    iget v3, p1, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    .line 30
    .line 31
    if-ne v2, v3, :cond_3

    .line 32
    .line 33
    iget-wide v2, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    .line 34
    .line 35
    iget-wide v4, p1, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    .line 36
    .line 37
    cmpl-double v2, v2, v4

    .line 38
    .line 39
    if-nez v2, :cond_3

    .line 40
    .line 41
    iget v2, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    .line 42
    .line 43
    iget v3, p1, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    .line 44
    .line 45
    if-ne v2, v3, :cond_3

    .line 46
    .line 47
    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 48
    .line 49
    iget-object v3, p1, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 50
    .line 51
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    iget-object v2, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    .line 58
    .line 59
    iget-object p1, p1, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    .line 60
    .line 61
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([F[F)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 66
    .line 67
    :cond_2
    move v1, v0

    .line 68
    :cond_3
    return v1
.end method

.method public getAllOptionFlags()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    return v0
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    return v0
.end method

.method public getInterpolatorType()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    return v0
.end method

.method public getOptionFlags()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getTimes()[F
    .locals 1

    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    return v0
.end method

.method public getVolumes()[F
    .locals 1

    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    aput-object v0, v1, v3

    .line 15
    .line 16
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    .line 17
    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    aput-object v0, v1, v2

    .line 23
    .line 24
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v4, 0x7

    .line 30
    new-array v4, v4, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    aput-object v0, v4, v3

    .line 37
    .line 38
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    aput-object v0, v4, v2

    .line 45
    .line 46
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    aput-object v0, v4, v1

    .line 53
    .line 54
    iget-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    .line 55
    .line 56
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/4 v1, 0x3

    .line 61
    aput-object v0, v4, v1

    .line 62
    .line 63
    iget v0, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v1, 0x4

    .line 70
    aput-object v0, v4, v1

    .line 71
    .line 72
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 73
    .line 74
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const/4 v1, 0x5

    .line 83
    aput-object v0, v4, v1

    .line 84
    .line 85
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    .line 86
    .line 87
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/4 v1, 0x6

    .line 96
    aput-object v0, v4, v1

    .line 97
    .line 98
    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "VolumeShaper.Configuration{mType = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mId = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v1, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    .line 24
    .line 25
    const-string/jumbo v2, "}"

    .line 26
    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, ", mOptionFlags = 0x"

    .line 34
    .line 35
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, ", mDurationMs = "

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-wide v3, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    .line 57
    .line 58
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, ", mInterpolatorType = "

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget v3, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v3, ", mTimes[] = "

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 77
    .line 78
    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v3, ", mVolumes[] = "

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    .line 91
    .line 92
    invoke-static {v3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget p2, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/media/VolumeShaper$Configuration;->mId:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/media/VolumeShaper$Configuration;->mType:I

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget p2, p0, Landroid/media/VolumeShaper$Configuration;->mOptionFlags:I

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    iget-wide v0, p0, Landroid/media/VolumeShaper$Configuration;->mDurationMs:D

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 23
    .line 24
    .line 25
    iget p2, p0, Landroid/media/VolumeShaper$Configuration;->mInterpolatorType:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 38
    .line 39
    array-length p2, p2

    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    :goto_0
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mTimes:[F

    .line 45
    .line 46
    array-length v1, v0

    .line 47
    if-ge p2, v1, :cond_0

    .line 48
    .line 49
    aget v0, v0, p2

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration;->mVolumes:[F

    .line 55
    .line 56
    aget v0, v0, p2

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 59
    .line 60
    .line 61
    add-int/lit8 p2, p2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method
