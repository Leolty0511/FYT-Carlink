.class public Lcom/lsec/core/ipc/module/main/Dvr;
.super Lcom/syu/ipc/IModuleCallback$Stub;
.source "Dvr.java"

# interfaces
.implements Lcom/lsec/core/ipc/IConnStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc/module/main/Dvr$Runnable_Update;
    }
.end annotation


# static fields
.field public static DATA:[I

.field private static INSTANCE:Lcom/lsec/core/ipc/module/main/Dvr;

.field public static PROXY:Lcom/lsec/core/ipc/ModuleProxy;

.field public static mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

.field public static mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvr;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 17
    new-instance v0, Lcom/lsec/core/ipc/module/main/Dvr;

    invoke-direct {v0}, Lcom/lsec/core/ipc/module/main/Dvr;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvr;->INSTANCE:Lcom/lsec/core/ipc/module/main/Dvr;

    .line 27
    new-instance v0, Lcom/lsec/core/util/UiNotifyEvent;

    invoke-direct {v0}, Lcom/lsec/core/util/UiNotifyEvent;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvr;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    .line 28
    new-instance v0, Lcom/lsec/core/ipc/ModuleProxy;

    invoke-direct {v0}, Lcom/lsec/core/ipc/ModuleProxy;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvr;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    .line 29
    const/16 v0, 0x32

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Dvr;->DATA:[I

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

.method public static getInstance()Lcom/lsec/core/ipc/module/main/Dvr;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvr;->INSTANCE:Lcom/lsec/core/ipc/module/main/Dvr;

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

    .line 32
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvr;->DATA:[I

    aget v0, v0, p0

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 34
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvr;->DATA:[I

    aget v1, p1, v2

    aput v1, v0, p0

    .line 35
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvr;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public onConnected(Lcom/syu/ipc/IRemoteToolkit;)V
    .locals 5
    .param p1, "toolkit"    # Lcom/syu/ipc/IRemoteToolkit;

    .prologue
    .line 48
    :try_start_0
    sget-object v3, Lcom/lsec/core/ipc/module/main/Dvr;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v4, 0x9

    invoke-interface {p1, v4}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    invoke-static {}, Lcom/lsec/core/ipc/module/main/Dvr;->getInstance()Lcom/lsec/core/ipc/module/main/Dvr;

    move-result-object v0

    .line 54
    .local v0, "callback":Lcom/lsec/core/ipc/module/main/Dvr;
    sget-object v3, Lcom/lsec/core/ipc/module/main/Dvr;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    if-eqz v3, :cond_1

    .line 55
    sget-object v3, Lcom/lsec/core/ipc/module/main/Dvr;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-interface {v3, v0}, Lcom/lsec/core/ipc/IRegisterModuleCallBack;->register(Lcom/syu/ipc/IModuleCallback;)V

    .line 60
    :cond_0
    return-void

    .line 49
    .end local v0    # "callback":Lcom/lsec/core/ipc/module/main/Dvr;
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "callback":Lcom/lsec/core/ipc/module/main/Dvr;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x32

    if-ge v2, v3, :cond_0

    .line 58
    sget-object v3, Lcom/lsec/core/ipc/module/main/Dvr;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/lsec/core/ipc/module/main/Dvr;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 65
    return-void
.end method

.method public setRegisterModuleCallBack(Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V
    .locals 0
    .param p1, "registerModuleCallBack"    # Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .prologue
    .line 97
    sput-object p1, Lcom/lsec/core/ipc/module/main/Dvr;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 98
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
    .line 42
    const/4 v6, 0x0

    new-instance v0, Lcom/lsec/core/ipc/module/main/Dvr$Runnable_Update;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/ipc/module/main/Dvr$Runnable_Update;-><init>(Lcom/lsec/core/ipc/module/main/Dvr;I[I[F[Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 43
    return-void
.end method
