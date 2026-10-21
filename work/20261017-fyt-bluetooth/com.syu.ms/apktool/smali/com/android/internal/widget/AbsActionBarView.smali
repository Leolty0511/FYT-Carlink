.class public abstract Lcom/android/internal/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static final h:Landroid/animation/TimeInterpolator;


# instance fields
.field public a:Lcom/android/internal/view/menu/ActionMenuView;

.field public b:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field public c:Lcom/android/internal/widget/ActionBarContainer;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:Landroid/animation/Animator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/AbsActionBarView;->h:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public static k(IIZ)I
    .locals 0

    if-eqz p2, :cond_0

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_0
    add-int/2addr p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public getAnimatedVisibility()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->g:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView;->f:I

    return v0
.end method

.method public h(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->g:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, 0xc8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "alpha"

    if-nez p1, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 5
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->c:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    new-array p1, v5, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, p1, v4

    .line 7
    invoke-static {p0, v6, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 9
    sget-object v7, Lcom/android/internal/widget/AbsActionBarView;->h:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->c:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz p1, :cond_2

    .line 11
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 12
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    new-array v5, v5, [F

    aput v3, v5, v4

    invoke-static {p1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 14
    throw v0

    .line 15
    :cond_2
    throw v0

    :cond_3
    new-array p1, v5, [F

    aput v3, p1, v4

    .line 16
    invoke-static {p0, v6, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 18
    sget-object v7, Lcom/android/internal/widget/AbsActionBarView;->h:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 19
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->c:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz p1, :cond_4

    .line 20
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 21
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    new-array v5, v5, [F

    aput v3, v5, v4

    invoke-static {p1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 22
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 23
    throw v0

    .line 24
    :cond_4
    throw v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->z()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j(Landroid/view/View;III)I
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    sub-int/2addr p2, p4

    const/4 p1, 0x0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public l(Landroid/view/View;IIIZ)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, v1

    .line 3
    div-int/lit8 p4, p4, 0x2

    add-int/2addr p3, p4

    if-eqz p5, :cond_0

    sub-int p4, p2, v0

    add-int/2addr v1, p3

    .line 4
    invoke-virtual {p1, p4, p3, p2, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    add-int p4, p2, v0

    add-int/2addr v1, p3

    .line 5
    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/view/View;->layout(IIII)V

    :goto_0
    if-eqz p5, :cond_1

    neg-int v0, v0

    :cond_1
    return v0
.end method

.method public m()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$a;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$a;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->F()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Li/a;->ActionBar:[I

    const/4 v2, 0x0

    const v3, 0x10102ce

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setContentHeight(I)V

    .line 4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->e:Z

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->A(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public setContentHeight(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->f:I

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->setMaxItemHeight(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->d:Z

    return-void
.end method

.method public setSplitView(Lcom/android/internal/widget/ActionBarContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->c:Lcom/android/internal/widget/ActionBarContainer;

    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->e:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->g:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
