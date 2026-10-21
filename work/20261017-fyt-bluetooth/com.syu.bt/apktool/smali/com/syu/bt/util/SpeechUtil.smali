.class public Lcom/syu/bt/util/SpeechUtil;
.super Ljava/lang/Object;
.source "SpeechUtil.java"


# static fields
.field public static final ACTION_TMP_CONTACTS:Ljava/lang/String; = "com.fyt.speech.temp_contact"

.field public static final ACTION_TO_BT:Ljava/lang/String; = "com.syu.bt.local.cmd"

.field public static final CMD_PHONE_CONTACT:I = 0x14

.field public static final CMD_PHONE_CUT:I = 0x19

.field public static final CMD_PHONE_DIAL:I = 0x16

.field public static final CMD_PHONE_HANG:I = 0x17

.field public static final CMD_PHONE_LINK:I = 0x18

.field public static final CMD_PHONE_NUMBER:I = 0x15

.field public static final CONTACTS_KEY:Ljava/lang/String; = "contacts"

.field public static final KEY_CMD_CODE:Ljava/lang/String; = "cmdCode"

.field public static final KEY_CONTACT:Ljava/lang/String; = "contact"

.field public static final KEY_EXTRA:Ljava/lang/String; = "extra"

.field public static final KEY_NUMBER:Ljava/lang/String; = "number"

.field public static final TMP_CONTACTS_KEY:Ljava/lang/String; = "tmp_contacts"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearTmpContacts(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string v1, "tmp_contacts"

    invoke-static {v1}, Lcom/syu/bt/util/SpUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "tmpContacts":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/syu/bt/util/SpeechUtil;->startTmpService(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method private static dialOut(Ljava/lang/String;)V
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_match_number_fail"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0, p0}, Lcom/syu/app/ipc/Bt_IpcObj;->dialOut(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static funcAnswer()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isAppIdBtPhone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isRing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->dial()V

    goto :goto_0
.end method

.method public static funcBindBt()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->link()V

    .line 80
    :cond_0
    return-void
.end method

.method public static funcDialName(Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 93
    :cond_0
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v1, p0}, Lcom/syu/bt/db/Bt_Info;->queryNumberByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_match_number_fail"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {v0}, Lcom/syu/bt/util/SpeechUtil;->dialOut(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static funcDialNumber(Ljava/lang/String;)V
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/syu/bt/util/SpeechUtil;->dialOut(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static funcError()V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_cmd_invalid"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static funcHangUp()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    .line 70
    :cond_0
    return-void
.end method

.method public static funcUnBindBt()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    .line 75
    :cond_0
    return-void
.end method

.method public static startTmpService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "contacts"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "contacts"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.fyt.speech.temp_contact"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "mIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 35
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v2}, Lcom/lsec/core/frame/app/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v2, v1}, Lcom/lsec/core/frame/app/MyApplication;->startServiceSafely(Landroid/content/Intent;)V

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-static {}, Lcom/syu/bt/util/SpUtil;->clear()V

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v2, "tmp_contacts"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/syu/bt/util/SpUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
