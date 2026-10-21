.class public Lcom/android/internal/view/menu/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuPresenter$c;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$f;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$b;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$e;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$d;,
        Lcom/android/internal/view/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# instance fields
.field public A:I

.field public j:Landroid/view/View;

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:I

.field public final u:Landroid/util/SparseBooleanArray;

.field public v:Landroid/view/View;

.field public w:Lcom/android/internal/view/menu/ActionMenuPresenter$e;

.field public x:Lcom/android/internal/view/menu/ActionMenuPresenter$b;

.field public y:Lcom/android/internal/view/menu/ActionMenuPresenter$c;

.field public final z:Lcom/android/internal/view/menu/ActionMenuPresenter$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x109001c

    const v1, 0x109001b

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/view/menu/a;-><init>(Landroid/content/Context;II)V

    .line 2
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->u:Landroid/util/SparseBooleanArray;

    .line 3
    new-instance p1, Lcom/android/internal/view/menu/ActionMenuPresenter$f;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$f;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$a;)V

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->z:Lcom/android/internal/view/menu/ActionMenuPresenter$f;

    return-void
.end method

.method public static synthetic o(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->x:Lcom/android/internal/view/menu/ActionMenuPresenter$b;

    return-object p0
.end method

.method public static synthetic p(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$b;)Lcom/android/internal/view/menu/ActionMenuPresenter$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->x:Lcom/android/internal/view/menu/ActionMenuPresenter$b;

    return-object p1
.end method

.method public static synthetic q(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->w:Lcom/android/internal/view/menu/ActionMenuPresenter$e;

    return-object p0
.end method

.method public static synthetic r(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$e;)Lcom/android/internal/view/menu/ActionMenuPresenter$e;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->w:Lcom/android/internal/view/menu/ActionMenuPresenter$e;

    return-object p1
.end method

.method public static synthetic s(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->y:Lcom/android/internal/view/menu/ActionMenuPresenter$c;

    return-object p0
.end method

.method public static synthetic t(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$c;)Lcom/android/internal/view/menu/ActionMenuPresenter$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->y:Lcom/android/internal/view/menu/ActionMenuPresenter$c;

    return-object p1
.end method

.method public static synthetic u(Lcom/android/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public A(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->p:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/internal/view/menu/a;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e004a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->o:I

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/internal/view/menu/a;->c:Lcom/android/internal/view/menu/c;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/c;->D(Z)V

    :cond_1
    return-void
.end method

.method public B(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->s:Z

    return-void
.end method

.method public C(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->o:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->p:Z

    return-void
.end method

.method public D(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->k:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->l:Z

    return-void
.end method

.method public E(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->m:I

    .line 2
    iput-boolean p2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->q:Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->r:Z

    return-void
.end method

.method public F()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->z()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/a;->c:Lcom/android/internal/view/menu/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->y:Lcom/android/internal/view/menu/ActionMenuPresenter$c;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->t()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$e;

    iget-object v3, p0, Lcom/android/internal/view/menu/a;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/view/menu/a;->c:Lcom/android/internal/view/menu/c;

    iget-object v5, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/view/menu/ActionMenuPresenter$e;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/c;Landroid/view/View;Z)V

    .line 3
    new-instance v1, Lcom/android/internal/view/menu/ActionMenuPresenter$c;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$c;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$e;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->y:Lcom/android/internal/view/menu/ActionMenuPresenter$c;

    .line 4
    iget-object v0, p0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 5
    invoke-super {p0, v0}, Lcom/android/internal/view/menu/a;->d(Lcom/android/internal/view/menu/h;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lt/a;->a(Landroid/view/ViewGroup;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/a;->b(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 5
    iget-object p1, p0, Lcom/android/internal/view/menu/a;->c:Lcom/android/internal/view/menu/c;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/android/internal/view/menu/c;->q()Ljava/util/ArrayList;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 8
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/d;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/d;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v3, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/android/internal/view/menu/a;->c:Lcom/android/internal/view/menu/c;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/view/menu/c;->t()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 11
    :goto_1
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->k:Z

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/d;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/d;->isActionViewExpanded()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    goto :goto_2

    :cond_4
    if-lez v1, :cond_5

    move v0, v2

    :cond_5
    :goto_2
    if-eqz v0, :cond_8

    .line 14
    iget-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;

    if-nez p1, :cond_6

    .line 15
    new-instance p1, Lcom/android/internal/view/menu/ActionMenuPresenter$d;

    iget-object v0, p0, Lcom/android/internal/view/menu/a;->a:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter$d;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 17
    iget-object v0, p0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    if-eq p1, v0, :cond_9

    if-eqz p1, :cond_7

    .line 18
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    :cond_7
    iget-object p1, p0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView;

    .line 20
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/ActionMenuView;->k()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 21
    :cond_8
    iget-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    if-ne p1, v0, :cond_9

    .line 22
    check-cast v0, Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView;

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->k:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method

.method public c()Z
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/internal/view/menu/a;->c:Lcom/android/internal/view/menu/c;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/c;->y()Ljava/util/ArrayList;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3
    iget v3, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->o:I

    .line 4
    iget v4, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->n:I

    const/4 v5, 0x0

    .line 5
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 6
    iget-object v7, v0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    check-cast v7, Landroid/view/ViewGroup;

    move v8, v5

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_0
    if-ge v8, v2, :cond_3

    .line 7
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/d;

    .line 8
    invoke-virtual {v13}, Lcom/android/internal/view/menu/d;->l()Z

    move-result v14

    if-eqz v14, :cond_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v13}, Lcom/android/internal/view/menu/d;->k()Z

    move-result v14

    if-eqz v14, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x1

    .line 10
    :goto_1
    iget-boolean v12, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->s:Z

    if-eqz v12, :cond_2

    invoke-virtual {v13}, Lcom/android/internal/view/menu/d;->isActionViewExpanded()Z

    move-result v12

    if-eqz v12, :cond_2

    move v3, v5

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 11
    :cond_3
    iget-boolean v8, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->k:Z

    if-eqz v8, :cond_5

    if-nez v9, :cond_4

    add-int/2addr v11, v10

    if-le v11, v3, :cond_5

    :cond_4
    add-int/lit8 v3, v3, -0x1

    :cond_5
    sub-int/2addr v3, v10

    .line 12
    iget-object v8, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->u:Landroid/util/SparseBooleanArray;

    .line 13
    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->clear()V

    .line 14
    iget-boolean v9, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->q:Z

    if-eqz v9, :cond_6

    .line 15
    iget v9, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->t:I

    div-int v10, v4, v9

    .line 16
    rem-int v11, v4, v9

    .line 17
    div-int/2addr v11, v10

    add-int/2addr v9, v11

    goto :goto_2

    :cond_6
    move v9, v5

    move v10, v9

    :goto_2
    move v11, v5

    move v13, v11

    :goto_3
    if-ge v11, v2, :cond_1c

    .line 18
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/view/menu/d;

    .line 19
    invoke-virtual {v14}, Lcom/android/internal/view/menu/d;->l()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 20
    iget-object v15, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->v:Landroid/view/View;

    invoke-virtual {v0, v14, v15, v7}, Lcom/android/internal/view/menu/ActionMenuPresenter;->l(Lcom/android/internal/view/menu/d;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 21
    iget-object v12, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->v:Landroid/view/View;

    if-nez v12, :cond_7

    .line 22
    iput-object v15, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->v:Landroid/view/View;

    .line 23
    :cond_7
    iget-boolean v12, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->q:Z

    if-eqz v12, :cond_8

    .line 24
    invoke-static {v15, v9, v10, v6, v5}, Lcom/android/internal/view/menu/ActionMenuView;->l(Landroid/view/View;IIII)I

    move-result v12

    sub-int/2addr v10, v12

    goto :goto_4

    .line 25
    :cond_8
    invoke-virtual {v15, v6, v6}, Landroid/view/View;->measure(II)V

    .line 26
    :goto_4
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    sub-int/2addr v4, v12

    if-nez v13, :cond_9

    move v13, v12

    .line 27
    :cond_9
    invoke-virtual {v14}, Lcom/android/internal/view/menu/d;->getGroupId()I

    move-result v12

    const/4 v15, 0x1

    if-eqz v12, :cond_a

    .line 28
    invoke-virtual {v8, v12, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 29
    :cond_a
    invoke-virtual {v14, v15}, Lcom/android/internal/view/menu/d;->o(Z)V

    move/from16 v16, v2

    move v2, v5

    goto/16 :goto_c

    .line 30
    :cond_b
    invoke-virtual {v14}, Lcom/android/internal/view/menu/d;->k()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 31
    invoke-virtual {v14}, Lcom/android/internal/view/menu/d;->getGroupId()I

    move-result v12

    .line 32
    invoke-virtual {v8, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-gtz v3, :cond_c

    if-eqz v15, :cond_e

    :cond_c
    if-lez v4, :cond_e

    .line 33
    iget-boolean v5, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->q:Z

    if-eqz v5, :cond_d

    if-lez v10, :cond_e

    :cond_d
    const/4 v5, 0x1

    goto :goto_5

    :cond_e
    const/4 v5, 0x0

    :goto_5
    move/from16 v16, v2

    if-eqz v5, :cond_15

    .line 34
    iget-object v2, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->v:Landroid/view/View;

    invoke-virtual {v0, v14, v2, v7}, Lcom/android/internal/view/menu/ActionMenuPresenter;->l(Lcom/android/internal/view/menu/d;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move/from16 v17, v3

    .line 35
    iget-object v3, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->v:Landroid/view/View;

    if-nez v3, :cond_f

    .line 36
    iput-object v2, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->v:Landroid/view/View;

    .line 37
    :cond_f
    iget-boolean v3, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->q:Z

    if-eqz v3, :cond_10

    const/4 v3, 0x0

    .line 38
    invoke-static {v2, v9, v10, v6, v3}, Lcom/android/internal/view/menu/ActionMenuView;->l(Landroid/view/View;IIII)I

    move-result v18

    sub-int v10, v10, v18

    if-nez v18, :cond_11

    const/4 v5, 0x0

    goto :goto_6

    .line 39
    :cond_10
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 40
    :cond_11
    :goto_6
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v4, v2

    if-nez v13, :cond_12

    move v13, v2

    .line 41
    :cond_12
    iget-boolean v2, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->q:Z

    if-eqz v2, :cond_13

    if-ltz v4, :cond_14

    goto :goto_7

    :cond_13
    add-int v2, v4, v13

    if-lez v2, :cond_14

    :goto_7
    const/4 v2, 0x1

    goto :goto_8

    :cond_14
    const/4 v2, 0x0

    :goto_8
    and-int/2addr v5, v2

    goto :goto_9

    :cond_15
    move/from16 v17, v3

    :goto_9
    if-eqz v5, :cond_16

    if-eqz v12, :cond_16

    const/4 v2, 0x1

    .line 42
    invoke-virtual {v8, v12, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_b

    :cond_16
    if-eqz v15, :cond_19

    const/4 v2, 0x0

    .line 43
    invoke-virtual {v8, v12, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v11, :cond_19

    .line 44
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/d;

    .line 45
    invoke-virtual {v2}, Lcom/android/internal/view/menu/d;->getGroupId()I

    move-result v15

    if-ne v15, v12, :cond_18

    .line 46
    invoke-virtual {v2}, Lcom/android/internal/view/menu/d;->i()Z

    move-result v15

    if-eqz v15, :cond_17

    add-int/lit8 v17, v17, 0x1

    :cond_17
    const/4 v15, 0x0

    .line 47
    invoke-virtual {v2, v15}, Lcom/android/internal/view/menu/d;->o(Z)V

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_19
    :goto_b
    move/from16 v3, v17

    if-eqz v5, :cond_1a

    add-int/lit8 v3, v3, -0x1

    .line 48
    :cond_1a
    invoke-virtual {v14, v5}, Lcom/android/internal/view/menu/d;->o(Z)V

    const/4 v2, 0x0

    goto :goto_c

    :cond_1b
    move/from16 v16, v2

    move/from16 v17, v3

    move v2, v5

    .line 49
    invoke-virtual {v14, v2}, Lcom/android/internal/view/menu/d;->o(Z)V

    :goto_c
    add-int/lit8 v11, v11, 0x1

    move v5, v2

    move/from16 v2, v16

    goto/16 :goto_3

    :cond_1c
    const/4 v3, 0x1

    return v3
.end method

.method public d(Lcom/android/internal/view/menu/h;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/c;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    .line 2
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/view/menu/h;->U()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/view/menu/a;->c:Lcom/android/internal/view/menu/c;

    if-eq v2, v3, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/internal/view/menu/h;->U()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/h;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/view/menu/h;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->w(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;

    if-nez v0, :cond_2

    return v1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/view/menu/h;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->A:I

    .line 7
    new-instance v1, Lcom/android/internal/view/menu/ActionMenuPresenter$b;

    iget-object v2, p0, Lcom/android/internal/view/menu/a;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter$b;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/h;)V

    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->x:Lcom/android/internal/view/menu/ActionMenuPresenter$b;

    .line 8
    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/e;->n(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->x:Lcom/android/internal/view/menu/ActionMenuPresenter$b;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/e;->r()V

    .line 10
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/a;->d(Lcom/android/internal/view/menu/h;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public e(Landroid/content/Context;Lcom/android/internal/view/menu/c;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/a;->e(Landroid/content/Context;Lcom/android/internal/view/menu/c;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 3
    invoke-static {p1}, Lv/a;->b(Landroid/content/Context;)Lv/a;

    move-result-object p1

    .line 4
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->l:Z

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lv/a;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->k:Z

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->r:Z

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lv/a;->c()I

    move-result v0

    iput v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->m:I

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->p:Z

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p1}, Lv/a;->d()I

    move-result p1

    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->o:I

    .line 10
    :cond_2
    iget p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->m:I

    .line 11
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;

    if-nez v0, :cond_3

    .line 13
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$d;

    iget-object v2, p0, Lcom/android/internal/view/menu/a;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter$d;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;

    const/4 v0, 0x0

    .line 14
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 15
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;

    invoke-virtual {v2, v0, v0}, Landroid/view/View;->measure(II)V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 17
    :cond_4
    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;

    .line 18
    :goto_0
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->n:I

    const/high16 p1, 0x42600000    # 56.0f

    .line 19
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->t:I

    .line 20
    iput-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->v:Landroid/view/View;

    return-void
.end method

.method public h(Lcom/android/internal/view/menu/d;Lcom/android/internal/view/menu/g$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-interface {p2, p1, v0}, Lcom/android/internal/view/menu/g$a;->b(Lcom/android/internal/view/menu/d;I)V

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView;

    .line 3
    check-cast p2, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 4
    invoke-virtual {p2, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/c$b;)V

    .line 5
    invoke-virtual {p1}, Lcom/android/internal/view/menu/d;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuPresenter$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter$a;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/view/View;Lcom/android/internal/view/menu/d;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void
.end method

.method public j(Landroid/view/ViewGroup;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->j:Landroid/view/View;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/a;->j(Landroid/view/ViewGroup;I)Z

    move-result p1

    return p1
.end method

.method public l(Lcom/android/internal/view/menu/d;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/d;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/internal/view/menu/d;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/view/menu/a;->l(Lcom/android/internal/view/menu/d;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/d;->isActionViewExpanded()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    check-cast p3, Lcom/android/internal/view/menu/ActionMenuView;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 7
    invoke-virtual {p3, p1}, Lcom/android/internal/view/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 8
    invoke-virtual {p3, p1}, Lcom/android/internal/view/menu/ActionMenuView;->j(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public m(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/g;
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/a;->m(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/g;

    move-result-object p1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/ActionMenuView;->setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V

    return-object p1
.end method

.method public n(ILcom/android/internal/view/menu/d;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/android/internal/view/menu/d;->i()Z

    move-result p1

    return p1
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/c;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->v()Z

    .line 2
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/a;->onCloseMenu(Lcom/android/internal/view/menu/c;Z)V

    return-void
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/a;->d(Lcom/android/internal/view/menu/h;)Z

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/internal/view/menu/a;->c:Lcom/android/internal/view/menu/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/c;->d(Z)V

    :goto_0
    return-void
.end method

.method public v()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->x()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->y()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final w(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 3
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    instance-of v5, v4, Lcom/android/internal/view/menu/g$a;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/android/internal/view/menu/g$a;

    invoke-interface {v5}, Lcom/android/internal/view/menu/g$a;->getItemData()Lcom/android/internal/view/menu/d;

    move-result-object v5

    if-ne v5, p1, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public x()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->y:Lcom/android/internal/view/menu/ActionMenuPresenter$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    if-eqz v2, :cond_0

    .line 2
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->y:Lcom/android/internal/view/menu/ActionMenuPresenter$c;

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->w:Lcom/android/internal/view/menu/ActionMenuPresenter$e;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/internal/view/menu/e;->j()V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->x:Lcom/android/internal/view/menu/ActionMenuPresenter$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/internal/view/menu/e;->j()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter;->w:Lcom/android/internal/view/menu/ActionMenuPresenter$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/e;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
