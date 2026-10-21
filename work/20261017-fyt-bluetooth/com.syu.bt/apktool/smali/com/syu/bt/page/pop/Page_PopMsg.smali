.class public Lcom/syu/bt/page/pop/Page_PopMsg;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopMsg.java"


# instance fields
.field public Txt_BtnOk:Lcom/lsec/core/frame/ctrl/JText;

.field public Txt_Content:Lcom/lsec/core/frame/ctrl/JText;

.field public Txt_Content1:Lcom/lsec/core/frame/ctrl/JText;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    .line 27
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 28
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x45

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 60
    .local v0, "id":I
    const-string v1, "jarr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  JAVA 44 Page_PopMsg  ResponseClick id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    packed-switch v0, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 63
    :pswitch_0
    const-string v1, "pin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " *** PopMsg_Btn_Ok  App_Bt.pinStatus = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/syu/bt/App_Bt;->pinStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-boolean v1, Lcom/syu/bt/App_Bt;->pinStatus:Z

    if-eqz v1, :cond_0

    .line 65
    sput-boolean v4, Lcom/syu/bt/App_Bt;->pinStatus:Z

    .line 66
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    new-array v2, v5, [I

    aput v5, v2, v4

    invoke-virtual {v1, v7, v2, v6, v6}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 70
    :goto_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/syu/bt/App_Bt;->popMsgSet(Z)V

    goto :goto_0

    .line 68
    :cond_0
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v2, 0x13

    new-array v3, v5, [I

    aput v5, v3, v4

    invoke-virtual {v1, v2, v3, v6, v6}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :pswitch_1
    const-string v1, "pin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " *** PopMsg_Btn_Cancel  App_Bt.pinStatus = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/syu/bt/App_Bt;->pinStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-boolean v1, Lcom/syu/bt/App_Bt;->pinStatus:Z

    if-eqz v1, :cond_1

    .line 76
    sput-boolean v4, Lcom/syu/bt/App_Bt;->pinStatus:Z

    .line 77
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    new-array v2, v5, [I

    invoke-virtual {v1, v7, v2, v6, v6}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 81
    :goto_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/syu/bt/App_Bt;->popMsgSet(Z)V

    goto :goto_0

    .line 79
    :cond_1
    sput-boolean v5, Lcom/syu/bt/App_Bt;->bNotRestart:Z

    goto :goto_2

    .line 61
    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopMsg;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMsg;->Txt_Content:Lcom/lsec/core/frame/ctrl/JText;

    .line 33
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopMsg;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMsg;->Txt_Content1:Lcom/lsec/core/frame/ctrl/JText;

    .line 34
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopMsg;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMsg;->Txt_BtnOk:Lcom/lsec/core/frame/ctrl/JText;

    .line 36
    const-string v0, "jarr"

    const-string v1, "  JAVA 33 Page_PopMsg  init "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 41
    const-string v0, "pin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  JAVA 44 Page_PopMsg  resume pinStatus = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/syu/bt/App_Bt;->pinStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMsg;->Txt_Content1:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/syu/bt/page/pop/Page_PopMsg;->Txt_Content1:Lcom/lsec/core/frame/ctrl/JText;

    sget-boolean v0, Lcom/syu/bt/App_Bt;->pinStatus:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 44
    :cond_0
    sget-boolean v0, Lcom/syu/bt/App_Bt;->pinStatus:Z

    if-eqz v0, :cond_5

    .line 45
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMsg;->Txt_Content:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMsg;->Txt_Content:Lcom/lsec/core/frame/ctrl/JText;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/syu/bt/App_Bt;->pinPhoneName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "pin_msg"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMsg;->Txt_Content1:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMsg;->Txt_Content1:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v1, Lcom/syu/bt/App_Bt;->pinCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMsg;->Txt_BtnOk:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_3

    .line 50
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMsg;->Txt_BtnOk:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_paring1"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_3
    :goto_1
    return-void

    .line 43
    :cond_4
    const/16 v0, 0x8

    goto :goto_0

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMsg;->Txt_BtnOk:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_6

    .line 53
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMsg;->Txt_BtnOk:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_6
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMsg;->Txt_Content:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopMsg;->Txt_Content:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_ai8"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
