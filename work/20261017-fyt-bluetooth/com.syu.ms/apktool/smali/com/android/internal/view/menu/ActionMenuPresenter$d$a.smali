.class public Lcom/android/internal/view/menu/ActionMenuPresenter$d$a;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter$d;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field public final synthetic b:Lcom/android/internal/view/menu/ActionMenuPresenter$d;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter$d;Landroid/view/View;Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$d$a;->b:Lcom/android/internal/view/menu/ActionMenuPresenter$d;

    iput-object p3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$d$a;->a:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0, p2}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$d$a;->b:Lcom/android/internal/view/menu/ActionMenuPresenter$d;

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$d;->a:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->q(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$d$a;->b:Lcom/android/internal/view/menu/ActionMenuPresenter$d;

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$d;->a:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->q(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/e;->k()Landroid/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$d$a;->b:Lcom/android/internal/view/menu/ActionMenuPresenter$d;

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$d;->a:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->F()Z

    const/4 v0, 0x1

    return v0
.end method

.method public onForwardingStopped()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$d$a;->b:Lcom/android/internal/view/menu/ActionMenuPresenter$d;

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$d;->a:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->s(Lcom/android/internal/view/menu/ActionMenuPresenter;)Lcom/android/internal/view/menu/ActionMenuPresenter$c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$d$a;->b:Lcom/android/internal/view/menu/ActionMenuPresenter$d;

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuPresenter$d;->a:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->x()Z

    const/4 v0, 0x1

    return v0
.end method
