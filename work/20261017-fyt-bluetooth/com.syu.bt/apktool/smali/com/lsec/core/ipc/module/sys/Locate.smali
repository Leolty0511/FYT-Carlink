.class public Lcom/lsec/core/ipc/module/sys/Locate;
.super Lcom/syu/ipc/IModuleCallback$Stub;
.source "Locate.java"

# interfaces
.implements Lcom/lsec/core/ipc/IConnStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc/module/sys/Locate$Runnable_Update;
    }
.end annotation


# static fields
.field public static DATA:[I

.field private static INSTANCE:Lcom/lsec/core/ipc/module/sys/Locate;

.field public static PROXY:Lcom/lsec/core/ipc/ModuleProxy;

.field public static mCity:Ljava/lang/String;

.field public static mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

.field public static mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/lsec/core/ipc/module/sys/Locate;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 18
    new-instance v0, Lcom/lsec/core/ipc/module/sys/Locate;

    invoke-direct {v0}, Lcom/lsec/core/ipc/module/sys/Locate;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/sys/Locate;->INSTANCE:Lcom/lsec/core/ipc/module/sys/Locate;

    .line 28
    new-instance v0, Lcom/lsec/core/util/UiNotifyEvent;

    invoke-direct {v0}, Lcom/lsec/core/util/UiNotifyEvent;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/sys/Locate;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    .line 29
    new-instance v0, Lcom/lsec/core/ipc/ModuleProxy;

    invoke-direct {v0}, Lcom/lsec/core/ipc/ModuleProxy;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc/module/sys/Locate;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    .line 30
    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/lsec/core/ipc/module/sys/Locate;->DATA:[I

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/sys/Locate;->mCity:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/syu/ipc/IModuleCallback$Stub;-><init>()V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/lsec/core/ipc/module/sys/Locate;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/lsec/core/ipc/module/sys/Locate;->INSTANCE:Lcom/lsec/core/ipc/module/sys/Locate;

    return-object v0
.end method


# virtual methods
.method public onConnected(Lcom/syu/ipc/IRemoteToolkit;)V
    .locals 6
    .param p1, "toolkit"    # Lcom/syu/ipc/IRemoteToolkit;

    .prologue
    const/4 v5, 0x1

    .line 42
    :try_start_0
    sget-object v3, Lcom/lsec/core/ipc/module/sys/Locate;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    invoke-static {}, Lcom/lsec/core/ipc/module/sys/Locate;->getInstance()Lcom/lsec/core/ipc/module/sys/Locate;

    move-result-object v0

    .line 48
    .local v0, "callback":Lcom/syu/ipc/IModuleCallback;
    sget-object v3, Lcom/lsec/core/ipc/module/sys/Locate;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    if-eqz v3, :cond_1

    .line 49
    sget-object v3, Lcom/lsec/core/ipc/module/sys/Locate;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    invoke-interface {v3, v0}, Lcom/lsec/core/ipc/IRegisterModuleCallBack;->register(Lcom/syu/ipc/IModuleCallback;)V

    .line 54
    :cond_0
    return-void

    .line 43
    .end local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 51
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "callback":Lcom/syu/ipc/IModuleCallback;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 52
    sget-object v3, Lcom/lsec/core/ipc/module/sys/Locate;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    invoke-virtual {v3, v0, v2, v5}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public onDisconnected()V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/lsec/core/ipc/module/sys/Locate;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lsec/core/ipc/ModuleProxy;->setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V

    .line 59
    return-void
.end method

.method public setRegisterModuleCallBack(Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V
    .locals 0
    .param p1, "registerModuleCallBack"    # Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .prologue
    .line 92
    sput-object p1, Lcom/lsec/core/ipc/module/sys/Locate;->mRegisterCallBack:Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .line 93
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
    .line 36
    const/4 v6, 0x0

    new-instance v0, Lcom/lsec/core/ipc/module/sys/Locate$Runnable_Update;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/ipc/module/sys/Locate$Runnable_Update;-><init>(Lcom/lsec/core/ipc/module/sys/Locate;I[I[F[Ljava/lang/String;)V

    invoke-static {v6, v0}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 37
    return-void
.end method
