.class Lcom/syu/bt/page/Page_Dial$9;
.super Ljava/lang/Object;
.source "Page_Dial.java"

# interfaces
.implements Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Dial;->initMenuLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Dial;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Dial;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    .line 2749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemClick(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pos"    # I

    .prologue
    const/16 v3, 0x277c

    const/4 v4, 0x0

    .line 2753
    sparse-switch p2, :sswitch_data_0

    .line 2841
    :cond_0
    :goto_0
    return-void

    .line 2766
    :sswitch_0
    const-string v1, "gdy7"

    const-string v2, " 11 Dial_Btn_1  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 2768
    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 2767
    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 2770
    .local v0, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_1

    .line 2771
    add-int/lit16 v1, p2, -0x27a2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 2772
    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2779
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-boolean v1, v1, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-eqz v1, :cond_5

    .line 2780
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v1}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2781
    add-int/lit16 v2, p2, -0x27a2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/syu/bt/page/Page_Dial;->access$1(Lcom/syu/bt/page/Page_Dial;Ljava/lang/String;)V

    .line 2782
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v2}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2783
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_2

    .line 2784
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v2}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2785
    :cond_2
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v2}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/syu/bt/page/Page_Dial;->updatePhoneName(Ljava/lang/String;)V

    goto :goto_0

    .line 2773
    :cond_3
    add-int/lit16 v1, p2, -0x27a2

    const/16 v2, 0xb

    if-ne v1, v2, :cond_4

    .line 2774
    const-string v1, "#"

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2777
    :cond_4
    add-int/lit16 v1, p2, -0x27a2

    .line 2776
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2788
    :cond_5
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    .line 2789
    add-int/lit16 v2, p2, -0x27a2

    .line 2788
    invoke-virtual {v1, v2}, Lcom/syu/app/ipc/Bt_IpcObj;->cmdNum(I)V

    goto/16 :goto_0

    .line 2795
    .end local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_1
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-virtual {v1}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 2796
    invoke-virtual {v1, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 2795
    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 2798
    .restart local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_6

    .line 2799
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2800
    :cond_6
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->filterDemand_DZSJ()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2801
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-boolean v1, v1, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-nez v1, :cond_7

    .line 2802
    invoke-static {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto/16 :goto_0

    .line 2803
    :cond_7
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-boolean v1, v1, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-eqz v1, :cond_0

    .line 2804
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v1}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2805
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iput-boolean v4, v1, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    .line 2806
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/syu/bt/page/Page_Dial;->updatePhoneName(Ljava/lang/String;)V

    .line 2807
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2808
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_0

    .line 2809
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2811
    :cond_8
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v2}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v2

    .line 2814
    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v3}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 2812
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2815
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2811
    invoke-static {v1, v2}, Lcom/syu/bt/page/Page_Dial;->access$1(Lcom/syu/bt/page/Page_Dial;Ljava/lang/String;)V

    .line 2816
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v2}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/syu/bt/page/Page_Dial;->updatePhoneName(Ljava/lang/String;)V

    .line 2817
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v2}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2818
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v1, :cond_0

    .line 2819
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v1, v1, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v2}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2827
    .end local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :sswitch_2
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-boolean v1, v1, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-eqz v1, :cond_9

    .line 2828
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v1}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2829
    iget-object v1, p0, Lcom/syu/bt/page/Page_Dial$9;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v1}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->dial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2831
    :cond_9
    sget-object v1, Lcom/syu/bt/App_Bt;->strNumberBak:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2833
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2834
    sget-object v1, Lcom/syu/bt/App_Bt;->strNumberBak:Ljava/lang/String;

    invoke-static {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->setNum(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2836
    :cond_a
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncDial()V

    goto/16 :goto_0

    .line 2753
    :sswitch_data_0
    .sparse-switch
        0x2793 -> :sswitch_2
        0x2795 -> :sswitch_2
        0x27a2 -> :sswitch_0
        0x27a3 -> :sswitch_0
        0x27a4 -> :sswitch_0
        0x27a5 -> :sswitch_0
        0x27a6 -> :sswitch_0
        0x27a7 -> :sswitch_0
        0x27a8 -> :sswitch_0
        0x27a9 -> :sswitch_0
        0x27aa -> :sswitch_0
        0x27ab -> :sswitch_0
        0x27ac -> :sswitch_0
        0x27ad -> :sswitch_0
        0x27b3 -> :sswitch_1
        0x27c3 -> :sswitch_2
    .end sparse-switch
.end method
