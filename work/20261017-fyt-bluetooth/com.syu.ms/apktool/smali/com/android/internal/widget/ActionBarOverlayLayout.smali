.class public Lcom/android/internal/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final r:[I


# instance fields
.field public a:I

.field public b:Lj/a;

.field public c:I

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Lcom/android/internal/widget/ActionBarContainer;

.field public g:Lcom/android/internal/widget/ActionBarView;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Z

.field public j:Z

.field public k:I

.field public final l:Landroid/graphics/Rect;

.field public final m:Landroid/graphics/Rect;

.field public final n:Landroid/graphics/Rect;

.field public final o:Landroid/graphics/Rect;

.field public final p:Landroid/graphics/Rect;

.field public final q:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/widget/ActionBarOverlayLayout;->r:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10102eb
        0x1010059
    .end array-data
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->i:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->k()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 3
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->f:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/widget/ActionBarOverlayLayout;->h(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->e:Landroid/view/View;

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p1

    .line 5
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/ActionBarOverlayLayout;->h(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->l:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/view/View;->computeFitSystemWindows(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 8
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->m:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->l:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->m:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->l:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    return v1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->i()Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->j(Landroid/util/AttributeSet;)Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final h(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 2
    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-eq p3, v1, :cond_0

    .line 3
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p4, :cond_1

    .line 4
    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-eq p4, v1, :cond_1

    .line 5
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move p3, v0

    :cond_1
    if-eqz p6, :cond_2

    .line 6
    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p6, p2, Landroid/graphics/Rect;->right:I

    if-eq p4, p6, :cond_2

    .line 7
    iput p6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move p3, v0

    :cond_2
    if-eqz p5, :cond_3

    .line 8
    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-eq p4, p2, :cond_3

    .line 9
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    move v0, p3

    :goto_1
    return v0
.end method

.method public i()Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public j(Landroid/util/AttributeSet;)Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->d:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x1020002

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->d:Landroid/view/View;

    const v0, 0x1020324

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->f:Lcom/android/internal/widget/ActionBarContainer;

    const v0, 0x1020325

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->g:Lcom/android/internal/widget/ActionBarView;

    const v0, 0x1020327

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->e:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    sub-int/2addr p5, p3

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_2

    .line 6
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 11
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, p2

    .line 12
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->e:Landroid/view/View;

    if-ne v0, v5, :cond_0

    sub-int v5, p5, v3

    .line 13
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v1

    goto :goto_1

    .line 14
    :cond_0
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v5, p4, v1

    :goto_1
    add-int/2addr v2, v4

    add-int/2addr v3, v5

    .line 15
    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMeasure(II)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->k()V

    .line 2
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->f:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 4
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 5
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    .line 7
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->e:Landroid/view/View;

    if-eqz v5, :cond_0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p1

    move v8, p2

    .line 8
    invoke-virtual/range {v4 .. v9}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 9
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 10
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->e:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 11
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->e:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 12
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    invoke-static {v3, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v4

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-eqz v4, :cond_2

    .line 14
    iget v5, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->a:I

    .line 15
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->b:Lj/a;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lj/a;->y()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 16
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 17
    iget v6, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->a:I

    add-int/2addr v5, v6

    goto :goto_1

    .line 18
    :cond_2
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 19
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->f:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    goto :goto_1

    :cond_3
    move v5, v2

    .line 20
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->g:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarView;->s()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 21
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->e:Landroid/view/View;

    if-eqz v6, :cond_6

    if-eqz v4, :cond_5

    .line 22
    iget v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->a:I

    goto :goto_2

    .line 23
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 24
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->n:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->l:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 25
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->o:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 26
    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->j:Z

    if-nez v6, :cond_7

    if-nez v4, :cond_7

    .line 27
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->n:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 28
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 29
    :cond_7
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v5

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 30
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 31
    :goto_3
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->d:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->n:Landroid/graphics/Rect;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lcom/android/internal/widget/ActionBarOverlayLayout;->h(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    .line 32
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 33
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->q:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 34
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->p:Landroid/graphics/Rect;

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 35
    :cond_8
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->d:Landroid/view/View;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 36
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarOverlayLayout$LayoutParams;

    .line 37
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 38
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 39
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v3, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 44
    invoke-static {v1, p1, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v1, v2, 0x10

    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowSystemUiVisibilityChanged(I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->k()V

    .line 3
    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->k:I

    xor-int/2addr v0, p1

    .line 4
    iput p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->k:I

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->b:Lj/a;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lj/a;->C()Z

    :cond_1
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_2

    move v2, v3

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->b:Lj/a;

    if-eqz p1, :cond_5

    xor-int/lit8 v3, v2, 0x1

    .line 7
    invoke-virtual {p1, v3}, Lj/a;->w(Z)V

    if-nez v1, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->b:Lj/a;

    invoke-virtual {p1}, Lj/a;->A()V

    goto :goto_2

    .line 9
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->b:Lj/a;

    invoke-virtual {p1}, Lj/a;->J()V

    :cond_5
    :goto_2
    and-int/lit16 p1, v0, 0x100

    if-eqz p1, :cond_6

    .line 10
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->b:Lj/a;

    if-eqz p1, :cond_6

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    :cond_6
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2
    iput p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->c:I

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->b:Lj/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lj/a;->H(I)V

    :cond_0
    return-void
.end method

.method public setActionBar(Lj/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->b:Lj/a;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->b:Lj/a;

    iget v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->c:I

    invoke-virtual {p1, v0}, Lj/a;->H(I)V

    .line 4
    iget p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->k:I

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    :cond_0
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->j:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout;->i:Z

    return-void
.end method

.method public setShowingForActionMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result p1

    const/16 v0, 0x500

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x4

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setDisabledSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/View;->setDisabledSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
