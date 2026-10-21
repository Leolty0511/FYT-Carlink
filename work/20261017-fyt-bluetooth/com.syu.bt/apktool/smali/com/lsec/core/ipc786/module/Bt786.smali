.class public Lcom/lsec/core/ipc786/module/Bt786;
.super Lcom/lsec/core/ipc/IConn;
.source "Bt786.java"


# static fields
.field public static ACTION_BT_CONNECT_SERVER:Ljava/lang/String;

.field public static hInstance:Lcom/lsec/core/ipc786/module/Bt786;

.field public static mRegisterCallBack:Lcom/syu/ipc/IRegisterCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    sput-object v1, Lcom/lsec/core/ipc786/module/Bt786;->mRegisterCallBack:Lcom/syu/ipc/IRegisterCallBack;

    .line 18
    const-string v0, "com.syu.ms.bt"

    sput-object v0, Lcom/lsec/core/ipc786/module/Bt786;->ACTION_BT_CONNECT_SERVER:Ljava/lang/String;

    .line 19
    sput-object v1, Lcom/lsec/core/ipc786/module/Bt786;->hInstance:Lcom/lsec/core/ipc786/module/Bt786;

    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;Lcom/syu/ipc/IRegisterCallBack;)V
    .locals 1
    .param p1, "interfaceApp"    # Lcom/lsec/core/util/InterfaceApp;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "registerCallBack"    # Lcom/syu/ipc/IRegisterCallBack;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/lsec/core/ipc/IConn;-><init>(Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;)V

    .line 23
    sget-object v0, Lcom/lsec/core/ipc786/module/Bt786;->ACTION_BT_CONNECT_SERVER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lsec/core/ipc786/module/Bt786;->initAction(Ljava/lang/String;)V

    .line 24
    sput-object p0, Lcom/lsec/core/ipc786/module/Bt786;->hInstance:Lcom/lsec/core/ipc786/module/Bt786;

    .line 25
    sput-object p3, Lcom/lsec/core/ipc786/module/Bt786;->mRegisterCallBack:Lcom/syu/ipc/IRegisterCallBack;

    .line 26
    return-void
.end method

.method public static cmdBt(IILjava/lang/String;)V
    .locals 4
    .param p0, "cmd"    # I
    .param p1, "value"    # I
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x2

    const/4 v1, 0x0

    .line 131
    if-eqz p2, :cond_1

    .line 132
    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v2

    invoke-static {p0, v1, v1, v0}, Lcom/lsec/core/ipc786/module/Bt786;->cmdStatic(I[I[F[Ljava/lang/String;)V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    if-nez p2, :cond_2

    if-ne p1, v0, :cond_2

    .line 134
    invoke-static {p0, v1, v1, v1}, Lcom/lsec/core/ipc786/module/Bt786;->cmdStatic(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_2
    if-nez p2, :cond_0

    if-eq p1, v0, :cond_0

    .line 136
    new-array v0, v3, [I

    aput p1, v0, v2

    invoke-static {p0, v0, v1, v1}, Lcom/lsec/core/ipc786/module/Bt786;->cmdStatic(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static cmdStatic(I[I[F[Ljava/lang/String;)V
    .locals 1
    .param p0, "cmdCode"    # I
    .param p1, "intData"    # [I
    .param p2, "fltData"    # [F
    .param p3, "strData"    # [Ljava/lang/String;

    .prologue
    .line 126
    sget-object v0, Lcom/lsec/core/ipc786/module/Bt786;->hInstance:Lcom/lsec/core/ipc786/module/Bt786;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/lsec/core/ipc786/module/Bt786;->hInstance:Lcom/lsec/core/ipc786/module/Bt786;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/ipc786/module/Bt786;->cmd(I[I[F[Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method

.method public static devName(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 78
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    aget-object v0, p3, v2

    if-nez v0, :cond_1

    .line 80
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    aget-object v0, p3, v2

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevName:Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static devPin(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 66
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    aget-object v0, p3, v2

    if-nez v0, :cond_1

    .line 68
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    aget-object v0, p3, v2

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevPin:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static localAddr(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 102
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    aget-object v0, p3, v2

    if-nez v0, :cond_1

    .line 104
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    aget-object v0, p3, v2

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sDevAddr:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static phoneAddr(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 114
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    aget-object v0, p3, v2

    if-nez v0, :cond_1

    .line 116
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    aget-object v0, p3, v2

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static phoneName(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 90
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    aget-object v0, p3, v2

    if-nez v0, :cond_1

    .line 92
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    aget-object v0, p3, v2

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneName:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static phoneNumber(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 54
    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/lsec/core/util/IpcUtil;->strsOk([Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    aget-object v0, p3, v2

    if-nez v0, :cond_1

    .line 56
    const-string v0, ""

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    aget-object v0, p3, v2

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    aget-object v0, p3, v2

    sput-object v0, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static update(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p0, "updateCode"    # I
    .param p1, "ints"    # [I
    .param p2, "flts"    # [F
    .param p3, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 45
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/lsec/core/util/IpcUtil;->intsOk([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v0, v0, p0

    aget v1, p1, v2

    if-eq v0, v1, :cond_0

    .line 47
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    aget v1, p1, v2

    aput v1, v0, p0

    .line 48
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->mUiNotifyEvent:Lcom/lsec/core/util/UiNotifyEvent;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lsec/core/util/UiNotifyEvent;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/lsec/core/ipc/IConn;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 31
    invoke-static {}, Lcom/lsec/core/ipc786/module/cb/Bt786_CB;->getInstance()Lcom/lsec/core/ipc786/module/cb/Bt786_CB;

    move-result-object v0

    .line 32
    .local v0, "callback":Lcom/syu/ipc/ICallback;
    sget-object v2, Lcom/lsec/core/ipc786/module/Bt786;->mRegisterCallBack:Lcom/syu/ipc/IRegisterCallBack;

    if-eqz v2, :cond_1

    .line 33
    sget-object v2, Lcom/lsec/core/ipc786/module/Bt786;->mRegisterCallBack:Lcom/syu/ipc/IRegisterCallBack;

    invoke-interface {v2, v0}, Lcom/syu/ipc/IRegisterCallBack;->register(Lcom/syu/ipc/ICallback;)V

    .line 42
    :cond_0
    return-void

    .line 35
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    .line 36
    const/16 v2, 0x1d

    if-ne v1, v2, :cond_2

    .line 37
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->registerCallback(Lcom/syu/ipc/ICallback;IZ)V

    .line 35
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/lsec/core/ipc786/module/Bt786;->registerCallback(Lcom/syu/ipc/ICallback;IZ)V

    goto :goto_1
.end method
