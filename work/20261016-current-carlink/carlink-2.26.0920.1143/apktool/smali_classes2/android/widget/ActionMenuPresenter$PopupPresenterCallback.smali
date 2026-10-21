.class Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Landroid/widget/ActionMenuPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/widget/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 6
    .line 7
    move-object v2, p1

    .line 8
    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iput v2, v1, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 19
    .line 20
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v1, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :cond_1
    return v0
.end method
