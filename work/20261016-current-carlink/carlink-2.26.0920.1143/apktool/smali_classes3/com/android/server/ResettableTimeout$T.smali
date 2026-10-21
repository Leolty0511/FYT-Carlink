.class Lcom/android/server/ResettableTimeout$T;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ResettableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "T"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ResettableTimeout;


# direct methods
.method private constructor <init>(Lcom/android/server/ResettableTimeout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ResettableTimeout;Lcom/android/server/ResettableTimeout$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/ResettableTimeout$T;-><init>(Lcom/android/server/ResettableTimeout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/ResettableTimeout;->access$100(Lcom/android/server/ResettableTimeout;)Landroid/os/ConditionVariable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 8
    .line 9
    .line 10
    :catch_0
    :goto_0
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/server/ResettableTimeout;->access$200(Lcom/android/server/ResettableTimeout;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    sub-long/2addr v0, v2

    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    cmp-long v2, v0, v2

    .line 25
    .line 26
    if-gtz v2, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-static {v0, v1}, Lcom/android/server/ResettableTimeout;->access$302(Lcom/android/server/ResettableTimeout;Z)Z

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/android/server/ResettableTimeout;->off()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-static {v0, v1}, Lcom/android/server/ResettableTimeout;->access$402(Lcom/android/server/ResettableTimeout;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    throw v0
.end method
