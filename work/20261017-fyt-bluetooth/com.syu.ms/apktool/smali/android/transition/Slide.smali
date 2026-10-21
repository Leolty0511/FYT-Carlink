.class public Landroid/transition/Slide;
.super Landroid/transition/Visibility;
.source "SourceFile"


# static fields
.field private static final sAccelerator:Landroid/animation/TimeInterpolator;

.field private static final sDecelerator:Landroid/animation/TimeInterpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sAccelerator:Landroid/animation/TimeInterpolator;

    .line 2
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/transition/Slide;->sDecelerator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 0

    if-eqz p4, :cond_0

    .line 1
    iget-object p1, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    mul-int/lit8 p2, p2, -0x2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    sget-object p2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 p4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p5

    mul-int/lit8 p5, p5, -0x2

    int-to-float p5, p5

    aput p5, p3, p4

    const/4 p4, 0x1

    const/4 p5, 0x0

    aput p5, p3, p4

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 4
    sget-object p2, Landroid/transition/Slide;->sDecelerator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    sget-object p3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 p4, 0x2

    new-array p4, p4, [F

    const/4 p5, 0x0

    aput p2, p4, p5

    const/4 p2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p5

    mul-int/lit8 p5, p5, -0x2

    int-to-float p5, p5

    aput p5, p4, p2

    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 4
    sget-object p2, Landroid/transition/Slide;->sAccelerator:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method
