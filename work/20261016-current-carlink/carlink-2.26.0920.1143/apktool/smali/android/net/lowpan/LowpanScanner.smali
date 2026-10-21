.class public Landroid/net/lowpan/LowpanScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanScanner$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LowpanScanner"


# instance fields
.field private mBinder:Landroid/net/lowpan/ILowpanInterface;

.field private mCallback:Landroid/net/lowpan/LowpanScanner$Callback;

.field private mChannelMask:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mTxPower:I


# direct methods
.method public constructor <init>(Landroid/net/lowpan/ILowpanInterface;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mCallback:Landroid/net/lowpan/LowpanScanner$Callback;

    .line 6
    .line 7
    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    .line 10
    .line 11
    const v0, 0x7fffffff

    .line 12
    .line 13
    .line 14
    iput v0, p0, Landroid/net/lowpan/LowpanScanner;->mTxPower:I

    .line 15
    .line 16
    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Ljava/lang/Integer;)I
    .locals 0

    invoke-static {p0}, Landroid/net/lowpan/LowpanScanner;->lambda$createScanOptionMap$0(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;
    .locals 0

    iget-object p0, p0, Landroid/net/lowpan/LowpanScanner;->mCallback:Landroid/net/lowpan/LowpanScanner$Callback;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/net/lowpan/LowpanScanner;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private createScanOptionMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    sget-object v2, Landroid/net/lowpan/LowpanProperties;->KEY_CHANNEL_MASK:Landroid/net/lowpan/LowpanProperty;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v3, Landroid/hardware/radio/b;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-direct {v3, v4}, Landroid/hardware/radio/b;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v2, v0, v1}, Landroid/net/lowpan/LowpanProperty;->putInMap(Ljava/util/Map;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget v1, p0, Landroid/net/lowpan/LowpanScanner;->mTxPower:I

    .line 34
    .line 35
    const v2, 0x7fffffff

    .line 36
    .line 37
    .line 38
    if-eq v1, v2, :cond_1

    .line 39
    .line 40
    sget-object v2, Landroid/net/lowpan/LowpanProperties;->KEY_MAX_TX_POWER:Landroid/net/lowpan/LowpanProperty;

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v2, v0, v1}, Landroid/net/lowpan/LowpanProperty;->putInMap(Ljava/util/Map;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-object v0
.end method

.method private static synthetic lambda$createScanOptionMap$0(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public addChannel(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getChannelMask()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public getTxPower()I
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanScanner;->mTxPower:I

    return v0
.end method

.method public setCallback(Landroid/net/lowpan/LowpanScanner$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Landroid/net/lowpan/LowpanScanner;->setCallback(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public declared-synchronized setCallback(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/os/Handler;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner;->mCallback:Landroid/net/lowpan/LowpanScanner$Callback;

    .line 2
    iput-object p2, p0, Landroid/net/lowpan/LowpanScanner;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setChannelMask(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25
    .line 26
    .line 27
    :goto_1
    return-void
.end method

.method public setTxPower(I)V
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanScanner;->mTxPower:I

    return-void
.end method

.method public startEnergyScan()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/net/lowpan/LowpanScanner;->createScanOptionMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/net/lowpan/LowpanScanner$2;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Landroid/net/lowpan/LowpanScanner$2;-><init>(Landroid/net/lowpan/LowpanScanner;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanScanner;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 11
    .line 12
    invoke-interface {v2, v0, v1}, Landroid/net/lowpan/ILowpanInterface;->startEnergyScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanEnergyScanCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    throw v0

    .line 22
    :catch_1
    move-exception v0

    .line 23
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    throw v0
.end method

.method public startNetScan()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/net/lowpan/LowpanScanner;->createScanOptionMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/net/lowpan/LowpanScanner$1;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Landroid/net/lowpan/LowpanScanner$1;-><init>(Landroid/net/lowpan/LowpanScanner;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanScanner;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 11
    .line 12
    invoke-interface {v2, v0, v1}, Landroid/net/lowpan/ILowpanInterface;->startNetScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanNetScanCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    throw v0

    .line 22
    :catch_1
    move-exception v0

    .line 23
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    throw v0
.end method

.method public stopEnergyScan()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->stopEnergyScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    throw v0
.end method

.method public stopNetScan()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->stopNetScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    throw v0
.end method
