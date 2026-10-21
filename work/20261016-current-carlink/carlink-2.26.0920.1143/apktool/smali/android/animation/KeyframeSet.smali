.class public Landroid/animation/KeyframeSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Keyframes;


# instance fields
.field mEvaluator:Landroid/animation/TypeEvaluator;

.field mFirstKeyframe:Landroid/animation/Keyframe;

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mKeyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field mLastKeyframe:Landroid/animation/Keyframe;

.field mNumKeyframes:I


# direct methods
.method public varargs constructor <init>([Landroid/animation/Keyframe;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p1

    .line 5
    iput v0, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    aget-object v0, p1, v0

    .line 15
    .line 16
    iput-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    .line 17
    .line 18
    iget v0, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    aget-object p1, p1, v0

    .line 23
    .line 24
    iput-object p1, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 31
    .line 32
    return-void
.end method

.method public static varargs ofFloat([F)Landroid/animation/KeyframeSet;
    .locals 7

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v1, v1, [Landroid/animation/Keyframe$FloatKeyframe;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v0, v4, :cond_0

    .line 13
    .line 14
    invoke-static {v2}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/animation/Keyframe$FloatKeyframe;

    .line 19
    .line 20
    aput-object v0, v1, v3

    .line 21
    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    .line 24
    aget v2, p0, v3

    .line 25
    .line 26
    invoke-static {v0, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/animation/Keyframe$FloatKeyframe;

    .line 31
    .line 32
    aput-object v0, v1, v4

    .line 33
    .line 34
    aget p0, p0, v3

    .line 35
    .line 36
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    move v3, v4

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    aget v5, p0, v3

    .line 45
    .line 46
    invoke-static {v2, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Landroid/animation/Keyframe$FloatKeyframe;

    .line 51
    .line 52
    aput-object v2, v1, v3

    .line 53
    .line 54
    move v2, v4

    .line 55
    :goto_0
    if-ge v2, v0, :cond_2

    .line 56
    .line 57
    int-to-float v5, v2

    .line 58
    add-int/lit8 v6, v0, -0x1

    .line 59
    .line 60
    int-to-float v6, v6

    .line 61
    div-float/2addr v5, v6

    .line 62
    aget v6, p0, v2

    .line 63
    .line 64
    invoke-static {v5, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    check-cast v5, Landroid/animation/Keyframe$FloatKeyframe;

    .line 69
    .line 70
    aput-object v5, v1, v2

    .line 71
    .line 72
    aget v5, p0, v2

    .line 73
    .line 74
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-eqz v5, :cond_1

    .line 79
    .line 80
    move v3, v4

    .line 81
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 85
    .line 86
    const-string p0, "Animator"

    .line 87
    .line 88
    const-string v0, "Bad value (NaN) in float animator"

    .line 89
    .line 90
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_3
    new-instance p0, Landroid/animation/FloatKeyframeSet;

    .line 94
    .line 95
    invoke-direct {p0, v1}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    .line 96
    .line 97
    .line 98
    return-object p0
.end method

.method public static varargs ofInt([I)Landroid/animation/KeyframeSet;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v1, v1, [Landroid/animation/Keyframe$IntKeyframe;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v0, v4, :cond_0

    .line 13
    .line 14
    invoke-static {v2}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/animation/Keyframe$IntKeyframe;

    .line 19
    .line 20
    aput-object v0, v1, v3

    .line 21
    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    .line 24
    aget p0, p0, v3

    .line 25
    .line 26
    invoke-static {v0, p0}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroid/animation/Keyframe$IntKeyframe;

    .line 31
    .line 32
    aput-object p0, v1, v4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    aget v5, p0, v3

    .line 36
    .line 37
    invoke-static {v2, v5}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/animation/Keyframe$IntKeyframe;

    .line 42
    .line 43
    aput-object v2, v1, v3

    .line 44
    .line 45
    :goto_0
    if-ge v4, v0, :cond_1

    .line 46
    .line 47
    int-to-float v2, v4

    .line 48
    add-int/lit8 v3, v0, -0x1

    .line 49
    .line 50
    int-to-float v3, v3

    .line 51
    div-float/2addr v2, v3

    .line 52
    aget v3, p0, v4

    .line 53
    .line 54
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Landroid/animation/Keyframe$IntKeyframe;

    .line 59
    .line 60
    aput-object v2, v1, v4

    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    new-instance p0, Landroid/animation/IntKeyframeSet;

    .line 66
    .line 67
    invoke-direct {p0, v1}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    .line 68
    .line 69
    .line 70
    return-object p0
.end method

.method public static varargs ofKeyframe([Landroid/animation/Keyframe;)Landroid/animation/KeyframeSet;
    .locals 9

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    move v4, v3

    .line 6
    move v5, v4

    .line 7
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    .line 9
    aget-object v6, p0, v2

    .line 10
    .line 11
    instance-of v7, v6, Landroid/animation/Keyframe$FloatKeyframe;

    .line 12
    .line 13
    const/4 v8, 0x1

    .line 14
    if-eqz v7, :cond_0

    .line 15
    .line 16
    move v3, v8

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    instance-of v6, v6, Landroid/animation/Keyframe$IntKeyframe;

    .line 19
    .line 20
    if-eqz v6, :cond_1

    .line 21
    .line 22
    move v4, v8

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v5, v8

    .line 25
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    if-eqz v3, :cond_4

    .line 29
    .line 30
    if-nez v4, :cond_4

    .line 31
    .line 32
    if-nez v5, :cond_4

    .line 33
    .line 34
    new-array v2, v0, [Landroid/animation/Keyframe$FloatKeyframe;

    .line 35
    .line 36
    :goto_2
    if-ge v1, v0, :cond_3

    .line 37
    .line 38
    aget-object v3, p0, v1

    .line 39
    .line 40
    check-cast v3, Landroid/animation/Keyframe$FloatKeyframe;

    .line 41
    .line 42
    aput-object v3, v2, v1

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    new-instance p0, Landroid/animation/FloatKeyframeSet;

    .line 48
    .line 49
    invoke-direct {p0, v2}, Landroid/animation/FloatKeyframeSet;-><init>([Landroid/animation/Keyframe$FloatKeyframe;)V

    .line 50
    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_4
    if-eqz v4, :cond_6

    .line 54
    .line 55
    if-nez v3, :cond_6

    .line 56
    .line 57
    if-nez v5, :cond_6

    .line 58
    .line 59
    new-array v2, v0, [Landroid/animation/Keyframe$IntKeyframe;

    .line 60
    .line 61
    :goto_3
    if-ge v1, v0, :cond_5

    .line 62
    .line 63
    aget-object v3, p0, v1

    .line 64
    .line 65
    check-cast v3, Landroid/animation/Keyframe$IntKeyframe;

    .line 66
    .line 67
    aput-object v3, v2, v1

    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_5
    new-instance p0, Landroid/animation/IntKeyframeSet;

    .line 73
    .line 74
    invoke-direct {p0, v2}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_6
    new-instance v0, Landroid/animation/KeyframeSet;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    .line 81
    .line 82
    .line 83
    return-object v0
.end method

.method public static varargs ofObject([Ljava/lang/Object;)Landroid/animation/KeyframeSet;
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v1, v1, [Landroid/animation/Keyframe$ObjectKeyframe;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v0, v4, :cond_0

    .line 13
    .line 14
    invoke-static {v2}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/animation/Keyframe$ObjectKeyframe;

    .line 19
    .line 20
    aput-object v0, v1, v3

    .line 21
    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    .line 24
    aget-object p0, p0, v3

    .line 25
    .line 26
    invoke-static {v0, p0}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroid/animation/Keyframe$ObjectKeyframe;

    .line 31
    .line 32
    aput-object p0, v1, v4

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    aget-object v5, p0, v3

    .line 36
    .line 37
    invoke-static {v2, v5}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/animation/Keyframe$ObjectKeyframe;

    .line 42
    .line 43
    aput-object v2, v1, v3

    .line 44
    .line 45
    :goto_0
    if-ge v4, v0, :cond_1

    .line 46
    .line 47
    int-to-float v2, v4

    .line 48
    add-int/lit8 v3, v0, -0x1

    .line 49
    .line 50
    int-to-float v3, v3

    .line 51
    div-float/2addr v2, v3

    .line 52
    aget-object v3, p0, v4

    .line 53
    .line 54
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofObject(FLjava/lang/Object;)Landroid/animation/Keyframe;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Landroid/animation/Keyframe$ObjectKeyframe;

    .line 59
    .line 60
    aput-object v2, v1, v4

    .line 61
    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    :goto_1
    new-instance p0, Landroid/animation/KeyframeSet;

    .line 66
    .line 67
    invoke-direct {p0, v1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    .line 68
    .line 69
    .line 70
    return-object p0
.end method

.method public static ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;
    .locals 1

    .line 1
    new-instance v0, Landroid/animation/PathKeyframes;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method public static ofPath(Landroid/graphics/Path;F)Landroid/animation/PathKeyframes;
    .locals 1

    .line 2
    new-instance v0, Landroid/animation/PathKeyframes;

    invoke-direct {v0, p0, p1}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;F)V

    return-object v0
.end method


# virtual methods
.method public clone()Landroid/animation/KeyframeSet;
    .locals 5

    .line 3
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 5
    new-array v2, v1, [Landroid/animation/Keyframe;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe;

    invoke-virtual {v4}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Landroid/animation/KeyframeSet;

    invoke-direct {v0, v2}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframes;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/animation/KeyframeSet;->clone()Landroid/animation/KeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/animation/KeyframeSet;->clone()Landroid/animation/KeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getKeyframes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    :cond_0
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 15
    .line 16
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v0, p1, v1, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_1
    const/4 v2, 0x0

    .line 34
    cmpg-float v2, p1, v2

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    if-gtz v2, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/animation/Keyframe;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    :cond_2
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    sub-float/2addr p1, v1

    .line 64
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    sub-float/2addr v2, v1

    .line 69
    div-float/2addr p1, v2

    .line 70
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 71
    .line 72
    iget-object v2, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v1, p1, v2, v0}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1

    .line 87
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 88
    .line 89
    cmpl-float v2, p1, v2

    .line 90
    .line 91
    if-ltz v2, :cond_5

    .line 92
    .line 93
    iget-object v2, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 94
    .line 95
    sub-int/2addr v0, v1

    .line 96
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Landroid/animation/Keyframe;

    .line 101
    .line 102
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 103
    .line 104
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    :cond_4
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    sub-float/2addr p1, v1

    .line 119
    iget-object v2, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    sub-float/2addr v2, v1

    .line 126
    div-float/2addr p1, v2

    .line 127
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 128
    .line 129
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v2, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 134
    .line 135
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-interface {v1, p1, v0, v2}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    return-object p1

    .line 144
    :cond_5
    iget-object v0, p0, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    .line 145
    .line 146
    :goto_0
    iget v1, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    .line 147
    .line 148
    if-ge v3, v1, :cond_8

    .line 149
    .line 150
    iget-object v1, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 151
    .line 152
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Landroid/animation/Keyframe;

    .line 157
    .line 158
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    cmpg-float v2, p1, v2

    .line 163
    .line 164
    if-gez v2, :cond_7

    .line 165
    .line 166
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    sub-float/2addr p1, v3

    .line 175
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    sub-float/2addr v4, v3

    .line 180
    div-float/2addr p1, v4

    .line 181
    if-eqz v2, :cond_6

    .line 182
    .line 183
    invoke-interface {v2, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    :cond_6
    iget-object v2, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    .line 188
    .line 189
    invoke-virtual {v0}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v1}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-interface {v2, p1, v0, v1}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    return-object p1

    .line 202
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 203
    .line 204
    move-object v0, v1

    .line 205
    goto :goto_0

    .line 206
    :cond_8
    iget-object p1, p0, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    return-object p1
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/KeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Landroid/animation/KeyframeSet;->mNumKeyframes:I

    .line 5
    .line 6
    if-ge v1, v2, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v2, p0, Landroid/animation/KeyframeSet;->mKeyframes:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/animation/Keyframe;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "  "

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-object v0
.end method
