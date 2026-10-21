.class public Lcom/android/internal/view/menu/ActionMenuPresenter$a;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;->h(Lcom/android/internal/view/menu/d;Lcom/android/internal/view/menu/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/view/menu/d;

.field public final synthetic b:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/view/View;Lcom/android/internal/view/menu/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$a;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iput-object p3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$a;->a:Lcom/android/internal/view/menu/d;

    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$a;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->o(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$a;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->o(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/e;->k()Landroid/widget/ListPopupWindow;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$a;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$a;->a:Lcom/android/internal/view/menu/d;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/d;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/h;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->d(Lcom/android/internal/view/menu/h;)Z

    move-result v0

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$a;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->v()Z

    move-result v0

    return v0
.end method
