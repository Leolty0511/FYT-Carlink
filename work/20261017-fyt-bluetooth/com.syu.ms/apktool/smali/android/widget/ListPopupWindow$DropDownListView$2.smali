.class Landroid/widget/ListPopupWindow$DropDownListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListPopupWindow$DropDownListView;->clickPressedItem(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/widget/ListPopupWindow$DropDownListView;

.field public final synthetic val$child:Landroid/view/View;

.field public final synthetic val$id:J

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Landroid/widget/ListPopupWindow$DropDownListView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/ListPopupWindow$DropDownListView$2;->this$0:Landroid/widget/ListPopupWindow$DropDownListView;

    iput-object p2, p0, Landroid/widget/ListPopupWindow$DropDownListView$2;->val$child:Landroid/view/View;

    iput p3, p0, Landroid/widget/ListPopupWindow$DropDownListView$2;->val$position:I

    iput-wide p4, p0, Landroid/widget/ListPopupWindow$DropDownListView$2;->val$id:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroid/widget/ListPopupWindow$DropDownListView$2;->this$0:Landroid/widget/ListPopupWindow$DropDownListView;

    iget-object v0, p0, Landroid/widget/ListPopupWindow$DropDownListView$2;->val$child:Landroid/view/View;

    iget v1, p0, Landroid/widget/ListPopupWindow$DropDownListView$2;->val$position:I

    iget-wide v2, p0, Landroid/widget/ListPopupWindow$DropDownListView$2;->val$id:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method
