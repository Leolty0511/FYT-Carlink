.class public Lcom/syu/bt/connect_bc/BCHandler;
.super Landroid/os/Handler;
.source "BCHandler.java"


# static fields
.field public static final BC_CALL_NUMBER:Ljava/lang/String; = "CALL_CENTER_NUMBER"

.field public static final BC_RECEIVER_CMD:Ljava/lang/String; = "BT_RECEIVE_CMD"

.field public static final BC_SEND_ACTION:Ljava/lang/String; = "com.bdxh.bc.send"

.field public static final BC_SEND_CMD:Ljava/lang/String; = "BT_SEND_CMD"

.field public static final BT_CONNECTED:I = 0x0

.field public static final BT_NOT_CONNECTED:I = 0x1

.field public static final CALL_RECEIVE_ACTION:Ljava/lang/String; = "com.bdxh.bc.rec"

.field public static final CALL_STATUS_HAND_UP:I = 0x4

.field public static final CALL_STATUS_INCOMING:I = 0x2

.field public static final CALL_STATUS_OUTCALL:I = 0x3

.field public static final CALL_STATUS_OUTCALLING:I = 0x5

.field public static final HAND_UP_CMD:I = 0x1

.field public static final MAKE_CALL_CMD:I = 0x2

.field public static final SEND_MSG_BTSTATE:I = 0x1

.field public static final SEND_MSG_CALLNUMBUER:I = 0x2

.field public static final SPEAKER_DISABLED_CMD:I = 0x8

.field public static final SPEAKER_ENABLE_CMD:I = 0x10

.field static mHandler:Lcom/syu/bt/connect_bc/BCHandler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    return-void
.end method

.method public static dialOut(Ljava/lang/String;)V
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_match_number_fail"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0, p0}, Lcom/syu/app/ipc/Bt_IpcObj;->dialOut(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/syu/bt/connect_bc/BCHandler;
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/syu/bt/connect_bc/BCHandler;->mHandler:Lcom/syu/bt/connect_bc/BCHandler;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/syu/bt/connect_bc/BCHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/syu/bt/connect_bc/BCHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/syu/bt/connect_bc/BCHandler;->mHandler:Lcom/syu/bt/connect_bc/BCHandler;

    .line 80
    :cond_0
    sget-object v0, Lcom/syu/bt/connect_bc/BCHandler;->mHandler:Lcom/syu/bt/connect_bc/BCHandler;

    return-object v0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 69
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 70
    return-void

    .line 46
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.bdxh.bc.rec"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "i":Landroid/content/Intent;
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 48
    .local v0, "cmdCode":I
    :goto_1
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 60
    :goto_2
    const-string v2, "BT_RECEIVE_CMD"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    :try_start_0
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v2, v1}, Lcom/lsec/core/frame/app/MyApplication;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v2

    goto :goto_0

    .line 47
    .end local v0    # "cmdCode":I
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 50
    .restart local v0    # "cmdCode":I
    :pswitch_1
    const/4 v0, 0x2

    .line 51
    goto :goto_2

    .line 53
    :pswitch_2
    const/4 v0, 0x3

    .line 54
    goto :goto_2

    .line 56
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_2

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 48
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public handleBCCmd(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 94
    const-string v2, "BT_SEND_CMD"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 95
    .local v0, "cmd":I
    sparse-switch v0, :sswitch_data_0

    .line 109
    :goto_0
    :sswitch_0
    return-void

    .line 103
    :sswitch_1
    const-string v2, "CALL_CENTER_NUMBER"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Lcom/syu/bt/connect_bc/BCHandler;->dialOut(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
    .end sparse-switch
.end method
