.class public Landroid/graphics/drawable/AnimatedRotateDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;
    }
.end annotation


# instance fields
.field private mCurrentDegrees:F

.field private mIncrement:F

.field private final mNextFrame:Ljava/lang/Runnable;

.field private mRunning:Z

.field private mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 4
    new-instance p2, Landroid/graphics/drawable/AnimatedRotateDrawable$1;

    invoke-direct {p2, p0}, Landroid/graphics/drawable/AnimatedRotateDrawable$1;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable;)V

    iput-object p2, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 6
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateLocalState()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/AnimatedRotateDrawable$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public static synthetic access$200(Landroid/graphics/drawable/AnimatedRotateDrawable;)F
    .locals 0

    iget p0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    return p0
.end method

.method public static synthetic access$202(Landroid/graphics/drawable/AnimatedRotateDrawable;F)F
    .locals 0

    iput p1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    return p1
.end method

.method public static synthetic access$300(Landroid/graphics/drawable/AnimatedRotateDrawable;)F
    .locals 0

    iget p0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    return p0
.end method

.method public static synthetic access$400(Landroid/graphics/drawable/AnimatedRotateDrawable;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V

    return-void
.end method

.method private nextFrame()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    iget-object v3, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 13
    .line 14
    iget v3, v3, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    .line 15
    .line 16
    int-to-long v3, v3

    .line 17
    add-long/2addr v1, v3

    .line 18
    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private updateLocalState()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 2
    .line 3
    iget v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    .line 4
    .line 5
    int-to-float v0, v0

    .line 6
    const/high16 v1, 0x43b40000    # 360.0f

    .line 7
    .line 8
    div-float/2addr v1, v0

    .line 9
    iput v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 19
    .line 20
    .line 21
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    or-int/2addr v1, v2

    .line 13
    iput v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->access$002(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;[I)[I

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x2

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x6

    .line 30
    const/high16 v6, 0x3f800000    # 1.0f

    .line 31
    .line 32
    if-eqz v2, :cond_3

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget v2, v1, Landroid/util/TypedValue;->type:I

    .line 39
    .line 40
    if-ne v2, v5, :cond_1

    .line 41
    .line 42
    move v2, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v2, v4

    .line 45
    :goto_0
    iput-boolean v2, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v1, v6, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    :goto_1
    iput v1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    .line 59
    .line 60
    :cond_3
    const/4 v1, 0x3

    .line 61
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_6

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget v2, v1, Landroid/util/TypedValue;->type:I

    .line 72
    .line 73
    if-ne v2, v5, :cond_4

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    move v3, v4

    .line 77
    :goto_2
    iput-boolean v3, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    .line 78
    .line 79
    if-eqz v3, :cond_5

    .line 80
    .line 81
    invoke-virtual {v1, v6, v6}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    goto :goto_3

    .line 86
    :cond_5
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    :goto_3
    iput v1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    .line 91
    .line 92
    :cond_6
    const/4 v1, 0x5

    .line 93
    iget v2, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    .line 94
    .line 95
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 100
    .line 101
    .line 102
    const/4 v1, 0x4

    .line 103
    iget v0, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    .line 104
    .line 105
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->access$000(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;)[I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->access$000(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;)[I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x1

    .line 22
    aget v0, v0, v1

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, ": <animated-rotate> tag requires a \'drawable\' attribute or child tag defining a drawable"

    .line 35
    .line 36
    invoke-static {p1, v1, v2}, Landroid/accessibilityservice/c;->c(Landroid/content/res/TypedArray;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->access$000(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;)[I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->access$000(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;)[I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/android/internal/R$styleable;->AnimatedRotateDrawable:[I

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :try_start_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    :try_start_1
    invoke-static {v0}, Landroid/graphics/drawable/Drawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    .line 44
    .line 45
    throw v0

    .line 46
    :cond_1
    :goto_2
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateLocalState()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 10
    .line 11
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 12
    .line 13
    sub-int/2addr v2, v3

    .line 14
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 15
    .line 16
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 17
    .line 18
    sub-int/2addr v3, v4

    .line 19
    iget-object v4, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 20
    .line 21
    iget-boolean v5, v4, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotXRel:Z

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    int-to-float v2, v2

    .line 26
    iget v5, v4, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    .line 27
    .line 28
    mul-float/2addr v2, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget v2, v4, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotX:F

    .line 31
    .line 32
    :goto_0
    iget-boolean v5, v4, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotYRel:Z

    .line 33
    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    int-to-float v3, v3

    .line 37
    iget v4, v4, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    .line 38
    .line 39
    mul-float/2addr v3, v4

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget v3, v4, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mPivotY:F

    .line 42
    .line 43
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iget v5, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    .line 48
    .line 49
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 50
    .line 51
    int-to-float v6, v6

    .line 52
    add-float/2addr v2, v6

    .line 53
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 54
    .line 55
    int-to-float v1, v1

    .line 56
    add-float/2addr v3, v1

    .line 57
    invoke-virtual {p1, v5, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/internal/R$styleable;->AnimatedRotateDrawable:[I

    .line 2
    .line 3
    invoke-static {p1, p4, p3, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->updateLocalState()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    return v0
.end method

.method public mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iget-object v1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;-><init>(Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    return-object v0
.end method

.method public setFramesCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    .line 2
    .line 3
    iput p1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFramesCount:I

    .line 4
    .line 5
    const/high16 v0, 0x43b40000    # 360.0f

    .line 6
    .line 7
    int-to-float p1, p1

    .line 8
    div-float/2addr v0, p1

    .line 9
    iput v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mIncrement:F

    .line 10
    .line 11
    return-void
.end method

.method public setFramesDuration(I)V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mState:Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;

    iput p1, v0, Landroid/graphics/drawable/AnimatedRotateDrawable$AnimatedRotateState;->mFrameDuration:I

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_2

    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mCurrentDegrees:F

    .line 13
    .line 14
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_2
    :goto_0
    return v0
.end method

.method public start()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    .line 7
    .line 8
    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->nextFrame()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mRunning:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroid/graphics/drawable/AnimatedRotateDrawable;->mNextFrame:Ljava/lang/Runnable;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
