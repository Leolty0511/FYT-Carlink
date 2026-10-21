.class Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/sink/debug/simulation/LocationSimulator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2;->this$0:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimulationUpdate(Landroid/location/Location;D)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2;->this$0:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    invoke-static {p2}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->access$400(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2$1;

    invoke-direct {p3, p0, p1}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2$1;-><init>(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2;Landroid/location/Location;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
