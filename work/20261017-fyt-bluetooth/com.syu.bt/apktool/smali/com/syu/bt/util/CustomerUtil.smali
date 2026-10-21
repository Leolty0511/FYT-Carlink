.class public Lcom/syu/bt/util/CustomerUtil;
.super Ljava/lang/Object;
.source "CustomerUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterDemand_DZSJ()Z
    .locals 3

    .prologue
    .line 31
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1

    .line 32
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v2, 0x9

    aget v0, v1, v2

    .line 33
    .local v0, "value":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 34
    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 35
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static is7731()Z
    .locals 1

    .prologue
    .line 170
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdPlatForm:I

    packed-switch v0, :pswitch_data_0

    .line 184
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 180
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static is7862()Z
    .locals 1

    .prologue
    .line 199
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdPlatForm:I

    sparse-switch v0, :sswitch_data_0

    .line 209
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 205
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public static is7862BuiltInBT()Z
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is7862()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/syu/bt/App_Bt;->mBtType:I

    if-nez v0, :cond_0

    .line 216
    const/4 v0, 0x1

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is8541()Z
    .locals 1

    .prologue
    .line 188
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdPlatForm:I

    packed-switch v0, :pswitch_data_0

    .line 195
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 191
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method

.method public static isDZSJMIB4Config()Z
    .locals 2

    .prologue
    .line 85
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_0

    .line 86
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v1, 0x5e

    if-ne v0, v1, :cond_1

    :cond_0
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-eqz v0, :cond_1

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLuChangConfig()Z
    .locals 2

    .prologue
    .line 110
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    sget v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTZYConfig()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 101
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_23NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_2

    sget v1, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_0

    .line 104
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isXCConfig()Z
    .locals 2

    .prologue
    .line 146
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    sget v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 147
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXHCNConfig()Z
    .locals 2

    .prologue
    .line 118
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    sget v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isYFConfig()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 135
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "BT_23NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "bba"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    sget v1, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v2, 0x70

    if-eq v1, v2, :cond_2

    sget v1, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v2, 0x8c

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "YF_UI2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isYZConfig()Z
    .locals 2

    .prologue
    .line 126
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_0

    .line 127
    const/4 v0, 0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZHTDConfig()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 153
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "zhtd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    :goto_0
    return v0

    .line 158
    :cond_0
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mStrFolderAsset:Ljava/lang/String;

    const-string v2, "ui3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "bba"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    const-string v1, "HJT"

    const-string v2, "isZHTDConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZhangConfig()Z
    .locals 2

    .prologue
    .line 93
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v1, 0x35

    if-ne v0, v1, :cond_0

    .line 94
    sget v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needSpliceNumber()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public static needskipBtMusic()Z
    .locals 2

    .prologue
    .line 78
    sget v0, Lcom/lsec/core/frame/app/MyApplication;->mIdCustomer:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static otoSkipCarSetting(Ljava/lang/CharSequence;Landroid/app/Activity;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "51243204"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.syu.settings"

    .line 55
    const-string v2, "com.syu.settings.MainActivity"

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    const-string v1, "page"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 60
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->clearKey(Z)V

    goto :goto_0
.end method
