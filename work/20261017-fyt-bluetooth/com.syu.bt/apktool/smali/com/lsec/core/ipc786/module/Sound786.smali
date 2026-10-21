.class public Lcom/lsec/core/ipc786/module/Sound786;
.super Lcom/lsec/core/ipc/IConn;
.source "Sound786.java"


# static fields
.field public static final ACTION_SOUND_CONNECT_SERVER:Ljava/lang/String; = "com.syu.ms.sound"

.field public static hInstance:Lcom/lsec/core/ipc786/module/Sound786;

.field public static mRegisterCallBack:Lcom/syu/ipc/IRegisterCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/lsec/core/ipc786/module/Sound786;->mRegisterCallBack:Lcom/syu/ipc/IRegisterCallBack;

    .line 17
    sput-object v0, Lcom/lsec/core/ipc786/module/Sound786;->hInstance:Lcom/lsec/core/ipc786/module/Sound786;

    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;Lcom/syu/ipc/IRegisterCallBack;)V
    .locals 1
    .param p1, "interfaceApp"    # Lcom/lsec/core/util/InterfaceApp;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "registerCallBack"    # Lcom/syu/ipc/IRegisterCallBack;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/lsec/core/ipc/IConn;-><init>(Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;)V

    .line 21
    const-string v0, "com.syu.ms.sound"

    invoke-virtual {p0, v0}, Lcom/lsec/core/ipc786/module/Sound786;->initAction(Ljava/lang/String;)V

    .line 22
    sput-object p0, Lcom/lsec/core/ipc786/module/Sound786;->hInstance:Lcom/lsec/core/ipc786/module/Sound786;

    .line 23
    sput-object p3, Lcom/lsec/core/ipc786/module/Sound786;->mRegisterCallBack:Lcom/syu/ipc/IRegisterCallBack;

    .line 24
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x1

    .line 28
    invoke-super {p0, p1, p2}, Lcom/lsec/core/ipc/IConn;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 30
    invoke-static {}, Lcom/lsec/core/ipc786/module/cb/Sound786_CB;->getInstance()Lcom/lsec/core/ipc786/module/cb/Sound786_CB;

    move-result-object v0

    .line 31
    .local v0, "callback":Lcom/syu/ipc/ICallback;
    sget-object v1, Lcom/lsec/core/ipc786/module/Sound786;->mRegisterCallBack:Lcom/syu/ipc/IRegisterCallBack;

    if-eqz v1, :cond_0

    .line 32
    sget-object v1, Lcom/lsec/core/ipc786/module/Sound786;->mRegisterCallBack:Lcom/syu/ipc/IRegisterCallBack;

    invoke-interface {v1, v0}, Lcom/syu/ipc/IRegisterCallBack;->register(Lcom/syu/ipc/ICallback;)V

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-static {}, Lcom/lsec/core/ipc786/module/cb/Sound786_CB;->getInstance()Lcom/lsec/core/ipc786/module/cb/Sound786_CB;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3}, Lcom/lsec/core/ipc786/module/Sound786;->registerCallback(Lcom/syu/ipc/ICallback;IZ)V

    .line 35
    invoke-static {}, Lcom/lsec/core/ipc786/module/cb/Sound786_CB;->getInstance()Lcom/lsec/core/ipc786/module/cb/Sound786_CB;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2, v3}, Lcom/lsec/core/ipc786/module/Sound786;->registerCallback(Lcom/syu/ipc/ICallback;IZ)V

    goto :goto_0
.end method
