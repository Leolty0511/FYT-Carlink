.class public Lcom/syu/bt/page/pop/Page_PopPwd;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_PopPwd.java"


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 25
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 26
    iput-object p2, p0, Lcom/syu/bt/page/pop/Page_PopPwd;->actBt:Lcom/syu/bt/Act_Bt;

    .line 27
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 54
    .local v1, "id":I
    const/4 v0, 0x0

    .line 55
    .local v0, "IPagePair":Lcom/syu/bt/page/Page_Pair;
    iget-object v4, p0, Lcom/syu/bt/page/pop/Page_PopPwd;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v4, v4, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v5, 0x271c

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 56
    .local v2, "pagePair":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v0

    .end local v0    # "IPagePair":Lcom/syu/bt/page/Page_Pair;
    check-cast v0, Lcom/syu/bt/page/Page_Pair;

    .line 59
    .restart local v0    # "IPagePair":Lcom/syu/bt/page/Page_Pair;
    :cond_0
    if-eqz v0, :cond_1

    .line 60
    packed-switch v1, :pswitch_data_0

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 62
    :pswitch_0
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopPwd;->backspace()V

    goto :goto_0

    .line 74
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

    invoke-virtual {p0, v4}, Lcom/syu/bt/page/pop/Page_PopPwd;->append(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopPwd;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 81
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopPwd;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    const/16 v5, 0x28f8

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JText;

    .line 82
    .local v3, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v3, :cond_1

    .line 83
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is7731()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 84
    :cond_2
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v4

    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/syu/bt/util/BTUtil;->connect7731OBD([B)V

    goto :goto_0

    .line 86
    :cond_3
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is7862BuiltInBT()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v4

    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/syu/bt/util/BTUtil;->connect7731OBD([B)V

    goto :goto_0

    .line 89
    :cond_4
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

    goto/16 :goto_0

    .line 60
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
    .end packed-switch
.end method

.method append(Ljava/lang/String;)V
    .locals 4
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopPwd;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 31
    const/16 v3, 0x28f8

    .line 30
    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 32
    .local v1, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_0

    .line 33
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

    .line 34
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    .line 39
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 37
    .restart local v0    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method backspace()V
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/syu/bt/page/pop/Page_PopPwd;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    .line 43
    const/16 v3, 0x28f8

    .line 42
    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    .line 44
    .local v1, "text":Lcom/lsec/core/frame/ctrl/JText;
    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JText;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method
