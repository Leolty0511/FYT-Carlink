.class Lcom/syu/bt/ctrl/CircleMenuLayout$2;
.super Ljava/lang/Object;
.source "CircleMenuLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/ctrl/CircleMenuLayout;->addMenuItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/ctrl/CircleMenuLayout;

.field private final synthetic val$j:I


# direct methods
.method constructor <init>(Lcom/syu/bt/ctrl/CircleMenuLayout;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$2;->this$0:Lcom/syu/bt/ctrl/CircleMenuLayout;

    iput p2, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$2;->val$j:I

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$2;->this$0:Lcom/syu/bt/ctrl/CircleMenuLayout;

    iget-object v0, v0, Lcom/syu/bt/ctrl/CircleMenuLayout;->circle:Lcom/syu/bt/ctrl/CircleMenuView;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$2;->this$0:Lcom/syu/bt/ctrl/CircleMenuLayout;

    iget-object v0, v0, Lcom/syu/bt/ctrl/CircleMenuLayout;->circle:Lcom/syu/bt/ctrl/CircleMenuView;

    iget v1, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$2;->val$j:I

    invoke-virtual {v0, v1}, Lcom/syu/bt/ctrl/CircleMenuView;->reDrawPicByNum(I)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$2;->this$0:Lcom/syu/bt/ctrl/CircleMenuLayout;

    invoke-static {v0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->access$4(Lcom/syu/bt/ctrl/CircleMenuLayout;)Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$2;->this$0:Lcom/syu/bt/ctrl/CircleMenuLayout;

    invoke-static {v0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->access$4(Lcom/syu/bt/ctrl/CircleMenuLayout;)Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemLongClickListener;

    move-result-object v0

    iget v1, p0, Lcom/syu/bt/ctrl/CircleMenuLayout$2;->val$j:I

    invoke-interface {v0, p1, v1}, Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemLongClickListener;->itemLongClick(Landroid/view/View;I)V

    .line 450
    const/4 v0, 0x1

    .line 452
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
