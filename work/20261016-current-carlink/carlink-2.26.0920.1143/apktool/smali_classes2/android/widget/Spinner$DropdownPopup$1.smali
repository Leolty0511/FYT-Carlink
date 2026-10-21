.class Landroid/widget/Spinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner$DropdownPopup;-><init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Spinner$DropdownPopup;

.field final synthetic val$this$0:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/widget/Spinner$DropdownPopup;Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iput-object p2, p0, Landroid/widget/Spinner$DropdownPopup$1;->val$this$0:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    .line 9
    .line 10
    iget-object p4, p1, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    .line 11
    .line 12
    iget-object p5, p4, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 13
    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Landroid/widget/Spinner$DropdownPopup;->access$300(Landroid/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItemId(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
