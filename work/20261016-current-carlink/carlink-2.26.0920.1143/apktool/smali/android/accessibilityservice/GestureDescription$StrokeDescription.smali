.class public Landroid/accessibilityservice/GestureDescription$StrokeDescription;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrokeDescription"
.end annotation


# static fields
.field private static final INVALID_STROKE_ID:I = -0x1

.field static sIdCounter:I


# instance fields
.field mContinued:Z

.field mContinuedStrokeId:I

.field mEndTime:J

.field mId:I

.field mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field mStartTime:J

.field mTapLocation:[F

.field private mTimeToLengthConversion:F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;JJ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJZ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;JJZ)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    .line 4
    iput-boolean p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    const-wide/16 v0, 0x0

    cmp-long p6, p4, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez p6, :cond_0

    move p6, v2

    goto :goto_0

    :cond_0
    move p6, v3

    :goto_0
    const-string v4, "Duration must be positive"

    .line 5
    invoke-static {p6, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    cmp-long p6, p2, v0

    if-ltz p6, :cond_1

    move p6, v2

    goto :goto_1

    :cond_1
    move p6, v3

    :goto_1
    const-string v0, "Start time must not be negative"

    .line 6
    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result p6

    xor-int/2addr p6, v2

    const-string v0, "Path is empty"

    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 8
    new-instance p6, Landroid/graphics/RectF;

    invoke-direct {p6}, Landroid/graphics/RectF;-><init>()V

    .line 9
    invoke-virtual {p1, p6, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 10
    iget v0, p6, Landroid/graphics/RectF;->bottom:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p6, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p6, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    iget p6, p6, Landroid/graphics/RectF;->left:F

    cmpl-float p6, p6, v1

    if-ltz p6, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    const-string p6, "Path bounds must not be negative"

    invoke-static {v2, p6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 11
    new-instance p6, Landroid/graphics/Path;

    invoke-direct {p6, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    .line 12
    new-instance p6, Landroid/graphics/PathMeasure;

    invoke-direct {p6, p1, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 13
    invoke-virtual {p6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p6

    cmpl-float p6, p6, v1

    if-nez p6, :cond_3

    .line 14
    new-instance p6, Landroid/graphics/Path;

    invoke-direct {p6, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 15
    invoke-virtual {p6, p1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 16
    iput-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    .line 17
    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1, p6, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 18
    iget-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    const/4 v0, 0x0

    invoke-virtual {p1, v1, p6, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 19
    :cond_3
    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result p1

    if-nez p1, :cond_4

    .line 20
    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p6, v3}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 21
    iput-wide p2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    add-long/2addr p2, p4

    .line 22
    iput-wide p2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    .line 23
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    move-result p1

    long-to-float p2, p4

    div-float/2addr p1, p2

    iput p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    .line 24
    sget p1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->sIdCounter:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->sIdCounter:I

    iput p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    return-void

    .line 25
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Path has more than one contour"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public continueStroke(Landroid/graphics/Path;JJZ)Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    move-object v2, p1

    .line 9
    move-wide v3, p2

    .line 10
    move-wide v5, p4

    .line 11
    move v7, p6

    .line 12
    invoke-direct/range {v1 .. v7}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJZ)V

    .line 13
    .line 14
    .line 15
    iget p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    .line 16
    .line 17
    iput p1, v0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string p2, "Only strokes marked willContinue can be continued"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public getContinuedStrokeId()I
    .locals 1

    iget v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    return v0
.end method

.method public getDuration()J
    .locals 4

    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    return v0
.end method

.method public getLength()F
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 2

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method public getPosForTime(J[F)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    aget p2, v0, p1

    .line 7
    .line 8
    aput p2, p3, p1

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    aget p2, v0, p1

    .line 12
    .line 13
    aput p2, p3, p1

    .line 14
    .line 15
    return p1

    .line 16
    :cond_0
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    .line 17
    .line 18
    cmp-long v0, p1, v0

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p1, p2, p3, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1

    .line 34
    :cond_1
    iget v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    .line 35
    .line 36
    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    .line 37
    .line 38
    sub-long/2addr p1, v2

    .line 39
    long-to-float p1, p1

    .line 40
    mul-float/2addr v0, p1

    .line 41
    iget-object p1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    .line 42
    .line 43
    invoke-virtual {p1, v0, p3, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    return p1
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    return-wide v0
.end method

.method public hasPointForTime(J)Z
    .locals 2

    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public willContinue()Z
    .locals 1

    iget-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    return v0
.end method
