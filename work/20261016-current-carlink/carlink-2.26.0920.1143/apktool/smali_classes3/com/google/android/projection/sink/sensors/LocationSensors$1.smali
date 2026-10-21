.class Lcom/google/android/projection/sink/sensors/LocationSensors$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


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

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/LocationSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/LocationSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/projection/sink/sensors/LocationSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/LocationSensors;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/projection/sink/sensors/LocationSensors;->access$100(Lcom/google/android/projection/sink/sensors/LocationSensors;)Landroid/location/LocationManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/LocationSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/LocationSensors;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/LocationSensors;->access$000(Lcom/google/android/projection/sink/sensors/LocationSensors;)Landroid/location/GpsStatus;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1, v0}, Lcom/google/android/projection/sink/sensors/LocationSensors;->access$002(Lcom/google/android/projection/sink/sensors/LocationSensors;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/projection/sink/sensors/LocationSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/LocationSensors;

    .line 24
    .line 25
    const/16 v0, 0x15

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->reportAvailable(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
