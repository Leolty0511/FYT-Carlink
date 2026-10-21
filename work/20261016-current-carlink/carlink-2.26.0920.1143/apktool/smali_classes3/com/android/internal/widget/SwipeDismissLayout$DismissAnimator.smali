.class Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SwipeDismissLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DismissAnimator"
.end annotation


# instance fields
.field private final DISMISS_DURATION:J

.field private final DISMISS_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private final mDismissAnimator:Landroid/animation/ValueAnimator;

.field private mDismissOnComplete:Z

.field private mWasCanceled:Z

.field final synthetic this$0:Lcom/android/internal/widget/SwipeDismissLayout;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    .line 7
    .line 8
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 9
    .line 10
    invoke-direct {p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->DISMISS_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 14
    .line 15
    const-wide/16 v0, 0xfa

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->DISMISS_DURATION:J

    .line 18
    .line 19
    new-instance p1, Landroid/animation/ValueAnimator;

    .line 20
    .line 21
    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissAnimator:Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mWasCanceled:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissOnComplete:Z

    .line 30
    .line 31
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private animate(FFJLandroid/animation/TimeInterpolator;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissAnimator:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    .line 5
    .line 6
    iput-boolean p6, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissOnComplete:Z

    .line 7
    .line 8
    iget-object p6, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissAnimator:Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    new-array v0, v0, [F

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aput p1, v0, v1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    aput p2, v0, p1

    .line 18
    .line 19
    invoke-virtual {p6, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissAnimator:Landroid/animation/ValueAnimator;

    .line 23
    .line 24
    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissAnimator:Landroid/animation/ValueAnimator;

    .line 28
    .line 29
    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissAnimator:Landroid/animation/ValueAnimator;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public animateDismissal(F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    div-float v2, p1, v0

    .line 9
    .line 10
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const-wide/16 v4, 0xfa

    .line 13
    .line 14
    iget-object v6, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->DISMISS_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 15
    .line 16
    const/4 v7, 0x1

    .line 17
    move-object v1, p0

    .line 18
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->animate(FFJLandroid/animation/TimeInterpolator;Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public animateRecovery(F)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    div-float v2, p1, v0

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const-wide/16 v4, 0xfa

    .line 12
    .line 13
    iget-object v6, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->DISMISS_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    move-object v1, p0

    .line 17
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->animate(FFJLandroid/animation/TimeInterpolator;Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mWasCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 2
    iget-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mWasCanceled:Z

    if-nez p1, :cond_1

    .line 3
    iget-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissOnComplete:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-static {p1}, Lcom/android/internal/widget/SwipeDismissLayout;->access$100(Lcom/android/internal/widget/SwipeDismissLayout;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-virtual {p1}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final synthetic onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/animation/a;->a(Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mWasCanceled:Z

    return-void
.end method

.method public final synthetic onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/animation/a;->b(Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator;Z)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    mul-float/2addr p1, v1

    .line 19
    invoke-static {v0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->access$300(Lcom/android/internal/widget/SwipeDismissLayout;F)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
