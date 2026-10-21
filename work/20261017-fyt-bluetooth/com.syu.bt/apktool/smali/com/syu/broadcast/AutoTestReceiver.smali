.class public Lcom/syu/broadcast/AutoTestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoTestReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/broadcast/AutoTestReceiver$Runnable_UpdatePin;,
        Lcom/syu/broadcast/AutoTestReceiver$Runnable_clearContact;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 279
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 275
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x4

    const/4 v7, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 78
    const-string v6, "data0"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 79
    .local v0, "data0":I
    const-string v6, "data1"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 80
    .local v1, "data1":I
    const-string v6, "str0"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, "str0":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.syu.autotest.bt_recv"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v3, "rspIntent":Landroid/content/Intent;
    packed-switch v0, :pswitch_data_0

    .line 271
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 85
    :pswitch_1
    packed-switch v1, :pswitch_data_1

    .line 108
    :goto_1
    if-eq v1, v8, :cond_1

    if-ne v1, v9, :cond_0

    .line 109
    :cond_1
    :try_start_0
    const-string v6, "data0"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v6, "data1"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v6, v3}, Lcom/lsec/core/frame/app/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 267
    :catch_0
    move-exception v6

    goto :goto_0

    .line 87
    :pswitch_2
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/syu/app/ipc/Bt_IpcObj;->setBtSwitch(Z)V

    .line 88
    const/4 v6, 0x0

    new-instance v7, Lcom/syu/broadcast/AutoTestReceiver$1;

    invoke-direct {v7, p0}, Lcom/syu/broadcast/AutoTestReceiver$1;-><init>(Lcom/syu/broadcast/AutoTestReceiver;)V

    invoke-static {v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto :goto_1

    .line 97
    :pswitch_3
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/syu/app/ipc/Bt_IpcObj;->setBtSwitch(Z)V

    .line 98
    const/4 v6, 0x0

    new-instance v7, Lcom/syu/broadcast/AutoTestReceiver$2;

    invoke-direct {v7, p0}, Lcom/syu/broadcast/AutoTestReceiver$2;-><init>(Lcom/syu/broadcast/AutoTestReceiver;)V

    invoke-static {v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto :goto_1

    .line 116
    :pswitch_4
    const/4 v4, 0x0

    .line 117
    .local v4, "run":Ljava/lang/Runnable;
    packed-switch v1, :pswitch_data_2

    .line 135
    :goto_2
    :pswitch_5
    if-eqz v4, :cond_0

    .line 136
    const/4 v6, 0x1

    invoke-static {v6, v4}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 137
    const-string v6, "data0"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const-string v6, "data1"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v6, v3}, Lcom/lsec/core/frame/app/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 119
    :pswitch_6
    sget-object v4, Lcom/syu/broadcast/MyService;->mRunnable_goPageContact:Ljava/lang/Runnable;

    .line 120
    goto :goto_2

    .line 122
    :pswitch_7
    sget-object v4, Lcom/syu/broadcast/MyService;->mRunnable_goPageSet:Ljava/lang/Runnable;

    .line 123
    goto :goto_2

    .line 125
    :pswitch_8
    sget-object v4, Lcom/syu/broadcast/MyService;->mRunnable_goPageDial:Ljava/lang/Runnable;

    .line 126
    goto :goto_2

    .line 128
    :pswitch_9
    sget-object v4, Lcom/syu/broadcast/MyService;->mRunnable_goPageSet:Ljava/lang/Runnable;

    .line 129
    goto :goto_2

    .line 131
    :pswitch_a
    sget-object v4, Lcom/syu/broadcast/MyService;->mRunnable_goPageHistory:Ljava/lang/Runnable;

    goto :goto_2

    .line 143
    .end local v4    # "run":Ljava/lang/Runnable;
    :pswitch_b
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    .line 144
    .local v2, "mac":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 145
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xc

    if-ne v6, v7, :cond_2

    .line 147
    const-string v6, "str0"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    :goto_3
    const-string v6, "data0"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    const-string v6, "data1"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v6, v3}, Lcom/lsec/core/frame/app/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 149
    :cond_2
    const-string v6, "str0"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 151
    :cond_3
    const-string v6, "str0"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 159
    .end local v2    # "mac":Ljava/lang/String;
    :pswitch_c
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v10, :cond_4

    invoke-direct {p0, v5}, Lcom/syu/broadcast/AutoTestReceiver;->isNumeric(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 160
    invoke-static {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->setDevPin(Ljava/lang/String;)V

    .line 161
    const/4 v6, 0x0

    new-instance v7, Lcom/syu/broadcast/AutoTestReceiver$Runnable_UpdatePin;

    invoke-direct {v7, p0, v5}, Lcom/syu/broadcast/AutoTestReceiver$Runnable_UpdatePin;-><init>(Lcom/syu/broadcast/AutoTestReceiver;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 162
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getDiyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/syu/bt/App_Bt;->SaveConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v6, "data1"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    const-string v6, "str0"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    :goto_4
    const-string v6, "data0"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v6, v3}, Lcom/lsec/core/frame/app/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 166
    :cond_4
    const-string v6, "data1"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    const-string v6, "str0"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getDiyPin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 174
    :pswitch_d
    packed-switch v1, :pswitch_data_3

    .line 192
    :goto_5
    const-string v6, "data0"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v6, v3}, Lcom/lsec/core/frame/app/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 176
    :pswitch_e
    sget-object v6, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    if-ne v6, v10, :cond_5

    .line 177
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->dial()V

    .line 178
    const-string v6, "data1"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 180
    :cond_5
    const-string v6, "data1"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 184
    :pswitch_f
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isInCall()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 185
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    .line 186
    const-string v6, "data1"

    const/4 v7, 0x3

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 188
    :cond_6
    const-string v6, "data1"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_5

    .line 200
    :pswitch_10
    if-ltz v1, :cond_7

    const/16 v6, 0xa

    if-gt v1, v6, :cond_7

    .line 201
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v1}, Lcom/syu/app/ipc/Bt_IpcObj;->sendCmdVolBal(II)V

    .line 202
    const-string v6, "data1"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    const-string v6, "str0"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    :goto_6
    const-string v6, "data0"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v6, v3}, Lcom/lsec/core/frame/app/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 205
    :cond_7
    const-string v6, "data1"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string v6, "str0"

    sget v7, Lcom/syu/bt/App_Bt;->iPhoneMicSet:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 213
    :pswitch_11
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isPhoneConnect()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 214
    const-string v6, "data1"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    :goto_7
    const-string v6, "data0"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v6, v3}, Lcom/lsec/core/frame/app/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 216
    :cond_8
    const-string v6, "data1"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_7

    .line 226
    :pswitch_12
    if-eqz v5, :cond_9

    .line 227
    const-string v6, "name"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " 11 AutoTestReceiver setDevName  str0 = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-static {v5}, Lcom/syu/app/ipc/Bt_IpcObj;->setDevName(Ljava/lang/String;)V

    .line 229
    const/4 v6, 0x0

    new-instance v7, Lcom/syu/broadcast/AutoTestReceiver$Runnable_UpdatePin;

    invoke-direct {v7, p0, v5}, Lcom/syu/broadcast/AutoTestReceiver$Runnable_UpdatePin;-><init>(Lcom/syu/broadcast/AutoTestReceiver;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 230
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getDiyPin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/syu/bt/App_Bt;->SaveConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v6, "data1"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    const-string v6, "str0"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    :goto_8
    const-string v6, "data0"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v6, v3}, Lcom/lsec/core/frame/app/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 234
    :cond_9
    const-string v6, "data1"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    const-string v6, "str0"

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getDiyName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    .line 243
    :pswitch_13
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isPairing()Z

    move-result v6

    if-nez v6, :cond_a

    .line 244
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->downloadBook()V

    .line 245
    const-string v6, "data1"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    :goto_9
    const-string v6, "data0"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v6, v3}, Lcom/lsec/core/frame/app/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 247
    :cond_a
    const-string v6, "data1"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9

    .line 255
    :pswitch_14
    const/4 v6, 0x0

    new-instance v7, Lcom/syu/broadcast/AutoTestReceiver$Runnable_clearContact;

    invoke-direct {v7, p0, v0}, Lcom/syu/broadcast/AutoTestReceiver$Runnable_clearContact;-><init>(Lcom/syu/broadcast/AutoTestReceiver;I)V

    invoke-static {v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 258
    :pswitch_15
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isTalk()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 259
    const-string v6, "data1"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    :goto_a
    const-string v6, "data0"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    sget-object v6, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v6, v3}, Lcom/lsec/core/frame/app/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 261
    :cond_b
    const-string v6, "data1"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 85
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 117
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 174
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
