.class public final synthetic Lcom/google/android/projection/sink/embedded/transport/net/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field public final synthetic a:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/transport/net/a;->a:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/transport/net/a;->a:Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;

    invoke-static {v0}, Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;->b(Lcom/google/android/projection/sink/embedded/transport/net/WiFiAccessPoint;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
