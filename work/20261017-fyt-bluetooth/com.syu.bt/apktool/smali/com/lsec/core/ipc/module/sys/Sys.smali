.class public Lcom/lsec/core/ipc/module/sys/Sys;
.super Lcom/syu/ipc/IModuleCallback$Stub;
.source "Sys.java"

# interfaces
.implements Lcom/lsec/core/ipc/IConnStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc/module/sys/Sys$Runnable_Update;
    }
.end annotation


# static fields
.field public static DATA:[I

.field private static INSTANCE:Lcom/lsec/core/ipc/module/sys/Sys;

.field public static PROXY:Lcom/lsec/core/ipc/ModuleProxy;

.field public static mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

.field public static mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

.field public static simCardState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/ipc/module/sys/Sys;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 17
    new-instance v0, Lcom/lsec/core/ipc/module/sys/Sys;

    invoke-direct {v0}, Lcom/lsec/core/ipc/module/sys/Sys;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/sys/Sys;->INSTANCE:Lcom/lsec/core/ipc/module/sys/Sys;

    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/lsec/core/ipc/module/sys/Sys;->simCardState:I

    .line 29
    new-instance v0, Lcom/lsec/core/util/UiNotifyEvent;

    invoke-direct {v0}, Lcom/lsec/core/util/UiNotifyEvent;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/sys/Sys;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    .line 30
    new-instance v0, Lcom/lsec/core/ipc/ModuleProxy;

    invoke-direct {v0}, Lcom/lsec/core/ipc/ModuleProxy;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/sys/Sys;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    .line 31
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/sys/Sys;->DATA:[I

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

.method public static getInstance()Lcom/lsec/core/ipc/module/sys/Sys;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lsec/core/ipc/module/sys/Sys;->INSTANCE:Lcom/lsec/core/ipc/module/sys/Sys;

    return-object v0
.end method


# virtual methods
.method public onConnected(Lcom/syu/ipc/IRemoteToolkit;)V
    .locals 5
    .param p1, "toolkit"    # Lcom/syu/ipc/IRemoteToolkit;

    .prologue
    .line 41
    :try_start_0
    sget-object v3, Lcom/lsec/core/ipc/module/sys/Sys;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 43
    invoke-static {}, Lcom/lsec/core/ipc/module/sys/Sys;->getInstance()Lcom/lsec/core/ipc/module/sys/Sys;

    move-result-object v0

    .line 44
    .local v0, "callback":Lcom/syu/ipc/IModuleCallback;
    sget-object v3, Lcom/lsec/core/ipc/module/sys/Sys;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    if-eqz v3, :cond_1

    .line 45
    sget-object v3, Lcom/lsec/core/ipc/module/sys/Sys;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-interface {v3, v0}, Lcom/lsec/core/ipc/IRegisterModuleCallBack;->register(Lcom/syu/ipc/IModuleCallback;)V

    .line 53
    .end local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :cond_0
    :goto_0
    return-void

    .line 47
    .restart local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 48
    sget-object v3, Lcom/lsec/core/ipc/module/sys/Sys;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50
    .end local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/lsec/core/ipc/module/sys/Sys;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 58
    return-void
.end method

.method public setRegisterModuleCallBack(Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V
    .locals 0
    .param p1, "registerModuleCallBack"    # Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .prologue
    .line 88
    sput-object p1, Lcom/lsec/core/ipc/module/sys/Sys;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

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
    .line 35
    const/4 v6, 0x0

    new-instance v0, Lcom/lsec/core/ipc/module/sys/Sys$Runnable_Update;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/ipc/module/sys/Sys$Runnable_Update;-><init>(Lcom/lsec/core/ipc/module/sys/Sys;I[I[F[Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 36
    return-void
.end method
