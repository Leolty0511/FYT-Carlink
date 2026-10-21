.class public Lcom/lsec/core/ipc/IConn;
.super Ljava/lang/Object;
.source "IConn.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc/IConn$Runnable_Cmd;
    }
.end annotation


# static fields
.field private static final MSG_CONNECT:I

.field public static mHandlerCmd:Landroid/os/Handler;

.field public static mHandlerThreadCmd:Landroid/os/HandlerThread;

.field public static mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;


# instance fields
.field private mConn:Lcom/lsec/core/ipc/IConn;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mIntent:Landroid/content/Intent;

.field protected mRemoteModule:Lcom/syu/ipc/IRemote;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/lsec/core/ipc/IConn;->mHandlerThreadCmd:Landroid/os/HandlerThread;

    .line 26
    sput-object v0, Lcom/lsec/core/ipc/IConn;->mHandlerCmd:Landroid/os/Handler;

    .line 29
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IConn-CMD-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lsec/core/ipc/IConn;->mHandlerThreadCmd:Landroid/os/HandlerThread;

    .line 30
    sget-object v0, Lcom/lsec/core/ipc/IConn;->mHandlerThreadCmd:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/lsec/core/ipc/IConn;->mHandlerThreadCmd:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/lsec/core/ipc/IConn;->mHandlerCmd:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;)V
    .locals 1
    .param p1, "interfaceApp"    # Lcom/lsec/core/util/InterfaceApp;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/lsec/core/ipc/IConn$1;

    invoke-direct {v0, p0}, Lcom/lsec/core/ipc/IConn$1;-><init>(Lcom/lsec/core/ipc/IConn;)V

    iput-object v0, p0, Lcom/lsec/core/ipc/IConn;->mHandler:Landroid/os/Handler;

    .line 35
    iput-object p0, p0, Lcom/lsec/core/ipc/IConn;->mConn:Lcom/lsec/core/ipc/IConn;

    .line 36
    sget-object v0, Lcom/lsec/core/ipc/IConn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    if-nez v0, :cond_0

    .line 37
    sput-object p1, Lcom/lsec/core/ipc/IConn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    .line 39
    :cond_0
    invoke-virtual {p0, p2}, Lcom/lsec/core/ipc/IConn;->connect(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/lsec/core/ipc/IConn;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lsec/core/ipc/IConn;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lsec/core/ipc/IConn;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lsec/core/ipc/IConn;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lsec/core/ipc/IConn;)Lcom/lsec/core/ipc/IConn;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lsec/core/ipc/IConn;->mConn:Lcom/lsec/core/ipc/IConn;

    return-object v0
.end method


# virtual methods
.method public cmd(I[I[F[Ljava/lang/String;)V
    .locals 7
    .param p1, "cmdCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, Lcom/lsec/core/ipc/IConn;->mHandlerCmd:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 81
    sget-object v6, Lcom/lsec/core/ipc/IConn;->mHandlerCmd:Landroid/os/Handler;

    new-instance v0, Lcom/lsec/core/ipc/IConn$Runnable_Cmd;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/ipc/IConn$Runnable_Cmd;-><init>(Lcom/lsec/core/ipc/IConn;I[I[F[Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    :cond_0
    return-void
.end method

.method public connect(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lsec/core/ipc/IConn;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/ipc/IConn;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public getAF(I[I[F[Ljava/lang/String;)[F
    .locals 2
    .param p1, "getCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 154
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    if-eqz v1, :cond_0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/syu/ipc/IRemote;->getAF(I[I[F[Ljava/lang/String;)[F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 161
    :goto_0
    return-object v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAI(I[I[F[Ljava/lang/String;)[I
    .locals 2
    .param p1, "getCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 143
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    if-eqz v1, :cond_0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/syu/ipc/IRemote;->getAI(I[I[F[Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 150
    :goto_0
    return-object v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAS(I[I[F[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "getCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 165
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    if-eqz v1, :cond_0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/syu/ipc/IRemote;->getAS(I[I[F[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 172
    :goto_0
    return-object v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getF(I[I[F[Ljava/lang/String;)F
    .locals 2
    .param p1, "getCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 121
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    if-eqz v1, :cond_0

    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/syu/ipc/IRemote;->getF(I[I[F[Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 128
    :goto_0
    return v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getI(I[I[F[Ljava/lang/String;)I
    .locals 2
    .param p1, "getCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    if-eqz v1, :cond_0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/syu/ipc/IRemote;->getI(I[I[F[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 117
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getS(I[I[F[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "getCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    if-eqz v1, :cond_0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/syu/ipc/IRemote;->getS(I[I[F[Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 139
    :goto_0
    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lsec/core/ipc/IConn;->mIntent:Landroid/content/Intent;

    .line 44
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 70
    invoke-static {p2}, Lcom/syu/ipc/IRemote$Stub;->asInterface(Landroid/os/IBinder;)Lcom/syu/ipc/IRemote;

    move-result-object v0

    iput-object v0, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    .line 71
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    .line 76
    iget-object v0, p0, Lcom/lsec/core/ipc/IConn;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lsec/core/ipc/IConn;->connect(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public registerCallback(Lcom/syu/ipc/ICallback;IZ)V
    .locals 2
    .param p1, "cb"    # Lcom/syu/ipc/ICallback;
    .param p2, "updateCode"    # I
    .param p3, "cbNow"    # Z

    .prologue
    .line 176
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    if-eqz v1, :cond_0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    invoke-interface {v1, p1, p2, p3}, Lcom/syu/ipc/IRemote;->registerCallback(Lcom/syu/ipc/ICallback;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/syu/ipc/ICallback;I)V
    .locals 2
    .param p1, "cb"    # Lcom/syu/ipc/ICallback;
    .param p2, "updateCode"    # I

    .prologue
    .line 186
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    if-eqz v1, :cond_0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/lsec/core/ipc/IConn;->mRemoteModule:Lcom/syu/ipc/IRemote;

    invoke-interface {v1, p1, p2}, Lcom/syu/ipc/IRemote;->unregisterCallback(Lcom/syu/ipc/ICallback;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
