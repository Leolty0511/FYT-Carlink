.class public Lcom/syu/bt/page/Page_Main;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_Main.java"


# instance fields
.field actBt:Lcom/syu/bt/Act_Bt;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/syu/bt/Act_Bt;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 20
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 21
    iput-object p2, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    .line 22
    invoke-direct {p0}, Lcom/syu/bt/page/Page_Main;->updateMainBk()V

    .line 24
    return-void
.end method

.method private btnClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    const/4 v0, 0x1

    .line 57
    .local v0, "bRet":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 58
    .local v1, "id":I
    packed-switch v1, :pswitch_data_0

    .line 63
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 60
    :pswitch_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v2}, Lcom/syu/app/ipc/Bt_IpcObj;->setStandBy()V

    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x2756
        :pswitch_0
    .end packed-switch
.end method

.method private updateMainBk()V
    .locals 5

    .prologue
    .line 27
    const-string v1, "night"

    const-string v2, "updateMainBk"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bUI_NightColour:Z

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getPage(I)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v0

    .line 31
    .local v0, "myPage":Lcom/lsec/core/frame/ctrl/JPage;
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "TZY_NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Main;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    sget v1, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v1, :cond_1

    const-string v1, "night_main2000_bk"

    :goto_0
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Main;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Main;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .end local v0    # "myPage":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_0
    :goto_1
    return-void

    .line 32
    .restart local v0    # "myPage":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_1
    const-string v1, "main2000_bk"

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Main;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    sget v1, Lcom/syu/bt/App_Bt;->mColorType:I

    if-lez v1, :cond_3

    const-string v1, "night_main_bk"

    :goto_2
    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Main;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/syu/bt/page/Page_Main;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    const-string v1, "main_bk"

    goto :goto_2
.end method


# virtual methods
.method public ResponseClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 40
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->IsConnectCarplay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-direct {p0, p1}, Lcom/syu/bt/page/Page_Main;->btnClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_state_using"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v0, p1}, Lcom/syu/bt/Act_Bt;->MainClick(Landroid/view/View;)Z

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 95
    const-string v7, "half1"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " 00 *** Page Main onSizeChanged  ***   w = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " h = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " oldw = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " oldh = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-boolean v7, Lcom/syu/bt/App_Bt;->bHV_Kill:Z

    if-eqz v7, :cond_0

    .line 97
    add-int/lit8 v7, p4, 0x50

    if-ne p1, v7, :cond_4

    add-int/lit8 v7, p3, -0x50

    if-ne p2, v7, :cond_4

    const/4 v7, 0x1

    :goto_0
    sput-boolean v7, Lcom/syu/bt/App_Bt;->bHV_Kill_p:Z

    .line 99
    :cond_0
    iget-object v7, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v7, v7, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v7}, Lcom/lsec/core/frame/app/MyActivity;->handleSizeChanged()V

    .line 103
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v7, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-eqz v7, :cond_3

    .line 104
    iget-object v7, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v7}, Lcom/syu/bt/Act_Bt;->isHalf()Z

    move-result v0

    .line 105
    .local v0, "bHalf":Z
    if-eqz v0, :cond_1

    .line 106
    iget-object v7, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v7}, Lcom/syu/bt/Act_Bt;->switch2DialWhenHalfScreen()V

    .line 108
    :cond_1
    iget-object v7, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v7, v7, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v7, v7, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v7, :cond_3

    .line 109
    iget-object v7, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v7, v7, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v7, v7, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v2

    .line 111
    .local v2, "idPage":I
    iget-object v7, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v7, v7, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v7, v7, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    const/16 v8, 0x2712

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JPage;

    .line 112
    .local v3, "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v3, :cond_2

    .line 113
    const/16 v7, 0x2745

    invoke-virtual {v3, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/ctrl/JButton;

    .line 114
    .local v1, "btn":Lcom/lsec/core/frame/ctrl/JButton;
    if-eqz v1, :cond_2

    .line 115
    iget-object v7, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v7}, Lcom/syu/bt/Act_Bt;->isHalf()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 116
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    .line 122
    .end local v1    # "btn":Lcom/lsec/core/frame/ctrl/JButton;
    :cond_2
    :goto_1
    sparse-switch v2, :sswitch_data_0

    .line 165
    .end local v0    # "bHalf":Z
    .end local v2    # "idPage":I
    .end local v3    # "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_3
    :goto_2
    return-void

    .line 97
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 118
    .restart local v0    # "bHalf":Z
    .restart local v1    # "btn":Lcom/lsec/core/frame/ctrl/JButton;
    .restart local v2    # "idPage":I
    .restart local v3    # "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_5
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/lsec/core/frame/ctrl/JButton;->setEnabled(Z)V

    goto :goto_1

    .line 124
    .end local v1    # "btn":Lcom/lsec/core/frame/ctrl/JButton;
    :sswitch_0
    iget-object v7, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v7, v7, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v7, v7, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v6

    check-cast v6, Lcom/syu/bt/page/Page_Dial;

    .line 125
    .local v6, "page_Dial":Lcom/syu/bt/page/Page_Dial;
    if-eqz v6, :cond_3

    .line 126
    invoke-virtual {v6}, Lcom/syu/bt/page/Page_Dial;->switchFull()V

    .line 127
    iget-object v7, v6, Lcom/syu/bt/page/Page_Dial;->mViewShowGps:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 128
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    invoke-virtual {v7}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 129
    iget-object v7, v6, Lcom/syu/bt/page/Page_Dial;->mViewShowGps:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 131
    :cond_6
    iget-object v7, v6, Lcom/syu/bt/page/Page_Dial;->mViewShowGps:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 137
    .end local v6    # "page_Dial":Lcom/syu/bt/page/Page_Dial;
    :sswitch_1
    iget-object v7, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v7, v7, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v7, v7, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v5

    check-cast v5, Lcom/syu/bt/page/Page_Callin;

    .line 138
    .local v5, "page_Callin":Lcom/syu/bt/page/Page_Callin;
    if-eqz v5, :cond_3

    .line 139
    invoke-virtual {v5}, Lcom/syu/bt/page/Page_Callin;->switchFull()V

    .line 140
    iget-object v7, v5, Lcom/syu/bt/page/Page_Callin;->mViewShowGps:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 141
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    invoke-virtual {v7}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 142
    iget-object v7, v5, Lcom/syu/bt/page/Page_Callin;->mViewShowGps:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 144
    :cond_7
    iget-object v7, v5, Lcom/syu/bt/page/Page_Callin;->mViewShowGps:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 150
    .end local v5    # "page_Callin":Lcom/syu/bt/page/Page_Callin;
    :sswitch_2
    iget-object v7, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v7, v7, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v7, v7, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v4

    check-cast v4, Lcom/syu/bt/page/Page_Av;

    .line 151
    .local v4, "page_Av":Lcom/syu/bt/page/Page_Av;
    if-eqz v4, :cond_3

    .line 152
    invoke-virtual {v4}, Lcom/syu/bt/page/Page_Av;->switchFull()V

    .line 153
    iget-object v7, v4, Lcom/syu/bt/page/Page_Av;->mViewShowGps:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 154
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    invoke-virtual {v7}, Lcom/syu/bt/App_Bt;->isHalfScreenAble()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 155
    iget-object v7, v4, Lcom/syu/bt/page/Page_Av;->mViewShowGps:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 157
    :cond_8
    iget-object v7, v4, Lcom/syu/bt/page/Page_Av;->mViewShowGps:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 122
    nop

    :sswitch_data_0
    .sparse-switch
        0x2713 -> :sswitch_0
        0x271a -> :sswitch_2
        0x2730 -> :sswitch_1
    .end sparse-switch
.end method

.method public setPressed(Lcom/lsec/core/frame/ctrl/JButton;Z)V
    .locals 4
    .param p1, "jButton"    # Lcom/lsec/core/frame/ctrl/JButton;
    .param p2, "pressed"    # Z

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/lsec/core/frame/ctrl/JButton;->getId()I

    move-result v0

    .line 74
    .local v0, "id":I
    const-string v1, "gdy9"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Page_main setPressed id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/syu/bt/page/Page_Main;->updateSelected(IZ)Z

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateSelected(IZ)Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "bSelected"    # Z

    .prologue
    .line 79
    iget-object v2, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v2, p1}, Lcom/syu/bt/Act_Bt;->getFixPageMain(I)I

    move-result v1

    .line 80
    .local v1, "idPageTo":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, v2, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v2, v2, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyActivity;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getId()I

    move-result v0

    .line 83
    .local v0, "idCur":I
    if-eq v0, v1, :cond_0

    .line 84
    iget-object v2, p0, Lcom/syu/bt/page/Page_Main;->actBt:Lcom/syu/bt/Act_Bt;

    invoke-virtual {v2, v0, p2}, Lcom/syu/bt/Act_Bt;->updateMainSelected(IZ)V

    .line 87
    .end local v0    # "idCur":I
    :cond_0
    const/4 v2, 0x1

    .line 90
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
