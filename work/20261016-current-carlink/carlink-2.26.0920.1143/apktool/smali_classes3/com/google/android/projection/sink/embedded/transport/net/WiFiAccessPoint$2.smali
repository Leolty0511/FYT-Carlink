.class Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$OnStartTetheringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->tether(Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

.field final synthetic val$tetheringStarted:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$2;->this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$2;->val$tetheringStarted:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed(I)V
    .locals 2

    .line 1
    const-string v0, "Failed to bring up DHCP server: "

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->access$000()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$2;->val$tetheringStarted:Lcom/google/common/util/concurrent/SettableFuture;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$2;->this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->teardown()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onTetheringStarted()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "DHCP server up!"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$2;->val$tetheringStarted:Lcom/google/common/util/concurrent/SettableFuture;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint$2;->this$0:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->teardown()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
