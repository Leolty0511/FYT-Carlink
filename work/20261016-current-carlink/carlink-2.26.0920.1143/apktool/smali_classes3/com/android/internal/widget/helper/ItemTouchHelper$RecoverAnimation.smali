.class Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecoverAnimation"
.end annotation


# instance fields
.field final mActionState:I

.field final mAnimationType:I

.field mEnded:Z

.field private mFraction:F

.field public mIsPendingCleanup:Z

.field mOverridden:Z

.field final mStartDx:F

.field final mStartDy:F

.field final mTargetX:F

.field final mTargetY:F

.field private final mValueAnimator:Landroid/animation/ValueAnimator;

.field final mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

.field mX:F

.field mY:F

.field final synthetic this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFF)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 10
    .line 11
    iput p4, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    .line 12
    .line 13
    iput p3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 16
    .line 17
    iput p5, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    .line 18
    .line 19
    iput p6, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    .line 20
    .line 21
    iput p7, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 22
    .line 23
    iput p8, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    .line 24
    .line 25
    const/4 p3, 0x2

    .line 26
    new-array p3, p3, [F

    .line 27
    .line 28
    fill-array-data p3, :array_0

    .line 29
    .line 30
    .line 31
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    iput-object p3, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 36
    .line 37
    new-instance p4, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation$1;

    .line 38
    .line 39
    invoke-direct {p4, p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation$1;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;Lcom/android/internal/widget/helper/ItemTouchHelper;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {p3, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2
    iget-boolean p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4
    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

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

    .line 1
    return-void
.end method

.method public final synthetic onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Landroid/animation/a;->b(Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator;Z)V

    return-void
.end method

.method public setDuration(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public setFraction(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public update()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    .line 2
    .line 3
    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 4
    .line 5
    cmpl-float v2, v0, v1

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    .line 21
    .line 22
    invoke-static {v1, v0, v2, v0}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 27
    .line 28
    :goto_0
    iget v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    .line 29
    .line 30
    iget v1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    .line 31
    .line 32
    cmpl-float v2, v0, v1

    .line 33
    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    iget v2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    .line 48
    .line 49
    invoke-static {v1, v0, v2, v0}, Landroid/accessibilityservice/c;->a(FFFF)F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 54
    .line 55
    :goto_1
    return-void
.end method
