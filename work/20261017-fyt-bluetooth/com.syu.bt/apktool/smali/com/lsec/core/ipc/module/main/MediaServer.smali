.class public Lcom/lsec/core/ipc/module/main/MediaServer;
.super Lcom/syu/ipc/IModuleCallback$Stub;
.source "MediaServer.java"

# interfaces
.implements Lcom/lsec/core/ipc/IConnStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc/module/main/MediaServer$Runnable_Update;
    }
.end annotation


# static fields
.field public static DATA:[I

.field private static INSTANCE:Lcom/lsec/core/ipc/module/main/MediaServer;

.field public static PROXY:Lcom/lsec/core/ipc/ModuleProxy;

.field public static mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

.field public static mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/ipc/module/main/MediaServer;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 16
    new-instance v0, Lcom/lsec/core/ipc/module/main/MediaServer;

    invoke-direct {v0}, Lcom/lsec/core/ipc/module/main/MediaServer;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/MediaServer;->INSTANCE:Lcom/lsec/core/ipc/module/main/MediaServer;

    .line 25
    new-instance v0, Lcom/lsec/core/util/UiNotifyEvent;

    invoke-direct {v0}, Lcom/lsec/core/util/UiNotifyEvent;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/MediaServer;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    .line 26
    new-instance v0, Lcom/lsec/core/ipc/ModuleProxy;

    invoke-direct {v0}, Lcom/lsec/core/ipc/ModuleProxy;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/MediaServer;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    .line 27
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/MediaServer;->DATA:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/syu/ipc/IModuleCallback$Stub;-><init>()V

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/lsec/core/ipc/module/main/MediaServer;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/lsec/core/ipc/module/main/MediaServer;->INSTANCE:Lcom/lsec/core/ipc/module/main/MediaServer;

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

    .line 30
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/lsec/core/ipc/module/main/MediaServer;->DATA:[I

    aget v0, v0, p0

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 32
    sget-object v0, Lcom/lsec/core/ipc/module/main/MediaServer;->DATA:[I

    aget v1, p1, v2

    aput v1, v0, p0

    .line 33
    sget-object v0, Lcom/lsec/core/ipc/module/main/MediaServer;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public onConnected(Lcom/syu/ipc/IRemoteToolkit;)V
    .locals 5
    .param p1, "toolkit"    # Lcom/syu/ipc/IRemoteToolkit;

    .prologue
    .line 46
    :try_start_0
    sget-object v3, Lcom/lsec/core/ipc/module/main/MediaServer;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    invoke-static {}, Lcom/lsec/core/ipc/module/main/MediaServer;->getInstance()Lcom/lsec/core/ipc/module/main/MediaServer;

    move-result-object v0

    .line 53
    .local v0, "callback":Lcom/lsec/core/ipc/module/main/MediaServer;
    sget-object v3, Lcom/lsec/core/ipc/module/main/MediaServer;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    if-eqz v3, :cond_1

    .line 54
    sget-object v3, Lcom/lsec/core/ipc/module/main/MediaServer;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-interface {v3, v0}, Lcom/lsec/core/ipc/IRegisterModuleCallBack;->register(Lcom/syu/ipc/IModuleCallback;)V

    .line 59
    .end local v0    # "callback":Lcom/lsec/core/ipc/module/main/MediaServer;
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "callback":Lcom/lsec/core/ipc/module/main/MediaServer;
    :cond_1
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 57
    sget-object v3, Lcom/lsec/core/ipc/module/main/MediaServer;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/lsec/core/ipc/module/main/MediaServer;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 64
    return-void
.end method

.method public setRegisterModuleCallBack(Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V
    .locals 0
    .param p1, "registerModuleCallBack"    # Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .prologue
    .line 88
    sput-object p1, Lcom/lsec/core/ipc/module/main/MediaServer;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 89
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
    .line 40
    const/4 v6, 0x0

    new-instance v0, Lcom/lsec/core/ipc/module/main/MediaServer$Runnable_Update;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/ipc/module/main/MediaServer$Runnable_Update;-><init>(Lcom/lsec/core/ipc/module/main/MediaServer;I[I[F[Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 41
    return-void
.end method
