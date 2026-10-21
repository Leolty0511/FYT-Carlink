.class Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;

    .line 2
    .line 3
    const/16 v1, 0x15

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->reportAvailable(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;

    .line 9
    .line 10
    const-wide/16 v1, 0x3e8

    .line 11
    .line 12
    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->postDelayed(Ljava/lang/Runnable;J)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
