.class public Lcom/google/android/projection/transport/TransportFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/transport/TransportFactory$Builder;,
        Lcom/google/android/projection/transport/TransportFactory$TransportFactoryDelegate;,
        Lcom/google/android/projection/transport/TransportFactory$Callback;,
        Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;,
        Lcom/google/android/projection/transport/TransportFactory$TcpConnectionSocketOptions;
    }
.end annotation


# static fields
.field static final DO_NOTHING_HANDLE:Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

.field private static final READ_TIMEOUT_IN_MILLIS:I = 0x2710

.field private static final RECEIVE_SOCKET_BUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "AHU.TRANSPORT_FACTORY"

.field private static final TCP_NO_DELAY_ON:Z = true


# instance fields
.field private delegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/transport/TransportFactory$TransportFactoryDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInitialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/projection/transport/TransportFactory$1;

    invoke-direct {v0}, Lcom/google/android/projection/transport/TransportFactory$1;-><init>()V

    sput-object v0, Lcom/google/android/projection/transport/TransportFactory;->DO_NOTHING_HANDLE:Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/android/projection/transport/TransportFactory;->mIsInitialized:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/transport/TransportFactory$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/transport/TransportFactory;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Lcom/google/android/projection/transport/TransportFactory;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/transport/TransportFactory;->delegates:Ljava/util/List;

    return-object p1
.end method

.method public static builder()Lcom/google/android/projection/transport/TransportFactory$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/projection/transport/TransportFactory$Builder;

    invoke-direct {v0}, Lcom/google/android/projection/transport/TransportFactory$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public open(Landroid/os/Parcelable;Lcom/google/android/projection/transport/TransportFactory$Callback;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "Starting..."

    .line 2
    .line 3
    const-string v1, "AHU.TRANSPORT_FACTORY"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/google/android/projection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/transport/TransportFactory;->delegates:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/google/android/projection/transport/TransportFactory$TransportFactoryDelegate;

    .line 25
    .line 26
    invoke-interface {v2, p1, p2}, Lcom/google/android/projection/transport/TransportFactory$TransportFactoryDelegate;->tryOpen(Landroid/os/Parcelable;Lcom/google/android/projection/transport/TransportFactory$Callback;)Lcom/google/android/projection/transport/TransportFactory$FactoryHandle;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    const-string p1, "Start sequence finished."

    .line 33
    .line 34
    invoke-static {v1, p1}, Lcom/google/android/projection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v2

    .line 38
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v0, "Unable to handle "

    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v1, p1}, Lcom/google/android/projection/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    return-object p1
.end method

.method public shutdown()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/transport/TransportFactory;->mIsInitialized:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v0, "Shutting down..."

    .line 6
    .line 7
    const-string v1, "AHU.TRANSPORT_FACTORY"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/google/android/projection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/projection/transport/TransportFactory;->mIsInitialized:Z

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/projection/transport/TransportFactory;->delegates:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/google/android/projection/transport/TransportFactory$TransportFactoryDelegate;

    .line 32
    .line 33
    invoke-interface {v2}, Lcom/google/android/projection/transport/TransportFactory$TransportFactoryDelegate;->shutdown()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const-string v0, "Shutdown completed."

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/google/android/projection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public shutdownTcpDelegate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/transport/TransportFactory;->delegates:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/projection/transport/TransportFactory$TransportFactoryDelegate;

    .line 18
    .line 19
    instance-of v2, v1, Lcom/google/android/projection/transport/TcpDelegate;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-interface {v1}, Lcom/google/android/projection/transport/TransportFactory$TransportFactoryDelegate;->shutdown()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method
