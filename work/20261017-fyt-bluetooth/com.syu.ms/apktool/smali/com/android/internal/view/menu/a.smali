.class public abstract Lcom/android/internal/view/menu/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/menu/f;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Lcom/android/internal/view/menu/c;

.field public d:Landroid/view/LayoutInflater;

.field public e:Landroid/view/LayoutInflater;

.field public f:Lcom/android/internal/view/menu/f$a;

.field public g:I

.field public h:I

.field public i:Lcom/android/internal/view/menu/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/internal/view/menu/a;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/view/menu/a;->d:Landroid/view/LayoutInflater;

    .line 4
    iput p2, p0, Lcom/android/internal/view/menu/a;->g:I

    .line 5
    iput p3, p0, Lcom/android/internal/view/menu/a;->h:I

    return-void
.end method


# virtual methods
.method public a(Lcom/android/internal/view/menu/c;Lcom/android/internal/view/menu/d;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Z)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/a;->c:Lcom/android/internal/view/menu/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->p()V

    .line 4
    iget-object v0, p0, Lcom/android/internal/view/menu/a;->c:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->y()Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_5

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/d;

    .line 7
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/view/menu/a;->n(ILcom/android/internal/view/menu/d;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 8
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 9
    instance-of v7, v6, Lcom/android/internal/view/menu/g$a;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Lcom/android/internal/view/menu/g$a;

    invoke-interface {v7}, Lcom/android/internal/view/menu/g$a;->getItemData()Lcom/android/internal/view/menu/d;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 10
    :goto_1
    invoke-virtual {p0, v5, v6, p1}, Lcom/android/internal/view/menu/a;->l(Lcom/android/internal/view/menu/d;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    if-eq v5, v7, :cond_2

    .line 11
    invoke-virtual {v8, v1}, Landroid/view/View;->setPressed(Z)V

    .line 12
    invoke-virtual {v8}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    if-eq v8, v6, :cond_3

    .line 13
    invoke-virtual {p0, v8, v4}, Lcom/android/internal/view/menu/a;->g(Landroid/view/View;I)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move v1, v4

    .line 14
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/view/menu/a;->j(Landroid/view/ViewGroup;I)Z

    move-result v0

    if-nez v0, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public d(Lcom/android/internal/view/menu/h;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/a;->f:Lcom/android/internal/view/menu/f$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/f$a;->onOpenSubMenu(Lcom/android/internal/view/menu/c;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e(Landroid/content/Context;Lcom/android/internal/view/menu/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/a;->b:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/view/menu/a;->e:Landroid/view/LayoutInflater;

    .line 3
    iput-object p2, p0, Lcom/android/internal/view/menu/a;->c:Lcom/android/internal/view/menu/c;

    return-void
.end method

.method public f(Lcom/android/internal/view/menu/c;Lcom/android/internal/view/menu/d;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public abstract h(Lcom/android/internal/view/menu/d;Lcom/android/internal/view/menu/g$a;)V
.end method

.method public i(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/g$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/a;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/internal/view/menu/a;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/g$a;

    return-object p1
.end method

.method public j(Landroid/view/ViewGroup;I)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public k()Lcom/android/internal/view/menu/f$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/a;->f:Lcom/android/internal/view/menu/f$a;

    return-object v0
.end method

.method public l(Lcom/android/internal/view/menu/d;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    instance-of v0, p2, Lcom/android/internal/view/menu/g$a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/android/internal/view/menu/g$a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/internal/view/menu/a;->i(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/g$a;

    move-result-object p2

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/view/menu/a;->h(Lcom/android/internal/view/menu/d;Lcom/android/internal/view/menu/g$a;)V

    .line 5
    check-cast p2, Landroid/view/View;

    return-object p2
.end method

.method public m(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/a;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/internal/view/menu/a;->g:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/view/menu/g;

    iput-object p1, p0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    .line 3
    iget-object v0, p0, Lcom/android/internal/view/menu/a;->c:Lcom/android/internal/view/menu/c;

    invoke-interface {p1, v0}, Lcom/android/internal/view/menu/g;->g(Lcom/android/internal/view/menu/c;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/a;->b(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    return-object p1
.end method

.method public abstract n(ILcom/android/internal/view/menu/d;)Z
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/c;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/a;->f:Lcom/android/internal/view/menu/f$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/f$a;->onCloseMenu(Lcom/android/internal/view/menu/c;Z)V

    :cond_0
    return-void
.end method
