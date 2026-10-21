.class public Lcom/syu/broadcast/MyService;
.super Landroid/app/Service;
.source "MyService.java"


# static fields
.field public static final BINDER:Landroid/os/Binder;

.field public static final BROADCAST_CMD_NULL:I = 0x0

.field public static final BROADCAST_CMD_PAGE_BTAV:I = 0x4

.field public static final BROADCAST_CMD_PAGE_BTAV_FORCE:I = 0x5

.field public static final BROADCAST_CMD_PAGE_DIAL_BY_KEY:I = 0x2

.field public static final BROADCAST_CMD_PAGE_DIAL_BY_WORK:I = 0x3

.field public static final BROADCAST_CMD_SHOW_PHONE_SMS:I = 0x7

.field public static final BROADCAST_CMD_SHOW_PHONE_VOICE:I = 0x6

.field public static final BROADCAST_CMD_SHOW_PIP:I = 0x1

.field public static final SERVICE_MS_BTAV:Ljava/lang/String; = "com.syu.bt.byav"

.field public static final SERVICE_MS_BTAV_FORCE:Ljava/lang/String; = "com.syu.bt.byav.force"

.field public static final SERVICE_MS_BTAV_WIDGET:Ljava/lang/String; = "com.syu.bt.byav.widgetkey"

.field public static final SERVICE_MS_BYKEY:Ljava/lang/String; = "com.syu.bt.bykey"

.field public static final SERVICE_MS_BYWORK:Ljava/lang/String; = "com.syu.bt.bywork"

.field public static final SERVICE_MS_PHONE_SMS:Ljava/lang/String; = "com.syu.bt.phone.sms"

.field public static final SERVICE_MS_PHONE_VOICE:Ljava/lang/String; = "com.syu.bt.phone.voice"

.field public static final SERVICE_MS_PIPSHOW:Ljava/lang/String; = "com.syu.bt.pip"

.field public static mRunnable_getSMS:Ljava/lang/Runnable;

.field public static mRunnable_goPageAv:Ljava/lang/Runnable;

.field public static mRunnable_goPageContact:Ljava/lang/Runnable;

.field public static mRunnable_goPageDial:Ljava/lang/Runnable;

.field public static mRunnable_goPageHistory:Ljava/lang/Runnable;

.field public static mRunnable_goPagePair:Ljava/lang/Runnable;

.field public static mRunnable_goPageSet:Ljava/lang/Runnable;

.field public static mRunnable_goVoiceSearchContact:Ljava/lang/Runnable;

.field public static mRunnable_isCallingState:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/syu/broadcast/MyService;->BINDER:Landroid/os/Binder;

    .line 68
    new-instance v0, Lcom/syu/broadcast/MyService$1;

    invoke-direct {v0}, Lcom/syu/broadcast/MyService$1;-><init>()V

    sput-object v0, Lcom/syu/broadcast/MyService;->mRunnable_isCallingState:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Lcom/syu/broadcast/MyService$2;

    invoke-direct {v0}, Lcom/syu/broadcast/MyService$2;-><init>()V

    sput-object v0, Lcom/syu/broadcast/MyService;->mRunnable_goPageDial:Ljava/lang/Runnable;

    .line 101
    new-instance v0, Lcom/syu/broadcast/MyService$3;

    invoke-direct {v0}, Lcom/syu/broadcast/MyService$3;-><init>()V

    sput-object v0, Lcom/syu/broadcast/MyService;->mRunnable_goPageContact:Ljava/lang/Runnable;

    .line 111
    new-instance v0, Lcom/syu/broadcast/MyService$4;

    invoke-direct {v0}, Lcom/syu/broadcast/MyService$4;-><init>()V

    sput-object v0, Lcom/syu/broadcast/MyService;->mRunnable_goVoiceSearchContact:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcom/syu/broadcast/MyService$5;

    invoke-direct {v0}, Lcom/syu/broadcast/MyService$5;-><init>()V

    sput-object v0, Lcom/syu/broadcast/MyService;->mRunnable_goPageAv:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Lcom/syu/broadcast/MyService$6;

    invoke-direct {v0}, Lcom/syu/broadcast/MyService$6;-><init>()V

    sput-object v0, Lcom/syu/broadcast/MyService;->mRunnable_goPageSet:Ljava/lang/Runnable;

    .line 146
    new-instance v0, Lcom/syu/broadcast/MyService$7;

    invoke-direct {v0}, Lcom/syu/broadcast/MyService$7;-><init>()V

    sput-object v0, Lcom/syu/broadcast/MyService;->mRunnable_goPagePair:Ljava/lang/Runnable;

    .line 161
    new-instance v0, Lcom/syu/broadcast/MyService$8;

    invoke-direct {v0}, Lcom/syu/broadcast/MyService$8;-><init>()V

    sput-object v0, Lcom/syu/broadcast/MyService;->mRunnable_goPageHistory:Ljava/lang/Runnable;

    .line 456
    new-instance v0, Lcom/syu/broadcast/MyService$9;

    invoke-direct {v0}, Lcom/syu/broadcast/MyService$9;-><init>()V

    sput-object v0, Lcom/syu/broadcast/MyService;->mRunnable_getSMS:Ljava/lang/Runnable;

    .line 473
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static activityMain()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 53
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bShowFloatBtn:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v3, "BT_23NEW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 55
    const-string v2, "activityMain"

    invoke-static {v2}, Lcom/syu/bt/util/BTUtil;->writeLogToFile(Ljava/lang/String;)V

    .line 56
    const-string v2, "gdy666"

    const-string v3, " 001 MyService activityMain "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-string v2, "com.syu.bt"

    const-string v3, "com.syu.bt.act.ActBt"

    invoke-virtual {v0, v2, v3}, Lcom/lsec/core/frame/app/MyApplication;->startAct(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 62
    goto :goto_0
.end method

.method public static handleSeverCmd(I)V
    .locals 11
    .param p0, "cmd"    # I

    .prologue
    const/16 v10, 0x2713

    const/16 v9, 0x9

    const/16 v8, 0x2730

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 172
    const-string v3, "gdy66"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 00 MyService handleSeverCmd  cmd = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    packed-switch p0, :pswitch_data_0

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 176
    :pswitch_0
    const-string v3, "gdy66"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 01 MyService handleSeverCmd  U_PHONE_STATE = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v5, v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bHideBtDial:Z

    if-nez v3, :cond_0

    .line 181
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mRunnable_DismissPopBT:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 183
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-eqz v3, :cond_7

    .line 184
    sget-object v3, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    :cond_1
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bBackCarFlag:Z

    if-eqz v3, :cond_2

    .line 186
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v9

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 190
    :pswitch_1
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    goto :goto_0

    .line 196
    :cond_2
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    if-eq v3, v8, :cond_3

    .line 197
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    sput v3, Lcom/syu/bt/App_Bt;->sPageBak:I

    .line 198
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x1

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    .line 199
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sput v8, Lcom/syu/bt/App_Bt;->sPage:I

    .line 202
    :cond_3
    sput-boolean v6, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    .line 203
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->getFullScreenMode()I

    move-result v1

    .line 204
    .local v1, "mode":I
    and-int/lit8 v2, v1, 0xf

    .line 205
    .local v2, "state":I
    if-nez v2, :cond_5

    .line 206
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x8

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    .line 212
    :cond_4
    :goto_1
    invoke-static {}, Lcom/syu/broadcast/MyService;->activityMain()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x2

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    goto/16 :goto_0

    .line 207
    :cond_5
    if-ne v2, v6, :cond_6

    .line 208
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x10

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    goto :goto_1

    .line 209
    :cond_6
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 210
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x4

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    goto :goto_1

    .line 217
    .end local v1    # "mode":I
    .end local v2    # "state":I
    :cond_7
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bCallinPageFlag:Z

    if-eqz v3, :cond_b

    .line 218
    const-string v3, "gdy66"

    const-string v4, " 11 MyService handleSeverCmd  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v3, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v3

    if-nez v3, :cond_9

    .line 220
    :cond_8
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    if-eq v3, v8, :cond_9

    .line 221
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    sput v3, Lcom/syu/bt/App_Bt;->sPageBak:I

    .line 222
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x1

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    .line 223
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sput v8, Lcom/syu/bt/App_Bt;->sPage:I

    .line 227
    :cond_9
    sget-object v3, Lcom/syu/broadcast/MyService;->mRunnable_goPageAv:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 228
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 229
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    sput v3, Lcom/syu/bt/App_Bt;->sPageBak:I

    .line 230
    sget-object v3, Lcom/syu/broadcast/MyService;->mRunnable_goPageDial:Ljava/lang/Runnable;

    invoke-static {v6, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 231
    sget-object v3, Lcom/syu/broadcast/MyService;->mRunnable_isCallingState:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-static {v6, v3, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 233
    :cond_a
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iput-boolean v7, v3, Lcom/syu/bt/App_Bt;->bPopBtShowBak_Num:Z

    .line 234
    const-string v3, "gdy666"

    const-string v4, " 002 MyService handleSeverCmd "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    .line 236
    const-string v3, "bPopBtShowBak_Num"

    invoke-static {v3}, Lcom/syu/bt/util/BTUtil;->writeLogToFile(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    :cond_b
    const-string v3, "gdy66"

    const-string v4, " 22 MyService handleSeverCmd  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-object v3, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v3

    if-nez v3, :cond_d

    .line 241
    :cond_c
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    if-eq v3, v10, :cond_d

    .line 242
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    sput v3, Lcom/syu/bt/App_Bt;->sPageBak:I

    .line 243
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x1

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    .line 244
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sput v10, Lcom/syu/bt/App_Bt;->sPage:I

    .line 248
    :cond_d
    sget-object v3, Lcom/syu/broadcast/MyService;->mRunnable_goPageAv:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 249
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 251
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    sput v3, Lcom/syu/bt/App_Bt;->sPageBak:I

    .line 252
    sget-object v3, Lcom/syu/broadcast/MyService;->mRunnable_goPageDial:Ljava/lang/Runnable;

    invoke-static {v6, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 253
    sget-object v3, Lcom/syu/broadcast/MyService;->mRunnable_isCallingState:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-static {v6, v3, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 255
    :cond_e
    const-string v3, "gdy66"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 001 MyService handleSeverCmd  bHidePopBt = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/syu/bt/App_Bt;->bHidePopBt:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bHidePopBt2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/syu/bt/App_Bt;->bHidePopBt2:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bShowFloatBtn_p = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/syu/bt/App_Bt;->bShowFloatBtn_p:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bHidePopBt:Z

    if-eqz v3, :cond_f

    .line 257
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x20

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    .line 258
    sput-boolean v6, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    .line 259
    invoke-static {}, Lcom/syu/broadcast/MyService;->activityMain()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x2

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    goto/16 :goto_0

    .line 263
    :cond_f
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bHidePopBt2:Z

    if-eqz v3, :cond_10

    .line 264
    sput-boolean v6, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    goto/16 :goto_0

    .line 265
    :cond_10
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bShowFloatBtn_p:Z

    if-nez v3, :cond_0

    .line 266
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iput-boolean v7, v3, Lcom/syu/bt/App_Bt;->bPopBtShowBak_Num:Z

    .line 267
    const-string v3, "gdy666"

    const-string v4, " 003 MyService handleSeverCmd "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    .line 269
    const-string v3, "bPopBtShowBak_Num c"

    invoke-static {v3}, Lcom/syu/bt/util/BTUtil;->writeLogToFile(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :pswitch_2
    const/4 v0, 0x0

    .line 281
    .local v0, "isToPair":Z
    const-string v3, "gdy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " ** 00 MyService mStrCustomer = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  U_PHONE_STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v5, v5, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v3, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "BT_23NEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v9

    if-nez v3, :cond_11

    .line 283
    const/4 v0, 0x1

    .line 285
    :cond_11
    sget-object v3, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_12

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v3

    if-nez v3, :cond_13

    .line 287
    :cond_12
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sput v10, Lcom/syu/bt/App_Bt;->sPage:I

    .line 288
    if-eqz v0, :cond_13

    .line 289
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    const/16 v3, 0x271c

    sput v3, Lcom/syu/bt/App_Bt;->sPage:I

    .line 293
    :cond_13
    const-string v3, "gdy6"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " ** 11 MyService isToPair = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  sPage = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget v5, Lcom/syu/bt/App_Bt;->sPage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bPopBtShow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v5

    iget-boolean v5, v5, Lcom/syu/bt/App_Bt;->bPopBtShow:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    sput v3, Lcom/syu/bt/App_Bt;->sPageBak:I

    .line 295
    sget-object v3, Lcom/syu/broadcast/MyService;->mRunnable_goPageAv:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 296
    if-eqz v0, :cond_15

    .line 297
    sget-object v3, Lcom/syu/broadcast/MyService;->mRunnable_goPagePair:Ljava/lang/Runnable;

    invoke-static {v6, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 302
    :goto_2
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-boolean v3, v3, Lcom/syu/bt/App_Bt;->bPopBtShow:Z

    if-eqz v3, :cond_14

    .line 303
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    .line 305
    :cond_14
    invoke-static {}, Lcom/syu/broadcast/MyService;->activityMain()Z

    goto/16 :goto_0

    .line 299
    :cond_15
    sget-object v3, Lcom/syu/broadcast/MyService;->mRunnable_goPageDial:Ljava/lang/Runnable;

    invoke-static {v6, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 300
    sget-object v3, Lcom/syu/broadcast/MyService;->mRunnable_isCallingState:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-static {v6, v3, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto :goto_2

    .line 309
    .end local v0    # "isToPair":Z
    :pswitch_3
    sget-object v3, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 310
    :cond_16
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-eqz v3, :cond_1b

    .line 311
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bBackCarFlag:Z

    if-eqz v3, :cond_17

    .line 312
    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v3, v3, v9

    packed-switch v3, :pswitch_data_2

    goto/16 :goto_0

    .line 316
    :pswitch_4
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->hang()V

    goto/16 :goto_0

    .line 322
    :cond_17
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    if-eq v3, v8, :cond_18

    .line 323
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    sput v3, Lcom/syu/bt/App_Bt;->sPageBak:I

    .line 324
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x1

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    .line 325
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sput v8, Lcom/syu/bt/App_Bt;->sPage:I

    .line 327
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->getFullScreenMode()I

    move-result v1

    .line 328
    .restart local v1    # "mode":I
    and-int/lit8 v2, v1, 0xf

    .line 329
    .restart local v2    # "state":I
    if-nez v2, :cond_19

    .line 330
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x8

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    .line 362
    .end local v1    # "mode":I
    .end local v2    # "state":I
    :cond_18
    :goto_3
    sget-object v3, Lcom/syu/broadcast/MyService;->mRunnable_goPageAv:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 363
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Lcom/syu/bt/App_Bt;->popBt(ZZ)V

    .line 364
    sput-boolean v6, Lcom/syu/bt/App_Bt;->bResumeByDial:Z

    .line 365
    const-string v3, "pv"

    const-string v4, " 33 BACK_FLAG_ACTIVITY_BIT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-static {}, Lcom/syu/broadcast/MyService;->activityMain()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 367
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x2

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    goto/16 :goto_0

    .line 331
    .restart local v1    # "mode":I
    .restart local v2    # "state":I
    :cond_19
    if-ne v2, v6, :cond_1a

    .line 332
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x10

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    goto :goto_3

    .line 333
    :cond_1a
    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    .line 334
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x4

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    goto :goto_3

    .line 336
    .end local v1    # "mode":I
    .end local v2    # "state":I
    :cond_1b
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bCallinPageFlag:Z

    if-eqz v3, :cond_1c

    .line 337
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    if-eq v3, v8, :cond_18

    .line 338
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    sput v3, Lcom/syu/bt/App_Bt;->sPageBak:I

    .line 339
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x1

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    .line 340
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sput v8, Lcom/syu/bt/App_Bt;->sPage:I

    goto :goto_3

    .line 343
    :cond_1c
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    if-eq v3, v10, :cond_18

    .line 344
    sget v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    sput v3, Lcom/syu/bt/App_Bt;->sPageBak:I

    .line 345
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x1

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    .line 346
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sput v10, Lcom/syu/bt/App_Bt;->sPage:I

    goto :goto_3

    .line 350
    :cond_1d
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bEnableHalfScreen:Z

    if-eqz v3, :cond_18

    .line 351
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->getFullScreenMode()I

    move-result v1

    .line 352
    .restart local v1    # "mode":I
    and-int/lit8 v2, v1, 0xf

    .line 353
    .restart local v2    # "state":I
    if-nez v2, :cond_1e

    .line 354
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x8

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    goto :goto_3

    .line 355
    :cond_1e
    if-ne v2, v6, :cond_1f

    .line 356
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x10

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    goto/16 :goto_3

    .line 357
    :cond_1f
    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    .line 358
    sget v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    or-int/lit8 v3, v3, 0x4

    sput v3, Lcom/syu/bt/App_Bt;->sBackFlag:I

    goto/16 :goto_3

    .line 372
    .end local v1    # "mode":I
    .end local v2    # "state":I
    :pswitch_5
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bBtNoAV:Z

    if-nez v3, :cond_0

    .line 374
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->needskipBtMusic()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    sget-object v3, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v3

    if-nez v3, :cond_21

    .line 376
    :cond_20
    const/16 v3, 0x271a

    sput v3, Lcom/syu/bt/App_Bt;->sPage:I

    .line 378
    :cond_21
    sget-object v3, Lcom/syu/broadcast/MyService;->mRunnable_goPageDial:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 379
    sget-object v3, Lcom/syu/broadcast/MyService;->mRunnable_goPageAv:Ljava/lang/Runnable;

    invoke-static {v6, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto/16 :goto_0

    .line 383
    :pswitch_6
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bBtNoAV:Z

    if-nez v3, :cond_0

    .line 385
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->needskipBtMusic()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    sget-object v3, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/App_Bt;->isAppTop()Z

    move-result v3

    if-nez v3, :cond_23

    .line 389
    :cond_22
    const/16 v3, 0x271a

    sput v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 391
    const/16 v3, 0x271a

    sput v3, Lcom/syu/bt/App_Bt;->sPage:I

    .line 394
    :cond_23
    sget-object v3, Lcom/syu/broadcast/MyService;->mRunnable_goPageDial:Ljava/lang/Runnable;

    invoke-static {v3}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 395
    sget-object v3, Lcom/syu/broadcast/MyService;->mRunnable_goPageAv:Ljava/lang/Runnable;

    invoke-static {v6, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 396
    invoke-static {}, Lcom/syu/broadcast/MyService;->activityMain()Z

    goto/16 :goto_0

    .line 400
    :pswitch_7
    const-string v3, "pv"

    const-string v4, " ** 33 BROADCAST_CMD_SHOW_PHONE_VOICE  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget v3, v3, Lcom/syu/bt/App_Bt;->bPopPhoneFirstValue:I

    if-ne v3, v6, :cond_24

    .line 402
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iput v7, v3, Lcom/syu/bt/App_Bt;->bPopPhoneFirstValue:I

    .line 405
    :cond_24
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/syu/bt/App_Bt;->popPhoneVoice(Z)V

    goto/16 :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 186
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 312
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 48
    sget-object v0, Lcom/syu/broadcast/MyService;->BINDER:Landroid/os/Binder;

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x0

    .line 419
    const-string v2, "gdy61"

    const-string v4, " 00 onStartCommand  "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    if-eqz p1, :cond_0

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bFirstBtAvPage:Z

    if-nez v2, :cond_0

    .line 422
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "action":Ljava/lang/String;
    const-string v2, "gdy61"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "11 onStartCommand action:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v2, "com.syu.bt.pip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/syu/broadcast/MyService;->handleSeverCmd(I)V

    .line 452
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    return v2

    .line 428
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v2, "com.syu.bt.bywork"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/syu/broadcast/MyService;->handleSeverCmd(I)V

    goto :goto_0

    .line 430
    :cond_2
    const-string v2, "com.syu.bt.bykey"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 431
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/syu/broadcast/MyService;->handleSeverCmd(I)V

    goto :goto_0

    .line 432
    :cond_3
    const-string v2, "com.syu.bt.byav"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 433
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/syu/broadcast/MyService;->handleSeverCmd(I)V

    goto :goto_0

    .line 434
    :cond_4
    const-string v2, "com.syu.bt.byav.force"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 435
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/syu/broadcast/MyService;->handleSeverCmd(I)V

    goto :goto_0

    .line 436
    :cond_5
    const-string v2, "com.syu.bt.phone.voice"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 437
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/syu/broadcast/MyService;->handleSeverCmd(I)V

    goto :goto_0

    .line 438
    :cond_6
    const-string v2, "com.syu.bt.phone.sms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    const-string v2, "handle"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "handleSMS":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_OEM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_NEW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v4, "TZY_BT_1920"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    :cond_7
    sget-object v2, Lcom/syu/bt/App_Bt;->myHandle:Ljava/util/List;

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 442
    sget-object v4, Lcom/syu/broadcast/MyService;->mRunnable_getSMS:Ljava/lang/Runnable;

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAppFirstInit:Z

    if-eqz v2, :cond_8

    const/16 v2, 0x7d0

    :goto_1
    int-to-long v6, v2

    invoke-static {v3, v4, v6, v7}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 443
    sput-boolean v3, Lcom/syu/bt/App_Bt;->bAppFirstInit:Z

    goto/16 :goto_0

    :cond_8
    move v2, v3

    .line 442
    goto :goto_1
.end method
