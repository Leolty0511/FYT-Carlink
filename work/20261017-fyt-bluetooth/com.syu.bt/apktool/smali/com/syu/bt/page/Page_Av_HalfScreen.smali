.class public Lcom/syu/bt/page/Page_Av_HalfScreen;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Av_HalfScreen.java"


# instance fields
.field public actBt:Lcom/syu/bt/Act_Bt;

.field public misAvStop:Z

.field public tvTitle_Half:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 24
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->misAvStop:Z

    .line 25
    iput-object p2, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->actBt:Lcom/syu/bt/Act_Bt;

    .line 26
    return-void
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 82
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 128
    :cond_0
    :goto_0
    :sswitch_0
    iget-object v1, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v1, p1}, Lcom/syu/bt/Act_Bt;->MenuClick(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :cond_1
    return-void

    .line 85
    :sswitch_1
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avPrev()V

    .line 87
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->misAvStop:Z

    goto :goto_0

    .line 91
    :sswitch_2
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avPlayPause()V

    .line 93
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->misAvStop:Z

    goto :goto_0

    .line 97
    :sswitch_3
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avPlay()V

    .line 99
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->misAvStop:Z

    goto :goto_0

    .line 103
    :sswitch_4
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avPause()V

    .line 105
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->misAvStop:Z

    goto :goto_0

    .line 109
    :sswitch_5
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avStop()V

    .line 111
    iput-boolean v3, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->misAvStop:Z

    goto :goto_0

    .line 116
    :sswitch_6
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->isFastDoubleClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->avNext()V

    .line 118
    iput-boolean v2, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->misAvStop:Z

    goto :goto_0

    .line 124
    :sswitch_7
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/syu/bt/App_Bt;->setFullScreenMode(I)V

    goto :goto_0

    .line 82
    :sswitch_data_0
    .sparse-switch
        0x2754 -> :sswitch_0
        0x2790 -> :sswitch_7
        0x2844 -> :sswitch_1
        0x2845 -> :sswitch_1
        0x2846 -> :sswitch_2
        0x2848 -> :sswitch_3
        0x2849 -> :sswitch_4
        0x284a -> :sswitch_5
        0x284b -> :sswitch_6
        0x284c -> :sswitch_6
    .end sparse-switch
.end method

.method public init()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Bt_IpcObj;->onNotify(Lcom/syu/bt/page/Page_Av_HalfScreen;I[I[F[Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/App_Bt;->DisableGainSpec()V

    .line 66
    sput-boolean v3, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    .line 67
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bDelMenuFromBtAv:Z

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JPage;

    .line 69
    .local v0, "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, v3}, Lcom/lsec/core/frame/ctrl/JPage;->setVisibility(I)V

    .line 72
    .end local v0    # "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 35
    iget-object v1, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-boolean v1, v1, Lcom/lsec/core/frame/app/MyActivity;->bTop:Z

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->updateNotify_BtAv_HalfScreen()V

    .line 40
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    const/16 v2, 0x271a

    invoke-virtual {v1, v2}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdRight(I)V

    .line 41
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/App_Bt;->EnableGainSpec()V

    .line 43
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bDelMenuFromBtAv:Z

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v2, 0x2712

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/ctrl/JPage;

    .line 45
    .local v0, "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v0, :cond_2

    .line 46
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setVisibility(I)V

    .line 49
    .end local v0    # "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Av_HalfScreen;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v1

    .line 50
    const/16 v2, 0x2855

    .line 49
    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JText;

    iput-object v1, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->tvTitle_Half:Landroid/widget/TextView;

    .line 51
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isDisConnect()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    iget-object v1, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->tvTitle_Half:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 53
    iget-object v1, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->tvTitle_Half:Landroid/widget/TextView;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_disconnected"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_3
    :goto_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-boolean v1, v1, Lcom/syu/bt/App_Bt;->bPopBtRingSet:Z

    if-eqz v1, :cond_0

    .line 60
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/syu/bt/App_Bt;->popBtRingSet(Z)V

    goto :goto_0

    .line 55
    :cond_4
    iget-object v1, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->tvTitle_Half:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 56
    iget-object v1, p0, Lcom/syu/bt/page/Page_Av_HalfScreen;->tvTitle_Half:Landroid/widget/TextView;

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sId3Title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
