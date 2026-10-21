.class public abstract Landroid/telecom/Logging/Runnable;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSubsession:Landroid/telecom/Logging/Session;

.field private final mSubsessionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/telecom/Logging/Runnable$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/telecom/Logging/Runnable$1;-><init>(Landroid/telecom/Logging/Runnable;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/telecom/Logging/Runnable;->mRunnable:Ljava/lang/Runnable;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    new-instance p2, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Landroid/telecom/Logging/Runnable;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-object p2, p0, Landroid/telecom/Logging/Runnable;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    :goto_0
    iput-object p1, p0, Landroid/telecom/Logging/Runnable;->mSubsessionName:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic access$000(Landroid/telecom/Logging/Runnable;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/telecom/Logging/Runnable;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/telecom/Logging/Runnable;)Landroid/telecom/Logging/Session;
    .locals 0

    iget-object p0, p0, Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/telecom/Logging/Runnable;Landroid/telecom/Logging/Session;)Landroid/telecom/Logging/Session;
    .locals 0

    iput-object p1, p0, Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;

    return-object p1
.end method

.method public static synthetic access$200(Landroid/telecom/Logging/Runnable;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telecom/Logging/Runnable;->mSubsessionName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/telecom/Logging/Runnable;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;

    .line 5
    .line 6
    invoke-static {v1}, Landroid/telecom/Log;->cancelSubsession(Landroid/telecom/Logging/Session;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public final getRunnableToCancel()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Logging/Runnable;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public abstract loggedRun()V
.end method

.method public prepare()Ljava/lang/Runnable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/telecom/Logging/Runnable;->cancel()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/telecom/Log;->createSubsession()Landroid/telecom/Logging/Session;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/telecom/Logging/Runnable;->mSubsession:Landroid/telecom/Logging/Session;

    .line 9
    .line 10
    iget-object v0, p0, Landroid/telecom/Logging/Runnable;->mRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    return-object v0
.end method
