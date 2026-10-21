.class public Lcom/android/internal/view/menu/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/internal/view/menu/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/e$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public final c:Lcom/android/internal/view/menu/c;

.field public final d:Lcom/android/internal/view/menu/e$a;

.field public final e:Z

.field public final f:I

.field public g:Landroid/view/View;

.field public h:Landroid/widget/ListPopupWindow;

.field public i:Landroid/view/ViewTreeObserver;

.field public j:Lcom/android/internal/view/menu/f$a;

.field public k:Z

.field public l:Landroid/view/ViewGroup;

.field public m:Z

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/c;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/view/menu/e;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/c;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/c;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/e;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/c;Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/c;Landroid/view/View;Z)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/internal/view/menu/e;->o:I

    .line 5
    iput-object p1, p0, Lcom/android/internal/view/menu/e;->a:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/e;->b:Landroid/view/LayoutInflater;

    .line 7
    iput-object p2, p0, Lcom/android/internal/view/menu/e;->c:Lcom/android/internal/view/menu/c;

    .line 8
    new-instance v0, Lcom/android/internal/view/menu/e$a;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/view/menu/e$a;-><init>(Lcom/android/internal/view/menu/e;Lcom/android/internal/view/menu/c;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/e;->d:Lcom/android/internal/view/menu/e$a;

    .line 9
    iput-boolean p4, p0, Lcom/android/internal/view/menu/e;->e:Z

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    iget p4, p4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 p4, p4, 0x2

    const v0, 0x1050007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/internal/view/menu/e;->f:I

    .line 12
    iput-object p3, p0, Lcom/android/internal/view/menu/e;->g:Landroid/view/View;

    .line 13
    invoke-virtual {p2, p0}, Lcom/android/internal/view/menu/c;->b(Lcom/android/internal/view/menu/f;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/internal/view/menu/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/internal/view/menu/e;->e:Z

    return p0
.end method

.method public static synthetic h(Lcom/android/internal/view/menu/e;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/view/menu/e;->b:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public static synthetic i(Lcom/android/internal/view/menu/e;)Lcom/android/internal/view/menu/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/view/menu/e;->c:Lcom/android/internal/view/menu/c;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/android/internal/view/menu/c;Lcom/android/internal/view/menu/d;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/view/menu/e;->m:Z

    .line 2
    iget-object p1, p0, Lcom/android/internal/view/menu/e;->d:Lcom/android/internal/view/menu/e$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/internal/view/menu/e$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Lcom/android/internal/view/menu/h;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/c;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Lcom/android/internal/view/menu/e;

    iget-object v2, p0, Lcom/android/internal/view/menu/e;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/view/menu/e;->g:Landroid/view/View;

    invoke-direct {v0, v2, p1, v3, v1}, Lcom/android/internal/view/menu/e;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/c;Landroid/view/View;Z)V

    .line 3
    iget-object v2, p0, Lcom/android/internal/view/menu/e;->j:Lcom/android/internal/view/menu/f$a;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/e;->o(Lcom/android/internal/view/menu/f$a;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/internal/view/menu/c;->size()I

    move-result v2

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_1

    .line 5
    invoke-virtual {p1, v3}, Lcom/android/internal/view/menu/c;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 6
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 7
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/e;->p(Z)V

    .line 8
    invoke-virtual {v0}, Lcom/android/internal/view/menu/e;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->j:Lcom/android/internal/view/menu/f$a;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/f$a;->onOpenSubMenu(Lcom/android/internal/view/menu/c;)Z

    :cond_2
    return v4

    :cond_3
    return v1
.end method

.method public e(Landroid/content/Context;Lcom/android/internal/view/menu/c;)V
    .locals 0

    return-void
.end method

.method public f(Lcom/android/internal/view/menu/c;Lcom/android/internal/view/menu/d;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public j()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/e;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->h:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public k()Landroid/widget/ListPopupWindow;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->h:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->h:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->d:Lcom/android/internal/view/menu/e$a;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 3
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 4
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v1

    move v7, v6

    move-object v8, v5

    :goto_0
    if-ge v1, v4, :cond_4

    .line 5
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v9

    if-eq v9, v7, :cond_0

    move-object v8, v5

    move v7, v9

    .line 6
    :cond_0
    iget-object v9, p0, Lcom/android/internal/view/menu/e;->l:Landroid/view/ViewGroup;

    if-nez v9, :cond_1

    .line 7
    new-instance v9, Landroid/widget/FrameLayout;

    iget-object v10, p0, Lcom/android/internal/view/menu/e;->a:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/internal/view/menu/e;->l:Landroid/view/ViewGroup;

    .line 8
    :cond_1
    iget-object v9, p0, Lcom/android/internal/view/menu/e;->l:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, v8, v9}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 9
    invoke-virtual {v8, v2, v3}, Landroid/view/View;->measure(II)V

    .line 10
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 11
    iget v10, p0, Lcom/android/internal/view/menu/e;->f:I

    if-lt v9, v10, :cond_2

    return v10

    :cond_2
    if-le v9, v6, :cond_3

    move v6, v9

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v6
.end method

.method public n(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/e;->g:Landroid/view/View;

    return-void
.end method

.method public o(Lcom/android/internal/view/menu/f$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/e;->j:Lcom/android/internal/view/menu/f$a;

    return-void
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/c;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->c:Lcom/android/internal/view/menu/c;

    if-eq p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/e;->j()V

    .line 3
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->j:Lcom/android/internal/view/menu/f$a;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/f$a;->onCloseMenu(Lcom/android/internal/view/menu/c;Z)V

    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/internal/view/menu/e;->h:Landroid/widget/ListPopupWindow;

    .line 2
    iget-object v1, p0, Lcom/android/internal/view/menu/e;->c:Lcom/android/internal/view/menu/c;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/c;->close()V

    .line 3
    iget-object v1, p0, Lcom/android/internal/view/menu/e;->i:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/e;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/menu/e;->i:Landroid/view/ViewTreeObserver;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/e;->i:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 6
    iput-object v0, p0, Lcom/android/internal/view/menu/e;->i:Landroid/view/ViewTreeObserver;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/e;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/e;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->h:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/e;->j()V

    :cond_2
    :goto_1
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
    iget-object p1, p0, Lcom/android/internal/view/menu/e;->d:Lcom/android/internal/view/menu/e$a;

    .line 2
    invoke-static {p1}, Lcom/android/internal/view/menu/e$a;->a(Lcom/android/internal/view/menu/e$a;)Lcom/android/internal/view/menu/c;

    move-result-object p2

    invoke-virtual {p1, p3}, Lcom/android/internal/view/menu/e$a;->c(I)Lcom/android/internal/view/menu/d;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/android/internal/view/menu/c;->E(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/e;->j()V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->i:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/e;->i:Landroid/view/ViewTreeObserver;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->i:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public p(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/view/menu/e;->k:Z

    return-void
.end method

.method public q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/view/menu/e;->o:I

    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/e;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()Z
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/internal/view/menu/e;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x1010300

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/internal/view/menu/e;->h:Landroid/widget/ListPopupWindow;

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 3
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->h:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->h:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/internal/view/menu/e;->d:Lcom/android/internal/view/menu/e$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->h:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->g:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 7
    iget-object v3, p0, Lcom/android/internal/view/menu/e;->i:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_0

    move v2, v1

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/view/menu/e;->i:Landroid/view/ViewTreeObserver;

    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 10
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 11
    iget-object v2, p0, Lcom/android/internal/view/menu/e;->h:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 12
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->h:Landroid/widget/ListPopupWindow;

    iget v2, p0, Lcom/android/internal/view/menu/e;->o:I

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 13
    iget-boolean v0, p0, Lcom/android/internal/view/menu/e;->m:Z

    if-nez v0, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/android/internal/view/menu/e;->m()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/e;->n:I

    .line 15
    iput-boolean v1, p0, Lcom/android/internal/view/menu/e;->m:Z

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->h:Landroid/widget/ListPopupWindow;

    iget v2, p0, Lcom/android/internal/view/menu/e;->n:I

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 17
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->h:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 18
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->h:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 19
    iget-object v0, p0, Lcom/android/internal/view/menu/e;->h:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return v1

    :cond_3
    return v2
.end method
