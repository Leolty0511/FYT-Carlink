.class public Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Lcom/android/internal/widget/AbsActionBarView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/AbsActionBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2
    iget-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 4
    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    iget-object v0, p1, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz p1, :cond_1

    .line 6
    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
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
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcom/android/internal/widget/AbsActionBarView;

    iput-object p1, v0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    .line 4
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public final synthetic onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/animation/a;->b(Landroid/animation/Animator$AnimatorListener;Landroid/animation/Animator;Z)V

    return-void
.end method

.method public withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    return-object p0
.end method
