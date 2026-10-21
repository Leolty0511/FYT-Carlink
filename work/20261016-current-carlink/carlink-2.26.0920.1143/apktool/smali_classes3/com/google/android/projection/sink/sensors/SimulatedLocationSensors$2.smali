.class Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


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

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors$2;->this$0:Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors$2;->this$0:Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->access$000(Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/location/Location;->removeAccuracy()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors$2;->this$0:Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->access$100(Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/location/Location;->removeBearing()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors$2;->this$0:Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->access$200(Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/location/Location;->removeSpeed()V

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors$2;->this$0:Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;

    .line 37
    .line 38
    invoke-static {v0, p1}, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;->access$302(Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;Landroid/location/Location;)Landroid/location/Location;

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors$2;->this$0:Lcom/google/android/projection/sink/sensors/SimulatedLocationSensors;

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p1, v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->reportAvailable(I)V

    .line 45
    .line 46
    .line 47
    :cond_3
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
