.class Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$1;->this$0:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$1;->this$0:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->access$100(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$1;->this$0:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->access$000(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-long v1, v1

    .line 14
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$1;->this$0:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->access$200(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$1;->this$0:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->access$500(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$Listener;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$1;->this$0:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->access$300(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)Landroid/location/Location;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$1;->this$0:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->access$400(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)D

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$Listener;->onSimulationUpdate(Landroid/location/Location;D)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$1;->this$0:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->access$600(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$1;->this$0:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->access$200(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$1;->this$0:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->access$700(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object v2, p0, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$1;->this$0:Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;

    .line 67
    .line 68
    invoke-static {v2}, Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;->access$000(Lcom/google/android/projection/sink/debug/simulation/LocationSimulator;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    mul-int/2addr v2, v1

    .line 73
    int-to-double v1, v2

    .line 74
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    div-double/2addr v1, v3

    .line 80
    invoke-virtual {v0, v1, v2}, Lcom/google/android/projection/sink/debug/simulation/RouteSimulator;->update(D)V

    .line 81
    .line 82
    .line 83
    :cond_0
    return-void
.end method
