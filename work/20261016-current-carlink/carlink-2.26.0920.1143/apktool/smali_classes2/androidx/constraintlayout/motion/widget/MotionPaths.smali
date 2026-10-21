.class Landroidx/constraintlayout/motion/widget/MotionPaths;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/constraintlayout/motion/widget/MotionPaths;",
        ">;"
    }
.end annotation


# static fields
.field static final CARTESIAN:I = 0x0

.field public static final DEBUG:Z = false

.field static final OFF_HEIGHT:I = 0x4

.field static final OFF_PATH_ROTATE:I = 0x5

.field static final OFF_POSITION:I = 0x0

.field static final OFF_WIDTH:I = 0x3

.field static final OFF_X:I = 0x1

.field static final OFF_Y:I = 0x2

.field public static final OLD_WAY:Z = false

.field static final PERPENDICULAR:I = 0x1

.field static final SCREEN:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MotionPaths"

.field static names:[Ljava/lang/String;


# instance fields
.field attributes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field height:F

.field mAnimateCircleAngleTo:I

.field mAnimateRelativeTo:I

.field mDrawPath:I

.field mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

.field mMode:I

.field mPathMotionArc:I

.field mPathRotate:F

.field mProgress:F

.field mRelativeAngle:F

.field mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

.field mTempDelta:[D

.field mTempValue:[D

.field position:F

.field time:F

.field width:F

.field x:F

.field y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "position"

    .line 2
    .line 3
    const-string/jumbo v1, "x"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "y"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "width"

    .line 10
    .line 11
    .line 12
    const-string v4, "height"

    .line 13
    .line 14
    const-string v5, "pathRotate"

    .line 15
    .line 16
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 3
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 4
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    .line 5
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 6
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 7
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 9
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 10
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    .line 11
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    new-array v0, v0, [D

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    return-void
.end method

.method public constructor <init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 15
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 16
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    .line 17
    sget v2, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 18
    iput v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 19
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    const/4 v1, 0x0

    .line 20
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 21
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 22
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    const/16 v0, 0x12

    new-array v1, v0, [D

    .line 23
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    new-array v0, v0, [D

    .line 24
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    .line 25
    iget v0, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    sget v1, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v0, v1, :cond_0

    .line 26
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initPolar(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    return-void

    .line 27
    :cond_0
    iget v0, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 28
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initCartesian(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    return-void

    .line 29
    :cond_1
    invoke-virtual/range {p0 .. p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initScreen(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    return-void

    .line 30
    :cond_2
    invoke-virtual {p0, p3, p4, p5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->initPath(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    return-void
.end method

.method private diff(FF)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sub-float/2addr p1, p2

    .line 17
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const p2, 0x358637bd    # 1.0E-6f

    .line 22
    .line 23
    .line 24
    cmpl-float p1, p1, p2

    .line 25
    .line 26
    if-lez p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_0
    return v1

    .line 31
    :cond_2
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eq p1, p2, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    move v1, v2

    .line 43
    :goto_2
    return v1
.end method

.method private static final xRotate(FFFFFF)F
    .locals 0

    sub-float/2addr p4, p2

    sub-float/2addr p5, p3

    mul-float/2addr p4, p1

    mul-float/2addr p5, p0

    sub-float/2addr p4, p5

    add-float/2addr p4, p2

    return p4
.end method

.method private static final yRotate(FFFFFF)F
    .locals 0

    sub-float/2addr p4, p2

    sub-float/2addr p5, p3

    mul-float/2addr p4, p0

    mul-float/2addr p5, p1

    add-float/2addr p5, p4

    add-float/2addr p5, p3

    return p5
.end method


# virtual methods
.method public applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mTransitionEasing:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    .line 12
    .line 13
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathMotionArc:I

    .line 14
    .line 15
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 16
    .line 17
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateRelativeTo:I

    .line 18
    .line 19
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 20
    .line 21
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mPathRotate:F

    .line 22
    .line 23
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 24
    .line 25
    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mDrawPath:I

    .line 26
    .line 27
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 28
    .line 29
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mAnimateCircleAngleTo:I

    .line 30
    .line 31
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateCircleAngleTo:I

    .line 32
    .line 33
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->propertySet:Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;

    .line 34
    .line 35
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    .line 36
    .line 37
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    .line 38
    .line 39
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    .line 40
    .line 41
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    .line 42
    .line 43
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    .line 44
    .line 45
    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/String;

    .line 66
    .line 67
    iget-object v2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 74
    .line 75
    if-eqz v2, :cond_0

    .line 76
    .line 77
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->isContinuous()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_0

    .line 82
    .line 83
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 84
    .line 85
    invoke-virtual {v3, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I
    .locals 1
    .param p1    # Landroidx/constraintlayout/motion/widget/MotionPaths;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->compareTo(Landroidx/constraintlayout/motion/widget/MotionPaths;)I

    move-result p1

    return p1
.end method

.method public configureRelativeTo(Landroidx/constraintlayout/motion/widget/MotionController;)V
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mProgress:F

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getPos(D)[D

    return-void
.end method

.method public different(Landroidx/constraintlayout/motion/widget/MotionPaths;[Z[Ljava/lang/String;Z)V
    .locals 5

    .line 1
    iget p3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 2
    .line 3
    iget v0, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 4
    .line 5
    invoke-direct {p0, p3, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 10
    .line 11
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    aget-boolean v2, p2, v1

    .line 19
    .line 20
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 21
    .line 22
    iget v4, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 23
    .line 24
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    or-int/2addr v2, v3

    .line 29
    aput-boolean v2, p2, v1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    aget-boolean v2, p2, v1

    .line 33
    .line 34
    or-int/2addr p3, v0

    .line 35
    or-int/2addr p3, p4

    .line 36
    or-int p4, v2, p3

    .line 37
    .line 38
    aput-boolean p4, p2, v1

    .line 39
    .line 40
    const/4 p4, 0x2

    .line 41
    aget-boolean v0, p2, p4

    .line 42
    .line 43
    or-int/2addr p3, v0

    .line 44
    aput-boolean p3, p2, p4

    .line 45
    .line 46
    const/4 p3, 0x3

    .line 47
    aget-boolean p4, p2, p3

    .line 48
    .line 49
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 50
    .line 51
    iget v1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 52
    .line 53
    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    or-int/2addr p4, v0

    .line 58
    aput-boolean p4, p2, p3

    .line 59
    .line 60
    const/4 p3, 0x4

    .line 61
    aget-boolean p4, p2, p3

    .line 62
    .line 63
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 64
    .line 65
    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 66
    .line 67
    invoke-direct {p0, v0, p1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->diff(FF)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    or-int/2addr p1, p4

    .line 72
    aput-boolean p1, p2, p3

    .line 73
    .line 74
    return-void
.end method

.method public fillStandard([D[I)V
    .locals 8

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    iget v2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput v2, v1, v3

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 11
    .line 12
    aput v4, v1, v2

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 16
    .line 17
    aput v4, v1, v2

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 21
    .line 22
    aput v4, v1, v2

    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 26
    .line 27
    aput v4, v1, v2

    .line 28
    .line 29
    const/4 v2, 0x5

    .line 30
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathRotate:F

    .line 31
    .line 32
    aput v4, v1, v2

    .line 33
    .line 34
    move v2, v3

    .line 35
    :goto_0
    array-length v4, p2

    .line 36
    if-ge v3, v4, :cond_1

    .line 37
    .line 38
    aget v4, p2, v3

    .line 39
    .line 40
    if-ge v4, v0, :cond_0

    .line 41
    .line 42
    add-int/lit8 v5, v2, 0x1

    .line 43
    .line 44
    aget v4, v1, v4

    .line 45
    .line 46
    float-to-double v6, v4

    .line 47
    aput-wide v6, p1, v2

    .line 48
    .line 49
    move v2, v5

    .line 50
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method public getBounds([I[D[FI)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    array-length v3, p1

    .line 7
    if-ge v2, v3, :cond_2

    .line 8
    .line 9
    aget-wide v3, p2, v2

    .line 10
    .line 11
    double-to-float v3, v3

    .line 12
    aget v4, p1, v2

    .line 13
    .line 14
    const/4 v5, 0x3

    .line 15
    if-eq v4, v5, :cond_1

    .line 16
    .line 17
    const/4 v5, 0x4

    .line 18
    if-eq v4, v5, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    move v1, v3

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v0, v3

    .line 24
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    aput v0, p3, p4

    .line 28
    .line 29
    add-int/lit8 p4, p4, 0x1

    .line 30
    .line 31
    aput v1, p3, p4

    .line 32
    .line 33
    return-void
.end method

.method public getCenter(D[I[D[FI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 2
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 3
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 4
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v6, 0x0

    move v7, v6

    .line 5
    :goto_0
    array-length v8, v1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v7, v8, :cond_4

    .line 6
    aget-wide v11, p4, v7

    double-to-float v8, v11

    .line 7
    aget v11, v1, v7

    if-eq v11, v10, :cond_3

    if-eq v11, v9, :cond_2

    const/4 v9, 0x3

    if-eq v11, v9, :cond_1

    const/4 v9, 0x4

    if-eq v11, v9, :cond_0

    goto :goto_1

    :cond_0
    move v5, v8

    goto :goto_1

    :cond_1
    move v4, v8

    goto :goto_1

    :cond_2
    move v3, v8

    goto :goto_1

    :cond_3
    move v2, v8

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 8
    :cond_4
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v1, :cond_5

    new-array v8, v9, [F

    new-array v9, v9, [F

    move-wide/from16 v11, p1

    .line 9
    invoke-virtual {v1, v11, v12, v8, v9}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    aget v1, v8, v6

    aget v6, v8, v10

    float-to-double v12, v1

    float-to-double v1, v2

    float-to-double v14, v3

    move-wide v8, v14

    move-wide v10, v1

    .line 10
    invoke-static/range {v8 .. v13}, Landroid/app/m;->a(DDD)D

    move-result-wide v8

    div-float v3, v4, v7

    float-to-double v10, v3

    sub-double/2addr v8, v10

    double-to-float v3, v8

    float-to-double v8, v6

    .line 11
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v1

    sub-double/2addr v8, v10

    div-float v1, v5, v7

    float-to-double v1, v1

    sub-double/2addr v8, v1

    double-to-float v1, v8

    move v2, v3

    move v3, v1

    :cond_5
    div-float/2addr v4, v7

    add-float/2addr v4, v2

    const/4 v1, 0x0

    add-float/2addr v4, v1

    .line 12
    aput v4, p5, p6

    add-int/lit8 v2, p6, 0x1

    div-float/2addr v5, v7

    add-float/2addr v5, v3

    add-float/2addr v5, v1

    .line 13
    aput v5, p5, v2

    return-void
.end method

.method public getCenter(D[I[D[F[D[F)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 15
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 16
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 17
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 18
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 19
    :goto_0
    array-length v11, v1

    const/4 v12, 0x1

    if-ge v6, v11, :cond_4

    .line 20
    aget-wide v13, p4, v6

    double-to-float v11, v13

    .line 21
    aget-wide v13, p6, v6

    double-to-float v13, v13

    .line 22
    aget v14, v1, v6

    if-eq v14, v12, :cond_3

    const/4 v12, 0x2

    if-eq v14, v12, :cond_2

    const/4 v12, 0x3

    if-eq v14, v12, :cond_1

    const/4 v12, 0x4

    if-eq v14, v12, :cond_0

    goto :goto_1

    :cond_0
    move v5, v11

    move v10, v13

    goto :goto_1

    :cond_1
    move v4, v11

    move v8, v13

    goto :goto_1

    :cond_2
    move v3, v11

    move v9, v13

    goto :goto_1

    :cond_3
    move v2, v11

    move v7, v13

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v8, v1

    add-float/2addr v8, v7

    div-float/2addr v10, v1

    add-float/2addr v10, v9

    .line 23
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    if-eqz v6, :cond_5

    const/4 v1, 0x2

    new-array v8, v1, [F

    new-array v1, v1, [F

    move-wide/from16 v10, p1

    .line 24
    invoke-virtual {v6, v10, v11, v8, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    const/4 v6, 0x0

    aget v10, v8, v6

    aget v8, v8, v12

    aget v6, v1, v6

    aget v1, v1, v12

    float-to-double v10, v10

    float-to-double v13, v2

    float-to-double v2, v3

    move-wide/from16 v19, v13

    move-wide v13, v2

    move-wide/from16 v15, v19

    move-wide/from16 v17, v10

    .line 25
    invoke-static/range {v13 .. v18}, Landroid/app/m;->a(DDD)D

    move-result-wide v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v14, v4, v13

    float-to-double v14, v14

    sub-double/2addr v10, v14

    double-to-float v10, v10

    float-to-double v14, v8

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v19

    sub-double v14, v14, v16

    div-float v8, v5, v13

    float-to-double v12, v8

    sub-double/2addr v14, v12

    double-to-float v8, v14

    float-to-double v12, v6

    float-to-double v6, v7

    move-wide v15, v2

    move-wide/from16 v17, v6

    move-wide/from16 v19, v12

    .line 27
    invoke-static/range {v15 .. v20}, Landroid/app/m;->a(DDD)D

    move-result-wide v12

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    move/from16 p1, v8

    float-to-double v8, v9

    mul-double/2addr v14, v8

    add-double/2addr v14, v12

    double-to-float v12, v14

    float-to-double v13, v1

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v15, v6

    sub-double v19, v13, v15

    move-wide v15, v2

    move-wide/from16 v17, v8

    .line 30
    invoke-static/range {v15 .. v20}, Landroid/app/m;->a(DDD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v3, p1

    move v8, v12

    move/from16 v21, v10

    move v10, v1

    move v1, v2

    move/from16 v2, v21

    :cond_5
    div-float/2addr v4, v1

    add-float/2addr v4, v2

    const/4 v2, 0x0

    add-float/2addr v4, v2

    const/4 v6, 0x0

    .line 31
    aput v4, p5, v6

    div-float/2addr v5, v1

    add-float/2addr v5, v3

    add-float/2addr v5, v2

    const/4 v1, 0x1

    .line 32
    aput v5, p5, v1

    .line 33
    aput v8, p7, v6

    .line 34
    aput v10, p7, v1

    return-void
.end method

.method public getCenterVelocity(D[I[D[FI)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 6
    .line 7
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 8
    .line 9
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 10
    .line 11
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    move v7, v6

    .line 15
    :goto_0
    array-length v8, v1

    .line 16
    const/4 v9, 0x2

    .line 17
    const/4 v10, 0x1

    .line 18
    if-ge v7, v8, :cond_4

    .line 19
    .line 20
    aget-wide v11, p4, v7

    .line 21
    .line 22
    double-to-float v8, v11

    .line 23
    aget v11, v1, v7

    .line 24
    .line 25
    if-eq v11, v10, :cond_3

    .line 26
    .line 27
    if-eq v11, v9, :cond_2

    .line 28
    .line 29
    const/4 v9, 0x3

    .line 30
    if-eq v11, v9, :cond_1

    .line 31
    .line 32
    const/4 v9, 0x4

    .line 33
    if-eq v11, v9, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    move v5, v8

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v4, v8

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    move v3, v8

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    move v2, v8

    .line 43
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 47
    .line 48
    const/high16 v7, 0x40000000    # 2.0f

    .line 49
    .line 50
    if-eqz v1, :cond_5

    .line 51
    .line 52
    new-array v8, v9, [F

    .line 53
    .line 54
    new-array v9, v9, [F

    .line 55
    .line 56
    move-wide/from16 v11, p1

    .line 57
    .line 58
    invoke-virtual {v1, v11, v12, v8, v9}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    .line 59
    .line 60
    .line 61
    aget v1, v8, v6

    .line 62
    .line 63
    aget v6, v8, v10

    .line 64
    .line 65
    float-to-double v12, v1

    .line 66
    float-to-double v1, v2

    .line 67
    float-to-double v14, v3

    .line 68
    move-wide v8, v14

    .line 69
    move-wide v10, v1

    .line 70
    invoke-static/range {v8 .. v13}, Landroid/app/m;->a(DDD)D

    .line 71
    .line 72
    .line 73
    move-result-wide v8

    .line 74
    div-float v3, v4, v7

    .line 75
    .line 76
    float-to-double v10, v3

    .line 77
    sub-double/2addr v8, v10

    .line 78
    double-to-float v3, v8

    .line 79
    float-to-double v8, v6

    .line 80
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 81
    .line 82
    .line 83
    move-result-wide v10

    .line 84
    mul-double/2addr v10, v1

    .line 85
    sub-double/2addr v8, v10

    .line 86
    div-float v1, v5, v7

    .line 87
    .line 88
    float-to-double v1, v1

    .line 89
    sub-double/2addr v8, v1

    .line 90
    double-to-float v1, v8

    .line 91
    move v2, v3

    .line 92
    move v3, v1

    .line 93
    :cond_5
    div-float/2addr v4, v7

    .line 94
    add-float/2addr v4, v2

    .line 95
    const/4 v1, 0x0

    .line 96
    add-float/2addr v4, v1

    .line 97
    aput v4, p5, p6

    .line 98
    .line 99
    add-int/lit8 v2, p6, 0x1

    .line 100
    .line 101
    div-float/2addr v5, v7

    .line 102
    add-float/2addr v5, v3

    .line 103
    add-float/2addr v5, v1

    .line 104
    aput v5, p5, v2

    .line 105
    .line 106
    return-void
.end method

.method public getCustomData(Ljava/lang/String;[DI)I
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValueToInterpolate()F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    float-to-double v0, p1

    .line 25
    aput-wide v0, p2, p3

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    new-array v2, v1, [F

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    .line 35
    .line 36
    .line 37
    :goto_0
    if-ge v0, v1, :cond_2

    .line 38
    .line 39
    add-int/lit8 p1, p3, 0x1

    .line 40
    .line 41
    aget v3, v2, v0

    .line 42
    .line 43
    float-to-double v3, v3

    .line 44
    aput-wide v3, p2, p3

    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    move p3, p1

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    return v1
.end method

.method public getCustomDataCount(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public getRect([I[D[FI)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 5
    .line 6
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 7
    .line 8
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 9
    .line 10
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    :goto_0
    array-length v7, v1

    .line 14
    if-ge v6, v7, :cond_4

    .line 15
    .line 16
    aget-wide v7, p2, v6

    .line 17
    .line 18
    double-to-float v7, v7

    .line 19
    aget v8, v1, v6

    .line 20
    .line 21
    const/4 v9, 0x1

    .line 22
    if-eq v8, v9, :cond_3

    .line 23
    .line 24
    const/4 v9, 0x2

    .line 25
    if-eq v8, v9, :cond_2

    .line 26
    .line 27
    const/4 v9, 0x3

    .line 28
    if-eq v8, v9, :cond_1

    .line 29
    .line 30
    const/4 v9, 0x4

    .line 31
    if-eq v8, v9, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    move v5, v7

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v4, v7

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move v3, v7

    .line 39
    goto :goto_1

    .line 40
    :cond_3
    move v2, v7

    .line 41
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 45
    .line 46
    if-eqz v1, :cond_5

    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenterX()F

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 53
    .line 54
    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenterY()F

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    float-to-double v11, v1

    .line 59
    float-to-double v1, v2

    .line 60
    float-to-double v13, v3

    .line 61
    move-wide v7, v13

    .line 62
    move-wide v9, v1

    .line 63
    invoke-static/range {v7 .. v12}, Landroid/app/m;->a(DDD)D

    .line 64
    .line 65
    .line 66
    move-result-wide v7

    .line 67
    const/high16 v3, 0x40000000    # 2.0f

    .line 68
    .line 69
    div-float v9, v4, v3

    .line 70
    .line 71
    float-to-double v9, v9

    .line 72
    sub-double/2addr v7, v9

    .line 73
    double-to-float v7, v7

    .line 74
    float-to-double v8, v6

    .line 75
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    .line 76
    .line 77
    .line 78
    move-result-wide v10

    .line 79
    mul-double/2addr v10, v1

    .line 80
    sub-double/2addr v8, v10

    .line 81
    div-float v1, v5, v3

    .line 82
    .line 83
    float-to-double v1, v1

    .line 84
    sub-double/2addr v8, v1

    .line 85
    double-to-float v3, v8

    .line 86
    move v2, v7

    .line 87
    :cond_5
    add-float/2addr v4, v2

    .line 88
    add-float/2addr v5, v3

    .line 89
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 92
    .line 93
    .line 94
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 95
    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    add-float v6, v2, v1

    .line 99
    .line 100
    add-float v7, v3, v1

    .line 101
    .line 102
    add-float v8, v4, v1

    .line 103
    .line 104
    add-float/2addr v3, v1

    .line 105
    add-float/2addr v4, v1

    .line 106
    add-float v9, v5, v1

    .line 107
    .line 108
    add-float/2addr v2, v1

    .line 109
    add-float/2addr v5, v1

    .line 110
    add-int/lit8 v1, p4, 0x1

    .line 111
    .line 112
    aput v6, p3, p4

    .line 113
    .line 114
    add-int/lit8 v6, v1, 0x1

    .line 115
    .line 116
    aput v7, p3, v1

    .line 117
    .line 118
    add-int/lit8 v1, v6, 0x1

    .line 119
    .line 120
    aput v8, p3, v6

    .line 121
    .line 122
    add-int/lit8 v6, v1, 0x1

    .line 123
    .line 124
    aput v3, p3, v1

    .line 125
    .line 126
    add-int/lit8 v1, v6, 0x1

    .line 127
    .line 128
    aput v4, p3, v6

    .line 129
    .line 130
    add-int/lit8 v3, v1, 0x1

    .line 131
    .line 132
    aput v9, p3, v1

    .line 133
    .line 134
    add-int/lit8 v1, v3, 0x1

    .line 135
    .line 136
    aput v2, p3, v3

    .line 137
    .line 138
    aput v5, p3, v1

    .line 139
    .line 140
    return-void
.end method

.method public hasCustomData(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public initCartesian(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget v4, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 10
    .line 11
    int-to-float v4, v4

    .line 12
    const/high16 v5, 0x42c80000    # 100.0f

    .line 13
    .line 14
    div-float/2addr v4, v5

    .line 15
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 16
    .line 17
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    .line 18
    .line 19
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 20
    .line 21
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 22
    .line 23
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    move v5, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 32
    .line 33
    :goto_0
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 34
    .line 35
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    move v6, v4

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 44
    .line 45
    :goto_1
    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 46
    .line 47
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 48
    .line 49
    sub-float v9, v7, v8

    .line 50
    .line 51
    iget v10, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 52
    .line 53
    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 54
    .line 55
    sub-float v12, v10, v11

    .line 56
    .line 57
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 58
    .line 59
    iput v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 60
    .line 61
    iget v13, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 62
    .line 63
    const/high16 v14, 0x40000000    # 2.0f

    .line 64
    .line 65
    div-float v15, v8, v14

    .line 66
    .line 67
    add-float/2addr v15, v13

    .line 68
    iget v1, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 69
    .line 70
    div-float v16, v11, v14

    .line 71
    .line 72
    add-float v16, v16, v1

    .line 73
    .line 74
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 75
    .line 76
    div-float/2addr v7, v14

    .line 77
    add-float/2addr v7, v2

    .line 78
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 79
    .line 80
    div-float/2addr v10, v14

    .line 81
    add-float/2addr v10, v2

    .line 82
    sub-float/2addr v7, v15

    .line 83
    sub-float v10, v10, v16

    .line 84
    .line 85
    mul-float v2, v7, v4

    .line 86
    .line 87
    add-float/2addr v2, v13

    .line 88
    mul-float/2addr v9, v5

    .line 89
    div-float v3, v9, v14

    .line 90
    .line 91
    sub-float/2addr v2, v3

    .line 92
    float-to-int v2, v2

    .line 93
    int-to-float v2, v2

    .line 94
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 95
    .line 96
    mul-float v2, v10, v4

    .line 97
    .line 98
    add-float/2addr v2, v1

    .line 99
    mul-float/2addr v12, v6

    .line 100
    div-float v1, v12, v14

    .line 101
    .line 102
    sub-float/2addr v2, v1

    .line 103
    float-to-int v2, v2

    .line 104
    int-to-float v2, v2

    .line 105
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 106
    .line 107
    add-float/2addr v8, v9

    .line 108
    float-to-int v2, v8

    .line 109
    int-to-float v2, v2

    .line 110
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 111
    .line 112
    add-float/2addr v11, v12

    .line 113
    float-to-int v2, v11

    .line 114
    int-to-float v2, v2

    .line 115
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 116
    .line 117
    move-object/from16 v2, p1

    .line 118
    .line 119
    iget v5, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 120
    .line 121
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_2

    .line 126
    .line 127
    move v5, v4

    .line 128
    goto :goto_2

    .line 129
    :cond_2
    iget v5, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 130
    .line 131
    :goto_2
    iget v6, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 132
    .line 133
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    const/4 v8, 0x0

    .line 138
    if-eqz v6, :cond_3

    .line 139
    .line 140
    move v6, v8

    .line 141
    goto :goto_3

    .line 142
    :cond_3
    iget v6, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 143
    .line 144
    :goto_3
    iget v9, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 145
    .line 146
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    if-eqz v9, :cond_4

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_4
    iget v4, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 154
    .line 155
    :goto_4
    iget v9, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    .line 156
    .line 157
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 158
    .line 159
    .line 160
    move-result v9

    .line 161
    if-eqz v9, :cond_5

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_5
    iget v8, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    .line 165
    .line 166
    :goto_5
    const/4 v9, 0x0

    .line 167
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 168
    .line 169
    move-object/from16 v9, p2

    .line 170
    .line 171
    iget v11, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 172
    .line 173
    mul-float/2addr v5, v7

    .line 174
    add-float/2addr v5, v11

    .line 175
    mul-float/2addr v8, v10

    .line 176
    add-float/2addr v8, v5

    .line 177
    sub-float/2addr v8, v3

    .line 178
    float-to-int v3, v8

    .line 179
    int-to-float v3, v3

    .line 180
    iput v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 181
    .line 182
    iget v3, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 183
    .line 184
    mul-float/2addr v7, v6

    .line 185
    add-float/2addr v7, v3

    .line 186
    mul-float/2addr v10, v4

    .line 187
    add-float/2addr v10, v7

    .line 188
    sub-float/2addr v10, v1

    .line 189
    float-to-int v1, v10

    .line 190
    int-to-float v1, v1

    .line 191
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 192
    .line 193
    iget-object v1, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 194
    .line 195
    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 200
    .line 201
    iget v1, v2, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    .line 202
    .line 203
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 204
    .line 205
    return-void
.end method

.method public initPath(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget v4, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 10
    .line 11
    int-to-float v4, v4

    .line 12
    const/high16 v5, 0x42c80000    # 100.0f

    .line 13
    .line 14
    div-float/2addr v4, v5

    .line 15
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 16
    .line 17
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    .line 18
    .line 19
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 20
    .line 21
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 22
    .line 23
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    move v5, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 32
    .line 33
    :goto_0
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 34
    .line 35
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    move v6, v4

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 44
    .line 45
    :goto_1
    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 46
    .line 47
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 48
    .line 49
    sub-float/2addr v7, v8

    .line 50
    iget v8, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 51
    .line 52
    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 53
    .line 54
    sub-float/2addr v8, v9

    .line 55
    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 56
    .line 57
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 58
    .line 59
    iget v9, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 60
    .line 61
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    if-eqz v9, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    iget v4, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 69
    .line 70
    :goto_2
    iget v9, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 71
    .line 72
    iget v10, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 73
    .line 74
    const/high16 v11, 0x40000000    # 2.0f

    .line 75
    .line 76
    div-float v12, v10, v11

    .line 77
    .line 78
    add-float/2addr v12, v9

    .line 79
    iget v13, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 80
    .line 81
    iget v14, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 82
    .line 83
    div-float v15, v14, v11

    .line 84
    .line 85
    add-float/2addr v15, v13

    .line 86
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 87
    .line 88
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 89
    .line 90
    div-float/2addr v1, v11

    .line 91
    add-float/2addr v1, v2

    .line 92
    iget v2, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 93
    .line 94
    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 95
    .line 96
    div-float/2addr v3, v11

    .line 97
    add-float/2addr v3, v2

    .line 98
    sub-float/2addr v1, v12

    .line 99
    sub-float/2addr v3, v15

    .line 100
    mul-float v2, v1, v4

    .line 101
    .line 102
    add-float/2addr v9, v2

    .line 103
    mul-float/2addr v7, v5

    .line 104
    div-float v5, v7, v11

    .line 105
    .line 106
    sub-float/2addr v9, v5

    .line 107
    float-to-int v9, v9

    .line 108
    int-to-float v9, v9

    .line 109
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 110
    .line 111
    mul-float/2addr v4, v3

    .line 112
    add-float/2addr v13, v4

    .line 113
    mul-float/2addr v8, v6

    .line 114
    div-float v6, v8, v11

    .line 115
    .line 116
    sub-float/2addr v13, v6

    .line 117
    float-to-int v9, v13

    .line 118
    int-to-float v9, v9

    .line 119
    iput v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 120
    .line 121
    add-float/2addr v10, v7

    .line 122
    float-to-int v7, v10

    .line 123
    int-to-float v7, v7

    .line 124
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 125
    .line 126
    add-float/2addr v14, v8

    .line 127
    float-to-int v7, v14

    .line 128
    int-to-float v7, v7

    .line 129
    iput v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 130
    .line 131
    move-object/from16 v7, p1

    .line 132
    .line 133
    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 134
    .line 135
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-eqz v8, :cond_3

    .line 140
    .line 141
    const/4 v8, 0x0

    .line 142
    goto :goto_3

    .line 143
    :cond_3
    iget v8, v7, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 144
    .line 145
    :goto_3
    neg-float v3, v3

    .line 146
    mul-float/2addr v3, v8

    .line 147
    mul-float/2addr v1, v8

    .line 148
    const/4 v8, 0x1

    .line 149
    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 150
    .line 151
    move-object/from16 v8, p2

    .line 152
    .line 153
    iget v9, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 154
    .line 155
    add-float/2addr v9, v2

    .line 156
    sub-float/2addr v9, v5

    .line 157
    float-to-int v2, v9

    .line 158
    int-to-float v2, v2

    .line 159
    iget v5, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 160
    .line 161
    add-float/2addr v5, v4

    .line 162
    sub-float/2addr v5, v6

    .line 163
    float-to-int v4, v5

    .line 164
    int-to-float v4, v4

    .line 165
    add-float/2addr v2, v3

    .line 166
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 167
    .line 168
    add-float/2addr v4, v1

    .line 169
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 170
    .line 171
    iget v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 172
    .line 173
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 174
    .line 175
    iget-object v1, v7, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 182
    .line 183
    iget v1, v7, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    .line 184
    .line 185
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 186
    .line 187
    return-void
.end method

.method public initPolar(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 6

    .line 1
    iget p1, p3, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    const/high16 p2, 0x42c80000    # 100.0f

    .line 5
    .line 6
    div-float/2addr p1, p2

    .line 7
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 8
    .line 9
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    .line 10
    .line 11
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 12
    .line 13
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 14
    .line 15
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 16
    .line 17
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    move p2, p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 28
    .line 29
    :goto_0
    iget v0, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    move v0, p1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget v0, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 40
    .line 41
    :goto_1
    iget v1, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 42
    .line 43
    iget v2, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 44
    .line 45
    sub-float/2addr v1, v2

    .line 46
    iget v3, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 47
    .line 48
    iget v4, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 49
    .line 50
    sub-float/2addr v3, v4

    .line 51
    iget v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 52
    .line 53
    iput v5, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 54
    .line 55
    mul-float/2addr v1, p2

    .line 56
    add-float/2addr v1, v2

    .line 57
    float-to-int v1, v1

    .line 58
    int-to-float v1, v1

    .line 59
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 60
    .line 61
    mul-float/2addr v3, v0

    .line 62
    add-float/2addr v3, v4

    .line 63
    float-to-int v1, v3

    .line 64
    int-to-float v1, v1

    .line 65
    iput v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 66
    .line 67
    iget v1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    if-eq v1, v2, :cond_7

    .line 71
    .line 72
    const/4 v2, 0x2

    .line 73
    if-eq v1, v2, :cond_4

    .line 74
    .line 75
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 76
    .line 77
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_2

    .line 82
    .line 83
    move p2, p1

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 86
    .line 87
    :goto_2
    iget v0, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 88
    .line 89
    iget v1, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 90
    .line 91
    invoke-static {v0, v1, p2, v1}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 96
    .line 97
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 98
    .line 99
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    if-eqz p2, :cond_3

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_3
    iget p1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 107
    .line 108
    :goto_3
    iget p2, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 109
    .line 110
    iget p5, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 111
    .line 112
    invoke-static {p2, p5, p1, p5}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 117
    .line 118
    goto :goto_8

    .line 119
    :cond_4
    iget v1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 120
    .line 121
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_5

    .line 126
    .line 127
    iget p2, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 128
    .line 129
    iget v0, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 130
    .line 131
    invoke-static {p2, v0, p1, v0}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    goto :goto_4

    .line 136
    :cond_5
    iget v1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 137
    .line 138
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    mul-float/2addr p2, v1

    .line 143
    :goto_4
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 144
    .line 145
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 146
    .line 147
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_6

    .line 152
    .line 153
    iget p2, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 154
    .line 155
    iget p5, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 156
    .line 157
    invoke-static {p2, p5, p1, p5}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    goto :goto_5

    .line 162
    :cond_6
    iget p1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 163
    .line 164
    :goto_5
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 165
    .line 166
    goto :goto_8

    .line 167
    :cond_7
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 168
    .line 169
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    if-eqz p2, :cond_8

    .line 174
    .line 175
    move p2, p1

    .line 176
    goto :goto_6

    .line 177
    :cond_8
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 178
    .line 179
    :goto_6
    iget v0, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 180
    .line 181
    iget v1, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 182
    .line 183
    invoke-static {v0, v1, p2, v1}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 184
    .line 185
    .line 186
    move-result p2

    .line 187
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 188
    .line 189
    iget p2, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 190
    .line 191
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 192
    .line 193
    .line 194
    move-result p2

    .line 195
    if-eqz p2, :cond_9

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_9
    iget p1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 199
    .line 200
    :goto_7
    iget p2, p5, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 201
    .line 202
    iget p5, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 203
    .line 204
    invoke-static {p2, p5, p1, p5}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 209
    .line 210
    :goto_8
    iget p1, p4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 211
    .line 212
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 213
    .line 214
    iget-object p1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {p1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 221
    .line 222
    iget p1, p3, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    .line 223
    .line 224
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 225
    .line 226
    return-void
.end method

.method public initScreen(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    iget v4, v1, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 10
    .line 11
    int-to-float v4, v4

    .line 12
    const/high16 v5, 0x42c80000    # 100.0f

    .line 13
    .line 14
    div-float/2addr v4, v5

    .line 15
    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 16
    .line 17
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    .line 18
    .line 19
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 20
    .line 21
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 22
    .line 23
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    move v5, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget v5, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 32
    .line 33
    :goto_0
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 34
    .line 35
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    move v6, v4

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget v6, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 44
    .line 45
    :goto_1
    iget v7, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 46
    .line 47
    iget v8, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 48
    .line 49
    sub-float v9, v7, v8

    .line 50
    .line 51
    iget v10, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 52
    .line 53
    iget v11, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 54
    .line 55
    sub-float v12, v10, v11

    .line 56
    .line 57
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 58
    .line 59
    iput v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 60
    .line 61
    iget v13, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 62
    .line 63
    const/high16 v14, 0x40000000    # 2.0f

    .line 64
    .line 65
    div-float v15, v8, v14

    .line 66
    .line 67
    add-float/2addr v15, v13

    .line 68
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 69
    .line 70
    div-float v16, v11, v14

    .line 71
    .line 72
    add-float v16, v16, v2

    .line 73
    .line 74
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 75
    .line 76
    div-float/2addr v7, v14

    .line 77
    add-float/2addr v7, v1

    .line 78
    iget v1, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 79
    .line 80
    div-float/2addr v10, v14

    .line 81
    add-float/2addr v10, v1

    .line 82
    sub-float/2addr v7, v15

    .line 83
    sub-float v10, v10, v16

    .line 84
    .line 85
    mul-float/2addr v7, v4

    .line 86
    add-float/2addr v7, v13

    .line 87
    mul-float/2addr v9, v5

    .line 88
    div-float v1, v9, v14

    .line 89
    .line 90
    sub-float/2addr v7, v1

    .line 91
    float-to-int v1, v7

    .line 92
    int-to-float v1, v1

    .line 93
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 94
    .line 95
    mul-float/2addr v10, v4

    .line 96
    add-float/2addr v10, v2

    .line 97
    mul-float/2addr v12, v6

    .line 98
    div-float v1, v12, v14

    .line 99
    .line 100
    sub-float/2addr v10, v1

    .line 101
    float-to-int v1, v10

    .line 102
    int-to-float v1, v1

    .line 103
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 104
    .line 105
    add-float/2addr v8, v9

    .line 106
    float-to-int v1, v8

    .line 107
    int-to-float v1, v1

    .line 108
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 109
    .line 110
    add-float/2addr v11, v12

    .line 111
    float-to-int v1, v11

    .line 112
    int-to-float v1, v1

    .line 113
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 114
    .line 115
    const/4 v1, 0x2

    .line 116
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    .line 117
    .line 118
    move-object/from16 v1, p3

    .line 119
    .line 120
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 121
    .line 122
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_2

    .line 127
    .line 128
    move/from16 v2, p1

    .line 129
    .line 130
    int-to-float v2, v2

    .line 131
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 132
    .line 133
    sub-float/2addr v2, v3

    .line 134
    float-to-int v2, v2

    .line 135
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 136
    .line 137
    int-to-float v2, v2

    .line 138
    mul-float/2addr v3, v2

    .line 139
    float-to-int v2, v3

    .line 140
    int-to-float v2, v2

    .line 141
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 142
    .line 143
    :cond_2
    iget v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 144
    .line 145
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-nez v2, :cond_3

    .line 150
    .line 151
    move/from16 v2, p2

    .line 152
    .line 153
    int-to-float v2, v2

    .line 154
    iget v3, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 155
    .line 156
    sub-float/2addr v2, v3

    .line 157
    float-to-int v2, v2

    .line 158
    iget v3, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 159
    .line 160
    int-to-float v2, v2

    .line 161
    mul-float/2addr v3, v2

    .line 162
    float-to-int v2, v3

    .line 163
    int-to-float v2, v2

    .line 164
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 165
    .line 166
    :cond_3
    iget v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 167
    .line 168
    iput v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mAnimateRelativeTo:I

    .line 169
    .line 170
    iget-object v2, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v2}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 177
    .line 178
    iget v1, v1, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    .line 179
    .line 180
    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 181
    .line 182
    return-void
.end method

.method public setBounds(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 2
    .line 3
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 4
    .line 5
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 6
    .line 7
    iput p4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 8
    .line 9
    return-void
.end method

.method public setDpDt(FF[F[I[D[D)V
    .locals 12

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v4, v1

    .line 6
    move v5, v4

    .line 7
    move v6, v5

    .line 8
    move v7, v6

    .line 9
    move v3, v2

    .line 10
    :goto_0
    array-length v8, v0

    .line 11
    const/4 v9, 0x1

    .line 12
    if-ge v3, v8, :cond_4

    .line 13
    .line 14
    aget-wide v10, p5, v3

    .line 15
    .line 16
    double-to-float v8, v10

    .line 17
    aget-wide v10, p6, v3

    .line 18
    .line 19
    aget v10, v0, v3

    .line 20
    .line 21
    if-eq v10, v9, :cond_3

    .line 22
    .line 23
    const/4 v9, 0x2

    .line 24
    if-eq v10, v9, :cond_2

    .line 25
    .line 26
    const/4 v9, 0x3

    .line 27
    if-eq v10, v9, :cond_1

    .line 28
    .line 29
    const/4 v9, 0x4

    .line 30
    if-eq v10, v9, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    move v7, v8

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v5, v8

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move v6, v8

    .line 38
    goto :goto_1

    .line 39
    :cond_3
    move v4, v8

    .line 40
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    mul-float v0, v1, v5

    .line 44
    .line 45
    const/high16 v3, 0x40000000    # 2.0f

    .line 46
    .line 47
    div-float/2addr v0, v3

    .line 48
    sub-float/2addr v4, v0

    .line 49
    mul-float v0, v1, v7

    .line 50
    .line 51
    div-float/2addr v0, v3

    .line 52
    sub-float/2addr v6, v0

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    .line 54
    .line 55
    mul-float/2addr v5, v0

    .line 56
    mul-float/2addr v7, v0

    .line 57
    add-float/2addr v5, v4

    .line 58
    add-float/2addr v7, v6

    .line 59
    sub-float v3, v0, p1

    .line 60
    .line 61
    mul-float/2addr v3, v4

    .line 62
    mul-float/2addr v5, p1

    .line 63
    add-float/2addr v5, v3

    .line 64
    add-float/2addr v5, v1

    .line 65
    aput v5, p3, v2

    .line 66
    .line 67
    sub-float/2addr v0, p2

    .line 68
    mul-float/2addr v0, v6

    .line 69
    mul-float/2addr v7, p2

    .line 70
    add-float/2addr v7, v0

    .line 71
    add-float/2addr v7, v1

    .line 72
    aput v7, p3, v9

    .line 73
    .line 74
    return-void
.end method

.method public setView(FLandroid/view/View;[I[D[D[DZ)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    iget v4, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 10
    .line 11
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 12
    .line 13
    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 14
    .line 15
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 16
    .line 17
    array-length v8, v2

    .line 18
    if-eqz v8, :cond_0

    .line 19
    .line 20
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 21
    .line 22
    array-length v8, v8

    .line 23
    array-length v9, v2

    .line 24
    add-int/lit8 v9, v9, -0x1

    .line 25
    .line 26
    aget v9, v2, v9

    .line 27
    .line 28
    if-gt v8, v9, :cond_0

    .line 29
    .line 30
    array-length v8, v2

    .line 31
    add-int/lit8 v8, v8, -0x1

    .line 32
    .line 33
    aget v8, v2, v8

    .line 34
    .line 35
    add-int/lit8 v8, v8, 0x1

    .line 36
    .line 37
    new-array v9, v8, [D

    .line 38
    .line 39
    iput-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 40
    .line 41
    new-array v8, v8, [D

    .line 42
    .line 43
    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    .line 44
    .line 45
    :cond_0
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 46
    .line 47
    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    .line 48
    .line 49
    invoke-static {v8, v9, v10}, Ljava/util/Arrays;->fill([DD)V

    .line 50
    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    :goto_0
    array-length v9, v2

    .line 54
    if-ge v8, v9, :cond_1

    .line 55
    .line 56
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 57
    .line 58
    aget v10, v2, v8

    .line 59
    .line 60
    aget-wide v11, p4, v8

    .line 61
    .line 62
    aput-wide v11, v9, v10

    .line 63
    .line 64
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    .line 65
    .line 66
    aget-wide v11, v3, v8

    .line 67
    .line 68
    aput-wide v11, v9, v10

    .line 69
    .line 70
    add-int/lit8 v8, v8, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 74
    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v9, 0x0

    .line 77
    const/4 v10, 0x0

    .line 78
    const/4 v11, 0x0

    .line 79
    const/4 v12, 0x0

    .line 80
    :goto_1
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 81
    .line 82
    array-length v14, v13

    .line 83
    if-ge v8, v14, :cond_b

    .line 84
    .line 85
    aget-wide v14, v13, v8

    .line 86
    .line 87
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    const-wide/16 v14, 0x0

    .line 92
    .line 93
    if-eqz v13, :cond_2

    .line 94
    .line 95
    if-eqz p6, :cond_a

    .line 96
    .line 97
    aget-wide v16, p6, v8

    .line 98
    .line 99
    cmpl-double v13, v16, v14

    .line 100
    .line 101
    if-nez v13, :cond_2

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_2
    if-eqz p6, :cond_3

    .line 105
    .line 106
    aget-wide v14, p6, v8

    .line 107
    .line 108
    :cond_3
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 109
    .line 110
    aget-wide v16, v13, v8

    .line 111
    .line 112
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    .line 113
    .line 114
    .line 115
    move-result v13

    .line 116
    if-eqz v13, :cond_4

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempValue:[D

    .line 120
    .line 121
    aget-wide v16, v13, v8

    .line 122
    .line 123
    add-double v14, v16, v14

    .line 124
    .line 125
    :goto_2
    double-to-float v13, v14

    .line 126
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTempDelta:[D

    .line 127
    .line 128
    move v15, v13

    .line 129
    aget-wide v13, v14, v8

    .line 130
    .line 131
    double-to-float v13, v13

    .line 132
    const/4 v14, 0x1

    .line 133
    if-eq v8, v14, :cond_9

    .line 134
    .line 135
    const/4 v14, 0x2

    .line 136
    if-eq v8, v14, :cond_8

    .line 137
    .line 138
    const/4 v14, 0x3

    .line 139
    if-eq v8, v14, :cond_7

    .line 140
    .line 141
    const/4 v14, 0x4

    .line 142
    if-eq v8, v14, :cond_6

    .line 143
    .line 144
    const/4 v13, 0x5

    .line 145
    if-eq v8, v13, :cond_5

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    move v2, v15

    .line 149
    goto :goto_3

    .line 150
    :cond_6
    move v12, v13

    .line 151
    move v7, v15

    .line 152
    goto :goto_3

    .line 153
    :cond_7
    move v11, v13

    .line 154
    move v6, v15

    .line 155
    goto :goto_3

    .line 156
    :cond_8
    move v10, v13

    .line 157
    move v5, v15

    .line 158
    goto :goto_3

    .line 159
    :cond_9
    move v9, v13

    .line 160
    move v4, v15

    .line 161
    :cond_a
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_b
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 165
    .line 166
    if-eqz v8, :cond_e

    .line 167
    .line 168
    const/4 v11, 0x2

    .line 169
    new-array v12, v11, [F

    .line 170
    .line 171
    new-array v11, v11, [F

    .line 172
    .line 173
    move/from16 v14, p1

    .line 174
    .line 175
    float-to-double v14, v14

    .line 176
    invoke-virtual {v8, v14, v15, v12, v11}, Landroidx/constraintlayout/motion/widget/MotionController;->getCenter(D[F[F)V

    .line 177
    .line 178
    .line 179
    const/4 v8, 0x0

    .line 180
    aget v14, v12, v8

    .line 181
    .line 182
    const/4 v15, 0x1

    .line 183
    aget v12, v12, v15

    .line 184
    .line 185
    aget v8, v11, v8

    .line 186
    .line 187
    aget v11, v11, v15

    .line 188
    .line 189
    float-to-double v14, v14

    .line 190
    move-wide/from16 v16, v14

    .line 191
    .line 192
    float-to-double v13, v4

    .line 193
    float-to-double v4, v5

    .line 194
    move-wide/from16 v19, v16

    .line 195
    .line 196
    move-wide v15, v4

    .line 197
    move-wide/from16 v17, v13

    .line 198
    .line 199
    invoke-static/range {v15 .. v20}, Landroid/app/m;->a(DDD)D

    .line 200
    .line 201
    .line 202
    move-result-wide v15

    .line 203
    const/high16 v17, 0x40000000    # 2.0f

    .line 204
    .line 205
    div-float v0, v6, v17

    .line 206
    .line 207
    float-to-double v0, v0

    .line 208
    sub-double v0, v15, v0

    .line 209
    .line 210
    double-to-float v0, v0

    .line 211
    move v15, v0

    .line 212
    float-to-double v0, v12

    .line 213
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 214
    .line 215
    .line 216
    move-result-wide v16

    .line 217
    mul-double v16, v16, v13

    .line 218
    .line 219
    sub-double v0, v0, v16

    .line 220
    .line 221
    const/high16 v12, 0x40000000    # 2.0f

    .line 222
    .line 223
    div-float v12, v7, v12

    .line 224
    .line 225
    move/from16 p3, v6

    .line 226
    .line 227
    move/from16 p4, v7

    .line 228
    .line 229
    float-to-double v6, v12

    .line 230
    sub-double/2addr v0, v6

    .line 231
    double-to-float v0, v0

    .line 232
    float-to-double v6, v8

    .line 233
    float-to-double v8, v9

    .line 234
    move-wide/from16 v18, v4

    .line 235
    .line 236
    move-wide/from16 v20, v8

    .line 237
    .line 238
    move-wide/from16 v22, v6

    .line 239
    .line 240
    invoke-static/range {v18 .. v23}, Landroid/app/m;->a(DDD)D

    .line 241
    .line 242
    .line 243
    move-result-wide v6

    .line 244
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 245
    .line 246
    .line 247
    move-result-wide v16

    .line 248
    mul-double v16, v16, v13

    .line 249
    .line 250
    move v12, v0

    .line 251
    float-to-double v0, v10

    .line 252
    mul-double v16, v16, v0

    .line 253
    .line 254
    add-double v6, v16, v6

    .line 255
    .line 256
    double-to-float v6, v6

    .line 257
    float-to-double v10, v11

    .line 258
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    .line 259
    .line 260
    .line 261
    move-result-wide v16

    .line 262
    mul-double v16, v16, v8

    .line 263
    .line 264
    sub-double v10, v10, v16

    .line 265
    .line 266
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    .line 267
    .line 268
    .line 269
    move-result-wide v4

    .line 270
    mul-double/2addr v4, v13

    .line 271
    mul-double/2addr v4, v0

    .line 272
    add-double/2addr v4, v10

    .line 273
    double-to-float v0, v4

    .line 274
    array-length v1, v3

    .line 275
    const/4 v4, 0x2

    .line 276
    if-lt v1, v4, :cond_c

    .line 277
    .line 278
    float-to-double v4, v6

    .line 279
    const/4 v1, 0x0

    .line 280
    aput-wide v4, v3, v1

    .line 281
    .line 282
    float-to-double v4, v0

    .line 283
    const/4 v7, 0x1

    .line 284
    aput-wide v4, v3, v7

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_c
    const/4 v1, 0x0

    .line 288
    const/4 v7, 0x1

    .line 289
    :goto_4
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-nez v3, :cond_d

    .line 294
    .line 295
    float-to-double v2, v2

    .line 296
    float-to-double v4, v0

    .line 297
    float-to-double v8, v6

    .line 298
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    .line 299
    .line 300
    .line 301
    move-result-wide v4

    .line 302
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    .line 303
    .line 304
    .line 305
    move-result-wide v4

    .line 306
    add-double/2addr v4, v2

    .line 307
    double-to-float v0, v4

    .line 308
    move-object/from16 v3, p2

    .line 309
    .line 310
    invoke-virtual {v3, v0}, Landroid/view/View;->setRotation(F)V

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :cond_d
    move-object/from16 v3, p2

    .line 315
    .line 316
    :goto_5
    move v5, v12

    .line 317
    move v4, v15

    .line 318
    goto :goto_6

    .line 319
    :cond_e
    move-object v3, v1

    .line 320
    move/from16 p3, v6

    .line 321
    .line 322
    move/from16 p4, v7

    .line 323
    .line 324
    const/4 v7, 0x1

    .line 325
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-nez v0, :cond_f

    .line 330
    .line 331
    const/high16 v0, 0x40000000    # 2.0f

    .line 332
    .line 333
    div-float/2addr v11, v0

    .line 334
    add-float/2addr v11, v9

    .line 335
    div-float/2addr v12, v0

    .line 336
    add-float/2addr v12, v10

    .line 337
    const/4 v0, 0x0

    .line 338
    float-to-double v8, v0

    .line 339
    float-to-double v13, v2

    .line 340
    float-to-double v1, v12

    .line 341
    float-to-double v10, v11

    .line 342
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    .line 343
    .line 344
    .line 345
    move-result-wide v0

    .line 346
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    .line 347
    .line 348
    .line 349
    move-result-wide v0

    .line 350
    add-double/2addr v0, v13

    .line 351
    add-double/2addr v0, v8

    .line 352
    double-to-float v0, v0

    .line 353
    invoke-virtual {v3, v0}, Landroid/view/View;->setRotation(F)V

    .line 354
    .line 355
    .line 356
    :cond_f
    const/4 v1, 0x0

    .line 357
    :goto_6
    instance-of v0, v3, Landroidx/constraintlayout/motion/widget/FloatLayout;

    .line 358
    .line 359
    if-eqz v0, :cond_10

    .line 360
    .line 361
    add-float v6, p3, v4

    .line 362
    .line 363
    add-float v7, v5, p4

    .line 364
    .line 365
    move-object v0, v3

    .line 366
    check-cast v0, Landroidx/constraintlayout/motion/widget/FloatLayout;

    .line 367
    .line 368
    invoke-interface {v0, v4, v5, v6, v7}, Landroidx/constraintlayout/motion/widget/FloatLayout;->layout(FFFF)V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :cond_10
    const/high16 v0, 0x3f000000    # 0.5f

    .line 373
    .line 374
    add-float/2addr v4, v0

    .line 375
    float-to-int v2, v4

    .line 376
    add-float/2addr v5, v0

    .line 377
    float-to-int v0, v5

    .line 378
    add-float v4, v4, p3

    .line 379
    .line 380
    float-to-int v4, v4

    .line 381
    add-float v5, v5, p4

    .line 382
    .line 383
    float-to-int v5, v5

    .line 384
    sub-int v6, v4, v2

    .line 385
    .line 386
    sub-int v8, v5, v0

    .line 387
    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    .line 389
    .line 390
    .line 391
    move-result v9

    .line 392
    if-ne v6, v9, :cond_11

    .line 393
    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 395
    .line 396
    .line 397
    move-result v9

    .line 398
    if-eq v8, v9, :cond_12

    .line 399
    .line 400
    :cond_11
    move v1, v7

    .line 401
    :cond_12
    if-nez v1, :cond_13

    .line 402
    .line 403
    if-eqz p7, :cond_14

    .line 404
    .line 405
    :cond_13
    const/high16 v1, 0x40000000    # 2.0f

    .line 406
    .line 407
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 408
    .line 409
    .line 410
    move-result v6

    .line 411
    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    invoke-virtual {v3, v6, v1}, Landroid/view/View;->measure(II)V

    .line 416
    .line 417
    .line 418
    :cond_14
    invoke-virtual {v3, v2, v0, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 419
    .line 420
    .line 421
    return-void
.end method

.method public setupRelative(Landroidx/constraintlayout/motion/widget/MotionController;Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 2
    .line 3
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 4
    .line 5
    const/high16 v2, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr v1, v2

    .line 8
    add-float/2addr v1, v0

    .line 9
    iget v0, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 10
    .line 11
    sub-float/2addr v1, v0

    .line 12
    iget v0, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    .line 13
    .line 14
    div-float/2addr v0, v2

    .line 15
    sub-float/2addr v1, v0

    .line 16
    float-to-double v0, v1

    .line 17
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 18
    .line 19
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 20
    .line 21
    div-float/2addr v4, v2

    .line 22
    add-float/2addr v4, v3

    .line 23
    iget v3, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 24
    .line 25
    sub-float/2addr v4, v3

    .line 26
    iget p2, p2, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    .line 27
    .line 28
    div-float/2addr p2, v2

    .line 29
    sub-float/2addr v4, p2

    .line 30
    float-to-double v2, v4

    .line 31
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeToController:Landroidx/constraintlayout/motion/widget/MotionController;

    .line 32
    .line 33
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    double-to-float p1, p1

    .line 38
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    .line 39
    .line 40
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 49
    .line 50
    .line 51
    move-result-wide p1

    .line 52
    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    add-double/2addr p1, v0

    .line 58
    double-to-float p1, p1

    .line 59
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mRelativeAngle:F

    .line 63
    .line 64
    float-to-double p1, p1

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    double-to-float p1, p1

    .line 70
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    .line 71
    .line 72
    :goto_0
    return-void
.end method
