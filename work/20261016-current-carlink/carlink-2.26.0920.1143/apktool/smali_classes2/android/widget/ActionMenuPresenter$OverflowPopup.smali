.class Landroid/widget/ActionMenuPresenter$OverflowPopup;
.super Lcom/android/internal/view/menu/MenuPopupHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .locals 6

    .line 1
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 2
    .line 3
    const v5, 0x1010444

    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p2

    .line 8
    move-object v2, p3

    .line 9
    move-object v3, p4

    .line 10
    move v4, p5

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 12
    .line 13
    .line 14
    const p2, 0x800005

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1300(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1400(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter;->access$1102(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .line 22
    .line 23
    .line 24
    invoke-super {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
