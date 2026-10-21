.class public Lcom/android/internal/view/menu/ActionMenuPresenter$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/menu/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$f;->a:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter$f;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/c;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/android/internal/view/menu/h;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/h;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/h;->x()Lcom/android/internal/view/menu/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/c;->d(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$f;->a:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/a;->k()Lcom/android/internal/view/menu/f$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/f$a;->onCloseMenu(Lcom/android/internal/view/menu/c;Z)V

    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/c;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$f;->a:Lcom/android/internal/view/menu/ActionMenuPresenter;

    move-object v2, p1

    check-cast v2, Lcom/android/internal/view/menu/h;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/h;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, v1, Lcom/android/internal/view/menu/ActionMenuPresenter;->A:I

    .line 2
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$f;->a:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/a;->k()Lcom/android/internal/view/menu/f$a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/f$a;->onOpenSubMenu(Lcom/android/internal/view/menu/c;)Z

    move-result v0

    :cond_1
    return v0
.end method
