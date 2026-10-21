.class public Lcom/lsec/core/ipc/module/main/Tv;
.super Lcom/syu/ipc/IModuleCallback$Stub;
.source "Tv.java"

# interfaces
.implements Lcom/lsec/core/ipc/IConnStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;
    }
.end annotation


# static fields
.field public static final CHANNEL_CNT_MAX:I = 0x100

.field public static CHANNEL_FREQ:[I

.field public static CHANNEL_FREQ_STR:[Ljava/lang/String;

.field public static DATA:[I

.field private static INSTANCE:Lcom/lsec/core/ipc/module/main/Tv;

.field public static PROXY:Lcom/lsec/core/ipc/ModuleProxy;

.field public static mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

.field public static mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

.field public static sChannelCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/ipc/module/main/Tv;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 19
    new-instance v0, Lcom/lsec/core/ipc/module/main/Tv;

    invoke-direct {v0}, Lcom/lsec/core/ipc/module/main/Tv;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Tv;->INSTANCE:Lcom/lsec/core/ipc/module/main/Tv;

    .line 29
    new-instance v0, Lcom/lsec/core/util/UiNotifyEvent;

    invoke-direct {v0}, Lcom/lsec/core/util/UiNotifyEvent;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Tv;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    .line 30
    new-instance v0, Lcom/lsec/core/ipc/ModuleProxy;

    invoke-direct {v0}, Lcom/lsec/core/ipc/ModuleProxy;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Tv;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    .line 31
    const/16 v0, 0x1e

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Tv;->DATA:[I

    .line 34
    new-array v0, v1, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Tv;->CHANNEL_FREQ:[I

    .line 35
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/lsec/core/ipc/module/main/Tv;->CHANNEL_FREQ_STR:[Ljava/lang/String;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/syu/ipc/IModuleCallback$Stub;-><init>()V

    .line 27
    return-void
.end method

.method public static channelCnt(I[I[F[Ljava/lang/String;)V
    .locals 7
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/16 v4, 0x100

    const/4 v6, 0x0

    .line 48
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    sget v2, Lcom/lsec/core/ipc/module/main/Tv;->sChannelCnt:I

    aget v3, p1, v6

    if-eq v2, v3, :cond_2

    .line 50
    aget v2, p1, v6

    if-nez v2, :cond_0

    .line 51
    aget v2, p1, v6

    sput v2, Lcom/lsec/core/ipc/module/main/Tv;->sChannelCnt:I

    .line 53
    :cond_0
    aget v2, p1, v6

    if-le v2, v4, :cond_1

    .line 54
    aput v4, p1, v6

    .line 56
    :cond_1
    :goto_0
    sget v2, Lcom/lsec/core/ipc/module/main/Tv;->sChannelCnt:I

    aget v3, p1, v6

    if-lt v2, v3, :cond_3

    .line 69
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tv;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 72
    :cond_2
    return-void

    .line 57
    :cond_3
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tv;->CHANNEL_FREQ:[I

    sget v3, Lcom/lsec/core/ipc/module/main/Tv;->sChannelCnt:I

    sget-object v4, Lcom/lsec/core/ipc/module/main/Tv;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    sget v5, Lcom/lsec/core/ipc/module/main/Tv;->sChannelCnt:I

    invoke-virtual {v4, v6, v5, v6}, Lcom/lsec/core/ipc/ModuleProxy;->getI(III)I

    move-result v4

    aput v4, v2, v3

    .line 59
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tv;->CHANNEL_FREQ:[I

    sget v3, Lcom/lsec/core/ipc/module/main/Tv;->sChannelCnt:I

    aget v2, v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v1, v2, v3

    .line 60
    .local v1, "freq":F
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#.00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "df":Ljava/text/DecimalFormat;
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_4

    .line 62
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tv;->CHANNEL_FREQ_STR:[Ljava/lang/String;

    sget v3, Lcom/lsec/core/ipc/module/main/Tv;->sChannelCnt:I

    const-string v4, "0.00"

    aput-object v4, v2, v3

    .line 66
    :goto_1
    sget v2, Lcom/lsec/core/ipc/module/main/Tv;->sChannelCnt:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/lsec/core/ipc/module/main/Tv;->sChannelCnt:I

    goto :goto_0

    .line 64
    :cond_4
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tv;->CHANNEL_FREQ_STR:[Ljava/lang/String;

    sget v3, Lcom/lsec/core/ipc/module/main/Tv;->sChannelCnt:I

    float-to-double v4, v1

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1
.end method

.method public static getInstance()Lcom/lsec/core/ipc/module/main/Tv;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/lsec/core/ipc/module/main/Tv;->INSTANCE:Lcom/lsec/core/ipc/module/main/Tv;

    return-object v0
.end method

.method public static updateNotify(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 39
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/lsec/core/ipc/module/main/Tv;->DATA:[I

    aget v0, v0, p0

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 41
    sget-object v0, Lcom/lsec/core/ipc/module/main/Tv;->DATA:[I

    aget v1, p1, v2

    aput v1, v0, p0

    .line 42
    sget-object v0, Lcom/lsec/core/ipc/module/main/Tv;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public onConnected(Lcom/syu/ipc/IRemoteToolkit;)V
    .locals 5
    .param p1, "toolkit"    # Lcom/syu/ipc/IRemoteToolkit;

    .prologue
    .line 82
    :try_start_0
    sget-object v3, Lcom/lsec/core/ipc/module/main/Tv;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x6

    invoke-interface {p1, v4}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    invoke-static {}, Lcom/lsec/core/ipc/module/main/Tv;->getInstance()Lcom/lsec/core/ipc/module/main/Tv;

    move-result-object v0

    .line 88
    .local v0, "callback":Lcom/syu/ipc/IModuleCallback;
    sget-object v3, Lcom/lsec/core/ipc/module/main/Tv;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    if-eqz v3, :cond_1

    .line 89
    sget-object v3, Lcom/lsec/core/ipc/module/main/Tv;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-interface {v3, v0}, Lcom/lsec/core/ipc/IRegisterModuleCallBack;->register(Lcom/syu/ipc/IModuleCallback;)V

    .line 94
    :cond_0
    return-void

    .line 83
    .end local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x1e

    if-ge v2, v3, :cond_0

    .line 92
    sget-object v3, Lcom/lsec/core/ipc/module/main/Tv;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/lsec/core/ipc/module/main/Tv;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 99
    return-void
.end method

.method public setRegisterModuleCallBack(Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V
    .locals 0
    .param p1, "registerModuleCallBack"    # Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .prologue
    .line 139
    sput-object p1, Lcom/lsec/core/ipc/module/main/Tv;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 140
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
    .line 76
    const/4 v6, 0x0

    new-instance v0, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/ipc/module/main/Tv$Runnable_Update;-><init>(Lcom/lsec/core/ipc/module/main/Tv;I[I[F[Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 77
    return-void
.end method
