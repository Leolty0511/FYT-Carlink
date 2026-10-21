.class public final synthetic Lcom/google/android/projection/sink/embedded/transport/net/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field public final synthetic a:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic c:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

.field public final synthetic d:Ljava/lang/Runnable;

.field public final synthetic e:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/b;->a:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/transport/net/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/google/android/projection/sink/embedded/transport/net/b;->c:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    iput-object p4, p0, Lcom/google/android/projection/sink/embedded/transport/net/b;->d:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/google/android/projection/sink/embedded/transport/net/b;->e:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/b;->d:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/transport/net/b;->e:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/transport/net/b;->a:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    iget-object v3, p0, Lcom/google/android/projection/sink/embedded/transport/net/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, p0, Lcom/google/android/projection/sink/embedded/transport/net/b;->c:Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->a(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;Ljava/lang/Runnable;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
