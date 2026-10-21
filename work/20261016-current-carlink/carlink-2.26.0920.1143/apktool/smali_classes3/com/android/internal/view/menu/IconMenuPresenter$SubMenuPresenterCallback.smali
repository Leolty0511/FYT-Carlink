.class Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/IconMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SubMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/IconMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/IconMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/IconMenuPresenter;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    iput p2, p1, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenuId:I

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenu:Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/IconMenuPresenter;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    iput-object p2, p1, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenu:Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuPresenter$SubMenuPresenterCallback;->this$0:Lcom/android/internal/view/menu/IconMenuPresenter;

    check-cast p1, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iput p1, v0, Lcom/android/internal/view/menu/IconMenuPresenter;->mOpenSubMenuId:I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
