.class Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;
.super Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/sensors/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorsInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/sensors/SensorManager;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/sensors/SensorManager;Lcom/google/android/projection/protocol/SensorSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;->this$0:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;-><init>(Lcom/google/android/projection/protocol/SensorSource;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public reportCompassData(IZIZI)V
    .locals 9

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportCompassData(IZIZI)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;->this$0:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->access$600(Lcom/google/android/projection/sink/sensors/SensorManager;)Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v8, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$2;

    .line 11
    .line 12
    move-object v1, v8

    .line 13
    move-object v2, p0

    .line 14
    move v3, p1

    .line 15
    move v4, p2

    .line 16
    move v5, p3

    .line 17
    move v6, p4

    .line 18
    move v7, p5

    .line 19
    invoke-direct/range {v1 .. v7}, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$2;-><init>(Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;IZIZI)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public reportLocation(Landroid/location/Location;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportLocation(Landroid/location/Location;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;->this$0:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->access$600(Lcom/google/android/projection/sink/sensors/SensorManager;)Landroid/os/Handler;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$1;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$1;-><init>(Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;Landroid/location/Location;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
