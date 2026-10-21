.class public Lcom/android/internal/view/menu/ActionMenuPresenter$b;
.super Lcom/android/internal/view/menu/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public p:Lcom/android/internal/view/menu/h;

.field public final synthetic q:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/h;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$b;->q:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/view/menu/e;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/c;)V

    .line 3
    iput-object p3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$b;->p:Lcom/android/internal/view/menu/h;

    .line 4
    invoke-virtual {p3}, Lcom/android/internal/view/menu/h;->getItem()Landroid/view/MenuItem;

    move-result-object p2

    check-cast p2, Lcom/android/internal/view/menu/d;

    .line 5
    invoke-virtual {p2}, Lcom/android/internal/view/menu/d;->i()Z

    move-result p2

    if-nez p2, :cond_1

    .line 6
    invoke-static {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->u(Lcom/android/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->u(Lcom/android/internal/view/menu/ActionMenuPresenter;)Landroid/view/View;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/e;->n(Landroid/view/View;)V

    .line 7
    :cond_1
    iget-object p1, p1, Lcom/android/internal/view/menu/ActionMenuPresenter;->z:Lcom/android/internal/view/menu/ActionMenuPresenter$f;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/e;->o(Lcom/android/internal/view/menu/f$a;)V

    .line 8
    invoke-virtual {p3}, Lcom/android/internal/view/menu/c;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_1
    if-ge v0, p1, :cond_3

    .line 9
    invoke-virtual {p3, v0}, Lcom/android/internal/view/menu/c;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_3
    :goto_2
    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/e;->p(Z)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/internal/view/menu/e;->onDismiss()V

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$b;->q:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->p(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$b;)Lcom/android/internal/view/menu/ActionMenuPresenter$b;

    .line 3
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$b;->q:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/view/menu/ActionMenuPresenter;->A:I

    return-void
.end method
