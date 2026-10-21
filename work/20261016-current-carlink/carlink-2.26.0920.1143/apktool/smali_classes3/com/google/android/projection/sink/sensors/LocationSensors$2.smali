.class Lcom/google/android/projection/sink/sensors/LocationSensors$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/sensors/LocationSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/sensors/LocationSensors;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/sensors/LocationSensors;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/LocationSensors$2;->this$0:Lcom/google/android/projection/sink/sensors/LocationSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/LocationSensors$2;->this$0:Lcom/google/android/projection/sink/sensors/LocationSensors;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/android/projection/sink/sensors/LocationSensors;->access$202(Lcom/google/android/projection/sink/sensors/LocationSensors;Landroid/location/Location;)Landroid/location/Location;

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/projection/sink/sensors/LocationSensors$2;->this$0:Lcom/google/android/projection/sink/sensors/LocationSensors;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->reportAvailable(I)V

    .line 10
    .line 11
    .line 12
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
