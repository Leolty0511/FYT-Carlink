.class Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/TranslationAnimationCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionPositionListener"
.end annotation


# instance fields
.field private final mMovingView:Landroid/view/View;

.field private mPausedX:F

.field private mPausedY:F

.field private final mStartX:I

.field private final mStartY:I

.field private final mTerminalX:F

.field private final mTerminalY:F

.field private mTransitionPosition:[I

.field private final mViewInHierarchy:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 4
    iput-object p2, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr p3, v0

    iput p3, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p4, p1

    iput p4, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    .line 7
    iput p5, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    .line 8
    iput p6, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    const p1, 0x1020458

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    iput-object p3, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 10
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;IIFFLandroid/transition/TranslationAnimationCreator$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    new-array p1, p1, [I

    .line 7
    .line 8
    iput-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 11
    .line 12
    iget v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    .line 13
    .line 14
    int-to-float v0, v0

    .line 15
    iget-object v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-float/2addr v1, v0

    .line 22
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    aput v0, p1, v1

    .line 28
    .line 29
    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 30
    .line 31
    iget v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    .line 32
    .line 33
    int-to-float v0, v0

    .line 34
    iget-object v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-float/2addr v1, v0

    .line 41
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    aput v0, p1, v1

    .line 47
    .line 48
    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Landroid/view/View;

    .line 49
    .line 50
    const v0, 0x1020458

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 54
    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    .line 8
    .line 9
    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    .line 16
    .line 17
    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 18
    .line 19
    iget v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 25
    .line 26
    iget v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 2
    .line 3
    iget v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 9
    .line 10
    iget v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 2
    .line 3
    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Landroid/view/View;

    .line 9
    .line 10
    iget v1, p0, Landroid/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method
