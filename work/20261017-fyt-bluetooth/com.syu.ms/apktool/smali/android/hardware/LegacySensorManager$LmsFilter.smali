.class final Landroid/hardware/LegacySensorManager$LmsFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LmsFilter"
.end annotation


# static fields
.field private static final COUNT:I = 0xc

.field private static final PREDICTION_RATIO:F = 0.33333334f

.field private static final PREDICTION_TIME:F = 0.08f

.field private static final SENSORS_RATE_MS:I = 0x14


# instance fields
.field private mIndex:I

.field private mT:[J

.field private mV:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    new-array v0, v0, [J

    .line 3
    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    const/16 v0, 0xc

    .line 4
    iput v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    return-void
.end method


# virtual methods
.method public filter(JF)F
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    iget v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aget v3, v1, v2

    sub-float v4, p3, v3

    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v4, v4, v5

    const/high16 v6, 0x43b40000    # 360.0f

    if-lez v4, :cond_0

    sub-float v3, p3, v6

    goto :goto_0

    :cond_0
    sub-float v3, v3, p3

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    add-float v3, p3, v6

    goto :goto_0

    :cond_1
    move/from16 v3, p3

    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 2
    iput v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    const/16 v4, 0x18

    const/16 v5, 0xc

    if-lt v2, v4, :cond_2

    .line 3
    iput v5, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    .line 4
    :cond_2
    iget v2, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    aput v3, v1, v2

    .line 5
    iget-object v4, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aput-wide p1, v4, v2

    add-int/lit8 v7, v2, -0xc

    .line 6
    aput v3, v1, v7

    sub-int/2addr v2, v5

    .line 7
    aput-wide p1, v4, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v7, v5

    move v8, v7

    :goto_1
    const/16 v9, 0xb

    if-ge v1, v9, :cond_3

    .line 8
    iget v9, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v1

    .line 9
    iget-object v10, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    aget v10, v10, v9

    .line 10
    iget-object v11, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    aget-wide v12, v11, v9

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    add-int/lit8 v16, v9, 0x1

    aget-wide v17, v11, v16

    div-long v17, v17, v14

    add-long v12, v12, v17

    sub-long v12, v12, p1

    long-to-float v12, v12

    const v13, 0x3089705f    # 1.0E-9f

    mul-float/2addr v12, v13

    .line 11
    aget-wide v14, v11, v9

    aget-wide v16, v11, v16

    sub-long v14, v14, v16

    long-to-float v9, v14

    mul-float/2addr v9, v13

    mul-float/2addr v9, v9

    mul-float v11, v10, v9

    add-float/2addr v3, v11

    mul-float v11, v12, v9

    mul-float/2addr v12, v11

    add-float/2addr v4, v12

    add-float/2addr v5, v11

    mul-float/2addr v10, v11

    add-float/2addr v7, v10

    add-float/2addr v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    mul-float v1, v3, v4

    mul-float/2addr v7, v5

    add-float/2addr v1, v7

    mul-float/2addr v4, v8

    mul-float v7, v5, v5

    add-float/2addr v4, v7

    div-float/2addr v1, v4

    mul-float/2addr v8, v1

    sub-float/2addr v8, v3

    div-float/2addr v8, v5

    const v3, 0x3da3d70a    # 0.08f

    mul-float/2addr v8, v3

    add-float/2addr v1, v8

    const v3, 0x3b360b61

    mul-float/2addr v1, v3

    cmpl-float v3, v1, v2

    if-ltz v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    neg-float v3, v1

    :goto_2
    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-ltz v3, :cond_5

    add-float/2addr v4, v1

    float-to-double v3, v4

    .line 12
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v1, v3

    add-float/2addr v1, v5

    :cond_5
    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    add-float/2addr v1, v5

    :cond_6
    mul-float/2addr v1, v6

    return v1
.end method
