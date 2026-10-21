.class public Landroid/transition/Slide;
.super Landroid/transition/Visibility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Slide$CalculateSlideVertical;,
        Landroid/transition/Slide$CalculateSlideHorizontal;,
        Landroid/transition/Slide$CalculateSlide;,
        Landroid/transition/Slide$GravityFlag;
    }
.end annotation


# static fields
.field private static final PROPNAME_SCREEN_POSITION:Ljava/lang/String; = "android:slide:screenPosition"

.field private static final TAG:Ljava/lang/String; = "Slide"

.field private static final sAccelerate:Landroid/animation/TimeInterpolator;

.field private static final sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateRight:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateStart:Landroid/transition/Slide$CalculateSlide;

.field private static final sCalculateTop:Landroid/transition/Slide$CalculateSlide;

.field private static final sDecelerate:Landroid/animation/TimeInterpolator;


# instance fields
.field private mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

.field private mSlideEdge:I

.field private mSlideFraction:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 7
    .line 8
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 14
    .line 15
    new-instance v0, Landroid/transition/Slide$1;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/transition/Slide$1;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroid/transition/Slide;->sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

    .line 21
    .line 22
    new-instance v0, Landroid/transition/Slide$2;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/transition/Slide$2;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroid/transition/Slide;->sCalculateStart:Landroid/transition/Slide$CalculateSlide;

    .line 28
    .line 29
    new-instance v0, Landroid/transition/Slide$3;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/transition/Slide$3;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Landroid/transition/Slide;->sCalculateTop:Landroid/transition/Slide$CalculateSlide;

    .line 35
    .line 36
    new-instance v0, Landroid/transition/Slide$4;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/transition/Slide$4;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Landroid/transition/Slide;->sCalculateRight:Landroid/transition/Slide$CalculateSlide;

    .line 42
    .line 43
    new-instance v0, Landroid/transition/Slide$5;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/transition/Slide$5;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Landroid/transition/Slide;->sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

    .line 49
    .line 50
    new-instance v0, Landroid/transition/Slide$6;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/transition/Slide$6;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 2
    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    const/16 v0, 0x50

    .line 3
    iput v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Landroid/transition/Slide;->mSlideFraction:F

    .line 5
    invoke-virtual {p0, v0}, Landroid/transition/Slide;->setSlideEdge(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 6
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 7
    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    const/16 v0, 0x50

    .line 8
    iput v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    iput v0, p0, Landroid/transition/Slide;->mSlideFraction:F

    .line 10
    invoke-virtual {p0, p1}, Landroid/transition/Slide;->setSlideEdge(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    const/16 v0, 0x50

    .line 13
    iput v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    iput v1, p0, Landroid/transition/Slide;->mSlideFraction:F

    .line 15
    sget-object v1, Lcom/android/internal/R$styleable;->Slide:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    invoke-virtual {p0, p2}, Landroid/transition/Slide;->setSlideEdge(I)V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v1, v1, [I

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 10
    .line 11
    const-string v0, "android:slide:screenPosition"

    .line 12
    .line 13
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/transition/Slide;->captureValues(Landroid/transition/TransitionValues;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/transition/Slide;->captureValues(Landroid/transition/TransitionValues;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getSlideEdge()I
    .locals 1

    iget v0, p0, Landroid/transition/Slide;->mSlideEdge:I

    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object p3, p4, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 6
    .line 7
    const-string v0, "android:slide:screenPosition"

    .line 8
    .line 9
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, [I

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    iget-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 24
    .line 25
    iget v1, p0, Landroid/transition/Slide;->mSlideFraction:F

    .line 26
    .line 27
    invoke-interface {v0, p1, p2, v1}, Landroid/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;F)F

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    iget-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 32
    .line 33
    iget v1, p0, Landroid/transition/Slide;->mSlideFraction:F

    .line 34
    .line 35
    invoke-interface {v0, p1, p2, v1}, Landroid/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;F)F

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    const/4 p1, 0x0

    .line 40
    aget v2, p3, p1

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    aget v3, p3, p1

    .line 44
    .line 45
    sget-object v8, Landroid/transition/Slide;->sDecelerate:Landroid/animation/TimeInterpolator;

    .line 46
    .line 47
    move-object v0, p2

    .line 48
    move-object v1, p4

    .line 49
    move-object v9, p0

    .line 50
    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object p4, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    .line 6
    .line 7
    const-string v0, "android:slide:screenPosition"

    .line 8
    .line 9
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    check-cast p4, [I

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    iget-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 24
    .line 25
    iget v1, p0, Landroid/transition/Slide;->mSlideFraction:F

    .line 26
    .line 27
    invoke-interface {v0, p1, p2, v1}, Landroid/transition/Slide$CalculateSlide;->getGoneX(Landroid/view/ViewGroup;Landroid/view/View;F)F

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    iget-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 32
    .line 33
    iget v1, p0, Landroid/transition/Slide;->mSlideFraction:F

    .line 34
    .line 35
    invoke-interface {v0, p1, p2, v1}, Landroid/transition/Slide$CalculateSlide;->getGoneY(Landroid/view/ViewGroup;Landroid/view/View;F)F

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    const/4 p1, 0x0

    .line 40
    aget v2, p4, p1

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    aget v3, p4, p1

    .line 44
    .line 45
    sget-object v8, Landroid/transition/Slide;->sAccelerate:Landroid/animation/TimeInterpolator;

    .line 46
    .line 47
    move-object v0, p2

    .line 48
    move-object v1, p3

    .line 49
    move-object v9, p0

    .line 50
    invoke-static/range {v0 .. v9}, Landroid/transition/TranslationAnimationCreator;->createAnimation(Landroid/view/View;Landroid/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;Landroid/transition/Transition;)Landroid/animation/Animator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public setSlideEdge(I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p1, v0, :cond_5

    .line 3
    .line 4
    const/4 v0, 0x5

    .line 5
    if-eq p1, v0, :cond_4

    .line 6
    .line 7
    const/16 v0, 0x30

    .line 8
    .line 9
    if-eq p1, v0, :cond_3

    .line 10
    .line 11
    const/16 v0, 0x50

    .line 12
    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    const v0, 0x800003

    .line 16
    .line 17
    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    .line 20
    const v0, 0x800005

    .line 21
    .line 22
    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    sget-object v0, Landroid/transition/Slide;->sCalculateEnd:Landroid/transition/Slide$CalculateSlide;

    .line 26
    .line 27
    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v0, "Invalid slide direction"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    sget-object v0, Landroid/transition/Slide;->sCalculateStart:Landroid/transition/Slide$CalculateSlide;

    .line 39
    .line 40
    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object v0, Landroid/transition/Slide;->sCalculateBottom:Landroid/transition/Slide$CalculateSlide;

    .line 44
    .line 45
    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    sget-object v0, Landroid/transition/Slide;->sCalculateTop:Landroid/transition/Slide$CalculateSlide;

    .line 49
    .line 50
    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    sget-object v0, Landroid/transition/Slide;->sCalculateRight:Landroid/transition/Slide$CalculateSlide;

    .line 54
    .line 55
    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_5
    sget-object v0, Landroid/transition/Slide;->sCalculateLeft:Landroid/transition/Slide$CalculateSlide;

    .line 59
    .line 60
    iput-object v0, p0, Landroid/transition/Slide;->mSlideCalculator:Landroid/transition/Slide$CalculateSlide;

    .line 61
    .line 62
    :goto_0
    iput p1, p0, Landroid/transition/Slide;->mSlideEdge:I

    .line 63
    .line 64
    new-instance v0, Landroid/transition/SidePropagation;

    .line 65
    .line 66
    invoke-direct {v0}, Landroid/transition/SidePropagation;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroid/transition/SidePropagation;->setSide(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Landroid/transition/Transition;->setPropagation(Landroid/transition/TransitionPropagation;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public setSlideFraction(F)V
    .locals 0

    iput p1, p0, Landroid/transition/Slide;->mSlideFraction:F

    return-void
.end method
