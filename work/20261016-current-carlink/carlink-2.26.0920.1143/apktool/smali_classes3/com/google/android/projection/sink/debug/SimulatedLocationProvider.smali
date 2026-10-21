.class public Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$UiListener;
    }
.end annotation


# static fields
.field private static final ROUTE_SPEED_FACTOR_MAX:I = 0x3e8

.field private static final ROUTE_SPEED_FACTOR_MIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SimulatedLocationProvider"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLocationClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocationSimulator:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

.field private final mLocationSimulatorListener:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$Listener;

.field private final mLocationSimulatorLock:Ljava/lang/Object;

.field private mLocationSimulatorStarted:Z

.field private final mSettings:Lcom/google/android/projection/sink/settings/Settings;

.field private final mUiClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$UiListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulatorLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationClients:Ljava/util/Set;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mUiClients:Ljava/util/Set;

    .line 31
    .line 32
    new-instance v0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2;-><init>(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulatorListener:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$Listener;

    .line 38
    .line 39
    new-instance v1, Lcom/google/android/projection/sink/settings/Settings;

    .line 40
    .line 41
    invoke-direct {v1, p1}, Lcom/google/android/projection/sink/settings/Settings;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 45
    .line 46
    new-instance p1, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;-><init>(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$Listener;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulator:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, v0}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->setRouteSpeedFactor(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulatorLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;)Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulator:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationClients:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public decreaseSimulationSpeed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulatorLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulator:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->getRouteSpeedFactor()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulator:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->setRouteSpeedFactor(I)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mUiClients:Ljava/util/Set;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$UiListener;

    .line 40
    .line 41
    invoke-interface {v2, v1}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$UiListener;->onSpeedChanged(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw v1
.end method

.method public increaseSimulationSpeed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulatorLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulator:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->getRouteSpeedFactor()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    const/16 v2, 0x3e8

    .line 13
    .line 14
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulator:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->setRouteSpeedFactor(I)V

    .line 21
    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mUiClients:Ljava/util/Set;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$UiListener;

    .line 41
    .line 42
    invoke-interface {v2, v1}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$UiListener;->onSpeedChanged(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v1
.end method

.method public registerUiListener(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$UiListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulatorLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulator:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->getRouteSpeedFactor()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-interface {p1, v1}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$UiListener;->onSpeedChanged(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mUiClients:Ljava/util/Set;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method

.method public removeUpdates(Landroid/location/LocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationClients:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestUpdates(Landroid/location/LocationListener;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulatorStarted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulatorStarted:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/projection/sink/settings/Settings;->getSimulationStart()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mSettings:Lcom/google/android/projection/sink/settings/Settings;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/android/projection/sink/settings/Settings;->getSimulationFinish()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$1;

    .line 21
    .line 22
    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$1;-><init>(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationClients:Ljava/util/Set;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public resetSimulation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulatorLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulator:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->setRouteSpeedFactor(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulator:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->resetRoute()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mUiClients:Ljava/util/Set;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$UiListener;

    .line 33
    .line 34
    invoke-interface {v1, v2}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$UiListener;->onSpeedChanged(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw v1
.end method

.method public shutdown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulatorLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mLocationSimulator:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->stopUpdates()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method

.method public unregisterUiListener(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$UiListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->mUiClients:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
