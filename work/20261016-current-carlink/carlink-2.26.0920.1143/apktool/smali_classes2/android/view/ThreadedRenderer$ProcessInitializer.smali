.class Landroid/view/ThreadedRenderer$ProcessInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ThreadedRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessInitializer"
.end annotation


# static fields
.field static sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

.field private mGraphicsStatsService:Landroid/view/IGraphicsStats;

.field private mInitialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/ThreadedRenderer$ProcessInitializer;

    invoke-direct {v0}, Landroid/view/ThreadedRenderer$ProcessInitializer;-><init>()V

    sput-object v0, Landroid/view/ThreadedRenderer$ProcessInitializer;->sInstance:Landroid/view/ThreadedRenderer$ProcessInitializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z

    .line 6
    .line 7
    new-instance v0, Landroid/view/ThreadedRenderer$ProcessInitializer$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Landroid/view/ThreadedRenderer$ProcessInitializer$1;-><init>(Landroid/view/ThreadedRenderer$ProcessInitializer;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic access$000(Landroid/view/ThreadedRenderer$ProcessInitializer;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ThreadedRenderer$ProcessInitializer;->rotateBuffer()V

    return-void
.end method

.method private initGraphicsStats()V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "graphicsstats"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {v0}, Landroid/view/IGraphicsStats$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IGraphicsStats;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mGraphicsStatsService:Landroid/view/IGraphicsStats;

    .line 15
    .line 16
    invoke-direct {p0}, Landroid/view/ThreadedRenderer$ProcessInitializer;->requestBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    const-string v1, "ThreadedRenderer"

    .line 22
    .line 23
    const-string v2, "Could not acquire gfx stats buffer"

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method private initSched(J)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Landroid/view/ThreadedRenderer;->access$100(J)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p2, p1}, Landroid/app/IActivityManager;->setRenderThread(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    const-string p2, "ThreadedRenderer"

    .line 15
    .line 16
    const-string v0, "Failed to set scheduler for RenderThread"

    .line 17
    .line 18
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method private requestBuffer()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mAppContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mGraphicsStatsService:Landroid/view/IGraphicsStats;

    .line 10
    .line 11
    iget-object v2, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mGraphicsStatsCallback:Landroid/view/IGraphicsStatsCallback;

    .line 12
    .line 13
    invoke-interface {v1, v0, v2}, Landroid/view/IGraphicsStats;->requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Landroid/view/ThreadedRenderer;->access$300(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    const-string v1, "ThreadedRenderer"

    .line 30
    .line 31
    const-string v2, "Could not acquire gfx stats buffer"

    .line 32
    .line 33
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private rotateBuffer()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/view/ThreadedRenderer;->access$200()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/view/ThreadedRenderer$ProcessInitializer;->requestBuffer()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public declared-synchronized init(Landroid/content/Context;J)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mInitialized:Z

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Landroid/view/ThreadedRenderer$ProcessInitializer;->mAppContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {p0, p2, p3}, Landroid/view/ThreadedRenderer$ProcessInitializer;->initSched(J)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Landroid/view/ThreadedRenderer$ProcessInitializer;->initGraphicsStats()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0

    .line 27
    throw p1
.end method
