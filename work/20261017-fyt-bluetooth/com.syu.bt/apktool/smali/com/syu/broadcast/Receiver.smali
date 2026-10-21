.class public Lcom/syu/broadcast/Receiver;
.super Landroid/content/BroadcastReceiver;
.source "Receiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;
    }
.end annotation


# static fields
.field public static final ACTION_AMAPASSIST_CMD:Ljava/lang/String; = "AMAPASSIST_STANDARD_BROADCAST_CMD"

.field public static final ACTION_BTSEND_CMD:Ljava/lang/String; = "BT_STANDARD_BROADCAST_CMD"

.field public static final REMOVE_BROADCAST:Ljava/lang/String; = "com.fyt.systemui.remove"


# instance fields
.field mRunnableHandleAmapAssistCmd:Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syu/broadcast/Receiver;->mRunnableHandleAmapAssistCmd:Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;

    .line 22
    return-void
.end method

.method private handleRemoveTask(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 115
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkg"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bChangeAppIdWhenTalking:Z

    if-eqz v0, :cond_3

    .line 117
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v0, v0, v3

    if-eq v0, v4, :cond_0

    .line 118
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v0, v0, v3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 119
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v0, v0, v3

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    sget v0, Lcom/syu/bt/App_Bt;->mBtType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    const-string v0, "null"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** 00 handleRemoveTask APP_ID_NULL U_APP_ID = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bBtNoAV:Z

    if-eqz v0, :cond_2

    .line 124
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v0, v0, v3

    if-eq v0, v4, :cond_1

    .line 125
    invoke-static {v3}, Lcom/lsec/core/ipc/module/main/Main;->requestAppId(I)V

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    invoke-static {v3}, Lcom/lsec/core/ipc/module/main/Main;->requestAppId(I)V

    goto :goto_0

    .line 130
    :cond_3
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdNull()V

    goto :goto_0
.end method

.method private handleSpeechCmd(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 154
    const-string v4, "cmdCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 155
    const-string v4, "number"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "number":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 157
    invoke-static {v3}, Lcom/syu/bt/util/SpeechUtil;->funcDialNumber(Ljava/lang/String;)V

    .line 192
    .end local v3    # "number":Ljava/lang/String;
    :goto_0
    return-void

    .line 159
    .restart local v3    # "number":Ljava/lang/String;
    :cond_0
    const-string v4, "contact"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "contact":Ljava/lang/String;
    invoke-static {v1}, Lcom/syu/bt/util/SpeechUtil;->funcDialName(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v1    # "contact":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :cond_1
    const-string v4, "cmdCode"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 165
    .local v0, "cmdCode":I
    const/4 v2, 0x0

    .line 166
    .local v2, "msgStr":Ljava/lang/String;
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 188
    :sswitch_0
    invoke-static {}, Lcom/syu/bt/util/SpeechUtil;->funcError()V

    goto :goto_0

    .line 168
    :sswitch_1
    const-string v4, "number"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {v2}, Lcom/syu/bt/util/SpeechUtil;->funcDialNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :sswitch_2
    const-string v4, "contact"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {v2}, Lcom/syu/bt/util/SpeechUtil;->funcDialName(Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :sswitch_3
    invoke-static {}, Lcom/syu/bt/util/SpeechUtil;->funcAnswer()V

    goto :goto_0

    .line 179
    :sswitch_4
    invoke-static {}, Lcom/syu/bt/util/SpeechUtil;->funcHangUp()V

    goto :goto_0

    .line 182
    :sswitch_5
    invoke-static {}, Lcom/syu/bt/util/SpeechUtil;->funcBindBt()V

    goto :goto_0

    .line 185
    :sswitch_6
    invoke-static {}, Lcom/syu/bt/util/SpeechUtil;->funcUnBindBt()V

    goto :goto_0

    .line 166
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x14 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x18 -> :sswitch_5
        0x19 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public handleAmapAssistCmd(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 136
    const-string v2, "CMD_DESC"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CMD_TYPE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    const-string v2, "CMD_TYPE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 138
    .local v1, "type":I
    const/16 v2, 0x2710

    if-ne v1, v2, :cond_0

    .line 139
    const-string v2, "CMD_DESC"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "strCmd":Ljava/lang/String;
    const-string v2, "\u6b22\u8fce\u4f7f\u7528\u9ad8\u5fb7\u8bed\u97f3\u52a9\u624b!"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/syu/bt/App_Bt;->showFloatBtn(Z)V

    .line 151
    .end local v0    # "strCmd":Ljava/lang/String;
    .end local v1    # "type":I
    :cond_0
    :goto_0
    return-void

    .line 142
    .restart local v0    # "strCmd":Ljava/lang/String;
    .restart local v1    # "type":I
    :cond_1
    const-string v2, "\u6253\u7535\u8bdd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u547c\u53eb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 143
    const-string v2, "\u62e8\u53f7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u62e8\u6253"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    :cond_2
    const-string v2, "gdy666"

    const-string v3, " 003 Receiver handleAmapAssistCmd "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    .line 146
    const-string v2, "handleAmapAssistCmd"

    invoke-static {v2}, Lcom/syu/bt/util/BTUtil;->writeLogToFile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "action":Ljava/lang/String;
    const-string v4, "com.syu.bt.local.cmd"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 53
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 55
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0, v1}, Lcom/syu/broadcast/Receiver;->handleSpeechCmd(Landroid/os/Bundle;)V

    .line 91
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_2
    :goto_1
    const-string v4, "gdy61"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " Receiver action = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ** mIsOldService = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-boolean v4, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v4, :cond_0

    .line 94
    const/4 v2, -0x1

    .line 95
    .local v2, "cmd":I
    const-string v4, "com.syu.bt.PageAv"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 96
    const/4 v2, 0x4

    .line 106
    :cond_3
    :goto_2
    if-ltz v2, :cond_0

    .line 107
    invoke-static {v2}, Lcom/syu/broadcast/MyService;->handleSeverCmd(I)V

    goto :goto_0

    .line 56
    .end local v2    # "cmd":I
    :cond_4
    const-string v4, "AMAPASSIST_STANDARD_BROADCAST_CMD"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 58
    .restart local v1    # "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    iget-object v4, p0, Lcom/syu/broadcast/Receiver;->mRunnableHandleAmapAssistCmd:Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;

    if-eqz v4, :cond_5

    .line 62
    iget-object v4, p0, Lcom/syu/broadcast/Receiver;->mRunnableHandleAmapAssistCmd:Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;

    invoke-virtual {v4}, Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;->stopRun()V

    .line 63
    iget-object v4, p0, Lcom/syu/broadcast/Receiver;->mRunnableHandleAmapAssistCmd:Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;

    invoke-static {v4}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 64
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/syu/broadcast/Receiver;->mRunnableHandleAmapAssistCmd:Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;

    .line 67
    :cond_5
    new-instance v4, Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;

    invoke-direct {v4, p0, v1}, Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;-><init>(Lcom/syu/broadcast/Receiver;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/syu/broadcast/Receiver;->mRunnableHandleAmapAssistCmd:Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;

    .line 68
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/syu/broadcast/Receiver;->mRunnableHandleAmapAssistCmd:Lcom/syu/broadcast/Receiver$RunnableHandleAmapAssistCmd;

    invoke-static {v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto :goto_1

    .line 69
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_6
    const-string v4, "com.fyt.systemui.remove"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 71
    .restart local v1    # "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 74
    invoke-direct {p0, v1}, Lcom/syu/broadcast/Receiver;->handleRemoveTask(Landroid/os/Bundle;)V

    goto :goto_1

    .line 75
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_7
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 76
    invoke-static {}, Lcom/syu/bt/util/BtLinkTestUtil;->getInstance()Lcom/syu/bt/util/BtLinkTestUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/syu/bt/util/BtLinkTestUtil;->testLink()V

    goto/16 :goto_1

    .line 77
    :cond_8
    const-string v4, "com.bdxh.bc.send"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 79
    .restart local v1    # "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 82
    invoke-static {}, Lcom/syu/bt/connect_bc/BCHandler;->getInstance()Lcom/syu/bt/connect_bc/BCHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/syu/bt/connect_bc/BCHandler;->handleBCCmd(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 83
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_9
    const-string v4, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 84
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ACTION_NEW_OUTGOING_CALL: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/syu/broadcast/Receiver;->getResultData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 84
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 86
    :cond_a
    const-string v4, "launcher3.setcolor"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    sget-object v4, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/syu/bt/InterfaceBt;

    .line 89
    .local v3, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v3}, Lcom/syu/bt/InterfaceBt;->resetColor()V

    goto :goto_3

    .line 97
    .end local v3    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    .restart local v2    # "cmd":I
    :cond_b
    const-string v4, "com.syu.bt.PageAvForce"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 98
    const/4 v2, 0x5

    goto/16 :goto_2

    .line 99
    :cond_c
    const-string v4, "com.syu.bt.PagePhone"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 100
    const/4 v2, 0x3

    goto/16 :goto_2

    .line 101
    :cond_d
    const-string v4, "com.syu.bt.PagePhoneByKey"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 102
    const/4 v2, 0x2

    goto/16 :goto_2

    .line 103
    :cond_e
    const-string v4, "com.syu.bt.ShowPipPhone"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    const/4 v2, 0x1

    goto/16 :goto_2
.end method
