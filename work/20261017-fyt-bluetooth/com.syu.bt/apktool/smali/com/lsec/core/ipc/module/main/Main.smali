.class public Lcom/lsec/core/ipc/module/main/Main;
.super Lcom/syu/ipc/IModuleCallback$Stub;
.source "Main.java"

# interfaces
.implements Lcom/lsec/core/ipc/IConnStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc/module/main/Main$Runnable_REQEUST;,
        Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;
    }
.end annotation


# static fields
.field public static final BACK_CAMERA_NOT_FOUND:I = 0x4

.field public static final BACK_CVBS:I = 0x1

.field public static final BACK_END:I = 0x3

.field public static final BACK_NULL:I = 0x0

.field public static final BACK_USB:I = 0x2

.field public static DATA:[I = null

.field public static DATA_RADAR:[I = null

.field private static INSTANCE:Lcom/lsec/core/ipc/module/main/Main; = null

.field public static PROXY:Lcom/lsec/core/ipc/ModuleProxy; = null

.field public static final PlatForm_3188:I = 0x2

.field public static final PlatForm_6025:I = 0x6

.field public static final PlatForm_786:I = 0x4

.field public static final PlatForm_8700:I = 0x3

.field public static final PlatForm_9853:I = 0x8

.field public static final PlatForm_Monitor:I = 0x1

.field public static final PlatForm_PX5:I = 0x7

.field public static final PlatForm_Sophia:I = 0x5

.field private static final RADAR_CNT:I = 0x10

.field public static final RADAR_MAX_NORMAL:I = 0x14

.field private static REQEUST_APP_ID:Lcom/lsec/core/ipc/module/main/Main$Runnable_REQEUST;

.field public static final VER_BT:Lcom/lsec/core/util/UiNotifyEventString;

.field public static final VER_DVD:Lcom/lsec/core/util/UiNotifyEventString;

.field public static final VER_MCU:Lcom/lsec/core/util/UiNotifyEventString;

.field public static bConnected:Z

.field public static bIsHiworldObdEnable:Z

.field public static factorySn:Ljava/lang/String;

.field public static mConf_PlatForm:I

.field public static mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

.field public static mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

.field public static mVideoChannelCurrent:I

.field public static mcuError:[I

.field public static mcuMatchError:Z

.field public static naviPackageName:Ljava/lang/String;

.field public static sAppIdRequest:I

.field public static sArrayDebugBackCar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 30
    sput-object v5, Lcom/lsec/core/ipc/module/main/Main;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 47
    sput-boolean v3, Lcom/lsec/core/ipc/module/main/Main;->bConnected:Z

    .line 49
    new-instance v1, Lcom/lsec/core/ipc/module/main/Main;

    invoke-direct {v1}, Lcom/lsec/core/ipc/module/main/Main;-><init>()V

    sput-object v1, Lcom/lsec/core/ipc/module/main/Main;->INSTANCE:Lcom/lsec/core/ipc/module/main/Main;

    .line 78
    const-string v1, "sys.fyt.hiworld_obd_enable"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/lsec/core/ipc/module/main/Main;->bIsHiworldObdEnable:Z

    .line 81
    const/4 v1, 0x2

    sput v1, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    .line 84
    new-instance v1, Lcom/lsec/core/util/UiNotifyEventString;

    invoke-direct {v1}, Lcom/lsec/core/util/UiNotifyEventString;-><init>()V

    sput-object v1, Lcom/lsec/core/ipc/module/main/Main;->VER_MCU:Lcom/lsec/core/util/UiNotifyEventString;

    .line 85
    new-instance v1, Lcom/lsec/core/util/UiNotifyEventString;

    invoke-direct {v1}, Lcom/lsec/core/util/UiNotifyEventString;-><init>()V

    sput-object v1, Lcom/lsec/core/ipc/module/main/Main;->VER_DVD:Lcom/lsec/core/util/UiNotifyEventString;

    .line 86
    new-instance v1, Lcom/lsec/core/util/UiNotifyEventString;

    invoke-direct {v1}, Lcom/lsec/core/util/UiNotifyEventString;-><init>()V

    sput-object v1, Lcom/lsec/core/ipc/module/main/Main;->VER_BT:Lcom/lsec/core/util/UiNotifyEventString;

    .line 88
    new-instance v1, Lcom/lsec/core/util/UiNotifyEvent;

    invoke-direct {v1}, Lcom/lsec/core/util/UiNotifyEvent;-><init>()V

    sput-object v1, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    .line 89
    new-instance v1, Lcom/lsec/core/ipc/ModuleProxy;

    invoke-direct {v1}, Lcom/lsec/core/ipc/ModuleProxy;-><init>()V

    sput-object v1, Lcom/lsec/core/ipc/module/main/Main;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    .line 91
    const/16 v1, 0x100

    new-array v1, v1, [I

    sput-object v1, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    .line 93
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aput v2, v1, v2

    .line 96
    new-array v1, v4, [I

    sput-object v1, Lcom/lsec/core/ipc/module/main/Main;->DATA_RADAR:[I

    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 103
    const-string v1, ""

    sput-object v1, Lcom/lsec/core/ipc/module/main/Main;->naviPackageName:Ljava/lang/String;

    .line 104
    const-string v1, ""

    sput-object v1, Lcom/lsec/core/ipc/module/main/Main;->factorySn:Ljava/lang/String;

    .line 106
    sput-boolean v3, Lcom/lsec/core/ipc/module/main/Main;->mcuMatchError:Z

    .line 208
    sput-object v5, Lcom/lsec/core/ipc/module/main/Main;->REQEUST_APP_ID:Lcom/lsec/core/ipc/module/main/Main$Runnable_REQEUST;

    return-void

    .line 99
    :cond_0
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->DATA_RADAR:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/syu/ipc/IModuleCallback$Stub;-><init>()V

    .line 57
    return-void
.end method

.method public static getBackCameraId(I)I
    .locals 1
    .param p0, "idPlatForm"    # I

    .prologue
    .line 296
    invoke-static {p0}, Lcom/lsec/core/util/share/ShareHandler;->is2009(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBackCameraType()I
    .locals 2

    .prologue
    .line 291
    const-string v1, "ro.fyt.usbenable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "type":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/lsec/core/ipc/module/main/Main;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->INSTANCE:Lcom/lsec/core/ipc/module/main/Main;

    return-object v0
.end method

.method public static hasCamera()Z
    .locals 1

    .prologue
    .line 520
    sget v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    packed-switch v0, :pswitch_data_0

    .line 528
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 525
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static initPlatForm(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v0, "Monitor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x1

    sput v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string v0, "3188"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const/4 v0, 0x2

    sput v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    goto :goto_0

    .line 64
    :cond_2
    const-string v0, "8700"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    const/4 v0, 0x3

    sput v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    goto :goto_0

    .line 66
    :cond_3
    const-string v0, "786"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    const/4 v0, 0x4

    sput v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    goto :goto_0

    .line 68
    :cond_4
    const-string v0, "Sophia"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69
    const/4 v0, 0x5

    sput v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    goto :goto_0

    .line 70
    :cond_5
    const-string v0, "6025"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    const/4 v0, 0x6

    sput v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    goto :goto_0

    .line 72
    :cond_6
    const-string v0, "PX5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 73
    const/4 v0, 0x7

    sput v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    goto :goto_0

    .line 74
    :cond_7
    const-string v0, "9853"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const/16 v0, 0x8

    sput v0, Lcom/lsec/core/ipc/module/main/Main;->mConf_PlatForm:I

    goto :goto_0
.end method

.method public static isAccOn()Z
    .locals 2

    .prologue
    .line 287
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/16 v1, 0x32

    aget v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static postRunnable_Ui(ZLjava/lang/Runnable;)V
    .locals 1
    .param p0, "bRemoveOther"    # Z
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 312
    if-eqz p1, :cond_1

    .line 313
    if-eqz p0, :cond_0

    .line 314
    invoke-static {p1}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 316
    :cond_0
    sget-object v0, Lcom/lsec/core/util/UiNotifyEvent;->HANDLER_UI:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    :cond_1
    return-void
.end method

.method public static postRunnable_Ui(ZLjava/lang/Runnable;J)V
    .locals 2
    .param p0, "bRemoveOther"    # Z
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 300
    if-eqz p1, :cond_1

    .line 301
    if-eqz p0, :cond_0

    .line 302
    invoke-static {p1}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 304
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_2

    .line 305
    sget-object v0, Lcom/lsec/core/util/UiNotifyEvent;->HANDLER_UI:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    :cond_1
    :goto_0
    return-void

    .line 307
    :cond_2
    sget-object v0, Lcom/lsec/core/util/UiNotifyEvent;->HANDLER_UI:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static removeRunnable_Ui(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 321
    if-eqz p0, :cond_0

    .line 322
    sget-object v0, Lcom/lsec/core/util/UiNotifyEvent;->HANDLER_UI:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 323
    :cond_0
    return-void
.end method

.method public static requestAppId(I)V
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 204
    sput p0, Lcom/lsec/core/ipc/module/main/Main;->sAppIdRequest:I

    .line 205
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 206
    return-void
.end method

.method public static requestAppIdByOnTop(I)V
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 211
    sget-object v0, Lcom/lsec/core/ipc/Conn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/lsec/core/ipc/Conn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    invoke-interface {v0}, Lcom/lsec/core/util/InterfaceApp;->isAppTop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-static {p0}, Lcom/lsec/core/ipc/module/main/Main;->requestAppId(I)V

    .line 217
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->REQEUST_APP_ID:Lcom/lsec/core/ipc/module/main/Main$Runnable_REQEUST;

    if-eqz v0, :cond_1

    .line 218
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->REQEUST_APP_ID:Lcom/lsec/core/ipc/module/main/Main$Runnable_REQEUST;

    invoke-virtual {v0}, Lcom/lsec/core/ipc/module/main/Main$Runnable_REQEUST;->stop()V

    .line 219
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/ipc/module/main/Main;->REQEUST_APP_ID:Lcom/lsec/core/ipc/module/main/Main$Runnable_REQEUST;

    .line 222
    :cond_1
    new-instance v0, Lcom/lsec/core/ipc/module/main/Main$Runnable_REQEUST;

    invoke-direct {v0}, Lcom/lsec/core/ipc/module/main/Main$Runnable_REQEUST;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Main;->REQEUST_APP_ID:Lcom/lsec/core/ipc/module/main/Main$Runnable_REQEUST;

    .line 223
    sget-object v0, Lcom/lsec/core/ipc/Conn_Base;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->REQEUST_APP_ID:Lcom/lsec/core/ipc/module/main/Main$Runnable_REQEUST;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static resetRadar()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 111
    const/16 v0, 0xe

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-static {v0, v1, v2, v2}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    .line 112
    const/16 v0, 0xf

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-static {v0, v1, v2, v2}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    .line 113
    const/16 v0, 0x10

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-static {v0, v1, v2, v2}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    .line 114
    const/16 v0, 0x11

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-static {v0, v1, v2, v2}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    .line 115
    const/16 v0, 0x12

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-static {v0, v1, v2, v2}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    .line 116
    const/16 v0, 0x13

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-static {v0, v1, v2, v2}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    .line 117
    new-array v0, v5, [I

    aput v3, v0, v4

    invoke-static {v3, v0, v2, v2}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    .line 118
    const/16 v0, 0x15

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-static {v0, v1, v2, v2}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    .line 119
    const/16 v0, 0x61

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-static {v0, v1, v2, v2}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    .line 120
    const/16 v0, 0x60

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-static {v0, v1, v2, v2}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    .line 121
    const/16 v0, 0x5f

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-static {v0, v1, v2, v2}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    .line 122
    const/16 v0, 0x5e

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-static {v0, v1, v2, v2}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    .line 123
    const/16 v0, 0x5d

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-static {v0, v1, v2, v2}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    .line 124
    const/16 v0, 0x5c

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-static {v0, v1, v2, v2}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    .line 125
    const/16 v0, 0x5b

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-static {v0, v1, v2, v2}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    .line 126
    const/16 v0, 0x5a

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-static {v0, v1, v2, v2}, Lcom/lsec/core/ipc/module/main/Main;->updateRadar(I[I[F[Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static updateDirect(I[I[F[Ljava/lang/String;)V
    .locals 2
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    .line 197
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/4 v1, 0x0

    aget v1, p1, v1

    aput v1, v0, p0

    .line 199
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method

.method public static updateMcuSerial(I[I[F[Ljava/lang/String;)V
    .locals 1
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const/4 v0, 0x0

    aget-object v0, p3, v0

    sput-object v0, Lcom/lsec/core/ipc/module/main/Main;->factorySn:Ljava/lang/String;

    .line 170
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method

.method public static updateNaviName(I[I[F[Ljava/lang/String;)V
    .locals 1
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    aget-object v0, p3, v0

    sput-object v0, Lcom/lsec/core/ipc/module/main/Main;->naviPackageName:Ljava/lang/String;

    .line 163
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method

.method public static updateNotify(I[I[F[Ljava/lang/String;)V
    .locals 4
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 175
    invoke-static {p1, v2}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    packed-switch p0, :pswitch_data_0

    .line 187
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v1, v1, p0

    aget v2, p1, v3

    if-eq v1, v2, :cond_0

    .line 188
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v2, p1, v3

    aput v2, v1, p0

    .line 189
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 178
    :pswitch_0
    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    aget v1, p1, v3

    if-lez v1, :cond_1

    aget v0, p1, v2

    .line 180
    .local v0, "val":I
    :cond_1
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v1, v1, p0

    if-eq v1, v0, :cond_0

    .line 181
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aput v0, v1, p0

    .line 182
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch
.end method

.method public static updateRadar(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 130
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v1, p1, v2

    aput v1, v0, p0

    .line 132
    const/16 v0, 0x5a

    if-ge p0, v0, :cond_1

    .line 133
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA_RADAR:[I

    add-int/lit8 v1, p0, -0xe

    aget v0, v0, v1

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 134
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA_RADAR:[I

    add-int/lit8 v1, p0, -0xe

    aget v2, p1, v2

    aput v2, v0, v1

    .line 135
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const/16 v0, 0x5d

    if-gt p0, v0, :cond_2

    .line 138
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA_RADAR:[I

    add-int/lit8 v1, p0, 0xc

    add-int/lit8 v1, v1, -0x5a

    aget v0, v0, v1

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 139
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA_RADAR:[I

    add-int/lit8 v1, p0, 0xc

    add-int/lit8 v1, v1, -0x5a

    aget v2, p1, v2

    aput v2, v0, v1

    .line 140
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_2
    const/16 v0, 0x61

    if-gt p0, v0, :cond_0

    .line 143
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA_RADAR:[I

    add-int/lit8 v1, p0, 0x4

    add-int/lit8 v1, v1, -0x5a

    aget v0, v0, v1

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 144
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA_RADAR:[I

    add-int/lit8 v1, p0, 0x4

    add-int/lit8 v1, v1, -0x5a

    aget v2, p1, v2

    aput v2, v0, v1

    .line 145
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateSteerAngle(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 152
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v0, v0, p0

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 154
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v1, p1, v2

    aput v1, v0, p0

    .line 155
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void
.end method


# virtual methods
.method public onConnected(Lcom/syu/ipc/IRemoteToolkit;)V
    .locals 7
    .param p1, "toolkit"    # Lcom/syu/ipc/IRemoteToolkit;

    .prologue
    .line 256
    :try_start_0
    sget-object v3, Lcom/lsec/core/ipc/module/main/Main;->VER_MCU:Lcom/lsec/core/util/UiNotifyEventString;

    const/4 v4, 0x0

    const/16 v5, 0x22

    const/4 v6, 0x1

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/lsec/core/util/UiNotifyEventString;->register(Lcom/syu/ipc/IRemoteToolkit;III)V

    .line 257
    sget-object v3, Lcom/lsec/core/ipc/module/main/Main;->VER_DVD:Lcom/lsec/core/util/UiNotifyEventString;

    const/4 v4, 0x3

    const/16 v5, 0x1e

    const/4 v6, 0x1

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/lsec/core/util/UiNotifyEventString;->register(Lcom/syu/ipc/IRemoteToolkit;III)V

    .line 258
    sget-object v3, Lcom/lsec/core/ipc/module/main/Main;->VER_BT:Lcom/lsec/core/util/UiNotifyEventString;

    const/4 v4, 0x2

    const/16 v5, 0x11

    const/4 v6, 0x1

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/lsec/core/util/UiNotifyEventString;->register(Lcom/syu/ipc/IRemoteToolkit;III)V

    .line 260
    sget-object v3, Lcom/lsec/core/ipc/module/main/Main;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 262
    invoke-static {}, Lcom/lsec/core/ipc/module/main/Main;->getInstance()Lcom/lsec/core/ipc/module/main/Main;

    move-result-object v0

    .line 263
    .local v0, "callback":Lcom/syu/ipc/IModuleCallback;
    sget-object v3, Lcom/lsec/core/ipc/module/main/Main;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    if-eqz v3, :cond_2

    .line 264
    sget-object v3, Lcom/lsec/core/ipc/module/main/Main;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-interface {v3, v0}, Lcom/lsec/core/ipc/IRegisterModuleCallBack;->register(Lcom/syu/ipc/IModuleCallback;)V

    .line 270
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/lsec/core/ipc/module/main/Main;->bConnected:Z

    .line 271
    sget-object v3, Lcom/lsec/core/ipc/Conn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    if-eqz v3, :cond_1

    .line 272
    sget-object v3, Lcom/lsec/core/ipc/Conn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    invoke-interface {v3}, Lcom/lsec/core/util/InterfaceApp;->onConnected_Main()V

    .line 273
    sget-object v3, Lcom/lsec/core/ipc/Conn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    invoke-interface {v3}, Lcom/lsec/core/util/InterfaceApp;->isAppTop()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    sget-object v3, Lcom/lsec/core/ipc/Conn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    invoke-interface {v3}, Lcom/lsec/core/util/InterfaceApp;->requestAppIdRight()V

    .line 279
    .end local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :cond_1
    :goto_0
    return-void

    .line 266
    .restart local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    .line 267
    sget-object v3, Lcom/lsec/core/ipc/module/main/Main;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 276
    .end local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 277
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 283
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 284
    return-void
.end method

.method public setRegisterModuleCallBack(Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V
    .locals 0
    .param p1, "registerModuleCallBack"    # Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .prologue
    .line 533
    sput-object p1, Lcom/lsec/core/ipc/module/main/Main;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 534
    return-void
.end method

.method public update(I[I[F[Ljava/lang/String;)V
    .locals 7
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v6, 0x0

    new-instance v0, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/ipc/module/main/Main$Runnable_Update;-><init>(Lcom/lsec/core/ipc/module/main/Main;I[I[F[Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 251
    return-void
.end method
