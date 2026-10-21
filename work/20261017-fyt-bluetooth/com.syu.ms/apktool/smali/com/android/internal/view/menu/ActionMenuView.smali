.class public Lcom/android/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/menu/c$b;
.implements Lcom/android/internal/view/menu/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/ActionMenuView$a;
    }
.end annotation


# instance fields
.field public a:Lcom/android/internal/view/menu/c;

.field public b:Z

.field public c:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public static l(Landroid/view/View;IIII)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 2
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 3
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 4
    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 5
    instance-of p4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz p4, :cond_0

    move-object p4, p0

    check-cast p4, Lcom/android/internal/view/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    .line 6
    invoke-virtual {p4}, Lcom/android/internal/view/menu/ActionMenuItemView;->h()Z

    move-result p4

    if-eqz p4, :cond_1

    move p4, v1

    goto :goto_1

    :cond_1
    move p4, v2

    :goto_1
    const/4 v3, 0x2

    if-lez p2, :cond_5

    if-eqz p4, :cond_2

    if-lt p2, v3, :cond_5

    :cond_2
    mul-int/2addr p2, p1

    const/high16 v4, -0x80000000

    .line 7
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 8
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 10
    div-int v4, p2, p1

    .line 11
    rem-int/2addr p2, p1

    if-eqz p2, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    if-eqz p4, :cond_4

    if-ge v4, v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    move v3, v2

    .line 12
    :goto_2
    iget-boolean p2, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->a:Z

    if-nez p2, :cond_6

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    .line 13
    :goto_3
    iput-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->d:Z

    .line 14
    iput v3, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->b:I

    mul-int/2addr p1, v3

    const/high16 p2, 0x40000000    # 2.0f

    .line 15
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return v3
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    instance-of p1, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Lcom/android/internal/view/menu/d;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->a:Lcom/android/internal/view/menu/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/c;->E(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(Lcom/android/internal/view/menu/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->a:Lcom/android/internal/view/menu/c;

    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->h()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->h()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->i(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->j(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->i(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->j(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public hasDividerBeforeChildAt(I)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, -0x1

    .line 1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$a;

    if-eqz v3, :cond_1

    .line 4
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$a;

    invoke-interface {v1}, Lcom/android/internal/view/menu/ActionMenuView$a;->a()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-lez p1, :cond_2

    .line 5
    instance-of p1, v2, Lcom/android/internal/view/menu/ActionMenuView$a;

    if-eqz p1, :cond_2

    .line 6
    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView$a;

    invoke-interface {v2}, Lcom/android/internal/view/menu/ActionMenuView$a;->c()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    return v0
.end method

.method public i(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public j(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    instance-of v0, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    :goto_0
    iget p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz p1, :cond_1

    const/16 p1, 0x10

    .line 3
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    return-object v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->h()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public k()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->h()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->a:Z

    return-object v0
.end method

.method public final m(II)V
    .locals 29

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_0

    sub-int v7, v3, v5

    .line 6
    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_0

    :cond_0
    iget v7, v0, Lcom/android/internal/view/menu/ActionMenuView;->i:I

    sub-int v8, v3, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/high16 v8, -0x80000000

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :goto_0
    sub-int/2addr v2, v4

    .line 7
    iget v4, v0, Lcom/android/internal/view/menu/ActionMenuView;->f:I

    div-int v8, v2, v4

    .line 8
    rem-int v9, v2, v4

    const/4 v10, 0x0

    if-nez v8, :cond_1

    .line 9
    invoke-virtual {v0, v2, v10}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 10
    :cond_1
    div-int/2addr v9, v8

    add-int/2addr v4, v9

    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move v6, v10

    move v11, v6

    move v13, v11

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    const-wide/16 v19, 0x0

    :goto_1
    if-ge v13, v9, :cond_9

    .line 12
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 13
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v10

    move/from16 v21, v3

    const/16 v3, 0x8

    if-ne v10, v3, :cond_2

    move v10, v5

    goto/16 :goto_5

    .line 14
    :cond_2
    instance-of v3, v12, Lcom/android/internal/view/menu/ActionMenuItemView;

    add-int/lit8 v15, v15, 0x1

    if-eqz v3, :cond_3

    .line 15
    iget v10, v0, Lcom/android/internal/view/menu/ActionMenuView;->g:I

    move/from16 v22, v15

    const/4 v15, 0x0

    invoke-virtual {v12, v10, v15, v10, v15}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_3
    move/from16 v22, v15

    const/4 v15, 0x0

    .line 16
    :goto_2
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 17
    iput-boolean v15, v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->f:Z

    .line 18
    iput v15, v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->c:I

    .line 19
    iput v15, v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->b:I

    .line 20
    iput-boolean v15, v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->d:Z

    .line 21
    iput v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 22
    iput v15, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v3, :cond_4

    .line 23
    move-object v3, v12

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->h()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->e:Z

    .line 24
    iget-boolean v3, v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->a:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    move v3, v8

    .line 25
    :goto_4
    invoke-static {v12, v4, v3, v7, v5}, Lcom/android/internal/view/menu/ActionMenuView;->l(Landroid/view/View;IIII)I

    move-result v3

    .line 26
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 27
    iget-boolean v15, v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->d:Z

    if-eqz v15, :cond_6

    add-int/lit8 v16, v16, 0x1

    .line 28
    :cond_6
    iget-boolean v10, v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->a:Z

    if-eqz v10, :cond_7

    const/4 v14, 0x1

    :cond_7
    sub-int/2addr v8, v3

    .line 29
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v10, 0x1

    if-ne v3, v10, :cond_8

    shl-int v3, v10, v13

    move v10, v5

    move/from16 p2, v6

    int-to-long v5, v3

    or-long v5, v19, v5

    move-wide/from16 v19, v5

    move/from16 v15, v22

    move/from16 v6, p2

    goto :goto_5

    :cond_8
    move v10, v5

    move/from16 p2, v6

    move/from16 v15, v22

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move v5, v10

    move/from16 v3, v21

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_9
    move/from16 v21, v3

    const/4 v3, 0x2

    if-eqz v14, :cond_a

    if-ne v15, v3, :cond_a

    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    move v10, v8

    const/4 v8, 0x0

    :goto_7
    if-lez v16, :cond_14

    if-lez v10, :cond_14

    const v12, 0x7fffffff

    move v13, v12

    const/4 v3, 0x0

    const/4 v12, 0x0

    const-wide/16 v22, 0x0

    :goto_8
    if-ge v3, v9, :cond_e

    .line 30
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    .line 31
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move/from16 v25, v8

    move-object/from16 v8, v24

    check-cast v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move/from16 v24, v11

    .line 32
    iget-boolean v11, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->d:Z

    if-nez v11, :cond_c

    :cond_b
    move v11, v1

    move/from16 v26, v2

    goto :goto_9

    .line 33
    :cond_c
    iget v8, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->b:I

    if-ge v8, v13, :cond_d

    const/4 v11, 0x1

    shl-int v12, v11, v3

    int-to-long v12, v12

    move/from16 v26, v2

    move-wide/from16 v22, v12

    move v13, v8

    move v12, v11

    move v11, v1

    goto :goto_9

    :cond_d
    const/4 v11, 0x1

    if-ne v8, v13, :cond_b

    shl-int v8, v11, v3

    move v11, v1

    move/from16 v26, v2

    int-to-long v1, v8

    or-long v1, v22, v1

    add-int/lit8 v8, v12, 0x1

    move-wide/from16 v22, v1

    move v12, v8

    :goto_9
    add-int/lit8 v3, v3, 0x1

    move v1, v11

    move/from16 v11, v24

    move/from16 v8, v25

    move/from16 v2, v26

    goto :goto_8

    :cond_e
    move/from16 v26, v2

    move/from16 v25, v8

    move/from16 v24, v11

    move v11, v1

    or-long v19, v19, v22

    if-le v12, v10, :cond_f

    move v8, v11

    goto :goto_d

    :cond_f
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v9, :cond_13

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    const/4 v8, 0x1

    shl-int v12, v8, v1

    move v8, v11

    int-to-long v11, v12

    and-long v27, v22, v11

    const-wide/16 v17, 0x0

    cmp-long v25, v27, v17

    if-nez v25, :cond_11

    .line 36
    iget v2, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->b:I

    if-ne v2, v13, :cond_10

    or-long v19, v19, v11

    :cond_10
    move/from16 v27, v5

    goto :goto_c

    :cond_11
    if-eqz v5, :cond_12

    .line 37
    iget-boolean v11, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->e:Z

    if-eqz v11, :cond_12

    const/4 v11, 0x1

    if-ne v10, v11, :cond_12

    .line 38
    iget v12, v0, Lcom/android/internal/view/menu/ActionMenuView;->g:I

    add-int v11, v12, v4

    move/from16 v27, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v11, v5, v12, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b

    :cond_12
    move/from16 v27, v5

    .line 39
    :goto_b
    iget v2, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->b:I

    const/4 v5, 0x1

    add-int/2addr v2, v5

    iput v2, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->b:I

    .line 40
    iput-boolean v5, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->f:Z

    add-int/lit8 v10, v10, -0x1

    :goto_c
    add-int/lit8 v1, v1, 0x1

    move v11, v8

    move/from16 v5, v27

    goto :goto_a

    :cond_13
    move v1, v11

    move/from16 v11, v24

    move/from16 v2, v26

    const/4 v3, 0x2

    const/4 v8, 0x1

    goto/16 :goto_7

    :cond_14
    move/from16 v26, v2

    move/from16 v25, v8

    move/from16 v24, v11

    move v8, v1

    :goto_d
    const/4 v1, 0x1

    if-nez v14, :cond_15

    if-ne v15, v1, :cond_15

    move v2, v1

    goto :goto_e

    :cond_15
    const/4 v2, 0x0

    :goto_e
    if-lez v10, :cond_22

    const-wide/16 v11, 0x0

    cmp-long v3, v19, v11

    if-eqz v3, :cond_22

    sub-int/2addr v15, v1

    if-lt v10, v15, :cond_16

    if-nez v2, :cond_16

    if-le v6, v1, :cond_22

    .line 41
    :cond_16
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    int-to-float v1, v1

    if-nez v2, :cond_18

    const-wide/16 v2, 0x1

    and-long v2, v19, v2

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v15, 0x0

    if-eqz v2, :cond_17

    .line 42
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 43
    iget-boolean v2, v2, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->e:Z

    if-nez v2, :cond_17

    sub-float/2addr v1, v3

    :cond_17
    add-int/lit8 v2, v9, -0x1

    const/4 v5, 0x1

    shl-int v6, v5, v2

    int-to-long v5, v6

    and-long v5, v19, v5

    const-wide/16 v11, 0x0

    cmp-long v5, v5, v11

    if-eqz v5, :cond_19

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 45
    iget-boolean v2, v2, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->e:Z

    if-nez v2, :cond_19

    sub-float/2addr v1, v3

    goto :goto_f

    :cond_18
    const/4 v15, 0x0

    :cond_19
    :goto_f
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1a

    mul-int/2addr v10, v4

    int-to-float v2, v10

    div-float/2addr v2, v1

    float-to-int v1, v2

    goto :goto_10

    :cond_1a
    move v1, v15

    :goto_10
    move v2, v15

    move/from16 v10, v25

    :goto_11
    if-ge v2, v9, :cond_21

    const/4 v3, 0x1

    shl-int v5, v3, v2

    int-to-long v5, v5

    and-long v5, v19, v5

    const-wide/16 v11, 0x0

    cmp-long v3, v5, v11

    if-nez v3, :cond_1b

    const/4 v3, 0x1

    const/4 v6, 0x2

    goto :goto_13

    .line 46
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 48
    instance-of v3, v3, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v3, :cond_1d

    .line 49
    iput v1, v5, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->c:I

    const/4 v3, 0x1

    .line 50
    iput-boolean v3, v5, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->f:Z

    if-nez v2, :cond_1c

    .line 51
    iget-boolean v3, v5, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->e:Z

    if-nez v3, :cond_1c

    neg-int v3, v1

    const/4 v6, 0x2

    .line 52
    div-int/2addr v3, v6

    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_12

    :cond_1c
    const/4 v6, 0x2

    :goto_12
    const/4 v3, 0x1

    const/4 v10, 0x1

    goto :goto_13

    :cond_1d
    const/4 v6, 0x2

    .line 53
    iget-boolean v3, v5, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->a:Z

    if-eqz v3, :cond_1e

    .line 54
    iput v1, v5, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->c:I

    const/4 v3, 0x1

    .line 55
    iput-boolean v3, v5, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->f:Z

    neg-int v10, v1

    .line 56
    div-int/2addr v10, v6

    iput v10, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v10, v3

    goto :goto_13

    :cond_1e
    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    .line 57
    div-int/lit8 v13, v1, 0x2

    iput v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_1f
    add-int/lit8 v13, v9, -0x1

    if-eq v2, v13, :cond_20

    .line 58
    div-int/lit8 v13, v1, 0x2

    iput v13, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_20
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_21
    move v1, v15

    goto :goto_14

    :cond_22
    const/4 v15, 0x0

    move v1, v10

    move/from16 v10, v25

    :goto_14
    if-eqz v10, :cond_24

    move v10, v15

    :goto_15
    if-ge v10, v9, :cond_24

    .line 59
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 61
    iget-boolean v5, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->f:Z

    if-nez v5, :cond_23

    const/high16 v3, 0x40000000    # 2.0f

    goto :goto_16

    .line 62
    :cond_23
    iget v5, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->b:I

    mul-int/2addr v5, v4

    iget v3, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->c:I

    add-int/2addr v5, v3

    const/high16 v3, 0x40000000    # 2.0f

    .line 63
    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v2, v5, v7}, Landroid/view/View;->measure(II)V

    :goto_16
    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_24
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v8, v3, :cond_25

    move/from16 v3, v24

    goto :goto_17

    :cond_25
    move/from16 v3, v21

    :goto_17
    move/from16 v2, v26

    .line 64
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    mul-int/2addr v1, v4

    .line 65
    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuView;->h:I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->c:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->b(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->c:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->z()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->c:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->x()Z

    .line 5
    iget-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->c:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->F()Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->c:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->v()Z

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView;->d:Z

    if-nez v1, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int v2, p3, p5

    .line 4
    div-int/lit8 v2, v2, 0x2

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getDividerWidth()I

    move-result v3

    sub-int v4, p4, p2

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v8, v1, :cond_5

    .line 8
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 9
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 11
    iget-boolean v14, v11, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->a:Z

    if-eqz v14, :cond_4

    .line 12
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 13
    invoke-virtual {v0, v8}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/2addr v9, v3

    .line 14
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_3

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v9

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v9

    .line 17
    :goto_1
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    .line 18
    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v5, v9

    move v9, v12

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v5, v7

    .line 20
    invoke-virtual {v0, v8}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    add-int/lit8 v10, v10, 0x1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    if-ne v1, v12, :cond_6

    if-nez v9, :cond_6

    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 24
    div-int/lit8 v4, v4, 0x2

    .line 25
    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v4, v6

    .line 26
    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v2, v6

    add-int/2addr v3, v4

    add-int/2addr v5, v2

    .line 27
    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_6
    xor-int/lit8 v3, v9, 0x1

    sub-int/2addr v10, v3

    if-lez v10, :cond_7

    .line 28
    div-int v3, v5, v10

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v6, :cond_a

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    move v7, v4

    :goto_4
    if-ge v7, v1, :cond_d

    .line 30
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 31
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 32
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_9

    iget-boolean v8, v6, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->a:Z

    if-eqz v8, :cond_8

    goto :goto_5

    .line 33
    :cond_8
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    .line 34
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 35
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 36
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    .line 37
    invoke-virtual {v4, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 38
    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    sub-int/2addr v5, v8

    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 39
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    move v7, v4

    :goto_6
    if-ge v7, v1, :cond_d

    .line 40
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 41
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 42
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_c

    iget-boolean v8, v6, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->a:Z

    if-eqz v8, :cond_b

    goto :goto_7

    .line 43
    :cond_b
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    .line 44
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 45
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 46
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    .line 47
    invoke-virtual {v4, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    .line 48
    iget v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v4

    add-int/2addr v8, v3

    add-int/2addr v5, v8

    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_d
    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->d:Z

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->d:Z

    if-eq v0, v1, :cond_1

    .line 3
    iput v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->e:I

    .line 4
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->d:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->a:Lcom/android/internal/view/menu/c;

    if-eqz v1, :cond_2

    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->e:I

    if-eq v0, v4, :cond_2

    .line 6
    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->e:I

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/c;->D(Z)V

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->d:Z

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->m(II)V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_4

    .line 11
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 13
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_2
    return-void
.end method

.method public setMaxItemHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->i:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->b:Z

    return-void
.end method

.method public setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->c:Lcom/android/internal/view/menu/ActionMenuPresenter;

    return-void
.end method
