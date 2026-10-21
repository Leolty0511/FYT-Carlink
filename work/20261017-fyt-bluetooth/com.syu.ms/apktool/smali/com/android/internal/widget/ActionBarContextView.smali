.class public Lcom/android/internal/widget/ActionBarContextView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public i:Ljava/lang/CharSequence;

.field public j:Ljava/lang/CharSequence;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Landroid/widget/LinearLayout;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:I

.field public q:I

.field public r:Landroid/graphics/drawable/Drawable;

.field public s:Z

.field public t:Landroid/animation/Animator;

.field public u:Z

.field public v:I


# virtual methods
.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    return-object v0
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

.method public o()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->t()V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->p()V

    .line 5
    iput v1, p0, Lcom/android/internal/widget/ActionBarContextView;->v:I

    .line 6
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->v()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->t:Landroid/animation/Animator;

    .line 7
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/internal/widget/ActionBarContextView;->v:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->t()V

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/android/internal/widget/ActionBarContextView;->v:I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->x()Z

    .line 4
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->y()Z

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    sub-int v0, p4, p2

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr p5, p3

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int p3, p5, p3

    .line 5
    iget-object p5, p0, Lcom/android/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    const/4 v7, 0x1

    const/16 v8, 0x8

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result p5

    if-eq p5, v8, :cond_3

    .line 6
    iget-object p5, p0, Lcom/android/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_1

    .line 7
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    if-eqz p1, :cond_2

    .line 8
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 9
    :goto_2
    invoke-static {v0, v1, p1}, Lcom/android/internal/widget/AbsActionBarView;->k(IIZ)I

    move-result v9

    .line 10
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    move-object v0, p0

    move v2, v9

    move v3, v6

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/AbsActionBarView;->l(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v9, v0

    .line 11
    invoke-static {v9, p5, p1}, Lcom/android/internal/widget/AbsActionBarView;->k(IIZ)I

    move-result v0

    .line 12
    iget-boolean p5, p0, Lcom/android/internal/widget/ActionBarContextView;->u:Z

    if-eqz p5, :cond_3

    .line 13
    iput v7, p0, Lcom/android/internal/widget/ActionBarContextView;->v:I

    .line 14
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->u()Landroid/animation/Animator;

    move-result-object p5

    iput-object p5, p0, Lcom/android/internal/widget/ActionBarContextView;->t:Landroid/animation/Animator;

    .line 15
    invoke-virtual {p5}, Landroid/animation/Animator;->start()V

    const/4 p5, 0x0

    .line 16
    iput-boolean p5, p0, Lcom/android/internal/widget/ActionBarContextView;->u:Z

    :cond_3
    move p5, v0

    .line 17
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v8, :cond_4

    .line 18
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    move-object v0, p0

    move v2, p5

    move v3, v6

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/AbsActionBarView;->l(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr p5, v0

    :cond_4
    move v2, p5

    .line 19
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    if-eqz v1, :cond_5

    move-object v0, p0

    move v3, v6

    move v4, p3

    move v5, p1

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/AbsActionBarView;->l(Landroid/view/View;IIIZ)I

    :cond_5
    if-eqz p1, :cond_6

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    move v3, p2

    goto :goto_3

    :cond_6
    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    move v3, p4

    .line 22
    :goto_3
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v2, :cond_7

    xor-int/2addr p1, v7

    move-object v1, p0

    move v4, v6

    move v5, p3

    move v6, p1

    .line 23
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/AbsActionBarView;->l(Landroid/view/View;IIIZ)I

    :cond_7
    return-void
.end method

.method public onMeasure(II)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const-string v1, " can only be used "

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_11

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_10

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView;->f:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr p2, v1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int v3, v0, p2

    const/high16 v4, -0x80000000

    .line 7
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 8
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 9
    invoke-virtual {p0, v6, v1, v5, v7}, Lcom/android/internal/widget/AbsActionBarView;->j(Landroid/view/View;III)I

    move-result v1

    .line 10
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v6

    sub-int/2addr v1, v8

    .line 12
    :cond_1
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-ne v6, p0, :cond_2

    .line 13
    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v6, v1, v5, v7}, Lcom/android/internal/widget/AbsActionBarView;->j(Landroid/view/View;III)I

    move-result v1

    .line 14
    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_7

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    if-nez v8, :cond_7

    .line 15
    iget-boolean v8, p0, Lcom/android/internal/widget/ActionBarContextView;->s:Z

    if-eqz v8, :cond_6

    .line 16
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 17
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6, v5}, Landroid/view/View;->measure(II)V

    .line 18
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-gt v5, v1, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v7

    :goto_1
    if-eqz v6, :cond_4

    sub-int/2addr v1, v5

    .line 19
    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_2

    :cond_5
    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 20
    :cond_6
    invoke-virtual {p0, v6, v1, v5, v7}, Lcom/android/internal/widget/AbsActionBarView;->j(Landroid/view/View;III)I

    move-result v1

    .line 21
    :cond_7
    :goto_3
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    if-eqz v5, :cond_c

    .line 22
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 23
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v8, -0x2

    if-eq v6, v8, :cond_8

    move v9, v2

    goto :goto_4

    :cond_8
    move v9, v4

    :goto_4
    if-ltz v6, :cond_9

    .line 24
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 25
    :cond_9
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v5, v8, :cond_a

    goto :goto_5

    :cond_a
    move v2, v4

    :goto_5
    if-ltz v5, :cond_b

    .line 26
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 27
    :cond_b
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    .line 28
    :cond_c
    iget v1, p0, Lcom/android/internal/widget/AbsActionBarView;->f:I

    if-gtz v1, :cond_f

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v7

    :goto_6
    if-ge v7, v0, :cond_e

    .line 30
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    if-le v2, v1, :cond_d

    move v1, v2

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 32
    :cond_e
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_7

    .line 33
    :cond_f
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_7
    return-void

    .line 34
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "with android:layout_height=\"wrap_content\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->t:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->t:Landroid/animation/Animator;

    .line 3
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    return-void
.end method

.method public q(Landroid/view/ActionMode;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109001e

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    const v1, 0x1020277

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/android/internal/widget/ActionBarContextView$a;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/ActionBarContextView$a;-><init>(Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/c;

    .line 10
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->v()Z

    .line 12
    :cond_2
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->D(Z)V

    .line 14
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 15
    iget-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->d:Z

    if-nez v2, :cond_3

    .line 16
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/c;->b(Lcom/android/internal/view/menu/f;)V

    .line 17
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->m(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/g;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v2, 0x0

    .line 18
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v4, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->E(IZ)V

    .line 21
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v4, 0x7fffffff

    invoke-virtual {v2, v4}, Lcom/android/internal/view/menu/ActionMenuPresenter;->C(I)V

    .line 22
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 23
    iget v2, p0, Lcom/android/internal/widget/AbsActionBarView;->f:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/c;->b(Lcom/android/internal/view/menu/f;)V

    .line 25
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->m(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/g;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    .line 26
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    iget-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->c:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarContextView;->u:Z

    return-void
.end method

.method public final r()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090019

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    const v1, 0x1020275

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->n:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    const v1, 0x1020276

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    .line 7
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->p:I

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->n:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 9
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarContextView;->q:I

    if-eqz v0, :cond_1

    .line 10
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 14
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 15
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->o:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 16
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :cond_4
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->s:Z

    return v0
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->f:I

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->m:Landroid/widget/LinearLayout;

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->d:Z

    if-eq v0, p1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_3

    .line 3
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-nez p1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->m(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/g;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 7
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/internal/view/menu/ActionMenuPresenter;->E(IZ)V

    .line 10
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->C(I)V

    .line 11
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    iget v1, p0, Lcom/android/internal/widget/AbsActionBarView;->f:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->m(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/g;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView;

    iput-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    .line 14
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 16
    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->c:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    :cond_4
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->j:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->r()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView;->i:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->r()V

    return-void
.end method

.method public setTitleOptional(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->s:Z

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarContextView;->s:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->p()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->c:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->l:Landroid/view/View;

    .line 6
    iput-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarContextView;->u:Z

    return-void
.end method

.method public final u()Landroid/animation/Animator;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const-string/jumbo v3, "translationX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 7
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 8
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    sub-int/2addr v3, v1

    :goto_0
    if-ltz v3, :cond_0

    .line 10
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 12
    fill-array-data v5, :array_0

    const-string/jumbo v6, "scaleY"

    invoke-static {v1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x12c

    .line 13
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 14
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-object v2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final v()Landroid/animation/Animator;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    const/4 v1, 0x1

    new-array v1, v1, [F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarContextView;->k:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const-string/jumbo v2, "translationX"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    :cond_0
    return-object v1
.end method
