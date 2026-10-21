.class public Lcom/lsec/core/util/UiNotifyEventString;
.super Lcom/lsec/core/util/UiNotifyEvent;
.source "UiNotifyEventString.java"


# instance fields
.field private mCallback:Lcom/syu/ipc/IModuleCallback;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/lsec/core/util/UiNotifyEvent;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/lsec/core/util/UiNotifyEventString;->mValue:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/lsec/core/util/UiNotifyEventString$1;

    invoke-direct {v0, p0}, Lcom/lsec/core/util/UiNotifyEventString$1;-><init>(Lcom/lsec/core/util/UiNotifyEventString;)V

    iput-object v0, p0, Lcom/lsec/core/util/UiNotifyEventString;->mCallback:Lcom/syu/ipc/IModuleCallback;

    .line 9
    return-void
.end method

.method static synthetic access$0(Lcom/lsec/core/util/UiNotifyEventString;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/lsec/core/util/UiNotifyEventString;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lsec/core/util/UiNotifyEventString;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    iput-object p1, p0, Lcom/lsec/core/util/UiNotifyEventString;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lsec/core/util/UiNotifyEventString;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public register(Lcom/syu/ipc/IRemoteToolkit;III)V
    .locals 3
    .param p1, "toolkit"    # Lcom/syu/ipc/IRemoteToolkit;
    .param p2, "moduleCode"    # I
    .param p3, "updateCode"    # I
    .param p4, "update"    # I

    .prologue
    .line 19
    :try_start_0
    invoke-interface {p1, p2}, Lcom/syu/ipc/IRemoteToolkit;->getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;

    move-result-object v1

    .line 20
    .local v1, "module":Lcom/syu/ipc/IRemoteModule;
    iget-object v2, p0, Lcom/lsec/core/util/UiNotifyEventString;->mCallback:Lcom/syu/ipc/IModuleCallback;

    invoke-interface {v1, v2, p3, p4}, Lcom/syu/ipc/IRemoteModule;->register(Lcom/syu/ipc/IModuleCallback;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .end local v1    # "module":Lcom/syu/ipc/IRemoteModule;
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
