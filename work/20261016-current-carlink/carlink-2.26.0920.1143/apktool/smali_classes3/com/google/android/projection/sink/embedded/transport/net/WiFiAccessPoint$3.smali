.class Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->initialize(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

.field final synthetic val$accessPointUpFuture:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$executorService:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

.field final synthetic val$tetheringRequired:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$3;->this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$3;->val$tetheringRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$3;->val$accessPointUpFuture:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p4, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$3;->val$executorService:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "AP up!"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$3;->val$tetheringRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->access$000()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "AP up!  ====  0000"

    .line 24
    .line 25
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$3;->val$accessPointUpFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$3;->this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$3;->val$executorService:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    .line 33
    .line 34
    invoke-static {v2, v3}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->access$100(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/SettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_0
    xor-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    invoke-static {}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->access$000()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "AP up!  ====  1111"

    .line 50
    .line 51
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    const-wide/16 v2, 0x3e8

    .line 55
    .line 56
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    :goto_1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$3;->val$accessPointUpFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    goto :goto_0

    .line 71
    :goto_2
    invoke-static {}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->access$000()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v4, "AP up!  cancelled : "

    .line 78
    .line 79
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    if-eqz v0, :cond_1

    .line 93
    .line 94
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$3;->this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->teardown()V

    .line 97
    .line 98
    .line 99
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$3;->this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 100
    .line 101
    iput-object v1, v0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->handleAp:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 102
    .line 103
    return-void
.end method
