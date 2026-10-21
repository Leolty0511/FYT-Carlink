.class public Lcom/lsec/core/ipc/module/main/Gsensor;
.super Lcom/syu/ipc/IModuleCallback$Stub;
.source "Gsensor.java"

# interfaces
.implements Lcom/lsec/core/ipc/IConnStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc/module/main/Gsensor$Runnable_Update;
    }
.end annotation


# static fields
.field public static final DATA:[I

.field private static INSTANCE:Lcom/lsec/core/ipc/module/main/Gsensor; = null

.field public static final PROXY:Lcom/lsec/core/ipc/ModuleProxy;

.field public static final U_GSENSOR_ON:I = 0x3

.field public static final U_LOCK_RECORD:I = 0x1

.field public static final U_SLEEP_30S_COLLIDE_RECORD:I = 0x8

.field public static final U_SLEEP_STOP_RECORD:I = 0x2

.field public static final U_STANDBY_COLLIDE_SCREENON:I = 0x7

.field public static final U_STANDBY_RECORD_TIME:I = 0x6

.field public static final U_STANDBY_SENSITIVITY:I = 0x5

.field public static final U_WORK_SENSITIVITY:I = 0x4

.field public static mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

.field public static mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/ipc/module/main/Gsensor;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 17
    new-instance v0, Lcom/lsec/core/ipc/module/main/Gsensor;

    invoke-direct {v0}, Lcom/lsec/core/ipc/module/main/Gsensor;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Gsensor;->INSTANCE:Lcom/lsec/core/ipc/module/main/Gsensor;

    .line 36
    new-instance v0, Lcom/lsec/core/util/UiNotifyEvent;

    invoke-direct {v0}, Lcom/lsec/core/util/UiNotifyEvent;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Gsensor;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    .line 37
    new-instance v0, Lcom/lsec/core/ipc/ModuleProxy;

    invoke-direct {v0}, Lcom/lsec/core/ipc/ModuleProxy;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Gsensor;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    .line 38
    const/16 v0, 0x14

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Gsensor;->DATA:[I

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

.method public static getInstance()Lcom/lsec/core/ipc/module/main/Gsensor;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lsec/core/ipc/module/main/Gsensor;->INSTANCE:Lcom/lsec/core/ipc/module/main/Gsensor;

    return-object v0
.end method

.method public static updateNotify(I[I[F[Ljava/lang/String;)V
    .locals 2
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    .line 41
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/lsec/core/ipc/module/main/Gsensor;->DATA:[I

    const/4 v1, 0x0

    aget v1, p1, v1

    aput v1, v0, p0

    .line 43
    sget-object v0, Lcom/lsec/core/ipc/module/main/Gsensor;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

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
    .line 55
    :try_start_0
    sget-object v3, Lcom/lsec/core/ipc/module/main/Gsensor;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v4, 0x11

    invoke-interface {p1, v4}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-static {}, Lcom/lsec/core/ipc/module/main/Gsensor;->getInstance()Lcom/lsec/core/ipc/module/main/Gsensor;

    move-result-object v0

    .line 62
    .local v0, "callback":Lcom/lsec/core/ipc/module/main/Gsensor;
    sget-object v3, Lcom/lsec/core/ipc/module/main/Gsensor;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    if-eqz v3, :cond_1

    .line 63
    sget-object v3, Lcom/lsec/core/ipc/module/main/Gsensor;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-interface {v3, v0}, Lcom/lsec/core/ipc/IRegisterModuleCallBack;->register(Lcom/syu/ipc/IModuleCallback;)V

    .line 68
    .end local v0    # "callback":Lcom/lsec/core/ipc/module/main/Gsensor;
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 65
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "callback":Lcom/lsec/core/ipc/module/main/Gsensor;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 66
    sget-object v3, Lcom/lsec/core/ipc/module/main/Gsensor;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/lsec/core/ipc/module/main/Gsensor;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 73
    return-void
.end method

.method public setRegisterModuleCallBack(Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V
    .locals 0
    .param p1, "registerModuleCallBack"    # Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .prologue
    .line 113
    sput-object p1, Lcom/lsec/core/ipc/module/main/Gsensor;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 114
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
    .line 49
    const/4 v6, 0x0

    new-instance v0, Lcom/lsec/core/ipc/module/main/Gsensor$Runnable_Update;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/ipc/module/main/Gsensor$Runnable_Update;-><init>(Lcom/lsec/core/ipc/module/main/Gsensor;I[I[F[Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 50
    return-void
.end method
