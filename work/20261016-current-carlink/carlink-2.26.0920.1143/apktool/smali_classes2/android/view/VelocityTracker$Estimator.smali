.class public final Landroid/view/VelocityTracker$Estimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VelocityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Estimator"
.end annotation


# static fields
.field private static final MAX_DEGREE:I = 0x4


# instance fields
.field public confidence:F

.field public degree:I

.field public final xCoeff:[F

.field public final yCoeff:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    new-array v1, v0, [F

    .line 6
    .line 7
    iput-object v1, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    .line 8
    .line 9
    new-array v0, v0, [F

    .line 10
    .line 11
    iput-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    .line 12
    .line 13
    return-void
.end method

.method private estimate(F[F)F
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    .line 6
    .line 7
    if-gt v2, v3, :cond_0

    .line 8
    .line 9
    aget v3, p2, v2

    .line 10
    .line 11
    mul-float/2addr v3, v1

    .line 12
    add-float/2addr v0, v3

    .line 13
    mul-float/2addr v1, p1

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return v0
.end method


# virtual methods
.method public estimateX(F)F
    .locals 1

    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    invoke-direct {p0, p1, v0}, Landroid/view/VelocityTracker$Estimator;->estimate(F[F)F

    move-result p1

    return p1
.end method

.method public estimateY(F)F
    .locals 1

    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    invoke-direct {p0, p1, v0}, Landroid/view/VelocityTracker$Estimator;->estimate(F[F)F

    move-result p1

    return p1
.end method

.method public getXCoeff(I)F
    .locals 1

    iget v0, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->xCoeff:[F

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getYCoeff(I)F
    .locals 1

    iget v0, p0, Landroid/view/VelocityTracker$Estimator;->degree:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroid/view/VelocityTracker$Estimator;->yCoeff:[F

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
