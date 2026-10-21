.class public final Landroid/accessibilityservice/GestureDescription;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;,
        Landroid/accessibilityservice/GestureDescription$GestureStep;,
        Landroid/accessibilityservice/GestureDescription$TouchPoint;,
        Landroid/accessibilityservice/GestureDescription$StrokeDescription;,
        Landroid/accessibilityservice/GestureDescription$Builder;
    }
.end annotation


# static fields
.field private static final MAX_GESTURE_DURATION_MS:J = 0xea60L

.field private static final MAX_STROKE_COUNT:I = 0xa


# instance fields
.field private final mStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPos:[F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 7
    iput-object v1, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroid/accessibilityservice/GestureDescription$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/accessibilityservice/GestureDescription;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$000(Ljava/util/List;)J
    .locals 2

    invoke-static {p0}, Landroid/accessibilityservice/GestureDescription;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$200(Landroid/accessibilityservice/GestureDescription;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/GestureDescription;->getNextKeyPointAtLeast(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$300(Landroid/accessibilityservice/GestureDescription;J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/GestureDescription;->getPointsForTime(J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I

    move-result p0

    return p0
.end method

.method public static getMaxGestureDuration()J
    .locals 2

    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public static getMaxStrokeCount()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method private getNextKeyPointAtLeast(J)J
    .locals 8

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    move-wide v3, v0

    .line 8
    :goto_0
    iget-object v5, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    if-ge v2, v5, :cond_2

    .line 15
    .line 16
    iget-object v5, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 23
    .line 24
    iget-wide v5, v5, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    .line 25
    .line 26
    cmp-long v7, v5, v3

    .line 27
    .line 28
    if-gez v7, :cond_0

    .line 29
    .line 30
    cmp-long v7, v5, p1

    .line 31
    .line 32
    if-ltz v7, :cond_0

    .line 33
    .line 34
    move-wide v3, v5

    .line 35
    :cond_0
    iget-object v5, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 42
    .line 43
    iget-wide v5, v5, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    .line 44
    .line 45
    cmp-long v7, v5, v3

    .line 46
    .line 47
    if-gez v7, :cond_1

    .line 48
    .line 49
    cmp-long v7, v5, p1

    .line 50
    .line 51
    if-ltz v7, :cond_1

    .line 52
    .line 53
    move-wide v3, v5

    .line 54
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    cmp-long p1, v3, v0

    .line 58
    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    const-wide/16 v3, -0x1

    .line 62
    .line 63
    :cond_3
    return-wide v3
.end method

.method private getPointsForTime(J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-ge v1, v3, :cond_3

    .line 11
    .line 12
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 19
    .line 20
    invoke-virtual {v3, p1, p2}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->hasPointForTime(J)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    aget-object v4, p3, v2

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getId()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    iput v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 33
    .line 34
    aget-object v4, p3, v2

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getContinuedStrokeId()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    iput v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    .line 41
    .line 42
    aget-object v4, p3, v2

    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getContinuedStrokeId()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const/4 v6, 0x1

    .line 49
    if-gez v5, :cond_0

    .line 50
    .line 51
    iget-wide v7, v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    .line 52
    .line 53
    cmp-long v5, p1, v7

    .line 54
    .line 55
    if-nez v5, :cond_0

    .line 56
    .line 57
    move v5, v6

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    move v5, v0

    .line 60
    :goto_1
    iput-boolean v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    .line 61
    .line 62
    aget-object v4, p3, v2

    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->willContinue()Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_1

    .line 69
    .line 70
    iget-wide v7, v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    .line 71
    .line 72
    cmp-long v5, p1, v7

    .line 73
    .line 74
    if-nez v5, :cond_1

    .line 75
    .line 76
    move v5, v6

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    move v5, v0

    .line 79
    :goto_2
    iput-boolean v5, v4, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    .line 80
    .line 81
    iget-object v4, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    .line 82
    .line 83
    invoke-virtual {v3, p1, p2, v4}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getPosForTime(J[F)Z

    .line 84
    .line 85
    .line 86
    aget-object v3, p3, v2

    .line 87
    .line 88
    iget-object v4, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    .line 89
    .line 90
    aget v4, v4, v0

    .line 91
    .line 92
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    int-to-float v4, v4

    .line 97
    iput v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    .line 98
    .line 99
    aget-object v3, p3, v2

    .line 100
    .line 101
    iget-object v4, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    .line 102
    .line 103
    aget v4, v4, v6

    .line 104
    .line 105
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    int-to-float v4, v4

    .line 110
    iput v4, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    .line 111
    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    return v2
.end method

.method private static getTotalDuration(Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;)J"
        }
    .end annotation

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-ge v2, v3, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    .line 15
    .line 16
    iget-wide v3, v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    .line 17
    .line 18
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    return-wide v0
.end method


# virtual methods
.method public getStroke(I)Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    return-object p1
.end method

.method public getStrokeCount()I
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
