.class Landroid/widget/Spinner$DropdownPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner$DropdownPopup;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Spinner$DropdownPopup;


# direct methods
.method public constructor <init>(Landroid/widget/Spinner$DropdownPopup;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/widget/Spinner;->access$600(Landroid/widget/Spinner;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/widget/Spinner$DropdownPopup;->computeContentWidth()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup$2;->this$1:Landroid/widget/Spinner$DropdownPopup;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/widget/Spinner$DropdownPopup;->access$701(Landroid/widget/Spinner$DropdownPopup;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
