.class Landroid/widget/Spinner$1;
.super Landroid/widget/ForwardingListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILandroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Spinner;

.field final synthetic val$popup:Landroid/widget/Spinner$DropdownPopup;


# direct methods
.method public constructor <init>(Landroid/widget/Spinner;Landroid/view/View;Landroid/widget/Spinner$DropdownPopup;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Spinner$1;->this$0:Landroid/widget/Spinner;

    iput-object p3, p0, Landroid/widget/Spinner$1;->val$popup:Landroid/widget/Spinner$DropdownPopup;

    invoke-direct {p0, p2}, Landroid/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/android/internal/view/menu/ShowableListMenu;
    .locals 1

    iget-object v0, p0, Landroid/widget/Spinner$1;->val$popup:Landroid/widget/Spinner$DropdownPopup;

    return-object v0
.end method

.method public onForwardingStarted()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Spinner$1;->this$0:Landroid/widget/Spinner;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Spinner;->access$100(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/widget/Spinner$1;->this$0:Landroid/widget/Spinner;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/widget/Spinner;->access$100(Landroid/widget/Spinner;)Landroid/widget/Spinner$SpinnerPopup;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Landroid/widget/Spinner$1;->this$0:Landroid/widget/Spinner;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/View;->getTextDirection()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iget-object v2, p0, Landroid/widget/Spinner$1;->this$0:Landroid/widget/Spinner;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/View;->getTextAlignment()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-interface {v0, v1, v2}, Landroid/widget/Spinner$SpinnerPopup;->show(II)V

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x1

    .line 35
    return v0
.end method
