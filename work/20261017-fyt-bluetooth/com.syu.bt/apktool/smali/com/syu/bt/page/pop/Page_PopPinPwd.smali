.class public Lcom/syu/bt/page/pop/Page_PopPinPwd;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopPinPwd.java"


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 21
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 22
    iput-object p2, p0, Lcom/syu/bt/page/pop/Page_PopPinPwd;->actBt:Lcom/syu/bt/Act_Bt;

    .line 23
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 50
    .local v1, "id":I
    const/4 v0, 0x0

    .line 51
    .local v0, "IPageSet":Lcom/syu/bt/page/Page_Set;
    iget-object v4, p0, Lcom/syu/bt/page/pop/Page_PopPinPwd;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v4, v4, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v5, 0x271b

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 52
    .local v2, "pageSet":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .end local v0    # "IPageSet":Lcom/syu/bt/page/Page_Set;
    check-cast v0, Lcom/syu/bt/page/Page_Set;

    .line 55
    .restart local v0    # "IPageSet":Lcom/syu/bt/page/Page_Set;
    :cond_0
    if-eqz v0, :cond_1

    .line 56
    packed-switch v1, :pswitch_data_0

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 58
    :pswitch_0
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopPinPwd;->backspace()V

    goto :goto_0

    .line 70
    :pswitch_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit16 v8, v1, -0x28fa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/syu/bt/page/pop/Page_PopPinPwd;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_2
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopPinPwd;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 77
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopPinPwd;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x28f8

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 78
    .local v3, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v3, :cond_1

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->connectOBD(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v3    # "text":Lcom/lsec/core/frame/ctrl/JText;
    :pswitch_3
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopPinPwd;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x28f9
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method append(Ljava/lang/String;)V
    .locals 4
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopPinPwd;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 27
    const/16 v3, 0x28f8

    .line 26
    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 28
    .local v1, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    .line 35
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 33
    .restart local v0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method backspace()V
    .locals 4

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopPinPwd;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 39
    const/16 v3, 0x28f8

    .line 38
    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 40
    .local v1, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method
