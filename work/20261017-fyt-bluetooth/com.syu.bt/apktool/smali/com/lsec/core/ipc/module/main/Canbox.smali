.class public Lcom/lsec/core/ipc/module/main/Canbox;
.super Lcom/syu/ipc/IModuleCallback$Stub;
.source "Canbox.java"

# interfaces
.implements Lcom/lsec/core/ipc/IConnStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc/module/main/Canbox$Runnable_Update;
    }
.end annotation


# static fields
.field public static DATA:[I

.field private static INSTANCE:Lcom/lsec/core/ipc/module/main/Canbox;

.field public static PROXY:Lcom/lsec/core/ipc/ModuleProxy;

.field public static mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

.field public static mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbox;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 17
    new-instance v0, Lcom/lsec/core/ipc/module/main/Canbox;

    invoke-direct {v0}, Lcom/lsec/core/ipc/module/main/Canbox;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbox;->INSTANCE:Lcom/lsec/core/ipc/module/main/Canbox;

    .line 27
    new-instance v0, Lcom/lsec/core/util/UiNotifyEvent;

    invoke-direct {v0}, Lcom/lsec/core/util/UiNotifyEvent;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbox;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    .line 28
    new-instance v0, Lcom/lsec/core/ipc/ModuleProxy;

    invoke-direct {v0}, Lcom/lsec/core/ipc/ModuleProxy;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbox;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    .line 29
    const/16 v0, 0x78

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/main/Canbox;->DATA:[I

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

.method public static getInstance()Lcom/lsec/core/ipc/module/main/Canbox;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lsec/core/ipc/module/main/Canbox;->INSTANCE:Lcom/lsec/core/ipc/module/main/Canbox;

    return-object v0
.end method


# virtual methods
.method public onConnected(Lcom/syu/ipc/IRemoteToolkit;)V
    .locals 5
    .param p1, "toolkit"    # Lcom/syu/ipc/IRemoteToolkit;

    .prologue
    .line 39
    :try_start_0
    sget-object v3, Lcom/lsec/core/ipc/module/main/Canbox;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v4, 0xe

    invoke-interface {p1, v4}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    invoke-static {}, Lcom/lsec/core/ipc/module/main/Canbox;->getInstance()Lcom/lsec/core/ipc/module/main/Canbox;

    move-result-object v0

    .line 46
    .local v0, "callback":Lcom/lsec/core/ipc/module/main/Canbox;
    sget-object v3, Lcom/lsec/core/ipc/module/main/Canbox;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    if-eqz v3, :cond_1

    .line 47
    sget-object v3, Lcom/lsec/core/ipc/module/main/Canbox;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-interface {v3, v0}, Lcom/lsec/core/ipc/IRegisterModuleCallBack;->register(Lcom/syu/ipc/IModuleCallback;)V

    .line 52
    .end local v0    # "callback":Lcom/lsec/core/ipc/module/main/Canbox;
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 49
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "callback":Lcom/lsec/core/ipc/module/main/Canbox;
    :cond_1
    const/16 v2, 0x64

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x78

    if-ge v2, v3, :cond_0

    .line 50
    sget-object v3, Lcom/lsec/core/ipc/module/main/Canbox;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lcom/lsec/core/ipc/module/main/Canbox;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 57
    return-void
.end method

.method public setRegisterModuleCallBack(Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V
    .locals 0
    .param p1, "registerModuleCallBack"    # Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .prologue
    .line 85
    sput-object p1, Lcom/lsec/core/ipc/module/main/Canbox;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 86
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
    .line 33
    const/4 v6, 0x0

    new-instance v0, Lcom/lsec/core/ipc/module/main/Canbox$Runnable_Update;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/ipc/module/main/Canbox$Runnable_Update;-><init>(Lcom/lsec/core/ipc/module/main/Canbox;I[I[F[Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 34
    return-void
.end method
