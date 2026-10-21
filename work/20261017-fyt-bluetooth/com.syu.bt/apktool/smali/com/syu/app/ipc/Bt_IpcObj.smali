.class public Lcom/syu/app/ipc/Bt_IpcObj;
.super Ljava/lang/Object;
.source "Bt_IpcObj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/app/ipc/Bt_IpcObj$PairLink;
    }
.end annotation


# static fields
.field public static bAppIdBefore:I

.field public static bIsAppIdBtAv:Z

.field public static sPhoneAddrDelete:Ljava/lang/String;

.field public static sPhoneAddrRead:Ljava/lang/String;

.field public static sPhoneAddrRead1:Ljava/lang/String;

.field public static sPhoneAddrReadHistory:Ljava/lang/String;

.field public static sPhoneAddrReadHistory2:Ljava/lang/String;

.field public static sPhoneAddrWrite:Ljava/lang/String;


# instance fields
.field mIpc_786:Lcom/syu/app/ipc/Ipc_786;

.field mIpc_New:Lcom/syu/app/ipc/Ipc_New;

.field mPairLink:Lcom/syu/app/ipc/Bt_IpcObj$PairLink;

.field public mRunnableQueryContact:Ljava/lang/Runnable;

.field public mRunnableStartPlayAv:Ljava/lang/Runnable;

.field mRunnable_ClearContactAndHistory_Disp:Ljava/lang/Runnable;

.field public mRunnable_scanDB:Ljava/lang/Runnable;

.field page_Pair_p:Lcom/syu/bt/page/Page_Pair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syu/app/ipc/Bt_IpcObj;->bIsAppIdBtAv:Z

    .line 50
    const/4 v0, -0x1

    sput v0, Lcom/syu/app/ipc/Bt_IpcObj;->bAppIdBefore:I

    .line 680
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead:Ljava/lang/String;

    .line 681
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead1:Ljava/lang/String;

    .line 682
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrReadHistory:Ljava/lang/String;

    .line 683
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrWrite:Ljava/lang/String;

    .line 684
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrDelete:Ljava/lang/String;

    .line 687
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrReadHistory2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/syu/app/ipc/Ipc_786;

    invoke-direct {v0}, Lcom/syu/app/ipc/Ipc_786;-><init>()V

    iput-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    .line 53
    new-instance v0, Lcom/syu/app/ipc/Ipc_New;

    invoke-direct {v0}, Lcom/syu/app/ipc/Ipc_New;-><init>()V

    iput-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    .line 655
    new-instance v0, Lcom/syu/app/ipc/Bt_IpcObj$1;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Bt_IpcObj$1;-><init>(Lcom/syu/app/ipc/Bt_IpcObj;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnable_ClearContactAndHistory_Disp:Ljava/lang/Runnable;

    .line 689
    new-instance v0, Lcom/syu/app/ipc/Bt_IpcObj$2;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Bt_IpcObj$2;-><init>(Lcom/syu/app/ipc/Bt_IpcObj;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnable_scanDB:Ljava/lang/Runnable;

    .line 861
    new-instance v0, Lcom/syu/app/ipc/Bt_IpcObj$3;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Bt_IpcObj$3;-><init>(Lcom/syu/app/ipc/Bt_IpcObj;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnableStartPlayAv:Ljava/lang/Runnable;

    .line 873
    new-instance v0, Lcom/syu/app/ipc/Bt_IpcObj$4;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Bt_IpcObj$4;-><init>(Lcom/syu/app/ipc/Bt_IpcObj;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnableQueryContact:Ljava/lang/Runnable;

    .line 923
    new-instance v0, Lcom/syu/app/ipc/Bt_IpcObj$PairLink;

    invoke-direct {v0, p0}, Lcom/syu/app/ipc/Bt_IpcObj$PairLink;-><init>(Lcom/syu/app/ipc/Bt_IpcObj;)V

    iput-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mPairLink:Lcom/syu/app/ipc/Bt_IpcObj$PairLink;

    .line 48
    return-void
.end method

.method public static LongClick0()V
    .locals 1

    .prologue
    .line 474
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 475
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->LongClick0()V

    .line 478
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->LongClick0()V

    goto :goto_0
.end method

.method public static MicSwitch()V
    .locals 1

    .prologue
    .line 907
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isTalk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->micSwitch()V

    .line 909
    :cond_0
    return-void
.end method

.method public static MuteSwitch(I)V
    .locals 0
    .param p0, "state"    # I

    .prologue
    .line 912
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->muteSwitch(I)V

    .line 913
    return-void
.end method

.method public static Reset()V
    .locals 1

    .prologue
    .line 175
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->Reset()V

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->Reset()V

    goto :goto_0
.end method

.method public static SetJumpNavi()V
    .locals 2

    .prologue
    .line 1146
    sget v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 1147
    sget v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1148
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->SetJumpNavi()V

    .line 1149
    :cond_1
    return-void
.end method

.method public static SetRingLevel(I)V
    .locals 2
    .param p0, "RingLevel"    # I

    .prologue
    .line 1141
    sget v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1142
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->SetRingLevel(I)V

    .line 1143
    :cond_0
    return-void
.end method

.method public static VoiceSwitch()V
    .locals 3

    .prologue
    .line 901
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ** 00  VoiceSwitch  sPhone_mac = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/syu/bt/App_Bt;->sPhone_callin_mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isTalk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hfp()V

    .line 904
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/syu/app/ipc/Bt_IpcObj;)V
    .locals 0

    .prologue
    .line 881
    invoke-direct {p0}, Lcom/syu/app/ipc/Bt_IpcObj;->scanDB()V

    return-void
.end method

.method public static avCut()V
    .locals 0

    .prologue
    .line 345
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->avCut()V

    .line 346
    return-void
.end method

.method public static avLink()V
    .locals 0

    .prologue
    .line 349
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->avLink()V

    .line 350
    return-void
.end method

.method public static avNext()V
    .locals 1

    .prologue
    .line 307
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 308
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->avNext()V

    .line 311
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->avNext()V

    goto :goto_0
.end method

.method public static avPause()V
    .locals 1

    .prologue
    .line 331
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 332
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->avPause()V

    .line 335
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->avPause()V

    goto :goto_0
.end method

.method public static avPlay()V
    .locals 1

    .prologue
    .line 323
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 324
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->avPlay()V

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->avPlay()V

    goto :goto_0
.end method

.method public static avPlayPause()V
    .locals 1

    .prologue
    .line 315
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->avPlayPause()V

    .line 319
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->avPlayPause()V

    goto :goto_0
.end method

.method public static avPrev()V
    .locals 3

    .prologue
    .line 298
    const-string v0, "gdyy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  00  avPrev mIsOldService = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 300
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->avPrev()V

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->avPrev()V

    goto :goto_0
.end method

.method public static avStop()V
    .locals 1

    .prologue
    .line 338
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 339
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->avStop()V

    .line 342
    :goto_0
    return-void

    .line 341
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->avStop()V

    goto :goto_0
.end method

.method public static clearKey(Z)V
    .locals 1
    .param p0, "isLongClick"    # Z

    .prologue
    .line 189
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_786;->clearKey(Z)V

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->clearKey(Z)V

    goto :goto_0
.end method

.method public static connectDevice(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 394
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 395
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_786;->connectDevice(Ljava/lang/String;)V

    .line 398
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->connectDevice(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static connectOBD(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 387
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 388
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_786;->connectOBD(Ljava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->connectOBD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static cut()V
    .locals 1

    .prologue
    .line 203
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->cut()V

    .line 207
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->cut()V

    goto :goto_0
.end method

.method public static cut(Ljava/lang/String;)V
    .locals 1
    .param p0, "mac"    # Ljava/lang/String;

    .prologue
    .line 209
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 210
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->cut(Ljava/lang/String;)V

    .line 211
    :cond_0
    return-void
.end method

.method public static deleteConnectedDevice(Ljava/lang/String;)V
    .locals 0
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 401
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->deleteConnectedDevice(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public static dial()V
    .locals 1

    .prologue
    .line 225
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->dial()V

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->dial()V

    goto :goto_0
.end method

.method public static dial(Ljava/lang/String;)V
    .locals 1
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 232
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 233
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->dial(Ljava/lang/String;)V

    .line 234
    :cond_0
    return-void
.end method

.method public static downloadBook()V
    .locals 3

    .prologue
    .line 269
    const-string v0, "down"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " --- downloadPhoneBook 001  App_Bt.bDownloading = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bDownloading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    const/16 v1, 0x9c4

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/BTUtil;->isFastSendCMD(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bDownloading:Z

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x1

    sput-boolean v0, Lcom/syu/bt/App_Bt;->bShowLoading:Z

    .line 277
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_2

    .line 278
    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v0, :cond_1

    .line 279
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 282
    :goto_0
    sget-object v0, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    sget v1, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/syu/app/ipc/Ipc_New;->downloadBook(Ljava/lang/String;)V

    .line 295
    :cond_0
    :goto_1
    return-void

    .line 281
    :cond_1
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContactDownload2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 285
    :cond_2
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 286
    const-string v0, "down"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " --- downloadPhoneBook 002  mIsOldService = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_3

    .line 288
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->downloadBook()V

    goto :goto_1

    .line 290
    :cond_3
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->downloadBook()V

    goto :goto_1
.end method

.method public static filterNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "("

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChoiceAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1068
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sChoiceAddr:Ljava/lang/String;

    return-object v0
.end method

.method public static getDevName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1084
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    return-object v0
.end method

.method public static getDevPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1080
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1076
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    return-object v0
.end method

.method public static hang()V
    .locals 1

    .prologue
    .line 218
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->hang()V

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hang()V

    goto :goto_0
.end method

.method public static hangIpPhone()V
    .locals 1

    .prologue
    .line 213
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 214
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hangIpPhone()V

    .line 215
    :cond_0
    return-void
.end method

.method public static hfp()V
    .locals 1

    .prologue
    .line 244
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->hfp()V

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->hfp()V

    goto :goto_0
.end method

.method public static isAppIdBtAv()Z
    .locals 1

    .prologue
    .line 460
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 461
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isAppIdBtAv()Z

    move-result v0

    .line 463
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isAppIdBtAv()Z

    move-result v0

    goto :goto_0
.end method

.method public static isAppIdBtPhone()Z
    .locals 1

    .prologue
    .line 467
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 468
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isAppIdBtPhone()Z

    move-result v0

    .line 470
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isAppIdBtPhone()Z

    move-result v0

    goto :goto_0
.end method

.method public static isConnect()Z
    .locals 1

    .prologue
    .line 446
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 447
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isConnect()Z

    move-result v0

    .line 449
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isConnect()Z

    move-result v0

    goto :goto_0
.end method

.method public static isDisConnect()Z
    .locals 1

    .prologue
    .line 453
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 454
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isDisConnect()Z

    move-result v0

    .line 456
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isDisConnect()Z

    move-result v0

    goto :goto_0
.end method

.method public static isInCall()Z
    .locals 1

    .prologue
    .line 422
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bHideBtDial:Z

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 428
    :goto_0
    return v0

    .line 425
    :cond_0
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_1

    .line 426
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isInCall()Z

    move-result v0

    goto :goto_0

    .line 428
    :cond_1
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isInCall()Z

    move-result v0

    goto :goto_0
.end method

.method public static isPairing()Z
    .locals 1

    .prologue
    .line 415
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 416
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isPairing()Z

    move-result v0

    .line 418
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isPairing()Z

    move-result v0

    goto :goto_0
.end method

.method public static isRightAppId()Z
    .locals 1

    .prologue
    .line 548
    sget v0, Lcom/syu/bt/App_Bt;->sPage:I

    packed-switch v0, :pswitch_data_0

    .line 552
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isAppIdBtPhone()Z

    move-result v0

    :goto_0
    return v0

    .line 550
    :pswitch_0
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isAppIdBtAv()Z

    move-result v0

    goto :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x271a
        :pswitch_0
    .end packed-switch
.end method

.method public static isRing()Z
    .locals 1

    .prologue
    .line 439
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 440
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isRing()Z

    move-result v0

    .line 442
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isRing()Z

    move-result v0

    goto :goto_0
.end method

.method public static isStateConnect()Z
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isStateConnect()Z

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isStateConnect()Z

    move-result v0

    goto :goto_0
.end method

.method public static isStateDialAble()Z
    .locals 1

    .prologue
    .line 145
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isStateDialAble()Z

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isStateDialAble()Z

    move-result v0

    goto :goto_0
.end method

.method public static isStateDisconnect()Z
    .locals 1

    .prologue
    .line 131
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isStateDisconnect()Z

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isStateDisconnect()Z

    move-result v0

    goto :goto_0
.end method

.method public static isTalk()Z
    .locals 1

    .prologue
    .line 432
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 433
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->isTalk()Z

    move-result v0

    .line 435
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->isTalk()Z

    move-result v0

    goto :goto_0
.end method

.method public static itemDial(Ljava/lang/String;)V
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "con3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 22 itemDial number = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsOldService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isStateConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_1

    .line 114
    invoke-static {p0}, Lcom/syu/app/ipc/Bt_IpcObj;->setNum(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->dial()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const-string v0, "con3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 22 itemDial Contact_ListView isStateConnect = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isStateConnect()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {p0}, Lcom/syu/app/ipc/Bt_IpcObj;->dial(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static link()V
    .locals 1

    .prologue
    .line 196
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->link()V

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->link()V

    goto :goto_0
.end method

.method public static linkCut()V
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isStateDisconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->link()V

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    goto :goto_0
.end method

.method public static mcuOn(II)V
    .locals 1
    .param p0, "updateCode"    # I
    .param p1, "value"    # I

    .prologue
    .line 557
    if-nez p1, :cond_1

    .line 558
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isStateDisconnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 561
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->link()V

    goto :goto_0
.end method

.method public static redial()V
    .locals 1

    .prologue
    .line 237
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 238
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->redial()V

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->redial()V

    goto :goto_0
.end method

.method private scanDB()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 882
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v1, "db-operation-contact"

    iget-object v2, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mRunnableQueryContact:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 883
    invoke-static {}, Lcom/syu/bt/App_Bt;->queryCallLog()V

    .line 884
    return-void
.end method

.method public static sendHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "item1"    # Ljava/lang/String;
    .param p1, "item2"    # Ljava/lang/String;
    .param p2, "item3"    # Ljava/lang/String;
    .param p3, "item4"    # Ljava/lang/String;
    .param p4, "item5"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 260
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x34

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public static sendName(Ljava/lang/String;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x35

    const/4 v3, 0x0

    .line 253
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v0, v4, v3, v3, v3}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 257
    :goto_0
    return-void

    .line 256
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v4, v3, v3, v1}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendPathToUpdateBt(Ljava/lang/String;)V
    .locals 1
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 917
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    invoke-static {p0}, Lcom/syu/app/ipc/Bt_IpcObj;->updateBt(Ljava/lang/String;)V

    .line 919
    :cond_0
    return-void
.end method

.method public static setAutoAnswer(Z)V
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 514
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 515
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_786;->setAutoAnswer(Z)V

    .line 518
    :goto_0
    return-void

    .line 517
    :cond_0
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->setAutoAnswer(Z)V

    goto :goto_0
.end method

.method public static setBtSwitch(Z)V
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 1152
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1153
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->setBtSwitch(Z)V

    .line 1154
    :cond_0
    return-void
.end method

.method public static setCarLinkAutoConnect(Z)V
    .locals 0
    .param p0, "auto"    # Z

    .prologue
    .line 354
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->setCarLinkAutoConnect(Z)V

    .line 355
    return-void
.end method

.method public static setChoiceAddr(Ljava/lang/String;)V
    .locals 0
    .param p0, "strAddr"    # Ljava/lang/String;

    .prologue
    .line 1072
    sput-object p0, Lcom/lsec/core/ipc/module/main/Bt;->sChoiceAddr:Ljava/lang/String;

    .line 1073
    return-void
.end method

.method public static setDevName(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v1, "name_diy"

    invoke-virtual {v0, v1, p0}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 161
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_786;->setDevName(Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->setDevName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDevPin(Ljava/lang/String;)V
    .locals 2
    .param p0, "pin"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v1, "pin_diy"

    invoke-virtual {v0, v1, p0}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_786;->setDevPin(Ljava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->setDevPin(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setNum(Ljava/lang/String;)V
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 152
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_786;->setNum(Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->setNum(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setNumKey(I)V
    .locals 1
    .param p0, "key"    # I

    .prologue
    .line 182
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_786;->setNumKey(I)V

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->setNumKey(I)V

    goto :goto_0
.end method

.method public static startDiscover()V
    .locals 1

    .prologue
    .line 358
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 359
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->startDiscover()V

    .line 362
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->startDiscover()V

    goto :goto_0
.end method

.method public static stopDiscover()V
    .locals 1

    .prologue
    .line 365
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 366
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->stopDiscover()V

    .line 369
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->stopDiscover()V

    goto :goto_0
.end method

.method public static test(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 408
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 409
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_786;->test(Ljava/lang/String;)V

    .line 412
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->test(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateBt(Ljava/lang/String;)V
    .locals 1
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 264
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 265
    invoke-static {p0}, Lcom/syu/app/ipc/Ipc_New;->updateBt(Ljava/lang/String;)V

    .line 266
    :cond_0
    return-void
.end method


# virtual methods
.method public DisableGainSpec()V
    .locals 1

    .prologue
    .line 1162
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->DisableGainSpec()V

    .line 1164
    :cond_0
    return-void
.end method

.method public EnableGainSpec()V
    .locals 1

    .prologue
    .line 1157
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->EnableGainSpec()V

    .line 1159
    :cond_0
    return-void
.end method

.method public FuncDial()V
    .locals 1

    .prologue
    .line 894
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_786;->FuncDial()V

    .line 898
    :goto_0
    return-void

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->FuncDial()V

    goto :goto_0
.end method

.method public FuncDialIpPhone()Z
    .locals 1

    .prologue
    .line 1167
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->FuncDialIpPhone()Z

    move-result v0

    .line 1170
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public FuncPairLink(Lcom/syu/bt/page/Page_Pair;)V
    .locals 8
    .param p1, "page_Pair"    # Lcom/syu/bt/page/Page_Pair;

    .prologue
    const/4 v5, 0x1

    .line 942
    const-string v4, "c3"

    const-string v6, " 00 FuncPairLink "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    if-eqz p1, :cond_2

    .line 946
    iget-boolean v4, p1, Lcom/syu/bt/page/Page_Pair;->isStartDiscovey:Z

    if-eqz v4, :cond_2

    .line 947
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->stopDiscover()V

    .line 949
    :cond_2
    const-string v4, "hfp3"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " 11 FuncPairLink Bt.sPhoneAddr = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v4, :cond_0

    .line 952
    :cond_4
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/syu/bt/page/Page_Pair;->getChoiceName(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 954
    .local v2, "entity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v4, "hfp3"

    const-string v6, " 33 FuncPairLink "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    if-eqz v2, :cond_0

    .line 957
    const/16 v4, 0x28da

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 958
    const/16 v4, 0x28e5

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 962
    .local v3, "strName":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    .line 963
    .local v0, "bPopPwd":Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 964
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v6, 0x5

    if-ne v4, v6, :cond_9

    .line 965
    const-string v4, "OBD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "gooddriver"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const/4 v0, 0x0

    .line 971
    :cond_5
    :goto_2
    sput-boolean v0, Lcom/syu/bt/App_Bt;->bPopObdFlag:Z

    .line 972
    if-eqz v0, :cond_b

    .line 973
    iput-boolean v5, p1, Lcom/syu/bt/page/Page_Pair;->isSelfLink:Z

    .line 975
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is7731()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->is7862()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_6
    sget v4, Lcom/syu/bt/App_Bt;->mBtType:I

    if-nez v4, :cond_a

    .line 976
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/syu/bt/util/BTUtil;->connect7731OBD([B)V

    goto/16 :goto_0

    .line 960
    .end local v0    # "bPopPwd":Z
    .end local v3    # "strName":Ljava/lang/String;
    :cond_7
    const/16 v4, 0x28db

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3    # "strName":Ljava/lang/String;
    goto :goto_1

    .restart local v0    # "bPopPwd":Z
    :cond_8
    move v0, v5

    .line 965
    goto :goto_2

    .line 967
    :cond_9
    const-string v4, "OBD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_2

    .line 978
    :cond_a
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Pair;->popPwd()V

    goto/16 :goto_0

    .line 981
    :cond_b
    const/4 v1, 0x0

    .line 982
    .local v1, "delay":I
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 983
    sget-boolean v4, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-nez v4, :cond_c

    .line 984
    const/16 v1, 0x7d0

    .line 985
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    .line 989
    :cond_c
    new-instance v4, Lcom/syu/app/ipc/Bt_IpcObj$5;

    invoke-direct {v4, p0, p1}, Lcom/syu/app/ipc/Bt_IpcObj$5;-><init>(Lcom/syu/app/ipc/Bt_IpcObj;Lcom/syu/bt/page/Page_Pair;)V

    .line 998
    int-to-long v6, v1

    .line 989
    invoke-static {v5, v4, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_0
.end method

.method public FuncPairLink(Lcom/syu/bt/page/Page_Set;)V
    .locals 6
    .param p1, "Set"    # Lcom/syu/bt/page/Page_Set;

    .prologue
    const/4 v3, 0x1

    .line 1036
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1039
    :cond_1
    sput-boolean v3, Lcom/syu/bt/App_Bt;->bSelfLink:Z

    .line 1040
    sget-boolean v4, Lcom/syu/bt/page/Page_Set;->isSetStartDiscovey:Z

    if-eqz v4, :cond_2

    .line 1041
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->stopDiscover()V

    .line 1043
    :cond_2
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1044
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    .line 1046
    :cond_3
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1048
    :cond_4
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v4

    .line 1047
    invoke-virtual {p1, v4}, Lcom/syu/bt/page/Page_Set;->getChoiceName(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 1049
    .local v1, "entity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1050
    const/16 v4, 0x28f0

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1052
    .local v2, "strName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1053
    .local v0, "bPopPwd":Z
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 1054
    const-string v4, "OBD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1055
    const-string v4, "gooddriver"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1054
    const/4 v0, 0x0

    .line 1059
    :goto_1
    if-eqz v0, :cond_7

    .line 1060
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_Set;->popPwd()V

    goto :goto_0

    :cond_5
    move v0, v3

    .line 1054
    goto :goto_1

    .line 1057
    :cond_6
    const-string v3, "OBD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 1062
    :cond_7
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->connectDevice(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public FuncPairLink(Lcom/syu/bt/page/Page_SetPairItem;)V
    .locals 6
    .param p1, "SetPairItem"    # Lcom/syu/bt/page/Page_SetPairItem;

    .prologue
    const/4 v3, 0x1

    .line 1006
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1033
    :cond_0
    :goto_0
    return-void

    .line 1009
    :cond_1
    sput-boolean v3, Lcom/syu/bt/App_Bt;->bSelfLink:Z

    .line 1010
    sget-boolean v4, Lcom/syu/bt/page/Page_Set;->isSetStartDiscovey:Z

    if-eqz v4, :cond_2

    .line 1011
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->stopDiscover()V

    .line 1013
    :cond_2
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1014
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->cut()V

    .line 1016
    :cond_3
    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isConnect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1018
    :cond_4
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v4

    .line 1017
    invoke-virtual {p1, v4}, Lcom/syu/bt/page/Page_SetPairItem;->getChoiceName(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 1019
    .local v1, "entity":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 1020
    const/16 v4, 0x28f0

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1021
    .local v2, "strName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1022
    .local v0, "bPopPwd":Z
    sget v4, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    .line 1023
    const-string v4, "OBD"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "gooddriver"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v0, 0x0

    .line 1027
    :goto_1
    if-eqz v0, :cond_7

    .line 1028
    invoke-virtual {p1}, Lcom/syu/bt/page/Page_SetPairItem;->popPwd()V

    goto :goto_0

    :cond_5
    move v0, v3

    .line 1023
    goto :goto_1

    .line 1025
    :cond_6
    const-string v3, "OBD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 1030
    :cond_7
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->getChoiceAddr()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syu/app/ipc/Bt_IpcObj;->connectDevice(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public FuncPairLinkRun(Lcom/syu/bt/page/Page_Pair;I)V
    .locals 4
    .param p1, "page_Pair"    # Lcom/syu/bt/page/Page_Pair;
    .param p2, "time"    # I

    .prologue
    .line 935
    iput-object p1, p0, Lcom/syu/app/ipc/Bt_IpcObj;->page_Pair_p:Lcom/syu/bt/page/Page_Pair;

    .line 936
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mPairLink:Lcom/syu/app/ipc/Bt_IpcObj$PairLink;

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 937
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mPairLink:Lcom/syu/app/ipc/Bt_IpcObj$PairLink;

    int-to-long v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 939
    return-void
.end method

.method public LauncherRequestAppIdBtAv()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->LauncherRequestAppIdBtAv()V

    .line 92
    return-void
.end method

.method public PhoneVoice()V
    .locals 1

    .prologue
    .line 500
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 501
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->PhoneVoice()V

    .line 502
    :cond_0
    return-void
.end method

.method public addNotify_PopBt()V
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_786;->addNotify_PopBt()V

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->addNotify_PopBt()V

    goto :goto_0
.end method

.method public cmdNum(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 573
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0, p1}, Lcom/syu/app/ipc/Ipc_786;->cmdNum(I)V

    .line 577
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0, p1}, Lcom/syu/app/ipc/Ipc_New;->cmdNum(I)V

    goto :goto_0
.end method

.method public connectSMS()V
    .locals 0

    .prologue
    .line 379
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->connectSMS()V

    .line 380
    return-void
.end method

.method public dialOut(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1092
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isStateConnect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1093
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_1

    .line 1094
    invoke-static {p1}, Lcom/syu/app/ipc/Bt_IpcObj;->setNum(Ljava/lang/String;)V

    .line 1095
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->dial()V

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1097
    :cond_1
    invoke-static {p1}, Lcom/syu/app/ipc/Bt_IpcObj;->dial(Ljava/lang/String;)V

    goto :goto_0

    .line 1098
    :cond_2
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isStateDialAble()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1099
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    .line 1100
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    .line 1101
    const-string v2, "bt_state_cannot_dial"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1099
    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getElectricValue()F
    .locals 1

    .prologue
    .line 1134
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->getElectricValue()F

    move-result v0

    .line 1137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSB()[I
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->getSB()[I

    move-result-object v0

    return-object v0
.end method

.method public initIpc()V
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_786;->initIpc()V

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->initIpc()V

    goto :goto_0
.end method

.method public isCalling()Z
    .locals 1

    .prologue
    .line 1106
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_786;->isCalling()Z

    move-result v0

    .line 1109
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->isCalling()Z

    move-result v0

    goto :goto_0
.end method

.method public isMute()Z
    .locals 1

    .prologue
    .line 1113
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_786;->isMute()Z

    move-result v0

    .line 1116
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->isMute()Z

    move-result v0

    goto :goto_0
.end method

.method public isPBAPStateLoad()Z
    .locals 1

    .prologue
    .line 1127
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_786;->isPBAPStateLoad()Z

    move-result v0

    .line 1130
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->isPBAPStateLoad()Z

    move-result v0

    goto :goto_0
.end method

.method public isPauseDraw()Z
    .locals 1

    .prologue
    .line 1120
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_786;->isPauseDraw()Z

    move-result v0

    .line 1123
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->isPauseDraw()Z

    move-result v0

    goto :goto_0
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Av;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Av"    # Lcom/syu/bt/page/Page_Av;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1185
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_786;->mNotify:Lcom/syu/app/ipc/Ipc_786NotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_786NotifyPage;->onNotify(Lcom/syu/bt/page/Page_Av;I[I[F[Ljava/lang/String;)V

    .line 1189
    :goto_0
    return-void

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Av;I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Av_HalfScreen;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Av_HalfScreen"    # Lcom/syu/bt/page/Page_Av_HalfScreen;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1247
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Av_HalfScreen;I[I[F[Ljava/lang/String;)V

    .line 1250
    :cond_0
    return-void
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Callin"    # Lcom/syu/bt/page/Page_Callin;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1261
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1263
    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Callin;I[I[F[Ljava/lang/String;)V

    .line 1264
    :cond_0
    return-void
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin_HalfScreen;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Callin_HalfScreen"    # Lcom/syu/bt/page/Page_Callin_HalfScreen;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1296
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Callin_HalfScreen;I[I[F[Ljava/lang/String;)V

    .line 1299
    :cond_0
    return-void
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin_HideKey;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Callin_HideKey"    # Lcom/syu/bt/page/Page_Callin_HideKey;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1289
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Callin_HideKey;I[I[F[Ljava/lang/String;)V

    .line 1292
    :cond_0
    return-void
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin_ShowCall;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Callin_ShowCall"    # Lcom/syu/bt/page/Page_Callin_ShowCall;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1275
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Callin_ShowCall;I[I[F[Ljava/lang/String;)V

    .line 1278
    :cond_0
    return-void
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Callin_ShowCall_HalfScreen"    # Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1312
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Callin_ShowCall_HalfScreen;I[I[F[Ljava/lang/String;)V

    .line 1315
    :cond_0
    return-void
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin_ShowDial;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Callin_ShowDial"    # Lcom/syu/bt/page/Page_Callin_ShowDial;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1268
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Callin_ShowDial;I[I[F[Ljava/lang/String;)V

    .line 1271
    :cond_0
    return-void
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin_ShowDial_HalfScreen;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Callin_ShowDial_HalfScreen"    # Lcom/syu/bt/page/Page_Callin_ShowDial_HalfScreen;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1304
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Callin_ShowDial_HalfScreen;I[I[F[Ljava/lang/String;)V

    .line 1307
    :cond_0
    return-void
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin_ShowKey;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Callin_ShowKey"    # Lcom/syu/bt/page/Page_Callin_ShowKey;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1282
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Callin_ShowKey;I[I[F[Ljava/lang/String;)V

    .line 1285
    :cond_0
    return-void
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Callin_ShowKey_HalfScreen"    # Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1320
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1321
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Callin_ShowKey_HalfScreen;I[I[F[Ljava/lang/String;)V

    .line 1323
    :cond_0
    return-void
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Contact;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Contact"    # Lcom/syu/bt/page/Page_Contact;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1193
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 1194
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_786;->mNotify:Lcom/syu/app/ipc/Ipc_786NotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_786NotifyPage;->onNotify(Lcom/syu/bt/page/Page_Contact;I[I[F[Ljava/lang/String;)V

    .line 1199
    :goto_0
    return-void

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Contact;I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Dial;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Dial"    # Lcom/syu/bt/page/Page_Dial;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1202
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_786;->mNotify:Lcom/syu/app/ipc/Ipc_786NotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_786NotifyPage;->onNotify(Lcom/syu/bt/page/Page_Dial;I[I[F[Ljava/lang/String;)V

    .line 1206
    :goto_0
    return-void

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Dial;I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Dial_HalfScreen;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Dial_HalfScreen"    # Lcom/syu/bt/page/Page_Dial_HalfScreen;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1254
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1255
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Dial_HalfScreen;I[I[F[Ljava/lang/String;)V

    .line 1257
    :cond_0
    return-void
.end method

.method public onNotify(Lcom/syu/bt/page/Page_History;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_History"    # Lcom/syu/bt/page/Page_History;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1219
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 1224
    :goto_0
    return-void

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_History;I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Menu;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Menu"    # Lcom/syu/bt/page/Page_Menu;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1179
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Menu;I[I[F[Ljava/lang/String;)V

    .line 1181
    :cond_0
    return-void
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Pair;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Pair"    # Lcom/syu/bt/page/Page_Pair;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1211
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_786;->mNotify:Lcom/syu/app/ipc/Ipc_786NotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_786NotifyPage;->onNotify(Lcom/syu/bt/page/Page_Pair;I[I[F[Ljava/lang/String;)V

    .line 1215
    :goto_0
    return-void

    .line 1214
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Pair;I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNotify(Lcom/syu/bt/page/Page_Set;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Set"    # Lcom/syu/bt/page/Page_Set;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1228
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_786;->mNotify:Lcom/syu/app/ipc/Ipc_786NotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_786NotifyPage;->onNotify(Lcom/syu/bt/page/Page_Set;I[I[F[Ljava/lang/String;)V

    .line 1232
    :goto_0
    return-void

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify(Lcom/syu/bt/page/Page_Set;I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNotify_Sound(Lcom/syu/bt/page/Page_Set;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Set"    # Lcom/syu/bt/page/Page_Set;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1237
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_786;->mNotify:Lcom/syu/app/ipc/Ipc_786NotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_786NotifyPage;->onNotify_Sound(Lcom/syu/bt/page/Page_Set;I[I[F[Ljava/lang/String;)V

    .line 1243
    :goto_0
    return-void

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify_Sound(Lcom/syu/bt/page/Page_Set;I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNotify_UniCar(Lcom/syu/bt/page/Page_Dial;I[I[F[Ljava/lang/String;)V
    .locals 6
    .param p1, "page_Dial"    # Lcom/syu/bt/page/Page_Dial;
    .param p2, "updateCode"    # I
    .param p3, "ints"    # [I
    .param p4, "flts"    # [F
    .param p5, "strs"    # [Ljava/lang/String;

    .prologue
    .line 1327
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    iget-object v0, v0, Lcom/syu/app/ipc/Ipc_New;->mNotify:Lcom/syu/app/ipc/Ipc_NewNotifyPage;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/syu/app/ipc/Ipc_NewNotifyPage;->onNotify_UniCar(Lcom/syu/bt/page/Page_Dial;I[I[F[Ljava/lang/String;)V

    .line 1330
    :cond_0
    return-void
.end method

.method public phoneState(Lcom/syu/bt/Act_Bt;)V
    .locals 1
    .param p1, "actBt"    # Lcom/syu/bt/Act_Bt;

    .prologue
    .line 887
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0, p1}, Lcom/syu/app/ipc/Ipc_786;->phoneState(Lcom/syu/bt/Act_Bt;)V

    .line 891
    :goto_0
    return-void

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0, p1}, Lcom/syu/app/ipc/Ipc_New;->phoneState(Lcom/syu/bt/Act_Bt;)V

    goto :goto_0
.end method

.method public queryPairList()V
    .locals 1

    .prologue
    .line 372
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 373
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->queryPairList()V

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->queryPairList()V

    goto :goto_0
.end method

.method public recoverAppId()V
    .locals 1

    .prologue
    .line 566
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_786;->recoverAppId()V

    .line 570
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->recoverAppId()V

    goto :goto_0
.end method

.method public removeNotify_PopBt()V
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_786;->removeNotify_PopBt()V

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->removeNotify_PopBt()V

    goto :goto_0
.end method

.method public requestAppIdBtAv()V
    .locals 1

    .prologue
    .line 84
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_786;->requestAppIdBtAv()V

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->requestAppIdBtAv()V

    goto :goto_0
.end method

.method public requestAppIdBtPhone()V
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_786;->requestAppIdBtPhone()V

    .line 81
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->requestAppIdBtPhone()V

    goto :goto_0
.end method

.method public requestAppIdNull()V
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_786;->requestAppIdNull()V

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->requestAppIdNull()V

    goto :goto_0
.end method

.method public requestAppIdNull(I)V
    .locals 1
    .param p1, "pageId"    # I

    .prologue
    .line 102
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0, p1}, Lcom/syu/app/ipc/Ipc_New;->requestAppIdNull(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public requestAppIdRight(I)V
    .locals 1
    .param p1, "iPage"    # I

    .prologue
    .line 522
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/bt/util/BTUtil;->isRightDevices()Z

    move-result v0

    if-nez v0, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 538
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bIsLauncher_2Ico:Z

    if-eqz v0, :cond_3

    .line 539
    invoke-virtual {p0}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdBtPhone()V

    goto :goto_0

    .line 527
    :sswitch_0
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isAppIdBtPhone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdBtPhone()V

    goto :goto_0

    .line 531
    :sswitch_1
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    invoke-virtual {p0}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdBtAv()V

    goto :goto_0

    .line 533
    :cond_2
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->isAppIdBtAv()Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/syu/app/ipc/Bt_IpcObj;->requestAppIdBtAv()V

    goto :goto_0

    .line 541
    :cond_3
    invoke-virtual {p0}, Lcom/syu/app/ipc/Bt_IpcObj;->recoverAppId()V

    goto :goto_0

    .line 525
    :sswitch_data_0
    .sparse-switch
        0x2713 -> :sswitch_0
        0x271a -> :sswitch_1
    .end sparse-switch
.end method

.method public requestSMS(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 383
    invoke-static {p1}, Lcom/syu/app/ipc/Ipc_New;->requestSMS(Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public sendCmdAmp(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 491
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0, p1}, Lcom/syu/app/ipc/Ipc_New;->sendCmdAmp(I)V

    .line 493
    :cond_0
    return-void
.end method

.method public sendCmdLoud(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 486
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0, p1}, Lcom/syu/app/ipc/Ipc_New;->sendCmdLoud(I)V

    .line 488
    :cond_0
    return-void
.end method

.method public sendCmdVolBal(II)V
    .locals 1
    .param p1, "idSound"    # I
    .param p2, "value"    # I

    .prologue
    .line 481
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0, p1, p2}, Lcom/syu/app/ipc/Ipc_New;->sendCmdVolBal(II)V

    .line 483
    :cond_0
    return-void
.end method

.method public setBlackScreen()V
    .locals 1

    .prologue
    .line 504
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 505
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->SetBlackScreen()V

    .line 506
    :cond_0
    return-void
.end method

.method public setMcuOff()V
    .locals 1

    .prologue
    .line 509
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 510
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->SetMcuOff()V

    .line 511
    :cond_0
    return-void
.end method

.method public setStandBy()V
    .locals 1

    .prologue
    .line 496
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 497
    invoke-static {}, Lcom/syu/app/ipc/Ipc_New;->SetStandBy()V

    .line 498
    :cond_0
    return-void
.end method

.method public updateNotify_BtAv()V
    .locals 1

    .prologue
    .line 594
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_786;->updateNotify_BtAv()V

    .line 598
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->updateNotify_BtAv()V

    goto :goto_0
.end method

.method public updateNotify_BtAv_HalfScreen()V
    .locals 1

    .prologue
    .line 651
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->updateNotify_BtAv_HalfScreen()V

    .line 653
    :cond_0
    return-void
.end method

.method public updateNotify_Callin()V
    .locals 1

    .prologue
    .line 601
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->updateNotify_Callin()V

    .line 603
    :cond_0
    return-void
.end method

.method public updateNotify_Callin_HalfScreen()V
    .locals 1

    .prologue
    .line 626
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->updateNotify_Callin_HalfScreen()V

    .line 628
    :cond_0
    return-void
.end method

.method public updateNotify_Callin_HideKey()V
    .locals 1

    .prologue
    .line 621
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->updateNotify_Callin()V

    .line 623
    :cond_0
    return-void
.end method

.method public updateNotify_Callin_ShowCall()V
    .locals 1

    .prologue
    .line 611
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->updateNotify_Callin()V

    .line 613
    :cond_0
    return-void
.end method

.method public updateNotify_Callin_ShowCall_HalfScreen()V
    .locals 1

    .prologue
    .line 636
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->updateNotify_Callin_HalfScreen()V

    .line 638
    :cond_0
    return-void
.end method

.method public updateNotify_Callin_ShowDial()V
    .locals 1

    .prologue
    .line 606
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->updateNotify_Callin()V

    .line 608
    :cond_0
    return-void
.end method

.method public updateNotify_Callin_ShowDial_HalfScreen()V
    .locals 1

    .prologue
    .line 631
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->updateNotify_Callin_HalfScreen()V

    .line 633
    :cond_0
    return-void
.end method

.method public updateNotify_Callin_ShowHide_HalfScreen()V
    .locals 1

    .prologue
    .line 641
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->updateNotify_Callin_HalfScreen()V

    .line 643
    :cond_0
    return-void
.end method

.method public updateNotify_Callin_ShowKey()V
    .locals 1

    .prologue
    .line 616
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->updateNotify_Callin()V

    .line 618
    :cond_0
    return-void
.end method

.method public updateNotify_Dial()V
    .locals 1

    .prologue
    .line 587
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_786;->updateNotify_Dial()V

    .line 591
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->updateNotify_Dial()V

    goto :goto_0
.end method

.method public updateNotify_Dial_HalfScreen()V
    .locals 1

    .prologue
    .line 646
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->updateNotify_Dial_HalfScreen()V

    .line 648
    :cond_0
    return-void
.end method

.method public updateNotify_Set()V
    .locals 1

    .prologue
    .line 580
    sget-boolean v0, Lcom/lsec/core/frame/app/MyApplication;->mIsOldService:Z

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_786:Lcom/syu/app/ipc/Ipc_786;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_786;->updateNotify_Set()V

    .line 584
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj;->mIpc_New:Lcom/syu/app/ipc/Ipc_New;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Ipc_New;->updateNotify_Set()V

    goto :goto_0
.end method
