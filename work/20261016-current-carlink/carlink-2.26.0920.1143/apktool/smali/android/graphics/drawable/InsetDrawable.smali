.class public Landroid/graphics/drawable/InsetDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/InsetDrawable$InsetValue;,
        Landroid/graphics/drawable/InsetDrawable$InsetState;
    }
.end annotation


# instance fields
.field private mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

.field private final mTmpInsetRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move v4, p2

    move v5, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;FFFF)V
    .locals 3

    .line 11
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    .line 12
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 13
    iget-object p2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v0, p3, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object v0, p2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 14
    iget-object p2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance p3, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p3, p4, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object p3, p2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 15
    iget-object p2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance p3, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p3, p5, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object p3, p2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 16
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move v4, p2

    move v5, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 3

    .line 5
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    .line 6
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 7
    iget-object p2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {v0, v2, p3}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object v0, p2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 8
    iget-object p2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance p3, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p3, v2, p4}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object p3, p2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 9
    iget-object p2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    new-instance p3, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    invoke-direct {p3, v2, p5}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    iput-object p3, p2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 10
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 18
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 19
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    .line 20
    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;
    .locals 4

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, v0, Landroid/util/TypedValue;->type:I

    .line 12
    .line 13
    const/4 v2, 0x6

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ne v1, v2, :cond_1

    .line 16
    .line 17
    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    invoke-virtual {v0, p1, p1}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    cmpl-float p1, p2, p1

    .line 24
    .line 25
    if-gez p1, :cond_0

    .line 26
    .line 27
    new-instance p1, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 28
    .line 29
    invoke-direct {p1, p2, v3}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string p2, "Fraction cannot be larger than 1"

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    new-instance p2, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 48
    .line 49
    const/4 p3, 0x0

    .line 50
    invoke-direct {p2, p3, p1}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    .line 51
    .line 52
    .line 53
    return-object p2

    .line 54
    :cond_2
    return-object p3
.end method

.method private getInsets(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 6
    .line 7
    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 18
    .line 19
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 20
    .line 21
    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 32
    .line 33
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 34
    .line 35
    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 46
    .line 47
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 48
    .line 49
    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 60
    .line 61
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

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
    invoke-static {v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;->access$002(Landroid/graphics/drawable/InsetDrawable$InsetState;[I)[I

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x6

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    new-instance v2, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 30
    .line 31
    invoke-direct {v2}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1, v1, v2}, Landroid/graphics/drawable/InsetDrawable;->getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 39
    .line 40
    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 41
    .line 42
    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 43
    .line 44
    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 45
    .line 46
    :cond_1
    const/4 v1, 0x2

    .line 47
    iget-object v2, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 48
    .line 49
    invoke-direct {p0, p1, v1, v2}, Landroid/graphics/drawable/InsetDrawable;->getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 54
    .line 55
    const/4 v1, 0x4

    .line 56
    iget-object v2, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 57
    .line 58
    invoke-direct {p0, p1, v1, v2}, Landroid/graphics/drawable/InsetDrawable;->getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 63
    .line 64
    const/4 v1, 0x3

    .line 65
    iget-object v2, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 66
    .line 67
    invoke-direct {p0, p1, v1, v2}, Landroid/graphics/drawable/InsetDrawable;->getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iput-object v1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 72
    .line 73
    const/4 v1, 0x5

    .line 74
    iget-object v2, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 75
    .line 76
    invoke-direct {p0, p1, v1, v2}, Landroid/graphics/drawable/InsetDrawable;->getInset(Landroid/content/res/TypedArray;ILandroid/graphics/drawable/InsetDrawable$InsetValue;)Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 81
    .line 82
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
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/graphics/drawable/InsetDrawable$InsetState;->access$000(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/graphics/drawable/InsetDrawable$InsetState;->access$000(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I

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
    const-string v2, ": <inset> tag requires a \'drawable\' attribute or child tag defining a drawable"

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
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {v0}, Landroid/graphics/drawable/InsetDrawable$InsetState;->access$000(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-static {v0}, Landroid/graphics/drawable/InsetDrawable$InsetState;->access$000(Landroid/graphics/drawable/InsetDrawable$InsetState;)[I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/android/internal/R$styleable;->InsetDrawable:[I

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :try_start_0
    invoke-direct {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
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
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 10
    .line 11
    iget-object v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 12
    .line 13
    iget v3, v2, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    .line 14
    .line 15
    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 16
    .line 17
    iget v4, v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    .line 18
    .line 19
    add-float/2addr v3, v4

    .line 20
    if-ltz v0, :cond_1

    .line 21
    .line 22
    const/high16 v4, 0x3f800000    # 1.0f

    .line 23
    .line 24
    cmpl-float v5, v3, v4

    .line 25
    .line 26
    if-ltz v5, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    int-to-float v0, v0

    .line 30
    sub-float/2addr v4, v3

    .line 31
    div-float/2addr v0, v4

    .line 32
    float-to-int v0, v0

    .line 33
    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    .line 34
    .line 35
    add-int/2addr v0, v2

    .line 36
    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    .line 37
    .line 38
    add-int/2addr v0, v1

    .line 39
    return v0

    .line 40
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 41
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 10
    .line 11
    iget-object v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 12
    .line 13
    iget v3, v2, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    .line 14
    .line 15
    iget-object v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 16
    .line 17
    iget v4, v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    .line 18
    .line 19
    add-float/2addr v3, v4

    .line 20
    if-ltz v0, :cond_1

    .line 21
    .line 22
    const/high16 v4, 0x3f800000    # 1.0f

    .line 23
    .line 24
    cmpl-float v5, v3, v4

    .line 25
    .line 26
    if-ltz v5, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    int-to-float v0, v0

    .line 30
    sub-float/2addr v4, v3

    .line 31
    div-float/2addr v0, v4

    .line 32
    float-to-int v0, v0

    .line 33
    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    .line 34
    .line 35
    add-int/2addr v0, v2

    .line 36
    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    .line 37
    .line 38
    add-int/2addr v0, v1

    .line 39
    return v0

    .line 40
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 41
    return v0
.end method

.method public getOpacity()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {p0, v1}, Landroid/graphics/drawable/InsetDrawable;->getInsets(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    .line 18
    .line 19
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 20
    .line 21
    if-gtz v2, :cond_0

    .line 22
    .line 23
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    if-gtz v2, :cond_0

    .line 26
    .line 27
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 28
    .line 29
    if-gtz v2, :cond_0

    .line 30
    .line 31
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    if-lez v1, :cond_1

    .line 34
    .line 35
    :cond_0
    const/4 v0, -0x3

    .line 36
    :cond_1
    return v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getOpticalInsets()Landroid/graphics/Insets;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {p0, v1}, Landroid/graphics/drawable/InsetDrawable;->getInsets(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    iget v1, v0, Landroid/graphics/Insets;->left:I

    .line 11
    .line 12
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    .line 13
    .line 14
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    add-int/2addr v1, v3

    .line 17
    iget v3, v0, Landroid/graphics/Insets;->top:I

    .line 18
    .line 19
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    add-int/2addr v3, v4

    .line 22
    iget v4, v0, Landroid/graphics/Insets;->right:I

    .line 23
    .line 24
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    add-int/2addr v4, v5

    .line 27
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 28
    .line 29
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 30
    .line 31
    add-int/2addr v0, v2

    .line 32
    invoke-static {v1, v3, v4, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->getPadding(Landroid/graphics/Rect;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {p0, v1}, Landroid/graphics/drawable/InsetDrawable;->getInsets(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 11
    .line 12
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpInsetRect:Landroid/graphics/Rect;

    .line 13
    .line 14
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 15
    .line 16
    add-int/2addr v1, v3

    .line 17
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 18
    .line 19
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 20
    .line 21
    iget v3, v2, Landroid/graphics/Rect;->right:I

    .line 22
    .line 23
    add-int/2addr v1, v3

    .line 24
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 25
    .line 26
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 27
    .line 28
    iget v3, v2, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    add-int/2addr v1, v3

    .line 31
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 32
    .line 33
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 34
    .line 35
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    add-int/2addr v1, v3

    .line 38
    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget p1, v2, Landroid/graphics/Rect;->left:I

    .line 43
    .line 44
    iget v0, v2, Landroid/graphics/Rect;->right:I

    .line 45
    .line 46
    or-int/2addr p1, v0

    .line 47
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    or-int/2addr p1, v0

    .line 50
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    or-int/2addr p1, v0

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 p1, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 59
    :goto_1
    return p1
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/internal/R$styleable;->InsetDrawable:[I

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
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    return-object v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 7
    .line 8
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 9
    .line 10
    iget-object v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v1, v2

    .line 21
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 22
    .line 23
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 24
    .line 25
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 26
    .line 27
    iget-object v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    add-int/2addr v1, v2

    .line 38
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 39
    .line 40
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 41
    .line 42
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 43
    .line 44
    iget-object v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    sub-int/2addr v1, v2

    .line 55
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 56
    .line 57
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 58
    .line 59
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 60
    .line 61
    iget-object v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:Landroid/graphics/drawable/InsetDrawable$InsetValue;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->getDimension(I)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    sub-int/2addr v1, p1

    .line 72
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 73
    .line 74
    invoke-super {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
