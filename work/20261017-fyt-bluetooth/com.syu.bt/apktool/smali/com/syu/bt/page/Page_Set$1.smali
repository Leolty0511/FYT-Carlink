.class Lcom/syu/bt/page/Page_Set$1;
.super Ljava/lang/Object;
.source "Page_Set.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Set;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Set;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Set$1;->this$0:Lcom/syu/bt/page/Page_Set;

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 765
    const-string v2, "edit"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " Set_Edit_DevName no Focus hasFocus = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  v.getId() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    if-eqz p2, :cond_1

    .line 767
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 802
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 770
    :pswitch_1
    iget-object v2, p0, Lcom/syu/bt/page/Page_Set$1;->this$0:Lcom/syu/bt/page/Page_Set;

    iput-boolean v6, v2, Lcom/syu/bt/page/Page_Set;->bDevEditFlag:Z

    .line 771
    iget-object v2, p0, Lcom/syu/bt/page/Page_Set$1;->this$0:Lcom/syu/bt/page/Page_Set;

    iput-boolean v5, v2, Lcom/syu/bt/page/Page_Set;->bPinEditFlag:Z

    goto :goto_0

    .line 774
    :pswitch_2
    iget-object v2, p0, Lcom/syu/bt/page/Page_Set$1;->this$0:Lcom/syu/bt/page/Page_Set;

    iput-boolean v5, v2, Lcom/syu/bt/page/Page_Set;->bDevEditFlag:Z

    .line 775
    iget-object v2, p0, Lcom/syu/bt/page/Page_Set$1;->this$0:Lcom/syu/bt/page/Page_Set;

    iput-boolean v6, v2, Lcom/syu/bt/page/Page_Set;->bPinEditFlag:Z

    goto :goto_0

    .line 779
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 781
    :pswitch_4
    const-string v2, "edit"

    const-string v3, " Set_Edit_DevName no Focus "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 784
    check-cast v0, Landroid/widget/EditText;

    .line 785
    .local v0, "tvName":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 786
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 787
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 788
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v2, p0, Lcom/syu/bt/page/Page_Set$1;->this$0:Lcom/syu/bt/page/Page_Set;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/bt/page/Page_Set;->setBtName(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "tvName":Landroid/widget/EditText;
    :pswitch_5
    move-object v1, p1

    .line 793
    check-cast v1, Landroid/widget/EditText;

    .line 794
    .local v1, "tvpin":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 795
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 796
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevPin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v2, p0, Lcom/syu/bt/page/Page_Set$1;->this$0:Lcom/syu/bt/page/Page_Set;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getDevPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/bt/page/Page_Set;->setBtPin(Ljava/lang/String;)V

    goto :goto_0

    .line 767
    nop

    :pswitch_data_0
    .packed-switch 0x288d
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 779
    :pswitch_data_1
    .packed-switch 0x288d
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
