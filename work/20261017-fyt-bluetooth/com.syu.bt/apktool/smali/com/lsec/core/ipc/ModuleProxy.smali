.class public Lcom/lsec/core/ipc/ModuleProxy;
.super Lcom/syu/ipc/IRemoteModule$Stub;
.source "ModuleProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/ipc/ModuleProxy$Runnable_Cmd;
    }
.end annotation


# static fields
.field public static mHandlerCmd:Landroid/os/Handler;

.field public static mHandlerThreadCmd:Landroid/os/HandlerThread;


# instance fields
.field private mRemoteModule:Lcom/syu/ipc/IRemoteModule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/lsec/core/ipc/ModuleProxy;->mHandlerThreadCmd:Landroid/os/HandlerThread;

    .line 12
    sput-object v0, Lcom/lsec/core/ipc/ModuleProxy;->mHandlerCmd:Landroid/os/Handler;

    .line 15
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ModuleProxy-CMD-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lsec/core/ipc/ModuleProxy;->mHandlerThreadCmd:Landroid/os/HandlerThread;

    .line 16
    sget-object v0, Lcom/lsec/core/ipc/ModuleProxy;->mHandlerThreadCmd:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 17
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/lsec/core/ipc/ModuleProxy;->mHandlerThreadCmd:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/lsec/core/ipc/ModuleProxy;->mHandlerCmd:Landroid/os/Handler;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/syu/ipc/IRemoteModule$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lsec/core/ipc/ModuleProxy;)Lcom/syu/ipc/IRemoteModule;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lsec/core/ipc/ModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    return-object v0
.end method


# virtual methods
.method public cmd(I)V
    .locals 1
    .param p1, "cmdCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public cmd(II)V
    .locals 3
    .param p1, "cmdCode"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-virtual {p0, p1, v0, v2, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public cmd(III)V
    .locals 3
    .param p1, "cmdCode"    # I
    .param p2, "value1"    # I
    .param p3, "value2"    # I

    .prologue
    const/4 v2, 0x0

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    invoke-virtual {p0, p1, v0, v2, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public cmd(IIII)V
    .locals 3
    .param p1, "cmdCode"    # I
    .param p2, "value1"    # I
    .param p3, "value2"    # I
    .param p4, "value3"    # I

    .prologue
    const/4 v2, 0x0

    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p4, v0, v1

    invoke-virtual {p0, p1, v0, v2, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public cmd(ILjava/lang/String;)V
    .locals 3
    .param p1, "cmdCode"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v2, v2, v0}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public cmd(I[I[F[Ljava/lang/String;)V
    .locals 7
    .param p1, "cmdCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Lcom/lsec/core/ipc/ModuleProxy;->mHandlerCmd:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 58
    sget-object v6, Lcom/lsec/core/ipc/ModuleProxy;->mHandlerCmd:Landroid/os/Handler;

    new-instance v0, Lcom/lsec/core/ipc/ModuleProxy$Runnable_Cmd;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/ipc/ModuleProxy$Runnable_Cmd;-><init>(Lcom/lsec/core/ipc/ModuleProxy;I[I[F[Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    :cond_0
    return-void
.end method

.method public get(II)Lcom/syu/ipc/ModuleObject;
    .locals 6
    .param p1, "getCode"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v1, p0, Lcom/lsec/core/ipc/ModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 97
    .local v1, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v1, :cond_0

    .line 99
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p2, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, p1, v3, v4, v5}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 105
    :cond_0
    :goto_0
    return-object v2

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;
    .locals 3
    .param p1, "getCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/lsec/core/ipc/ModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 84
    .local v1, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 92
    :goto_0
    return-object v2

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getI(II)I
    .locals 6
    .param p1, "getCode"    # I
    .param p2, "valueIfNotOk"    # I

    .prologue
    .line 109
    iget-object v2, p0, Lcom/lsec/core/ipc/ModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 110
    .local v2, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v2, :cond_0

    .line 112
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v2, p1, v3, v4, v5}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;

    move-result-object v1

    .line 113
    .local v1, "obj":Lcom/syu/ipc/ModuleObject;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/syu/ipc/ModuleObject;->ints:[I

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/syu/ipc/ModuleObject;->ints:[I

    array-length v3, v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 114
    iget-object v3, v1, Lcom/syu/ipc/ModuleObject;->ints:[I

    const/4 v4, 0x0

    aget p2, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v1    # "obj":Lcom/syu/ipc/ModuleObject;
    .end local p2    # "valueIfNotOk":I
    :cond_0
    :goto_0
    return p2

    .line 115
    .restart local p2    # "valueIfNotOk":I
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getI(III)I
    .locals 7
    .param p1, "getCode"    # I
    .param p2, "value"    # I
    .param p3, "valueIfNotOk"    # I

    .prologue
    const/4 v6, 0x1

    .line 124
    iget-object v2, p0, Lcom/lsec/core/ipc/ModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 125
    .local v2, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v2, :cond_0

    .line 127
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p2, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, p1, v3, v4, v5}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;

    move-result-object v1

    .line 128
    .local v1, "obj":Lcom/syu/ipc/ModuleObject;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/syu/ipc/ModuleObject;->ints:[I

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/syu/ipc/ModuleObject;->ints:[I

    array-length v3, v3

    if-lt v3, v6, :cond_0

    .line 129
    iget-object v3, v1, Lcom/syu/ipc/ModuleObject;->ints:[I

    const/4 v4, 0x0

    aget p3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1    # "obj":Lcom/syu/ipc/ModuleObject;
    .end local p3    # "valueIfNotOk":I
    :cond_0
    :goto_0
    return p3

    .line 131
    .restart local p3    # "valueIfNotOk":I
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRemoteModule()Lcom/syu/ipc/IRemoteModule;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lsec/core/ipc/ModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    return-object v0
.end method

.method public getS(II)Ljava/lang/String;
    .locals 8
    .param p1, "getCode"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 139
    iget-object v2, p0, Lcom/lsec/core/ipc/ModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 140
    .local v2, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v2, :cond_0

    .line 142
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, p1, v4, v5, v6}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;

    move-result-object v1

    .line 143
    .local v1, "obj":Lcom/syu/ipc/ModuleObject;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    array-length v4, v4

    if-lt v4, v7, :cond_0

    .line 144
    iget-object v4, v1, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "obj":Lcom/syu/ipc/ModuleObject;
    :cond_0
    :goto_0
    return-object v3

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getS(III)Ljava/lang/String;
    .locals 8
    .param p1, "getCode"    # I
    .param p2, "value1"    # I
    .param p3, "value2"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 154
    iget-object v2, p0, Lcom/lsec/core/ipc/ModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 155
    .local v2, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v2, :cond_0

    .line 157
    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p2, v4, v5

    const/4 v5, 0x1

    aput p3, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, p1, v4, v5, v6}, Lcom/syu/ipc/IRemoteModule;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;

    move-result-object v1

    .line 158
    .local v1, "obj":Lcom/syu/ipc/ModuleObject;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    array-length v4, v4

    if-lt v4, v7, :cond_0

    .line 159
    iget-object v4, v1, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "obj":Lcom/syu/ipc/ModuleObject;
    :cond_0
    :goto_0
    return-object v3

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public register(Lcom/syu/ipc/IModuleCallback;II)V
    .locals 2
    .param p1, "callback"    # Lcom/syu/ipc/IModuleCallback;
    .param p2, "updateCode"    # I
    .param p3, "update"    # I

    .prologue
    .line 170
    iget-object v1, p0, Lcom/lsec/core/ipc/ModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 171
    .local v1, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v1, :cond_0

    .line 173
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/syu/ipc/IRemoteModule;->register(Lcom/syu/ipc/IModuleCallback;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setRemoteModule(Lcom/syu/ipc/IRemoteModule;)V
    .locals 0
    .param p1, "remoteModule"    # Lcom/syu/ipc/IRemoteModule;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lsec/core/ipc/ModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 28
    return-void
.end method

.method public unregister(Lcom/syu/ipc/IModuleCallback;I)V
    .locals 2
    .param p1, "callback"    # Lcom/syu/ipc/IModuleCallback;
    .param p2, "updateCode"    # I

    .prologue
    .line 182
    iget-object v1, p0, Lcom/lsec/core/ipc/ModuleProxy;->mRemoteModule:Lcom/syu/ipc/IRemoteModule;

    .line 183
    .local v1, "remoteModule":Lcom/syu/ipc/IRemoteModule;
    if-eqz v1, :cond_0

    .line 185
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/syu/ipc/IRemoteModule;->unregister(Lcom/syu/ipc/IModuleCallback;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
