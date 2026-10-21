.class public abstract Landroid/os/UEventObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UEventObserver$UEventThread;,
        Landroid/os/UEventObserver$UEvent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UEventObserver"

.field private static sThread:Landroid/os/UEventObserver$UEventThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()V
    .locals 0

    invoke-static {}, Landroid/os/UEventObserver;->nativeSetup()V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/os/UEventObserver;->nativeWaitForNextEvent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/os/UEventObserver;->nativeAddMatch(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/os/UEventObserver;->nativeRemoveMatch(Ljava/lang/String;)V

    return-void
.end method

.method private static getThread()Landroid/os/UEventObserver$UEventThread;
    .locals 2

    .line 1
    const-class v0, Landroid/os/UEventObserver;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Landroid/os/UEventObserver$UEventThread;

    .line 9
    .line 10
    invoke-direct {v1}, Landroid/os/UEventObserver$UEventThread;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object v1, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v1
.end method

.method private static native nativeAddMatch(Ljava/lang/String;)V
.end method

.method private static native nativeRemoveMatch(Ljava/lang/String;)V
.end method

.method private static native nativeSetup()V
.end method

.method private static native nativeWaitForNextEvent()Ljava/lang/String;
.end method

.method private static peekThread()Landroid/os/UEventObserver$UEventThread;
    .locals 2

    .line 1
    const-class v0, Landroid/os/UEventObserver;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method


# virtual methods
.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/UEventObserver;->stopObserving()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public abstract onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end method

.method public final startObserving(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/UEventObserver;->getThread()Landroid/os/UEventObserver$UEventThread;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1, p0}, Landroid/os/UEventObserver$UEventThread;->addObserver(Ljava/lang/String;Landroid/os/UEventObserver;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string/jumbo v0, "match substring must be non-empty"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public final stopObserving()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/UEventObserver;->getThread()Landroid/os/UEventObserver$UEventThread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/os/UEventObserver$UEventThread;->removeObserver(Landroid/os/UEventObserver;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
