.class public Lcom/syu/ipc/RemoteModuleBsp;
.super Lcom/syu/ipc/IRemoteModule$Stub;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/syu/ipc/RemoteModuleBsp;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/syu/ipc/RemoteModuleBsp;

    invoke-direct {v0}, Lcom/syu/ipc/RemoteModuleBsp;-><init>()V

    sput-object v0, Lcom/syu/ipc/RemoteModuleBsp;->INSTANCE:Lcom/syu/ipc/RemoteModuleBsp;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/syu/ipc/IRemoteModule$Stub;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/syu/ipc/RemoteModuleBsp;
    .locals 1

    sget-object v0, Lcom/syu/ipc/RemoteModuleBsp;->INSTANCE:Lcom/syu/ipc/RemoteModuleBsp;

    return-object v0
.end method


# virtual methods
.method public cmd(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public register(Lcom/syu/ipc/IModuleCallback;II)V
    .locals 2

    .line 1
    const-string v0, "fyt_service"

    .line 2
    .line 3
    const-string v1, "----register register----"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-ltz p2, :cond_6

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    if-lt p2, v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    sget-object v0, Lcom/syu/ipc/DataSyu;->MCLS:[Lcom/syu/ipc/ModuleCallbackList;

    .line 19
    .line 20
    aget-object v1, v0, p2

    .line 21
    .line 22
    if-nez v1, :cond_3

    .line 23
    .line 24
    monitor-enter p0

    .line 25
    :try_start_0
    aget-object v1, v0, p2

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    new-instance v1, Lcom/syu/ipc/ModuleCallbackList;

    .line 30
    .line 31
    invoke-direct {v1}, Lcom/syu/ipc/ModuleCallbackList;-><init>()V

    .line 32
    .line 33
    .line 34
    aput-object v1, v0, p2

    .line 35
    .line 36
    :cond_2
    monitor-exit p0

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1

    .line 41
    :cond_3
    :goto_0
    aget-object v1, v0, p2

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Lcom/syu/ipc/ModuleCallbackList;->register(Lcom/syu/ipc/IModuleCallback;)Z

    .line 44
    .line 45
    .line 46
    if-nez p3, :cond_4

    .line 47
    .line 48
    return-void

    .line 49
    :cond_4
    const/4 p1, 0x4

    .line 50
    if-eq p2, p1, :cond_5

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_5
    const/4 p1, 0x1

    .line 54
    new-array p1, p1, [Ljava/lang/String;

    .line 55
    .line 56
    const/4 p3, 0x0

    .line 57
    sget-object v1, Lcom/syu/ipc/DataSyu;->vechile:Ljava/lang/String;

    .line 58
    .line 59
    aput-object v1, p1, p3

    .line 60
    .line 61
    const/4 p3, 0x0

    .line 62
    invoke-static {v0, p2, p3, p3, p1}, Lcom/syu/ipc/ModuleCallbackList;->update([Lcom/syu/ipc/ModuleCallbackList;I[I[F[Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_6
    :goto_1
    return-void
.end method

.method public unregister(Lcom/syu/ipc/IModuleCallback;I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/syu/ipc/DataSyu;->MCLS:[Lcom/syu/ipc/ModuleCallbackList;

    .line 5
    .line 6
    aget-object p2, v0, p2

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p2, p1}, Lcom/syu/ipc/ModuleCallbackList;->unregister(Lcom/syu/ipc/IModuleCallback;)Z

    .line 11
    .line 12
    .line 13
    :cond_1
    return-void
.end method
