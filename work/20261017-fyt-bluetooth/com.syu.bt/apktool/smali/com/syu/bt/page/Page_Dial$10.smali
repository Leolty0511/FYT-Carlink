.class Lcom/syu/bt/page/Page_Dial$10;
.super Ljava/lang/Object;
.source "Page_Dial.java"

# interfaces
.implements Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemLongClickListener;


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
    iput-object p1, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    .line 2844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemLongClick(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pos"    # I

    .prologue
    const/16 v4, 0x277c

    .line 2848
    packed-switch p2, :pswitch_data_0

    .line 2924
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2850
    :pswitch_1
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->filterDemand_DZSJ()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2851
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-boolean v2, v2, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-nez v2, :cond_1

    .line 2852
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto :goto_0

    .line 2853
    :cond_1
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-boolean v2, v2, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-eqz v2, :cond_0

    .line 2854
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/syu/bt/page/Page_Dial;->access$1(Lcom/syu/bt/page/Page_Dial;Ljava/lang/String;)V

    .line 2855
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v3}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/bt/page/Page_Dial;->updatePhoneName(Ljava/lang/String;)V

    .line 2856
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v2, v2, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v3}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2857
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v2, v2, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_0

    .line 2858
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v2, v2, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v3}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2862
    :pswitch_2
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->LongClick0()V

    .line 2863
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-virtual {v2}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 2864
    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    .line 2863
    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    .line 2866
    .local v0, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v0, :cond_0

    .line 2867
    const-string v2, "+"

    invoke-virtual {v0, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2881
    .end local v0    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :pswitch_3
    const-string v2, "gdy7"

    const-string v3, " 22 Dial_Btn_1  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-virtual {v2}, Lcom/syu/bt/page/Page_Dial;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 2884
    .local v1, "tv":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_2

    .line 2885
    add-int/lit16 v2, p2, -0x27a2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    .line 2886
    const-string v2, "*"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2893
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-boolean v2, v2, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-eqz v2, :cond_6

    .line 2894
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v2}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2895
    add-int/lit16 v3, p2, -0x27a2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/syu/bt/page/Page_Dial;->access$1(Lcom/syu/bt/page/Page_Dial;Ljava/lang/String;)V

    .line 2896
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v2, v2, Lcom/syu/bt/page/Page_Dial;->tvTxtNumber:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v3}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2897
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v2, v2, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_3

    .line 2898
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v2, v2, Lcom/syu/bt/page/Page_Dial;->tvTxtMiniNumber:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v3}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 2899
    :cond_3
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-object v3, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v3}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/bt/page/Page_Dial;->updatePhoneName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2887
    :cond_4
    add-int/lit16 v2, p2, -0x27a2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5

    .line 2888
    const-string v2, "#"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2891
    :cond_5
    add-int/lit16 v2, p2, -0x27a2

    .line 2890
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2902
    :cond_6
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    .line 2903
    add-int/lit16 v3, p2, -0x27a2

    .line 2902
    invoke-virtual {v2, v3}, Lcom/syu/app/ipc/Bt_IpcObj;->cmdNum(I)V

    goto/16 :goto_0

    .line 2910
    .end local v1    # "tv":Lcom/lsec/core/frame/ctrl/JText;
    :pswitch_4
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    iget-boolean v2, v2, Lcom/syu/bt/page/Page_Dial;->dialThrdPhone:Z

    if-eqz v2, :cond_7

    .line 2911
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v2}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2912
    iget-object v2, p0, Lcom/syu/bt/page/Page_Dial$10;->this$0:Lcom/syu/bt/page/Page_Dial;

    invoke-static {v2}, Lcom/syu/bt/page/Page_Dial;->access$0(Lcom/syu/bt/page/Page_Dial;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syu/app/ipc/Bt_IpcObj;->dial(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2914
    :cond_7
    sget-object v2, Lcom/syu/bt/App_Bt;->strNumberBak:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2916
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2917
    sget-object v2, Lcom/syu/bt/App_Bt;->strNumberBak:Ljava/lang/String;

    invoke-static {v2}, Lcom/syu/app/ipc/Bt_IpcObj;->setNum(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2919
    :cond_8
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v2}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncDial()V

    goto/16 :goto_0

    .line 2848
    :pswitch_data_0
    .packed-switch 0x2793
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
