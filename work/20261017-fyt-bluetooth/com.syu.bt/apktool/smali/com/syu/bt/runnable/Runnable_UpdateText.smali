.class public Lcom/syu/bt/runnable/Runnable_UpdateText;
.super Ljava/lang/Object;
.source "Runnable_UpdateText.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field bForceDefault:Z

.field mStrName:Ljava/lang/String;

.field mTxt:Lcom/lsec/core/frame/ctrl/JText;

.field mTxt2:Lcom/lsec/core/frame/ctrl/JText;

.field mTxt3:Lcom/lsec/core/frame/ctrl/JText;

.field mTxt4:Lcom/lsec/core/frame/ctrl/JText;

.field mTxt5:Lcom/lsec/core/frame/ctrl/JText;

.field mTxt6:Lcom/lsec/core/frame/ctrl/JText;

.field mView:Lcom/lsec/core/frame/ctrl/JView;

.field mView2:Lcom/lsec/core/frame/ctrl/JView;

.field strDefault:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "txt"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p2, "txt2"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p3, "txt3"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p4, "txt4"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p5, "txt5"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p6, "txt6"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p7, "strName"    # Ljava/lang/String;
    .param p8, "str"    # Ljava/lang/String;
    .param p9, "bDefault"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    .line 53
    iput-object p2, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    .line 54
    iput-object p3, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt3:Lcom/lsec/core/frame/ctrl/JText;

    .line 55
    iput-object p4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt4:Lcom/lsec/core/frame/ctrl/JText;

    .line 56
    iput-object p5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt5:Lcom/lsec/core/frame/ctrl/JText;

    .line 57
    iput-object p6, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt6:Lcom/lsec/core/frame/ctrl/JText;

    .line 58
    iput-object p7, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mStrName:Ljava/lang/String;

    .line 59
    iput-object p8, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->strDefault:Ljava/lang/String;

    .line 60
    iput-boolean p9, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->bForceDefault:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JView;Lcom/lsec/core/frame/ctrl/JView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "txt"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p2, "txt2"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p3, "txt3"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p4, "view"    # Lcom/lsec/core/frame/ctrl/JView;
    .param p5, "view2"    # Lcom/lsec/core/frame/ctrl/JView;
    .param p6, "strName"    # Ljava/lang/String;
    .param p7, "str"    # Ljava/lang/String;
    .param p8, "bDefault"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    .line 66
    iput-object p2, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    .line 67
    iput-object p3, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt3:Lcom/lsec/core/frame/ctrl/JText;

    .line 68
    iput-object p4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mView:Lcom/lsec/core/frame/ctrl/JView;

    .line 69
    iput-object p5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mView2:Lcom/lsec/core/frame/ctrl/JView;

    .line 70
    iput-object p6, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mStrName:Ljava/lang/String;

    .line 71
    iput-object p7, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->strDefault:Ljava/lang/String;

    .line 72
    iput-boolean p8, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->bForceDefault:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "txt"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p2, "txt2"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p3, "txt3"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p4, "strName"    # Ljava/lang/String;
    .param p5, "str"    # Ljava/lang/String;
    .param p6, "bDefault"    # Z

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    .line 44
    iput-object p2, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    .line 45
    iput-object p3, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt3:Lcom/lsec/core/frame/ctrl/JText;

    .line 46
    iput-object p4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mStrName:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->strDefault:Ljava/lang/String;

    .line 48
    iput-boolean p6, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->bForceDefault:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JText;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "txt"    # Lcom/lsec/core/frame/ctrl/JText;
    .param p2, "strName"    # Ljava/lang/String;
    .param p3, "str"    # Ljava/lang/String;
    .param p4, "bDefault"    # Z

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    .line 36
    iput-object p2, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mStrName:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->strDefault:Ljava/lang/String;

    .line 38
    iput-boolean p4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->bForceDefault:Z

    .line 39
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0x9

    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 78
    const-string v5, "pop33"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 00 Run Bt.sPhoneNumber = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Bt.DATA[FinalBt.U_PHONE_STATE] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_0

    .line 81
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mStrName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 82
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v7, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mStrName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 125
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mStrName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 126
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v7, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mStrName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt4:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt5:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt6:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_24

    .line 151
    const/4 v2, 0x1

    .line 152
    .local v2, "isVis":Z
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mStrName:Ljava/lang/String;

    if-nez v5, :cond_1d

    .line 153
    const/4 v2, 0x0

    .line 159
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt4:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_1e

    move v5, v6

    :goto_3
    invoke-virtual {v7, v5}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 160
    iget-object v7, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt6:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_1f

    move v5, v6

    :goto_4
    invoke-virtual {v7, v5}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 161
    iget-object v7, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt5:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_20

    move v5, v3

    :goto_5
    invoke-virtual {v7, v5}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 162
    iget-object v7, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_21

    move v5, v3

    :goto_6
    invoke-virtual {v7, v5}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 163
    iget-object v7, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt3:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_22

    move v5, v3

    :goto_7
    invoke-virtual {v7, v5}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 164
    iget-object v7, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v2, :cond_23

    move v5, v3

    :goto_8
    invoke-virtual {v7, v5}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 181
    .end local v2    # "isVis":Z
    :cond_3
    :goto_9
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mView:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v5, :cond_4

    .line 182
    const-string v5, "gdy77"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 33 Runable_Upadate defaultPhone  Bt.sPhoneNumber = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "BT_23NEW"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 184
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v5

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 185
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_29

    .line 186
    new-instance v5, Lcom/syu/bt/runnable/Runnable_UpdateText$1;

    invoke-direct {v5, p0}, Lcom/syu/bt/runnable/Runnable_UpdateText$1;-><init>(Lcom/syu/bt/runnable/Runnable_UpdateText;)V

    .line 192
    const-wide/16 v8, 0x32

    .line 186
    invoke-static {v4, v5, v8, v9}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 238
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_4
    :goto_a
    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mView2:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v4, :cond_5

    .line 239
    sget v4, Lcom/syu/bt/App_Bt;->iTalkHead:I

    const/16 v5, 0xf

    if-le v4, v5, :cond_32

    .line 240
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v4

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 241
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_31

    .line 242
    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mView2:Lcom/lsec/core/frame/ctrl/JView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v7, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/syu/bt/util/BTUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 256
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_5
    :goto_b
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bSyncInfo:Z

    if-eqz v4, :cond_6

    .line 257
    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mStrName:Ljava/lang/String;

    invoke-static {v4}, Lcom/syu/app/ipc/Bt_IpcObj;->sendName(Ljava/lang/String;)V

    .line 261
    :cond_6
    sget-object v4, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v5, "TZY_OEM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 262
    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mStrName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 263
    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->strDefault:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 264
    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v4, v6}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 267
    :cond_7
    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v4, :cond_8

    .line 268
    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v4, v3}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 282
    :cond_8
    :goto_c
    return-void

    .line 83
    :cond_9
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 84
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 85
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "unknown"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 87
    :cond_a
    const-string v5, "pop33"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 11 Run sPhoneNumberHoldOn = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    move v1, v3

    .line 89
    .local v1, "isNotEmptyHoldOn":Z
    :goto_d
    sget-boolean v5, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v5, :cond_b

    if-eqz v1, :cond_b

    .line 90
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    move v1, v4

    .line 92
    :cond_b
    :goto_e
    const-string v5, "pop33"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 11 Run sPhoneNumberHoldOn = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isNotEmptyHoldOn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    if-eqz v1, :cond_e

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v5, v5, v9

    if-ne v5, v10, :cond_e

    .line 94
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v1    # "isNotEmptyHoldOn":Z
    :cond_c
    move v1, v4

    .line 88
    goto :goto_d

    .restart local v1    # "isNotEmptyHoldOn":Z
    :cond_d
    move v1, v3

    .line 90
    goto :goto_e

    .line 96
    :cond_e
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "BT_8581"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 97
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    const-string v7, ""

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 98
    :cond_f
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_BT_1920"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-boolean v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->bForceDefault:Z

    if-nez v5, :cond_10

    .line 99
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    const-string v7, ""

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 100
    :cond_10
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "BT_23NEW"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 101
    const-string v5, "pop33"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 22 Run Bt.sPhoneNumber = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt6:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v5, :cond_11

    .line 103
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const-string v5, "pop33"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 33 Run Bt.sPhoneNumber = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 107
    :cond_11
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    const-string v7, ""

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 110
    :cond_12
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    const-string v7, ""

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 113
    .end local v1    # "isNotEmptyHoldOn":Z
    :cond_13
    iget-boolean v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->bForceDefault:Z

    if-nez v5, :cond_14

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v5

    if-nez v5, :cond_0

    .line 114
    :cond_14
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_BT_1920"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-boolean v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->bForceDefault:Z

    if-nez v5, :cond_15

    .line 115
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    const-string v7, ""

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 117
    :cond_15
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v7, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->strDefault:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    const-string v5, "pop33"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 44 Run strDefault = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->strDefault:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 127
    :cond_16
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 128
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 129
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v7

    iget-object v7, v7, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v8, "unknown"

    invoke-virtual {v7, v8}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 131
    :cond_17
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v5, v5, v9

    if-ne v5, v10, :cond_18

    .line 132
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 134
    :cond_18
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_BT_1920"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    iget-boolean v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->bForceDefault:Z

    if-nez v5, :cond_19

    .line 135
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    const-string v7, ""

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 137
    :cond_19
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 140
    :cond_1a
    iget-boolean v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->bForceDefault:Z

    if-nez v5, :cond_1b

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v5

    if-nez v5, :cond_1

    .line 141
    :cond_1b
    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_BT_1920"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-boolean v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->bForceDefault:Z

    if-nez v5, :cond_1c

    .line 142
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    const-string v7, ""

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 144
    :cond_1c
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v7, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->strDefault:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 154
    .restart local v2    # "isVis":Z
    :cond_1d
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mStrName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v4, :cond_2

    .line 155
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_1e
    move v5, v3

    .line 159
    goto/16 :goto_3

    :cond_1f
    move v5, v3

    .line 160
    goto/16 :goto_4

    :cond_20
    move v5, v6

    .line 161
    goto/16 :goto_5

    :cond_21
    move v5, v6

    .line 162
    goto/16 :goto_6

    :cond_22
    move v5, v6

    .line 163
    goto/16 :goto_7

    :cond_23
    move v5, v6

    .line 164
    goto/16 :goto_8

    .line 165
    .end local v2    # "isVis":Z
    :cond_24
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt3:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v5, :cond_3

    .line 166
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mStrName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 168
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt3:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v7, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mStrName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 170
    :cond_25
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 172
    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_26

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v5, v5, v9

    if-ne v5, v10, :cond_26

    .line 173
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt3:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumberHoldOn:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 175
    :cond_26
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt3:Lcom/lsec/core/frame/ctrl/JText;

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 177
    :cond_27
    iget-boolean v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->bForceDefault:Z

    if-nez v5, :cond_28

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v5

    if-nez v5, :cond_3

    .line 178
    :cond_28
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt3:Lcom/lsec/core/frame/ctrl/JText;

    iget-object v7, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->strDefault:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/lsec/core/frame/ctrl/JText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 196
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_29
    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt6:Lcom/lsec/core/frame/ctrl/JText;

    if-nez v4, :cond_2a

    .line 197
    const-string v4, "gdy77"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, " 44 Run_UpdateText defaultPhone bmp != null Bt.sPhoneNumber = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 201
    :cond_2a
    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mView:Lcom/lsec/core/frame/ctrl/JView;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v7, "bt_user_icon"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    iget-object v8, v8, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v5, v7, v8, v9}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 204
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2b
    sget v5, Lcom/syu/bt/App_Bt;->iTalkHead:I

    const/16 v7, 0xf

    if-le v5, v7, :cond_2e

    .line 205
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v4

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2c

    .line 207
    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mView:Lcom/lsec/core/frame/ctrl/JView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v7, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/syu/bt/util/BTUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 215
    :cond_2c
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mView:Lcom/lsec/core/frame/ctrl/JView;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v7, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mView2:Lcom/lsec/core/frame/ctrl/JView;

    if-nez v4, :cond_2d

    const-string v4, "people_navi"

    :goto_f
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    iget-object v8, v8, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v8, v9}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    :cond_2d
    const-string v4, "people2"

    goto :goto_f

    .line 219
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2e
    sget v5, Lcom/syu/bt/App_Bt;->iTalkHead:I

    if-lez v5, :cond_2f

    .line 221
    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mView:Lcom/lsec/core/frame/ctrl/JView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "talkhead"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/syu/bt/App_Bt;->iTalkHead:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    goto/16 :goto_a

    .line 229
    :cond_2f
    iget-object v7, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mView:Lcom/lsec/core/frame/ctrl/JView;

    iget-object v5, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mView2:Lcom/lsec/core/frame/ctrl/JView;

    if-nez v5, :cond_30

    const-string v5, "people_navi"

    :goto_10
    invoke-virtual {v7, v5, v4}, Lcom/lsec/core/frame/ctrl/JView;->setStrDrawable(Ljava/lang/String;Z)V

    goto/16 :goto_a

    :cond_30
    const-string v5, "people2"

    goto :goto_10

    .line 244
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_31
    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mView2:Lcom/lsec/core/frame/ctrl/JView;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v7, "people2"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    iget-object v8, v8, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v5, v7, v8, v9}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 247
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_32
    sget v4, Lcom/syu/bt/App_Bt;->iTalkHead:I

    if-lez v4, :cond_33

    .line 248
    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mView2:Lcom/lsec/core/frame/ctrl/JView;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "talkhead"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/syu/bt/App_Bt;->iTalkHead:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    iget-object v8, v8, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v5, v7, v8, v9}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 250
    :cond_33
    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mView2:Lcom/lsec/core/frame/ctrl/JView;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-object v5, v5, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v7, "people2"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v8

    iget-object v8, v8, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v9

    iget-object v9, v9, Lcom/syu/bt/App_Bt;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v5, v7, v8, v9}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_b

    .line 271
    :cond_34
    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v4, :cond_35

    .line 272
    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v4, v3}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    .line 275
    :cond_35
    iget-object v3, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    if-eqz v3, :cond_8

    .line 276
    iget-object v3, p0, Lcom/syu/bt/runnable/Runnable_UpdateText;->mTxt2:Lcom/lsec/core/frame/ctrl/JText;

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JText;->setVisibility(I)V

    goto/16 :goto_c
.end method
