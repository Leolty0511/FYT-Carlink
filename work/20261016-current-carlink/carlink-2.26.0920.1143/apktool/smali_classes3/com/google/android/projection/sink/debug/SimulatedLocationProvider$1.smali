.class Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->requestUpdates(Landroid/location/LocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

.field final synthetic val$destination:Ljava/lang/String;

.field final synthetic val$origin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$1;->this$0:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    iput-object p2, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$1;->val$origin:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$1;->val$destination:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->access$000()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Route from \'%s\' to \'%s\'."

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iget-object v4, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$1;->val$origin:Ljava/lang/String;

    .line 12
    .line 13
    aput-object v4, v2, v3

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$1;->val$destination:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    aput-object v3, v2, v4

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$1;->val$origin:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$1;->val$destination:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, "driving"

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Lcom/google/android/projection/sink/debug/simulation/WebSimulationRouteProvider;->createPoints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    :cond_0
    invoke-static {}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->access$000()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v2, "Can\'t get directions"

    .line 50
    .line 51
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v1, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$1;->this$0:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->access$100(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v2, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$1;->this$0:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    .line 62
    .line 63
    invoke-static {v2}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->access$200(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;)Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2, v0}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->setRoute(Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$1;->this$0:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->access$200(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;)Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/16 v2, 0x3e8

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->startUpdates(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$1;->this$0:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->access$200(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;)Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, v4}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->setRouteResumed(Z)V

    .line 88
    .line 89
    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw v0
.end method
