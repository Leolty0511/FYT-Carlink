.class public Lcom/android/internal/widget/g;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/g$e;,
        Lcom/android/internal/widget/g$c;,
        Lcom/android/internal/widget/g$b;,
        Lcom/android/internal/widget/g$d;
    }
.end annotation


# static fields
.field public static final l:Landroid/animation/TimeInterpolator;


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:Lcom/android/internal/widget/g$c;

.field public c:Landroid/widget/LinearLayout;

.field public d:Landroid/widget/Spinner;

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Landroid/animation/Animator;

.field public final k:Lcom/android/internal/widget/g$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/g;->l:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/android/internal/widget/g$e;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/g$e;-><init>(Lcom/android/internal/widget/g;)V

    iput-object v0, p0, Lcom/android/internal/widget/g;->k:Lcom/android/internal/widget/g$e;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 4
    invoke-static {p1}, Lv/a;->b(Landroid/content/Context;)Lv/a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lv/a;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/g;->setContentHeight(I)V

    .line 6
    invoke-virtual {p1}, Lv/a;->e()I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/g;->g:I

    .line 7
    invoke-virtual {p0}, Lcom/android/internal/widget/g;->o()Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/g;->c:Landroid/widget/LinearLayout;

    .line 8
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/internal/widget/g;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/widget/g;->c:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic i(Lcom/android/internal/widget/g;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/g$d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/g;->p(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/g$d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public j(Landroid/app/ActionBar$Tab;IZ)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/g;->p(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/g$d;

    move-result-object p1

    .line 2
    iget-object v1, p0, Lcom/android/internal/widget/g;->c:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object p2, p0, Lcom/android/internal/widget/g;->d:Landroid/widget/Spinner;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p2

    check-cast p2, Lcom/android/internal/widget/g$b;

    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/g$d;->setSelected(Z)V

    .line 6
    :cond_1
    iget-boolean p1, p0, Lcom/android/internal/widget/g;->e:Z

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public k(Landroid/app/ActionBar$Tab;Z)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/g;->p(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/g$d;

    move-result-object p1

    .line 2
    iget-object v1, p0, Lcom/android/internal/widget/g;->c:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/g;->d:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/g$b;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 5
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/g$d;->setSelected(Z)V

    .line 6
    :cond_1
    iget-boolean p1, p0, Lcom/android/internal/widget/g;->e:Z

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/g;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/g;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    new-instance v0, Lcom/android/internal/widget/g$a;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/g$a;-><init>(Lcom/android/internal/widget/g;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/g;->a:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public m(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/g;->j:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const-wide/16 v0, 0xc8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "alpha"

    if-nez p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    new-array v2, v4, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 5
    invoke-static {p0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    sget-object v0, Lcom/android/internal/widget/g;->l:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v0, p0, Lcom/android/internal/widget/g;->k:Lcom/android/internal/widget/g$e;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/g$e;->a(I)Lcom/android/internal/widget/g$e;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    new-array v4, v4, [F

    aput v2, v4, v3

    .line 10
    invoke-static {p0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 12
    sget-object v0, Lcom/android/internal/widget/g;->l:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    iget-object v0, p0, Lcom/android/internal/widget/g;->k:Lcom/android/internal/widget/g$e;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/g$e;->a(I)Lcom/android/internal/widget/g$e;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void
.end method

.method public final n()Landroid/widget/Spinner;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method public final o()Landroid/widget/LinearLayout;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    const/16 v1, 0x11

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 4
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/g;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lv/a;->b(Landroid/content/Context;)Lv/a;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lv/a;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/g;->setContentHeight(I)V

    .line 4
    invoke-virtual {p1}, Lv/a;->e()I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/g;->g:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/g;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/android/internal/widget/g$d;

    .line 2
    invoke-virtual {p2}, Lcom/android/internal/widget/g$d;->i()Landroid/app/ActionBar$Tab;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->select()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/HorizontalScrollView;->setFillViewport(Z)V

    .line 3
    iget-object v4, p0, Lcom/android/internal/widget/g;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-le v4, v0, :cond_3

    if-eq p2, v2, :cond_1

    const/high16 v5, -0x80000000

    if-ne p2, v5, :cond_3

    :cond_1
    const/4 p2, 0x2

    if-le v4, p2, :cond_2

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr p2, v4

    float-to-int p2, p2

    iput p2, p0, Lcom/android/internal/widget/g;->f:I

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    div-int/2addr v4, p2

    iput v4, p0, Lcom/android/internal/widget/g;->f:I

    .line 6
    :goto_1
    iget p2, p0, Lcom/android/internal/widget/g;->f:I

    iget v4, p0, Lcom/android/internal/widget/g;->g:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/g;->f:I

    goto :goto_2

    :cond_3
    const/4 p2, -0x1

    .line 7
    iput p2, p0, Lcom/android/internal/widget/g;->f:I

    .line 8
    :goto_2
    iget p2, p0, Lcom/android/internal/widget/g;->h:I

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    if-nez v3, :cond_4

    .line 9
    iget-boolean v2, p0, Lcom/android/internal/widget/g;->e:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    if-eqz v0, :cond_6

    .line 10
    iget-object v0, p0, Lcom/android/internal/widget/g;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->measure(II)V

    .line 11
    iget-object v0, p0, Lcom/android/internal/widget/g;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v0, v1, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/android/internal/widget/g;->r()V

    goto :goto_4

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/widget/g;->s()Z

    goto :goto_4

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/g;->s()Z

    .line 15
    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 16
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    if-eqz v3, :cond_7

    if-eq v0, p1, :cond_7

    .line 18
    iget p1, p0, Lcom/android/internal/widget/g;->i:I

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/g;->setTabSelected(I)V

    :cond_7
    return-void
.end method

.method public final p(Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/g$d;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/internal/widget/g$d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/internal/widget/g$d;-><init>(Lcom/android/internal/widget/g;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    const/4 p2, -0x1

    iget v1, p0, Lcom/android/internal/widget/g;->h:I

    invoke-direct {p1, p2, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 4
    invoke-virtual {v0, p2}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    iget-object p2, p0, Lcom/android/internal/widget/g;->b:Lcom/android/internal/widget/g$c;

    if-nez p2, :cond_1

    .line 6
    new-instance p2, Lcom/android/internal/widget/g$c;

    invoke-direct {p2, p0, p1}, Lcom/android/internal/widget/g$c;-><init>(Lcom/android/internal/widget/g;Lcom/android/internal/widget/g$a;)V

    iput-object p2, p0, Lcom/android/internal/widget/g;->b:Lcom/android/internal/widget/g$c;

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/internal/widget/g;->b:Lcom/android/internal/widget/g$c;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/g;->d:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/g;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/g;->d:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/widget/g;->n()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/g;->d:Landroid/widget/Spinner;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/g;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/android/internal/widget/g;->d:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lcom/android/internal/widget/g;->d:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/internal/widget/g;->d:Landroid/widget/Spinner;

    new-instance v2, Lcom/android/internal/widget/g$b;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/widget/g$b;-><init>(Lcom/android/internal/widget/g;Lcom/android/internal/widget/g$a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/g;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    iput-object v1, p0, Lcom/android/internal/widget/g;->a:Ljava/lang/Runnable;

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/g;->d:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/internal/widget/g;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    return-void
.end method

.method public final s()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/widget/g;->q()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/g;->d:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/g;->c:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lcom/android/internal/widget/g;->d:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/g;->setTabSelected(I)V

    return v1
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/widget/g;->e:Z

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/widget/g;->h:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabSelected(I)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/android/internal/widget/g;->i:I

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/g;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 3
    iget-object v3, p0, Lcom/android/internal/widget/g;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 4
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/g;->l(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/g;->d:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    :cond_3
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/g;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/g;->d:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/g$b;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/g;->e:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public u(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/g;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2
    iget-object p1, p0, Lcom/android/internal/widget/g;->d:Landroid/widget/Spinner;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/g$b;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/android/internal/widget/g;->e:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public v(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/g;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/g$d;

    invoke-virtual {p1}, Lcom/android/internal/widget/g$d;->update()V

    .line 2
    iget-object p1, p0, Lcom/android/internal/widget/g;->d:Landroid/widget/Spinner;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/g$b;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/android/internal/widget/g;->e:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    :cond_1
    return-void
.end method
