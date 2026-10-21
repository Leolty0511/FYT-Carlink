.class Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/EchoVendorExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LooperThread"
.end annotation


# instance fields
.field private final mInitWaitSemaphore:Ljava/util/concurrent/Semaphore;

.field private mLooper:Landroid/os/Looper;

.field private final mThreadPriority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;->mInitWaitSemaphore:Ljava/util/concurrent/Semaphore;

    .line 3
    iput v0, p0, Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;->mThreadPriority:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p1, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;->mInitWaitSemaphore:Ljava/util/concurrent/Semaphore;

    .line 6
    iput p2, p0, Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;->mThreadPriority:I

    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;->mLooper:Landroid/os/Looper;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;->mThreadPriority:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;->mLooper:Landroid/os/Looper;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;->mInitWaitSemaphore:Ljava/util/concurrent/Semaphore;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;->mInitWaitSemaphore:Ljava/util/concurrent/Semaphore;

    .line 5
    .line 6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    const-wide/16 v2, 0x5

    .line 9
    .line 10
    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    const-string v1, "LooperThread init timeout"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    new-instance v1, Ljava/lang/RuntimeException;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw v1
.end method

.method public stopThread()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;->mLooper:Landroid/os/Looper;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
