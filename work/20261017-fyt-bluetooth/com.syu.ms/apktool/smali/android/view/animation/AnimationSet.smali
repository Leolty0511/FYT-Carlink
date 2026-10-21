.class public Landroid/view/animation/AnimationSet;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# static fields
.field private static final PROPERTY_CHANGE_BOUNDS_MASK:I = 0x80

.field private static final PROPERTY_DURATION_MASK:I = 0x20

.field private static final PROPERTY_FILL_AFTER_MASK:I = 0x1

.field private static final PROPERTY_FILL_BEFORE_MASK:I = 0x2

.field private static final PROPERTY_MORPH_MATRIX_MASK:I = 0x40

.field private static final PROPERTY_REPEAT_MODE_MASK:I = 0x4

.field private static final PROPERTY_SHARE_INTERPOLATOR_MASK:I = 0x10

.field private static final PROPERTY_START_OFFSET_MASK:I = 0x8


# instance fields
.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mDirty:Z

.field private mFlags:I

.field private mHasAlpha:Z

.field private mLastEnd:J

.field private mStoredOffsets:[J

.field private mTempTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 4
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 5
    sget-object v1, Li/a;->AnimationSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x1

    .line 6
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v3, 0x10

    invoke-direct {p0, v3, v2}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    .line 7
    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0xe

    if-lt p1, v2, :cond_4

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    iget p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_0
    const/4 p1, 0x2

    .line 11
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_1
    const/4 p1, 0x3

    .line 13
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr p1, v1

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :cond_2
    const/4 p1, 0x5

    .line 15
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_3

    .line 16
    iget p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 17
    :cond_3
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    iget p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 19
    :cond_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    const/16 v0, 0x10

    .line 24
    invoke-direct {p0, v0, p1}, Landroid/view/animation/AnimationSet;->setFlag(IZ)V

    .line 25
    invoke-direct {p0}, Landroid/view/animation/AnimationSet;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    return-void
.end method

.method private setFlag(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget p2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    goto :goto_0

    .line 2
    :cond_0
    iget p2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    :goto_0
    return-void
.end method


# virtual methods
.method public addAnimation(Landroid/view/animation/Animation;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 5
    :cond_1
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 8
    :cond_3
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 9
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    iget-wide v3, p0, Landroid/view/animation/Animation;->mDuration:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    goto :goto_1

    .line 10
    :cond_4
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 11
    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 12
    iget-wide v3, p0, Landroid/view/animation/Animation;->mStartOffset:J

    add-long/2addr v3, v0

    iput-wide v3, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    goto :goto_1

    .line 13
    :cond_5
    iget-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    .line 14
    iget-wide v3, p0, Landroid/view/animation/Animation;->mStartOffset:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 15
    :goto_1
    iput-boolean v2, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    return-void
.end method

.method public bridge synthetic clone()Landroid/view/animation/Animation;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/view/animation/AnimationSet;
    .locals 6

    .line 3
    invoke-super {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 4
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 6
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 8
    iget-object v4, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->clone()Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v2, 0x0

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    move-wide v2, v4

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public getAnimations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDuration()J
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3
    iget v2, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    .line 4
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    goto :goto_2

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    if-ge v4, v1, :cond_2

    .line 5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-wide v0, v2

    :goto_2
    return-wide v0
.end method

.method public getStartTime()J
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/animation/Animation;

    .line 4
    invoke-virtual {v5}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v5

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 3
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 4
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->clear()V

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    move v7, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ltz v0, :cond_5

    .line 5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/animation/Animation;

    .line 6
    invoke-virtual {v2}, Landroid/view/animation/Transformation;->clear()V

    .line 7
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getScaleFactor()F

    move-result v9

    invoke-virtual {v8, p1, p2, v2, v9}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v9

    if-nez v9, :cond_1

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v6, v4

    goto :goto_2

    :cond_1
    :goto_1
    move v6, v3

    .line 8
    :goto_2
    invoke-virtual {p3, v2}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    if-nez v5, :cond_3

    .line 9
    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    move v5, v4

    goto :goto_4

    :cond_3
    :goto_3
    move v5, v3

    .line 10
    :goto_4
    invoke-virtual {v8}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v7, :cond_4

    move v7, v3

    goto :goto_5

    :cond_4
    move v7, v4

    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_7

    .line 11
    iget-boolean p1, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-nez p1, :cond_7

    .line 12
    iget-object p1, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz p1, :cond_6

    .line 13
    invoke-interface {p1, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 14
    :cond_6
    iput-boolean v3, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 15
    :cond_7
    iget-boolean p1, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-eq v7, p1, :cond_9

    .line 16
    iget-object p1, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz p1, :cond_8

    .line 17
    invoke-interface {p1, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 18
    :cond_8
    iput-boolean v7, p0, Landroid/view/animation/Animation;->mEnded:Z

    :cond_9
    return v6
.end method

.method public hasAlpha()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mDirty:Z

    .line 3
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4
    iget-object v2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    :goto_0
    if-ge v0, v1, :cond_1

    .line 5
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroid/view/animation/AnimationSet;->mHasAlpha:Z

    return v0
.end method

.method public initialize(IIII)V
    .locals 23

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2
    iget v1, v0, Landroid/view/animation/AnimationSet;->mFlags:I

    and-int/lit8 v2, v1, 0x20

    const/16 v3, 0x20

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v3, v1, 0x1

    if-ne v3, v5, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    and-int/lit8 v6, v1, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move v6, v5

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    and-int/lit8 v7, v1, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    and-int/lit8 v8, v1, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_4

    move v8, v5

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    const/16 v9, 0x8

    and-int/2addr v1, v9

    if-ne v1, v9, :cond_5

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-eqz v8, :cond_6

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 4
    :cond_6
    iget-object v1, v0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 6
    iget-wide v10, v0, Landroid/view/animation/Animation;->mDuration:J

    .line 7
    iget-boolean v12, v0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 8
    iget-boolean v13, v0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 9
    iget v14, v0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 10
    iget-object v15, v0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v16, v14

    move-object/from16 v17, v15

    .line 11
    iget-wide v14, v0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 12
    iget-object v4, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    if-eqz v5, :cond_8

    move-wide/from16 v19, v14

    if-eqz v4, :cond_7

    .line 13
    array-length v14, v4

    if-eq v14, v9, :cond_9

    .line 14
    :cond_7
    new-array v4, v9, [J

    iput-object v4, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    goto :goto_6

    :cond_8
    move-wide/from16 v19, v14

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    .line 15
    iput-object v4, v0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    :cond_9
    :goto_6
    const/4 v14, 0x0

    :goto_7
    if-ge v14, v9, :cond_10

    .line 16
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/animation/Animation;

    if-eqz v2, :cond_a

    .line 17
    invoke-virtual {v15, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_a
    if-eqz v3, :cond_b

    .line 18
    invoke-virtual {v15, v12}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    :cond_b
    if-eqz v6, :cond_c

    .line 19
    invoke-virtual {v15, v13}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    :cond_c
    move/from16 v0, v16

    if-eqz v7, :cond_d

    .line 20
    invoke-virtual {v15, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    :cond_d
    move/from16 v16, v0

    move-object/from16 v0, v17

    if-eqz v8, :cond_e

    .line 21
    invoke-virtual {v15, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_e
    if-eqz v5, :cond_f

    .line 22
    invoke-virtual {v15}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v17

    move-object/from16 v22, v0

    move-object/from16 v21, v1

    add-long v0, v17, v19

    .line 23
    invoke-virtual {v15, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 24
    aput-wide v17, v4, v14

    goto :goto_8

    :cond_f
    move-object/from16 v22, v0

    move-object/from16 v21, v1

    :goto_8
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v2, p3

    move/from16 v3, p4

    .line 25
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v1, v21

    move-object/from16 v17, v22

    goto :goto_7

    :cond_10
    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 3
    invoke-virtual {v0, p1, p1}, Landroid/graphics/RectF;->inset(FF)V

    .line 4
    iget-boolean p1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 6
    iget-object p2, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 7
    iget-object p3, p0, Landroid/view/animation/AnimationSet;->mTempTransformation:Landroid/view/animation/Transformation;

    .line 8
    iget-object p4, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 9
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 10
    invoke-virtual {v0}, Landroid/view/animation/Animation;->isFillEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getFillBefore()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 11
    :cond_0
    invoke-virtual {p3}, Landroid/view/animation/Transformation;->clear()V

    .line 12
    iget-object v1, v0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 13
    invoke-interface {v1, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    :cond_1
    invoke-virtual {v0, v2, p3}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 14
    invoke-virtual {p4, p3}, Landroid/view/animation/Transformation;->compose(Landroid/view/animation/Transformation;)V

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public reset()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    .line 2
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->restoreChildrenStartOffset()V

    return-void
.end method

.method public restoreChildrenStartOffset()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mStoredOffsets:[J

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    aget-wide v5, v0, v3

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public restrictDuration(J)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 2
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public scaleCurrentDuration(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    invoke-virtual {v3, p1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDuration(J)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3
    iget-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroid/view/animation/AnimationSet;->mLastEnd:J

    return-void
.end method

.method public setFillAfter(Z)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 2
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method public setFillBefore(Z)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 2
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 2
    invoke-super {p0, p1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    return-void
.end method

.method public setStartOffset(J)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    return-void
.end method

.method public setStartTime(J)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 2
    iget-object v0, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3
    iget-object v1, p0, Landroid/view/animation/AnimationSet;->mAnimations:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    .line 5
    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public willChangeBounds()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/view/animation/AnimationSet;->mFlags:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
