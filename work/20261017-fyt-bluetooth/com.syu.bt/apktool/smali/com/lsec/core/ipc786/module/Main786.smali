.class public Lcom/lsec/core/ipc786/module/Main786;
.super Lcom/lsec/core/ipc/IConn;
.source "Main786.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc786/module/Main786$Runnable_REQEUST;
    }
.end annotation


# static fields
.field public static final ACTION_MAIN_CONNECT_SERVER:Ljava/lang/String; = "com.syu.ms.main"

.field private static REQEUST_APP_ID:Lcom/lsec/core/ipc786/module/Main786$Runnable_REQEUST;

.field public static hInstance:Lcom/lsec/core/ipc786/module/Main786;

.field public static mRegisterCallBack:Lcom/syu/ipc/IRegisterCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/lsec/core/ipc786/module/Main786;->mRegisterCallBack:Lcom/syu/ipc/IRegisterCallBack;

    .line 20
    sput-object v0, Lcom/lsec/core/ipc786/module/Main786;->hInstance:Lcom/lsec/core/ipc786/module/Main786;

    .line 67
    sput-object v0, Lcom/lsec/core/ipc786/module/Main786;->REQEUST_APP_ID:Lcom/lsec/core/ipc786/module/Main786$Runnable_REQEUST;

    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;Lcom/syu/ipc/IRegisterCallBack;)V
    .locals 1
    .param p1, "interfaceApp"    # Lcom/lsec/core/util/InterfaceApp;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "registerCallBack"    # Lcom/syu/ipc/IRegisterCallBack;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/lsec/core/ipc/IConn;-><init>(Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;)V

    .line 24
    const-string v0, "com.syu.ms.main"

    invoke-virtual {p0, v0}, Lcom/lsec/core/ipc786/module/Main786;->initAction(Ljava/lang/String;)V

    .line 25
    sput-object p0, Lcom/lsec/core/ipc786/module/Main786;->hInstance:Lcom/lsec/core/ipc786/module/Main786;

    .line 26
    sput-object p3, Lcom/lsec/core/ipc786/module/Main786;->mRegisterCallBack:Lcom/syu/ipc/IRegisterCallBack;

    .line 27
    return-void
.end method

.method public static cmdStatic(I[I[F[Ljava/lang/String;)V
    .locals 1
    .param p0, "cmdCode"    # I
    .param p1, "intData"    # [I
    .param p2, "fltData"    # [F
    .param p3, "strData"    # [Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lcom/lsec/core/ipc786/module/Main786;->hInstance:Lcom/lsec/core/ipc786/module/Main786;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/lsec/core/ipc786/module/Main786;->hInstance:Lcom/lsec/core/ipc786/module/Main786;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/ipc786/module/Main786;->cmd(I[I[F[Ljava/lang/String;)V

    .line 60
    :cond_0
    return-void
.end method

.method public static requestAppId(I)V
    .locals 4
    .param p0, "value"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 63
    sput p0, Lcom/lsec/core/ipc/module/main/Main;->sAppIdRequest:I

    .line 64
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v2, v0, v3, v3}, Lcom/lsec/core/ipc786/module/Main786;->cmdStatic(I[I[F[Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static requestAppIdByOnTop(I)V
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 70
    sget-object v0, Lcom/lsec/core/ipc/IConn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/lsec/core/ipc/IConn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    invoke-interface {v0}, Lcom/lsec/core/util/InterfaceApp;->isAppTop()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {p0}, Lcom/lsec/core/ipc786/module/Main786;->requestAppId(I)V

    .line 76
    sget-object v0, Lcom/lsec/core/ipc786/module/Main786;->REQEUST_APP_ID:Lcom/lsec/core/ipc786/module/Main786$Runnable_REQEUST;

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lcom/lsec/core/ipc786/module/Main786;->REQEUST_APP_ID:Lcom/lsec/core/ipc786/module/Main786$Runnable_REQEUST;

    invoke-virtual {v0}, Lcom/lsec/core/ipc786/module/Main786$Runnable_REQEUST;->stop()V

    .line 79
    :cond_1
    new-instance v0, Lcom/lsec/core/ipc786/module/Main786$Runnable_REQEUST;

    invoke-direct {v0}, Lcom/lsec/core/ipc786/module/Main786$Runnable_REQEUST;-><init>()V

    sput-object v0, Lcom/lsec/core/ipc786/module/Main786;->REQEUST_APP_ID:Lcom/lsec/core/ipc786/module/Main786$Runnable_REQEUST;

    .line 80
    sget-object v0, Lcom/lsec/core/ipc/Conn_Base;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/lsec/core/ipc786/module/Main786;->REQEUST_APP_ID:Lcom/lsec/core/ipc786/module/Main786$Runnable_REQEUST;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static update(I[I[F[Ljava/lang/String;)V
    .locals 4
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 106
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "bNoCondition2Handle":Z
    sparse-switch p0, :sswitch_data_0

    .line 115
    :goto_0
    if-nez v0, :cond_0

    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v1, v1, p0

    aget v2, p1, v3

    if-eq v1, v2, :cond_1

    .line 116
    :cond_0
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v2, p1, v3

    aput v2, v1, p0

    .line 117
    sget-object v1, Lcom/lsec/core/ipc/module/main/Main;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 120
    .end local v0    # "bNoCondition2Handle":Z
    :cond_1
    return-void

    .line 111
    .restart local v0    # "bNoCondition2Handle":Z
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 108
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x29 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/lsec/core/ipc/IConn;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 32
    invoke-static {}, Lcom/lsec/core/ipc786/module/cb/Main786_CB;->getInstance()Lcom/lsec/core/ipc786/module/cb/Main786_CB;

    move-result-object v0

    .line 33
    .local v0, "callback":Lcom/syu/ipc/ICallback;
    sget-object v2, Lcom/lsec/core/ipc786/module/Main786;->mRegisterCallBack:Lcom/syu/ipc/IRegisterCallBack;

    if-eqz v2, :cond_2

    .line 34
    sget-object v2, Lcom/lsec/core/ipc786/module/Main786;->mRegisterCallBack:Lcom/syu/ipc/IRegisterCallBack;

    invoke-interface {v2, v0}, Lcom/syu/ipc/IRegisterCallBack;->register(Lcom/syu/ipc/ICallback;)V

    .line 50
    :cond_0
    sget-object v2, Lcom/lsec/core/ipc/IConn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    if-eqz v2, :cond_1

    .line 51
    sget-object v2, Lcom/lsec/core/ipc/IConn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    invoke-interface {v2}, Lcom/lsec/core/util/InterfaceApp;->onConnected_Main()V

    .line 52
    sget-object v2, Lcom/lsec/core/ipc/IConn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    invoke-interface {v2}, Lcom/lsec/core/util/InterfaceApp;->isAppTop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    sget-object v2, Lcom/lsec/core/ipc/IConn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    invoke-interface {v2}, Lcom/lsec/core/util/InterfaceApp;->requestAppIdRight()V

    .line 55
    :cond_1
    return-void

    .line 36
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 37
    sparse-switch v1, :sswitch_data_0

    .line 44
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lsec/core/ipc786/module/Main786;->registerCallback(Lcom/syu/ipc/ICallback;IZ)V

    .line 36
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :sswitch_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lsec/core/ipc786/module/Main786;->registerCallback(Lcom/syu/ipc/ICallback;IZ)V

    goto :goto_1

    .line 37
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x29 -> :sswitch_0
        0x46 -> :sswitch_0
    .end sparse-switch
.end method
