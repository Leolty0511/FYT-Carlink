.class public final Landroid/os/PowerManager$PrfmLock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PrfmLock"
.end annotation


# instance fields
.field private mCount:I

.field private mHintId:I

.field private final mPackageName:Ljava/lang/String;

.field private final mReleaser:Ljava/lang/Runnable;

.field private mTag:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/os/PowerManager;


# direct methods
.method private constructor <init>(Landroid/os/PowerManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/os/PowerManager$PrfmLock;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Landroid/os/PowerManager$PrfmLock$1;

    invoke-direct {p1, p0}, Landroid/os/PowerManager$PrfmLock$1;-><init>(Landroid/os/PowerManager$PrfmLock;)V

    iput-object p1, p0, Landroid/os/PowerManager$PrfmLock;->mReleaser:Ljava/lang/Runnable;

    .line 4
    iput-object p2, p0, Landroid/os/PowerManager$PrfmLock;->mTag:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Landroid/os/PowerManager$PrfmLock;->mPackageName:Ljava/lang/String;

    .line 6
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/os/PowerManager$PrfmLock;->mToken:Landroid/os/IBinder;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroid/os/PowerManager$PrfmLock;->mCount:I

    .line 8
    iput p4, p0, Landroid/os/PowerManager$PrfmLock;->mHintId:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/PowerManager;Ljava/lang/String;Ljava/lang/String;ILandroid/os/PowerManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/PowerManager$PrfmLock;-><init>(Landroid/os/PowerManager;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private acquireLocked()V
    .locals 5

    .line 1
    iget v0, p0, Landroid/os/PowerManager$PrfmLock;->mCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Landroid/os/PowerManager$PrfmLock;->mCount:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/os/PowerManager$PrfmLock;->this$0:Landroid/os/PowerManager;

    .line 10
    .line 11
    iget-object v0, v0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/os/PowerManager$PrfmLock;->mReleaser:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager$PrfmLock;->this$0:Landroid/os/PowerManager;

    .line 19
    .line 20
    iget-object v0, v0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 21
    .line 22
    iget-object v1, p0, Landroid/os/PowerManager$PrfmLock;->mToken:Landroid/os/IBinder;

    .line 23
    .line 24
    iget-object v2, p0, Landroid/os/PowerManager$PrfmLock;->mTag:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p0, Landroid/os/PowerManager$PrfmLock;->mPackageName:Ljava/lang/String;

    .line 27
    .line 28
    iget v4, p0, Landroid/os/PowerManager$PrfmLock;->mHintId:I

    .line 29
    .line 30
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IPowerManager;->acquirePrfmLock(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/os/PowerManager$PrfmLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManager$PrfmLock;->acquireLocked()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public acquire(J)V
    .locals 4

    .line 4
    iget-object v0, p0, Landroid/os/PowerManager$PrfmLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManager$PrfmLock;->acquireLocked()V

    const-wide/16 v1, 0x1f4

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    :goto_0
    move-wide p1, v1

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x1388

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/os/PowerManager$PrfmLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/PowerManager$PrfmLock;->mReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public finalize()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/PowerManager$PrfmLock;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroid/os/PowerManager$PrfmLock;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager$PrfmLock;->this$0:Landroid/os/PowerManager;

    .line 9
    .line 10
    iget-object v1, v1, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    iget-object v2, p0, Landroid/os/PowerManager$PrfmLock;->mReleaser:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroid/os/PowerManager$PrfmLock;->this$0:Landroid/os/PowerManager;

    .line 18
    .line 19
    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 20
    .line 21
    iget-object v2, p0, Landroid/os/PowerManager$PrfmLock;->mToken:Landroid/os/IBinder;

    .line 22
    .line 23
    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->releasePrfmLock(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    throw v1
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/PowerManager$PrfmLock;->mToken:Landroid/os/IBinder;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroid/os/PowerManager$PrfmLock;->mCount:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    iput v1, p0, Landroid/os/PowerManager$PrfmLock;->mCount:I

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroid/os/PowerManager$PrfmLock;->this$0:Landroid/os/PowerManager;

    .line 13
    .line 14
    iget-object v1, v1, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    iget-object v2, p0, Landroid/os/PowerManager$PrfmLock;->mReleaser:Ljava/lang/Runnable;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager$PrfmLock;->this$0:Landroid/os/PowerManager;

    .line 22
    .line 23
    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 24
    .line 25
    iget-object v2, p0, Landroid/os/PowerManager$PrfmLock;->mToken:Landroid/os/IBinder;

    .line 26
    .line 27
    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->releasePrfmLock(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v1

    .line 33
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    throw v1
.end method
