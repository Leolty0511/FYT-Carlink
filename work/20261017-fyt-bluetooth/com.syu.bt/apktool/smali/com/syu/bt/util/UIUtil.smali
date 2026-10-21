.class public Lcom/syu/bt/util/UIUtil;
.super Ljava/lang/Object;
.source "UIUtil.java"


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/syu/bt/util/UIUtil;->mActivity:Landroid/app/Activity;

    .line 16
    return-void
.end method


# virtual methods
.method public disLoading()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "down"

    const-string v1, " ---  mLoadDialog.cancel "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    invoke-virtual {v0}, Lcom/syu/bt/util/MyCircleDialog;->cancel()V

    .line 81
    :cond_0
    return-void
.end method

.method public getShowMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    invoke-virtual {v0}, Lcom/syu/bt/util/MyCircleDialog;->getTxt()Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBtReset()Z
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/syu/bt/util/UIUtil;->getShowMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_resetting"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    invoke-virtual {v0}, Lcom/syu/bt/util/MyCircleDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showLoading(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x7d0

    .line 20
    const-string v1, "down"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ---  showLoading msg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    if-nez v1, :cond_1

    .line 23
    iget-object v1, p0, Lcom/syu/bt/util/UIUtil;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 26
    :cond_0
    new-instance v1, Lcom/syu/bt/util/MyCircleDialog;

    iget-object v2, p0, Lcom/syu/bt/util/UIUtil;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-object v3, Lcom/syu/bt/App_Bt;->UIUtil_XY:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-object v4, Lcom/syu/bt/App_Bt;->UIUtil_XY:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/syu/bt/util/MyCircleDialog;-><init>(Landroid/app/Activity;II)V

    iput-object v1, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    .line 29
    :cond_1
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "TZY_NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "TZY_OEM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 30
    :cond_2
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v1, v6, :cond_3

    .line 31
    iget-object v1, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    const/4 v2, -0x1

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/syu/bt/util/MyCircleDialog;->showDialog(Ljava/lang/CharSequence;IILandroid/graphics/Typeface;)V

    .line 36
    :goto_1
    iget-object v1, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    invoke-virtual {v1}, Lcom/syu/bt/util/MyCircleDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 33
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    const/4 v2, -0x1

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/syu/bt/util/MyCircleDialog;->showDialog(Ljava/lang/CharSequence;IILandroid/graphics/Typeface;)V

    goto :goto_1

    .line 37
    :cond_4
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_23NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 38
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0x780

    if-lt v1, v2, :cond_5

    .line 40
    iget-object v1, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    const/high16 v2, -0x1000000

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/syu/bt/util/MyCircleDialog;->showDialog(Ljava/lang/CharSequence;IILandroid/graphics/Typeface;)V

    .line 47
    :goto_2
    iget-object v1, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    invoke-virtual {v1}, Lcom/syu/bt/util/MyCircleDialog;->show()V

    goto/16 :goto_0

    .line 41
    :cond_5
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    const/16 v2, 0x500

    if-gt v1, v2, :cond_6

    .line 43
    iget-object v1, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    const/high16 v2, -0x1000000

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/syu/bt/util/MyCircleDialog;->showDialog(Ljava/lang/CharSequence;IILandroid/graphics/Typeface;)V

    goto :goto_2

    .line 45
    :cond_6
    iget-object v1, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    const/high16 v2, -0x1000000

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/syu/bt/util/MyCircleDialog;->showDialog(Ljava/lang/CharSequence;IILandroid/graphics/Typeface;)V

    goto :goto_2

    .line 49
    :cond_7
    iget-object v1, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    invoke-virtual {v1}, Lcom/syu/bt/util/MyCircleDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_c

    .line 50
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 52
    :cond_8
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v1, v6, :cond_9

    .line 54
    iget-object v1, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    const/4 v2, -0x1

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/syu/bt/util/MyCircleDialog;->showDialog(Ljava/lang/CharSequence;IILandroid/graphics/Typeface;)V

    .line 66
    :goto_3
    iget-object v1, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    invoke-virtual {v1}, Lcom/syu/bt/util/MyCircleDialog;->show()V

    goto/16 :goto_0

    .line 56
    :cond_9
    iget-object v1, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    const/4 v2, -0x1

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/syu/bt/util/MyCircleDialog;->showDialog(Ljava/lang/CharSequence;IILandroid/graphics/Typeface;)V

    goto :goto_3

    .line 60
    :cond_a
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v1, v6, :cond_b

    .line 61
    iget-object v1, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    const v2, -0xff0100

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/syu/bt/util/MyCircleDialog;->showDialog(Ljava/lang/CharSequence;IILandroid/graphics/Typeface;)V

    goto :goto_3

    .line 63
    :cond_b
    iget-object v1, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    const v2, -0xff0100

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/syu/bt/util/MyCircleDialog;->showDialog(Ljava/lang/CharSequence;IILandroid/graphics/Typeface;)V

    goto :goto_3

    .line 68
    :cond_c
    iget-object v1, p0, Lcom/syu/bt/util/UIUtil;->mLoadDialog:Lcom/syu/bt/util/MyCircleDialog;

    invoke-virtual {v1, p1}, Lcom/syu/bt/util/MyCircleDialog;->showTxt(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
