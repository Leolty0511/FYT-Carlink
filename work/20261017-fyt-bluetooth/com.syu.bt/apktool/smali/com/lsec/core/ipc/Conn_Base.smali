.class public Lcom/lsec/core/ipc/Conn_Base;
.super Ljava/lang/Object;
.source "Conn_Base.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc/Conn_Base$OnServiceConnected;,
        Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;
    }
.end annotation


# static fields
.field public static handler:Landroid/os/Handler;

.field static looper:Landroid/os/Looper;

.field public static mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;


# instance fields
.field clsName:Ljava/lang/String;

.field private mConnecting:Z

.field private mConnectionObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lsec/core/ipc/IConnStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mInstance:Lcom/lsec/core/ipc/Conn_Base;

.field private mRemoteToolkit:Lcom/syu/ipc/IRemoteToolkit;

.field private mRunnableConnect:Ljava/lang/Runnable;

.field pkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/4 v1, 0x0

    sput-object v1, Lcom/lsec/core/ipc/Conn_Base;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    .line 34
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ConnectionThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 36
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/lsec/core/ipc/Conn_Base;->looper:Landroid/os/Looper;

    .line 37
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/lsec/core/ipc/Conn_Base;->looper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/lsec/core/ipc/Conn_Base;->handler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "clsName"    # Ljava/lang/String;
    .param p3, "interfaceApp"    # Lcom/lsec/core/util/InterfaceApp;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/ipc/Conn_Base;->mInstance:Lcom/lsec/core/ipc/Conn_Base;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/ipc/Conn_Base;->mConnectionObservers:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Lcom/lsec/core/ipc/Conn_Base$1;

    invoke-direct {v0, p0}, Lcom/lsec/core/ipc/Conn_Base$1;-><init>(Lcom/lsec/core/ipc/Conn_Base;)V

    iput-object v0, p0, Lcom/lsec/core/ipc/Conn_Base;->mRunnableConnect:Ljava/lang/Runnable;

    .line 41
    iput-object p1, p0, Lcom/lsec/core/ipc/Conn_Base;->pkgName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/lsec/core/ipc/Conn_Base;->clsName:Ljava/lang/String;

    .line 43
    iput-object p0, p0, Lcom/lsec/core/ipc/Conn_Base;->mInstance:Lcom/lsec/core/ipc/Conn_Base;

    .line 44
    sget-object v0, Lcom/lsec/core/ipc/Conn_Base;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    if-nez v0, :cond_0

    .line 45
    sput-object p3, Lcom/lsec/core/ipc/Conn_Base;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    .line 47
    :cond_0
    invoke-virtual {p0, p4}, Lcom/lsec/core/ipc/Conn_Base;->connect(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/lsec/core/ipc/Conn_Base;)Lcom/syu/ipc/IRemoteToolkit;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lsec/core/ipc/Conn_Base;->mRemoteToolkit:Lcom/syu/ipc/IRemoteToolkit;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lsec/core/ipc/Conn_Base;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lsec/core/ipc/Conn_Base;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lsec/core/ipc/Conn_Base;Z)V
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/lsec/core/ipc/Conn_Base;->mConnecting:Z

    return-void
.end method

.method private connect(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delayMillis"    # J

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lsec/core/ipc/Conn_Base;->mConnecting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lsec/core/ipc/Conn_Base;->mRemoteToolkit:Lcom/syu/ipc/IRemoteToolkit;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/ipc/Conn_Base;->mContext:Landroid/content/Context;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/ipc/Conn_Base;->mConnecting:Z

    .line 64
    sget-object v0, Lcom/lsec/core/ipc/Conn_Base;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lsec/core/ipc/Conn_Base;->mRunnableConnect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public addObserver(Lcom/lsec/core/ipc/IConnStateListener;Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V
    .locals 3
    .param p1, "observer"    # Lcom/lsec/core/ipc/IConnStateListener;
    .param p2, "registerModuleCallBack"    # Lcom/lsec/core/ipc/IRegisterModuleCallBack;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lsec/core/ipc/Conn_Base;->mConnectionObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-interface {p1, p2}, Lcom/lsec/core/ipc/IConnStateListener;->setRegisterModuleCallBack(Lcom/lsec/core/ipc/IRegisterModuleCallBack;)V

    .line 85
    iget-object v0, p0, Lcom/lsec/core/ipc/Conn_Base;->mConnectionObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/lsec/core/ipc/Conn_Base;->mRemoteToolkit:Lcom/syu/ipc/IRemoteToolkit;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/lsec/core/ipc/Conn_Base;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/lsec/core/ipc/Conn_Base$OnServiceConnected;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/lsec/core/ipc/Conn_Base$OnServiceConnected;-><init>(Lcom/lsec/core/ipc/Conn_Base;Lcom/lsec/core/ipc/IConnStateListener;Lcom/lsec/core/ipc/Conn_Base$OnServiceConnected;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public clearObservers()V
    .locals 5

    .prologue
    .line 99
    iget-object v1, p0, Lcom/lsec/core/ipc/Conn_Base;->mRemoteToolkit:Lcom/syu/ipc/IRemoteToolkit;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/lsec/core/ipc/Conn_Base;->mConnectionObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/lsec/core/ipc/Conn_Base;->mConnectionObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 104
    return-void

    .line 100
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/ipc/IConnStateListener;

    .line 101
    .local v0, "observer":Lcom/lsec/core/ipc/IConnStateListener;
    sget-object v2, Lcom/lsec/core/ipc/Conn_Base;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;-><init>(Lcom/lsec/core/ipc/Conn_Base;Lcom/lsec/core/ipc/IConnStateListener;Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public connect(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/lsec/core/ipc/Conn_Base;->connect(Landroid/content/Context;J)V

    .line 56
    return-void
.end method

.method public getRemoteToolkit()Lcom/syu/ipc/IRemoteToolkit;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lsec/core/ipc/Conn_Base;->mRemoteToolkit:Lcom/syu/ipc/IRemoteToolkit;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 108
    invoke-static {p2}, Lcom/syu/ipc/IRemoteToolkit$Stub;->asInterface(Landroid/os/IBinder;)Lcom/syu/ipc/IRemoteToolkit;

    move-result-object v1

    iput-object v1, p0, Lcom/lsec/core/ipc/Conn_Base;->mRemoteToolkit:Lcom/syu/ipc/IRemoteToolkit;

    .line 109
    iget-object v1, p0, Lcom/lsec/core/ipc/Conn_Base;->mConnectionObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    return-void

    .line 109
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/ipc/IConnStateListener;

    .line 110
    .local v0, "observer":Lcom/lsec/core/ipc/IConnStateListener;
    sget-object v2, Lcom/lsec/core/ipc/Conn_Base;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/lsec/core/ipc/Conn_Base$OnServiceConnected;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lcom/lsec/core/ipc/Conn_Base$OnServiceConnected;-><init>(Lcom/lsec/core/ipc/Conn_Base;Lcom/lsec/core/ipc/IConnStateListener;Lcom/lsec/core/ipc/Conn_Base$OnServiceConnected;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 115
    iput-object v4, p0, Lcom/lsec/core/ipc/Conn_Base;->mRemoteToolkit:Lcom/syu/ipc/IRemoteToolkit;

    .line 116
    iget-object v1, p0, Lcom/lsec/core/ipc/Conn_Base;->mConnectionObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    iget-object v1, p0, Lcom/lsec/core/ipc/Conn_Base;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/lsec/core/ipc/Conn_Base;->connect(Landroid/content/Context;J)V

    .line 120
    return-void

    .line 116
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/ipc/IConnStateListener;

    .line 117
    .local v0, "observer":Lcom/lsec/core/ipc/IConnStateListener;
    sget-object v2, Lcom/lsec/core/ipc/Conn_Base;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;

    invoke-direct {v3, p0, v0, v4}, Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;-><init>(Lcom/lsec/core/ipc/Conn_Base;Lcom/lsec/core/ipc/IConnStateListener;Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeObserver(Lcom/lsec/core/ipc/IConnStateListener;)V
    .locals 3
    .param p1, "observer"    # Lcom/lsec/core/ipc/IConnStateListener;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/lsec/core/ipc/Conn_Base;->mConnectionObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/lsec/core/ipc/Conn_Base;->mRemoteToolkit:Lcom/syu/ipc/IRemoteToolkit;

    if-eqz v0, :cond_1

    .line 95
    sget-object v0, Lcom/lsec/core/ipc/Conn_Base;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;-><init>(Lcom/lsec/core/ipc/Conn_Base;Lcom/lsec/core/ipc/IConnStateListener;Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    :cond_1
    return-void
.end method
