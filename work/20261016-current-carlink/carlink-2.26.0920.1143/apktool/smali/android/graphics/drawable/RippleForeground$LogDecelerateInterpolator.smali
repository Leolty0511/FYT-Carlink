.class final Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogDecelerateInterpolator"
.end annotation


# instance fields
.field private final mBase:F

.field private final mDrift:F

.field private final mOutputScale:F

.field private final mTimeScale:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mBase:F

    .line 5
    .line 6
    iput p3, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mDrift:F

    .line 7
    .line 8
    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    div-float p2, p1, p2

    .line 11
    .line 12
    iput p2, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mTimeScale:F

    .line 13
    .line 14
    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->computeLog(F)F

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    div-float/2addr p1, p2

    .line 19
    iput p1, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mOutputScale:F

    .line 20
    .line 21
    return-void
.end method

.method private computeLog(F)F
    .locals 4

    iget v0, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mBase:F

    float-to-double v0, v0

    neg-float v2, p1

    iget v3, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mTimeScale:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mDrift:F

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->computeLog(F)F

    move-result p1

    iget v0, p0, Landroid/graphics/drawable/RippleForeground$LogDecelerateInterpolator;->mOutputScale:F

    mul-float/2addr p1, v0

    return p1
.end method
