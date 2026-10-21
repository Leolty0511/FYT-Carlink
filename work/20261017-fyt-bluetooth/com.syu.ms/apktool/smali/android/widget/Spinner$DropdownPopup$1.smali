.class Landroid/widget/Spinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner$DropdownPopup;-><init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroid/widget/Spinner$DropdownPopup;

.field public final synthetic val$this$0:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/widget/Spinner$DropdownPopup;Landroid/widget/Spinner;)V
    .locals 0

    .line 1
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

    iget-object p1, p1, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    invoke-virtual {p1, p3}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 2
    iget-object p1, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    iget-object p4, p1, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    iget-object p5, p4, Landroid/widget/AdapterView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p5, :cond_0

    .line 3
    invoke-static {p1}, Landroid/widget/Spinner$DropdownPopup;->access$300(Landroid/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    return-void
.end method
