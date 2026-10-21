.class public Lcom/android/internal/widget/ActionBarView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Lcom/android/internal/widget/ActionBarContextView;

.field public H:Landroid/widget/SpinnerAdapter;

.field public I:Landroid/app/ActionBar$OnNavigationListener;

.field public J:Ljava/lang/Runnable;

.field public K:Landroid/view/View;

.field public L:Landroid/view/Window$Callback;

.field public final M:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Landroid/graphics/drawable/Drawable;

.field public o:Ljava/lang/CharSequence;

.field public p:I

.field public q:Lcom/android/internal/widget/ActionBarView$HomeView;

.field public r:Landroid/widget/LinearLayout;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/view/ViewGroup;

.field public v:Landroid/widget/Spinner;

.field public w:Landroid/widget/LinearLayout;

.field public x:Lcom/android/internal/widget/g;

.field public y:Landroid/view/View;

.field public z:I


# direct methods
.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lt/a;->a(Landroid/view/ViewGroup;)V

    .line 2
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->K:Landroid/view/View;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/internal/widget/ActionBarView;->j:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView;->v(Z)V

    return-void
.end method


# virtual methods
.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->y:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->j:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->H:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->v:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->i:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final o()Ljava/lang/CharSequence;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->j:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040516

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040515

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1040519

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v5

    aput-object v2, v8, v4

    aput-object v0, v8, v6

    invoke-virtual {v3, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040518

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    aput-object v0, v6, v4

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->s:Landroid/widget/TextView;

    .line 3
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->t:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    .line 7
    iget p1, p0, Lcom/android/internal/widget/ActionBarView;->j:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->q()V

    .line 9
    :cond_1
    iget p1, p0, Lcom/android/internal/widget/ActionBarView;->p:I

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setHomeActionContentDescription(I)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->x:Lcom/android/internal/widget/g;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->C:Z

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, -0x2

    .line 13
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, -0x1

    .line 14
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->x:Lcom/android/internal/widget/g;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/g;->setAllowCollapse(Z)V

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->x()Z

    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->y()Z

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->q:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->y:Landroid/view/View;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->j:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 6
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->y:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p5, p3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    sub-int/2addr p5, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p5, p1

    if-gtz p5, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 5
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 6
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_3

    iget p1, p0, Lcom/android/internal/widget/ActionBarView;->j:I

    and-int/2addr p1, p2

    :cond_3
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public onMeasure(II)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->D:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    move v1, v3

    move v4, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v2, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    if-ne v5, v6, :cond_0

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    if-eq v5, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_4

    .line 6
    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    .line 8
    invoke-virtual {p0, v3, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->E:Z

    return-void

    .line 10
    :cond_5
    iput-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->E:Z

    .line 11
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const-string v1, " can only be used "

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_9

    .line 12
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_8

    .line 13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 14
    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView;->f:I

    if-ltz v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 15
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr p2, v1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v0, p2

    .line 18
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 19
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    sub-int/2addr p1, v1

    sub-int/2addr p1, v5

    .line 20
    div-int/lit8 p1, p1, 0x2

    .line 21
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_7

    iget p1, p0, Lcom/android/internal/widget/ActionBarView;->j:I

    and-int/2addr p1, v2

    :cond_7
    const/4 p1, 0x0

    .line 22
    throw p1

    .line 23
    :cond_8
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

    .line 24
    :cond_9
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

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/internal/widget/ActionBarView$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p1, Lcom/android/internal/widget/ActionBarView$SavedState;->a:I

    .line 4
    iget-boolean p1, p1, Lcom/android/internal/widget/ActionBarView$SavedState;->b:Z

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->m()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/internal/widget/ActionBarView$SavedState;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->i()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->b:Z

    return-object v1
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->C:Z

    return v0
.end method

.method public final q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x1090019

    .line 3
    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    const v2, 0x1020275

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->s:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    const v2, 0x1020276

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->t:Landroid/widget/TextView;

    .line 6
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->z:I

    if-eqz v0, :cond_0

    .line 7
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->s:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 9
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->s:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->A:I

    if-eqz v0, :cond_2

    .line 11
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->t:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 13
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->t:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    :cond_3
    invoke-static {p0}, Lt/a;->a(Landroid/view/ViewGroup;)V

    .line 16
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 17
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->K:Landroid/view/View;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 19
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->E:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->d:Z

    return v0
.end method

.method public setCallback(Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->I:Landroid/app/ActionBar$OnNavigationListener;

    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->D:Z

    return-void
.end method

.method public setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->G:Lcom/android/internal/widget/ActionBarContextView;

    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->j:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Lt/a;->a(Landroid/view/ViewGroup;)V

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->y:Landroid/view/View;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_2
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->y:Landroid/view/View;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    xor-int v1, p1, v0

    .line 2
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->j:I

    and-int/lit8 v0, v1, 0x3f

    if-eqz v0, :cond_8

    .line 3
    invoke-static {p0}, Lt/a;->a(Landroid/view/ViewGroup;)V

    and-int/lit8 v0, v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_7

    and-int/lit8 v0, v1, 0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    and-int/2addr p1, v3

    .line 5
    :cond_1
    throw v2

    :cond_2
    and-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_4

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->q()V

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    :goto_1
    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_2

    :cond_5
    move p1, v0

    .line 8
    :goto_2
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->j:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v3, v0

    .line 9
    :goto_3
    throw v2

    .line 10
    :cond_7
    throw v2

    .line 11
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView;->v(Z)V

    return-void
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->H:Landroid/widget/SpinnerAdapter;

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->v:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->v:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/g;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->x:Lcom/android/internal/widget/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->x:Lcom/android/internal/widget/g;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 4
    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->C:Z

    if-eqz v1, :cond_2

    .line 5
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->i:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->x:Lcom/android/internal/widget/g;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    .line 8
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    .line 9
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/g;->setAllowCollapse(Z)V

    :cond_2
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1

    .line 3
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->p:I

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->o:Ljava/lang/CharSequence;

    .line 5
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView;->v(Z)V

    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->o:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView;->v(Z)V

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView;->u(ZZ)V

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->m:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->j:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    throw v0

    .line 4
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->K:Landroid/view/View;

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    throw v0
.end method

.method public setLogo(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->n:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Lcom/android/internal/widget/ActionBarView;->j:I

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->i:I

    if-eq p1, v0, :cond_8

    .line 2
    invoke-static {p0}, Lt/a;->a(Landroid/view/ViewGroup;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->x:Lcom/android/internal/widget/g;

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->C:Z

    if-eqz v3, :cond_2

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->x:Lcom/android/internal/widget/g;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->C:Z

    if-eqz v1, :cond_7

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->v:Landroid/widget/Spinner;

    if-nez v0, :cond_5

    .line 10
    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x10102d7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->v:Landroid/widget/Spinner;

    const v1, 0x1020271

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 12
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v2, 0x10102f4

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;

    .line 13
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 14
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 15
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->v:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->v:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->H:Landroid/widget/SpinnerAdapter;

    if-eq v0, v1, :cond_6

    .line 17
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->v:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->v:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->M:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 19
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->w:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    :cond_7
    :goto_1
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->i:I

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_8
    return-void
.end method

.method public setSplitActionBar(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->d:Z

    if-eq v0, p1, :cond_8

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->c:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->a:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->c:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    const/16 v2, 0x8

    .line 12
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_7

    if-nez p1, :cond_6

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->B(Z)V

    goto :goto_2

    .line 15
    :cond_6
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->B(Z)V

    .line 16
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->E(IZ)V

    .line 17
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->C(I)V

    .line 18
    :cond_7
    :goto_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    :cond_8
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lt/a;->a(Landroid/view/ViewGroup;)V

    .line 2
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->t:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->K:Landroid/view/View;

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/internal/widget/ActionBarView;->j:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->k:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->l:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    move p1, v1

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->r:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView;->v(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->B:Z

    .line 2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->L:Landroid/view/Window$Callback;

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->B:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->s:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    .line 4
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public final u(ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->F:Z

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/android/internal/widget/ActionBarView;->K:Landroid/view/View;

    if-eqz p2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    iget-object p2, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView;->v(Z)V

    return-void
.end method

.method public final v(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 4
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarView;->u:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->o()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
