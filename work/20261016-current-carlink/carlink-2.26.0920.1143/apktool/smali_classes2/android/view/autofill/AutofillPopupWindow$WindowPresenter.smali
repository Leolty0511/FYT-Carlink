.class Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WindowPresenter"
.end annotation


# instance fields
.field final mPresenter:Landroid/view/autofill/IAutofillWindowPresenter;

.field final synthetic this$0:Landroid/view/autofill/AutofillPopupWindow;


# direct methods
.method public constructor <init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->this$0:Landroid/view/autofill/AutofillPopupWindow;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->mPresenter:Landroid/view/autofill/IAutofillWindowPresenter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public hide(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->mPresenter:Landroid/view/autofill/IAutofillWindowPresenter;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/view/autofill/IAutofillWindowPresenter;->hide(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    const-string v0, "AutofillPopupWindow"

    .line 9
    .line 10
    const-string v1, "Error hiding fill window"

    .line 11
    .line 12
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$WindowPresenter;->mPresenter:Landroid/view/autofill/IAutofillWindowPresenter;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/autofill/IAutofillWindowPresenter;->show(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p1

    .line 8
    const-string p2, "AutofillPopupWindow"

    .line 9
    .line 10
    const-string p3, "Error showing fill window"

    .line 11
    .line 12
    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method
