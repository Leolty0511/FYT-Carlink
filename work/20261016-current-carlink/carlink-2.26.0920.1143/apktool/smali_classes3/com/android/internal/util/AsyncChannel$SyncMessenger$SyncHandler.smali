.class Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncChannel$SyncMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncHandler"
.end annotation


# instance fields
.field private mLockObject:Ljava/lang/Object;

.field private mResultMsg:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/util/AsyncChannel$SyncMessenger;


# direct methods
.method private constructor <init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->this$0:Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;Lcom/android/internal/util/AsyncChannel$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;-><init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mResultMsg:Landroid/os/Message;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mResultMsg:Landroid/os/Message;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    iput-object v0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mResultMsg:Landroid/os/Message;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;->mLockObject:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 16
    .line 17
    .line 18
    monitor-exit p1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0
.end method
