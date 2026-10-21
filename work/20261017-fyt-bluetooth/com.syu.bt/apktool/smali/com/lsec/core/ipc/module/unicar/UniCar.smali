.class public Lcom/lsec/core/ipc/module/unicar/UniCar;
.super Lcom/syu/ipc/IModuleCallback$Stub;
.source "UniCar.java"

# interfaces
.implements Lcom/lsec/core/ipc/IConnStateListener;


# static fields
.field public static DATA:[I

.field private static INSTANCE:Lcom/lsec/core/ipc/module/unicar/UniCar;

.field public static PROXY:Lcom/lsec/core/ipc/ModuleProxy;

.field public static mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

.field public static mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/ipc/module/unicar/UniCar;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 17
    new-instance v0, Lcom/lsec/core/ipc/module/unicar/UniCar;

    invoke-direct {v0}, Lcom/lsec/core/ipc/module/unicar/UniCar;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/unicar/UniCar;->INSTANCE:Lcom/lsec/core/ipc/module/unicar/UniCar;

    .line 27
    new-instance v0, Lcom/lsec/core/util/UiNotifyEvent;

    invoke-direct {v0}, Lcom/lsec/core/util/UiNotifyEvent;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/unicar/UniCar;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    .line 28
    new-instance v0, Lcom/lsec/core/ipc/ModuleProxy;

    invoke-direct {v0}, Lcom/lsec/core/ipc/ModuleProxy;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/unicar/UniCar;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    .line 29
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/unicar/UniCar;->DATA:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/syu/ipc/IModuleCallback$Stub;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/lsec/core/ipc/module/unicar/UniCar;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lsec/core/ipc/module/unicar/UniCar;->INSTANCE:Lcom/lsec/core/ipc/module/unicar/UniCar;

    return-object v0
.end method


# virtual methods
.method public onConnected(Lcom/syu/ipc/IRemoteToolkit;)V
    .locals 5
    .param p1, "toolkit"    # Lcom/syu/ipc/IRemoteToolkit;

    .prologue
    .line 44
    :try_start_0
    sget-object v3, Lcom/lsec/core/ipc/module/unicar/UniCar;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 46
    invoke-static {}, Lcom/lsec/core/ipc/module/unicar/UniCar;->getInstance()Lcom/lsec/core/ipc/module/unicar/UniCar;

    move-result-object v0

    .line 47
    .local v0, "callback":Lcom/syu/ipc/IModuleCallback;
    sget-object v3, Lcom/lsec/core/ipc/module/unicar/UniCar;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    if-eqz v3, :cond_1

    .line 48
    sget-object v3, Lcom/lsec/core/ipc/module/unicar/UniCar;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-interface {v3, v0}, Lcom/lsec/core/ipc/IRegisterModuleCallBack;->register(Lcom/syu/ipc/IModuleCallback;)V

    .line 56
    .end local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :cond_0
    :goto_0
    return-void

    .line 50
    .restart local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 51
    sget-object v3, Lcom/lsec/core/ipc/module/unicar/UniCar;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    .end local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/lsec/core/ipc/module/unicar/UniCar;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 61
    return-void
.end method

.method public setRegisterModuleCallBack(Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V
    .locals 0
    .param p1, "registerModuleCallBack"    # Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .prologue
    .line 65
    sput-object p1, Lcom/lsec/core/ipc/module/unicar/UniCar;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 66
    return-void
.end method

.method public update(I[I[F[Ljava/lang/String;)V
    .locals 2
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
    .line 33
    if-ltz p1, :cond_1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    .line 34
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/lsec/core/ipc/module/unicar/UniCar;->DATA:[I

    const/4 v1, 0x0

    aget v1, p2, v1

    aput v1, v0, p1

    .line 37
    :cond_0
    sget-object v0, Lcom/lsec/core/ipc/module/unicar/UniCar;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 39
    :cond_1
    return-void
.end method
