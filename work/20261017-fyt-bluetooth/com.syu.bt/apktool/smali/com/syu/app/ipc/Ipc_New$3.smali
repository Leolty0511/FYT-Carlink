.class Lcom/syu/app/ipc/Ipc_New$3;
.super Ljava/lang/Object;
.source "Ipc_New.java"

# interfaces
.implements Lcom/lsec/core/util/IUiNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/ipc/Ipc_New;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bIsRightAppId:Z

.field final synthetic this$0:Lcom/syu/app/ipc/Ipc_New;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Ipc_New;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_New$3;->this$0:Lcom/syu/app/ipc/Ipc_New;

    .line 2138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/app/ipc/Ipc_New$3;->bIsRightAppId:Z

    return-void
.end method


# virtual methods
.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2144
    const-string v3, "key"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 00 notify_Main updateCode = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    sparse-switch p1, :sswitch_data_0

    .line 2318
    :cond_0
    :goto_0
    return-void

    .line 2147
    :sswitch_0
    invoke-static {p2, v1}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2150
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2153
    const-string v3, "key"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 11 notify_Main ints[0] = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    aget v2, p2, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2166
    :pswitch_0
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 2167
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->scrollOk()V

    goto :goto_1

    .line 2156
    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :pswitch_1
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 2157
    .restart local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->scrollToPrev()V

    goto :goto_2

    .line 2161
    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :pswitch_2
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 2162
    .restart local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->scrollToNext()V

    goto :goto_3

    .line 2171
    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :pswitch_3
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 2172
    .restart local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->onKeyLeft()V

    goto :goto_4

    .line 2176
    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :pswitch_4
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 2177
    .restart local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->onKeyUp()V

    goto :goto_5

    .line 2181
    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :pswitch_5
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 2182
    .restart local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->onKeyRight()V

    goto :goto_6

    .line 2186
    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :pswitch_6
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 2187
    .restart local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->onKeyDown()V

    goto :goto_7

    .line 2191
    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :pswitch_7
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v2}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2192
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v3, "bt_state_using"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2196
    :cond_1
    sget-object v2, Lcom/syu/broadcast/MyService;->mRunnable_goVoiceSearchContact:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2199
    :pswitch_8
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 2200
    .restart local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->DialByKey()V

    goto :goto_8

    .line 2207
    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :sswitch_1
    const-string v3, "key"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " ** 00  U_APP_ID = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->appId()V

    .line 2209
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2210
    invoke-static {p2, v1}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2211
    iget-boolean v1, p0, Lcom/syu/app/ipc/Ipc_New$3;->bIsRightAppId:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRightAppId()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2212
    const-string v1, "pv"

    const-string v3, " ** 00 U_APP_ID moveTaskToBack "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2213
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2227
    :cond_3
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRightAppId()Z

    move-result v1

    iput-boolean v1, p0, Lcom/syu/app/ipc/Ipc_New$3;->bIsRightAppId:Z

    .line 2228
    iget-boolean v1, p0, Lcom/syu/app/ipc/Ipc_New$3;->bIsRightAppId:Z

    if-nez v1, :cond_4

    .line 2229
    const/16 v1, 0x2713

    sput v1, Lcom/syu/bt/App_Bt;->sPage:I

    .line 2230
    sget v1, Lcom/syu/bt/App_Bt;->sPage:I

    sput v1, Lcom/syu/bt/App_Bt;->sPageBak:I

    .line 2231
    sput v2, Lcom/syu/bt/App_Bt;->sBackFlag:I

    .line 2233
    :cond_4
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bMediaManager:Z

    if-eqz v1, :cond_0

    .line 2234
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isAppIdBtAv()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2235
    sget-object v1, Lcom/syu/bt/MediaManager;->mInstance:Lcom/syu/bt/MediaManager;

    invoke-virtual {v1}, Lcom/syu/bt/MediaManager;->registerMediaButton()V

    goto/16 :goto_0

    .line 2213
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 2214
    .restart local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is7731()Z

    move-result v3

    if-nez v3, :cond_6

    sget v3, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    :cond_6
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-eqz v3, :cond_7

    .line 2215
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->moveTaskToBack()V

    goto :goto_9

    .line 2217
    :cond_7
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->isHalf()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2218
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->moveTaskToBack()V

    goto :goto_9

    .line 2237
    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :cond_8
    sget-object v1, Lcom/syu/bt/MediaManager;->mInstance:Lcom/syu/bt/MediaManager;

    invoke-virtual {v1}, Lcom/syu/bt/MediaManager;->unregisterMediaButton()V

    goto/16 :goto_0

    .line 2241
    :sswitch_2
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v1, v1, p1

    invoke-static {p1, v1}, Lcom/syu/app/ipc/Bt_IpcObj;->mcuOn(II)V

    goto/16 :goto_0

    .line 2244
    :sswitch_3
    if-eqz p2, :cond_0

    array-length v3, p2

    if-lez v3, :cond_0

    .line 2245
    aget v3, p2, v2

    if-ne v3, v1, :cond_a

    .line 2246
    sput-boolean v1, Lcom/syu/bt/App_Bt;->bBtAcc_On:Z

    .line 2248
    sget-object v3, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v2, v3, v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    .line 2249
    const/16 v2, 0x271a

    sput v2, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 2252
    :cond_9
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v2, v2, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnable_scanDB:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-static {v1, v2, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 2254
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2255
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v2, v2, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnableStartPlayAv:Ljava/lang/Runnable;

    invoke-static {v2}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 2256
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v2, v2, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnableStartPlayAv:Ljava/lang/Runnable;

    const-wide/16 v4, 0xfa0

    invoke-static {v1, v2, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 2259
    :cond_a
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v2, "page_id"

    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v1, v2, v3}, Lcom/lsec/core/util/MySharePreference2;->saveIntValue(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2263
    :sswitch_4
    if-eqz p2, :cond_0

    array-length v3, p2

    if-lez v3, :cond_0

    .line 2264
    aget v3, p2, v2

    if-ne v3, v1, :cond_b

    .line 2265
    sput-boolean v1, Lcom/syu/bt/App_Bt;->bBackCarFlag:Z

    .line 2266
    sget v1, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    .line 2267
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    goto/16 :goto_0

    .line 2270
    :cond_b
    sput-boolean v2, Lcom/syu/bt/App_Bt;->bBackCarFlag:Z

    goto/16 :goto_0

    .line 2275
    :sswitch_5
    if-eqz p4, :cond_0

    array-length v1, p4

    if-lez v1, :cond_0

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isTZYConfig()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2276
    aget-object v1, p4, v2

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/bt/util/BTUtil;->ii:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2277
    invoke-static {}, Lcom/myspec/MyClass;->getInstance()Lcom/myspec/MyClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/myspec/MyClass;->initCust()V

    goto/16 :goto_0

    .line 2283
    :sswitch_6
    if-eqz p2, :cond_0

    array-length v3, p2

    if-lez v3, :cond_0

    .line 2284
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isZhangConfig()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2285
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isInCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2286
    const-string v3, "U_NAVI_TOP"

    invoke-static {v3}, Lcom/syu/bt/util/BTUtil;->writeLogToFile(Ljava/lang/String;)V

    .line 2287
    const-string v3, "gdy666"

    const-string v4, " 000 Ipc_New U_NAVI_TOP "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    goto/16 :goto_0

    .line 2295
    :sswitch_7
    invoke-static {p2, v1}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2296
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "BT_NEW"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2297
    aget v1, p2, v2

    sput v1, Lcom/syu/bt/App_Bt;->mColorType:I

    .line 2298
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/syu/bt/App_Bt;->setDayOrNight(I)V

    goto/16 :goto_0

    .line 2299
    :cond_c
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bUI_NightColour:Z

    if-eqz v1, :cond_0

    .line 2300
    aget v1, p2, v2

    sput v1, Lcom/syu/bt/App_Bt;->mColorType:I

    .line 2301
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    aget v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/syu/bt/App_Bt;->setDayOrNight(I)V

    goto/16 :goto_0

    .line 2307
    :sswitch_8
    invoke-static {p2, v1}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2308
    aget v3, p2, v2

    if-lez v3, :cond_d

    :goto_a
    sput-boolean v1, Lcom/syu/bt/App_Bt;->bCarLinkAutoConnect:Z

    .line 2309
    const-string v1, "gdy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 22 recv 166  bCarLinkAutoConnect = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/syu/bt/App_Bt;->bCarLinkAutoConnect:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 2311
    .restart local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    aget v3, p2, v2

    invoke-interface {v0, v3}, Lcom/syu/bt/InterfaceBt;->updateCarplayAuto(I)V

    goto :goto_b

    .end local v0    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :cond_d
    move v1, v2

    .line 2308
    goto :goto_a

    .line 2145
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x4 -> :sswitch_7
        0xc -> :sswitch_4
        0x22 -> :sswitch_5
        0x32 -> :sswitch_3
        0x3c -> :sswitch_0
        0x71 -> :sswitch_6
        0xa6 -> :sswitch_8
    .end sparse-switch

    .line 2154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
