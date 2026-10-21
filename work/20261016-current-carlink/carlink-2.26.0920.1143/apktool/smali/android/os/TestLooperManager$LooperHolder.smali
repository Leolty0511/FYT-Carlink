.class Landroid/os/TestLooperManager$LooperHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/TestLooperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LooperHolder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/TestLooperManager;


# direct methods
.method private constructor <init>(Landroid/os/TestLooperManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/TestLooperManager;Landroid/os/TestLooperManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/os/TestLooperManager$LooperHolder;-><init>(Landroid/os/TestLooperManager;)V

    return-void
.end method

.method private processMessage(Landroid/os/TestLooperManager$MessageExecution;)V
    .locals 2

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/os/TestLooperManager$MessageExecution;->access$200(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v0, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/os/TestLooperManager$MessageExecution;->access$200(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {p1, v0}, Landroid/os/TestLooperManager$MessageExecution;->access$302(Landroid/os/TestLooperManager$MessageExecution;Ljava/lang/Throwable;)Ljava/lang/Throwable;
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
    :try_start_1
    invoke-static {p1, v0}, Landroid/os/TestLooperManager$MessageExecution;->access$302(Landroid/os/TestLooperManager$MessageExecution;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 25
    .line 26
    .line 27
    monitor-exit p1

    .line 28
    return-void

    .line 29
    :catchall_1
    move-exception v0

    .line 30
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    throw v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v2}, Landroid/os/TestLooperManager;->access$402(Landroid/os/TestLooperManager;Z)Z

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :catch_0
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/os/TestLooperManager;->access$500(Landroid/os/TestLooperManager;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :try_start_1
    iget-object v0, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/os/TestLooperManager;->access$600(Landroid/os/TestLooperManager;)Ljava/util/concurrent/LinkedBlockingQueue;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/os/TestLooperManager$MessageExecution;

    .line 35
    .line 36
    invoke-static {v0}, Landroid/os/TestLooperManager$MessageExecution;->access$200(Landroid/os/TestLooperManager$MessageExecution;)Landroid/os/Message;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-direct {p0, v0}, Landroid/os/TestLooperManager$LooperHolder;->processMessage(Landroid/os/TestLooperManager$MessageExecution;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    .line 47
    .line 48
    monitor-enter v1

    .line 49
    :try_start_2
    iget-object v0, p0, Landroid/os/TestLooperManager$LooperHolder;->this$0:Landroid/os/TestLooperManager;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-static {v0, v2}, Landroid/os/TestLooperManager;->access$402(Landroid/os/TestLooperManager;Z)Z

    .line 53
    .line 54
    .line 55
    monitor-exit v1

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    throw v0

    .line 60
    :catchall_1
    move-exception v1

    .line 61
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    throw v1
.end method
