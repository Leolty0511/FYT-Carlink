.class public final Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$Listener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "AHU.LOCATION"


# instance fields
.field private mFixedLocation:Landroid/location/Location;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$Listener;

.field private mRouteResumed:Z

.field private mRouteSimulator:Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;

.field private mRouteSpeedFactor:I

.field private mUpdatePeriodMillis:I

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$Listener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mRouteSpeedFactor:I

    .line 6
    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    new-instance v0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$1;-><init>(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mListener:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$Listener;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)I
    .locals 0

    iget p0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mUpdatePeriodMillis:I

    return p0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mRouteSimulator:Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)Landroid/location/Location;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->getLocation()Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)D
    .locals 2

    invoke-direct {p0}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->getProgress()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$500(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$Listener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mListener:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$Listener;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mRouteResumed:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)I
    .locals 0

    iget p0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mRouteSpeedFactor:I

    return p0
.end method

.method private getLocation()Landroid/location/Location;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mRouteSimulator:Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->getLocation()Landroid/location/Location;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mRouteResumed:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v2, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mRouteSpeedFactor:I

    .line 18
    .line 19
    int-to-float v2, v2

    .line 20
    mul-float/2addr v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0, v1}, Landroid/location/Location;->setSpeed(F)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mFixedLocation:Landroid/location/Location;

    .line 28
    .line 29
    return-object v0
.end method

.method private getProgress()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mRouteSimulator:Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->getProgress()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 11
    .line 12
    return-wide v0
.end method


# virtual methods
.method public getRouteSpeedFactor()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mRouteSpeedFactor:I

    return v0
.end method

.method public resetRoute()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mRouteSimulator:Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;

    invoke-virtual {v0}, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->reset()V

    return-void
.end method

.method public setFixedLocation(Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mFixedLocation:Landroid/location/Location;

    return-void
.end method

.method public setRoute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/projection/sink/debug/simulation/SimulationRoutePoint;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mRouteSimulator:Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->getLocation()Landroid/location/Location;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mFixedLocation:Landroid/location/Location;

    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p1, v1}, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;-><init>(Ljava/util/List;Z)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mRouteSimulator:Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mRouteSimulator:Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;

    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public setRouteResumed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mRouteResumed:Z

    return-void
.end method

.method public setRouteSpeedFactor(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mRouteSpeedFactor:I

    return-void
.end method

.method public startUpdates(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mUpdatePeriodMillis:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->stopUpdates()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mRouteSimulator:Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public stopUpdates()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
