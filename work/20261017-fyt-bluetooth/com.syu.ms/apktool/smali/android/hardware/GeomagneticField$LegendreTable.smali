.class Landroid/hardware/GeomagneticField$LegendreTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/GeomagneticField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LegendreTable"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public final mP:[[F

.field public final mPDeriv:[[F


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p2, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    add-int/lit8 v1, p1, 0x1

    .line 4
    new-array v2, v1, [[F

    iput-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    .line 5
    new-array v1, v1, [[F

    iput-object v1, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 6
    aput-object v4, v2, v6

    new-array v2, v3, [F

    const/4 v4, 0x0

    aput v4, v2, v6

    .line 7
    aput-object v2, v1, v6

    move v1, v3

    :goto_0
    if-gt v1, p1, :cond_4

    .line 8
    iget-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    add-int/lit8 v4, v1, 0x1

    new-array v5, v4, [F

    aput-object v5, v2, v1

    .line 9
    iget-object v2, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    new-array v5, v4, [F

    aput-object v5, v2, v1

    move v2, v6

    :goto_1
    if-gt v2, v1, :cond_3

    if-ne v1, v2, :cond_0

    .line 10
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v7, v5, v1

    add-int/lit8 v8, v1, -0x1

    aget-object v9, v5, v8

    add-int/lit8 v10, v2, -0x1

    aget v9, v9, v10

    mul-float/2addr v9, v0

    aput v9, v7, v2

    .line 11
    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v9, v7, v1

    aget-object v5, v5, v8

    aget v5, v5, v10

    mul-float/2addr v5, p2

    aget-object v7, v7, v8

    aget v7, v7, v10

    mul-float/2addr v7, v0

    add-float/2addr v5, v7

    aput v5, v9, v2

    goto :goto_3

    :cond_0
    if-eq v1, v3, :cond_2

    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_1

    goto :goto_2

    :cond_1
    mul-int v7, v5, v5

    mul-int v8, v2, v2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v9, v8, -0x1

    add-int/lit8 v8, v8, -0x3

    mul-int/2addr v9, v8

    int-to-float v8, v9

    div-float/2addr v7, v8

    .line 12
    iget-object v8, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v9, v8, v1

    aget-object v10, v8, v5

    aget v10, v10, v2

    mul-float/2addr v10, p2

    add-int/lit8 v11, v1, -0x2

    aget-object v12, v8, v11

    aget v12, v12, v2

    mul-float/2addr v12, v7

    sub-float/2addr v10, v12

    aput v10, v9, v2

    .line 13
    iget-object v9, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v10, v9, v1

    neg-float v12, v0

    aget-object v8, v8, v5

    aget v8, v8, v2

    mul-float/2addr v12, v8

    aget-object v5, v9, v5

    aget v5, v5, v2

    mul-float/2addr v5, p2

    add-float/2addr v12, v5

    aget-object v5, v9, v11

    aget v5, v5, v2

    mul-float/2addr v7, v5

    sub-float/2addr v12, v7

    aput v12, v10, v2

    goto :goto_3

    .line 14
    :cond_2
    :goto_2
    iget-object v5, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    aget-object v7, v5, v1

    add-int/lit8 v8, v1, -0x1

    aget-object v9, v5, v8

    aget v9, v9, v2

    mul-float/2addr v9, p2

    aput v9, v7, v2

    .line 15
    iget-object v7, p0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    aget-object v9, v7, v1

    neg-float v10, v0

    aget-object v5, v5, v8

    aget v5, v5, v2

    mul-float/2addr v10, v5

    aget-object v5, v7, v8

    aget v5, v5, v2

    mul-float/2addr v5, p2

    add-float/2addr v10, v5

    aput v10, v9, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_3
    move v1, v4

    goto/16 :goto_0

    :cond_4
    return-void
.end method
