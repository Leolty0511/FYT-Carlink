.class public Lcom/lsec/core/ipc/module/main/Tpms;
.super Lcom/syu/ipc/IModuleCallback$Stub;
.source "Tpms.java"

# interfaces
.implements Lcom/lsec/core/ipc/IConnStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;
    }
.end annotation


# static fields
.field public static final DATA:[I

.field private static final INSTANCE:Lcom/lsec/core/ipc/module/main/Tpms;

.field public static final PROXY:Lcom/lsec/core/ipc/ModuleProxy;

.field public static isFirstConn:Z

.field public static isMTUSerialObdEnable:Z

.field public static mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

.field public static mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/ipc/module/main/Tpms;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 18
    new-instance v0, Lcom/lsec/core/ipc/module/main/Tpms;

    invoke-direct {v0}, Lcom/lsec/core/ipc/module/main/Tpms;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Tpms;->INSTANCE:Lcom/lsec/core/ipc/module/main/Tpms;

    .line 24
    new-instance v0, Lcom/lsec/core/util/UiNotifyEvent;

    invoke-direct {v0}, Lcom/lsec/core/util/UiNotifyEvent;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Tpms;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    .line 25
    new-instance v0, Lcom/lsec/core/ipc/ModuleProxy;

    invoke-direct {v0}, Lcom/lsec/core/ipc/ModuleProxy;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Tpms;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    .line 26
    const/16 v0, 0x258

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Tpms;->DATA:[I

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/syu/ipc/IModuleCallback$Stub;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lsec/core/ipc/module/main/Tpms;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/lsec/core/ipc/module/main/Tpms;->INSTANCE:Lcom/lsec/core/ipc/module/main/Tpms;

    return-object v0
.end method


# virtual methods
.method public onConnected(Lcom/syu/ipc/IRemoteToolkit;)V
    .locals 5
    .param p1, "toolkit"    # Lcom/syu/ipc/IRemoteToolkit;

    .prologue
    .line 40
    :try_start_0
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tpms;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v3, 0x8

    invoke-interface {p1, v3}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 41
    invoke-static {}, Lcom/lsec/core/ipc/module/main/Tpms;->getInstance()Lcom/lsec/core/ipc/module/main/Tpms;

    move-result-object v0

    .line 42
    .local v0, "callback":Lcom/syu/ipc/IModuleCallback;
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tpms;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    if-eqz v2, :cond_0

    .line 43
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tpms;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-interface {v2, v0}, Lcom/lsec/core/ipc/IRegisterModuleCallBack;->register(Lcom/syu/ipc/IModuleCallback;)V

    .line 56
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/lsec/core/ipc/module/main/Tpms;->isFirstConn:Z

    .line 60
    .end local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :goto_1
    return-void

    .line 45
    .restart local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :cond_0
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tpms;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 46
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tpms;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 47
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tpms;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 48
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tpms;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 49
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tpms;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 50
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tpms;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 51
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tpms;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 52
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tpms;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 53
    sget-object v2, Lcom/lsec/core/ipc/module/main/Tpms;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v3, 0x9

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    .end local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/lsec/core/ipc/module/main/Tpms;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 65
    return-void
.end method

.method public setRegisterModuleCallBack(Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V
    .locals 0
    .param p1, "registerModuleCallBack"    # Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .prologue
    .line 93
    sput-object p1, Lcom/lsec/core/ipc/module/main/Tpms;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 94
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
    .line 32
    const/4 v6, 0x0

    new-instance v0, Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/ipc/module/main/Tpms$Runnable_Update;-><init>(Lcom/lsec/core/ipc/module/main/Tpms;I[I[F[Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 33
    return-void
.end method
