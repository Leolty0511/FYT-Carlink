.class public Lcom/android/internal/widget/PointerLocationView$PointerState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field private mAltEstimator:Landroid/view/VelocityTracker$Estimator;

.field private mAltXVelocity:F

.field private mAltYVelocity:F

.field private mBoundingBottom:F

.field private mBoundingLeft:F

.field private mBoundingRight:F

.field private mBoundingTop:F

.field private mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mCurDown:Z

.field private mEstimator:Landroid/view/VelocityTracker$Estimator;

.field private mHasBoundingBox:Z

.field private mToolType:I

.field private mTraceCount:I

.field private mTraceCurrent:[Z

.field private mTraceX:[F

.field private mTraceY:[F

.field private mXVelocity:F

.field private mYVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x20

    .line 5
    .line 6
    new-array v1, v0, [F

    .line 7
    .line 8
    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    .line 9
    .line 10
    new-array v1, v0, [F

    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    .line 13
    .line 14
    new-array v0, v0, [Z

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    .line 17
    .line 18
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 24
    .line 25
    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;

    .line 31
    .line 32
    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;

    .line 38
    .line 39
    return-void
.end method

.method public static synthetic access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F

    return p0
.end method

.method public static synthetic access$1002(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F

    return p1
.end method

.method public static synthetic access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z

    return p1
.end method

.method public static synthetic access$1100(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F

    return p0
.end method

.method public static synthetic access$1102(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F

    return p1
.end method

.method public static synthetic access$1200(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I

    return p0
.end method

.method public static synthetic access$1202(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I

    return p1
.end method

.method public static synthetic access$1300(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z

    return p0
.end method

.method public static synthetic access$1302(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z

    return p1
.end method

.method public static synthetic access$1400(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F

    return p0
.end method

.method public static synthetic access$1402(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F

    return p1
.end method

.method public static synthetic access$1500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F

    return p0
.end method

.method public static synthetic access$1502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F

    return p1
.end method

.method public static synthetic access$1600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F

    return p0
.end method

.method public static synthetic access$1602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F

    return p1
.end method

.method public static synthetic access$1700(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F

    return p0
.end method

.method public static synthetic access$1702(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F

    return p1
.end method

.method public static synthetic access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F

    return p0
.end method

.method public static synthetic access$502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F

    return p1
.end method

.method public static synthetic access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F

    return p0
.end method

.method public static synthetic access$602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F

    return p1
.end method

.method public static synthetic access$700(Lcom/android/internal/widget/PointerLocationView$PointerState;)[Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;

    return-object p0
.end method


# virtual methods
.method public addTrace(FFZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    .line 5
    .line 6
    if-ne v2, v1, :cond_0

    .line 7
    .line 8
    mul-int/lit8 v1, v1, 0x2

    .line 9
    .line 10
    new-array v3, v1, [F

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 14
    .line 15
    .line 16
    iput-object v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    .line 17
    .line 18
    new-array v0, v1, [F

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    .line 21
    .line 22
    iget v3, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    .line 23
    .line 24
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    .line 28
    .line 29
    new-array v0, v1, [Z

    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    .line 32
    .line 33
    iget v2, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    .line 34
    .line 35
    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F

    .line 41
    .line 42
    iget v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    .line 43
    .line 44
    aput p1, v0, v1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F

    .line 47
    .line 48
    aput p2, p1, v1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z

    .line 51
    .line 52
    aput-boolean p3, p1, v1

    .line 53
    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    iput v1, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    .line 57
    .line 58
    return-void
.end method

.method public clearTrace()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I

    return-void
.end method
