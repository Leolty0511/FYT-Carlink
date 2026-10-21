.class Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;->reportCompassData(IZIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;

.field final synthetic val$bearing:I

.field final synthetic val$hasPitch:Z

.field final synthetic val$hasRoll:Z

.field final synthetic val$intPitch:I

.field final synthetic val$intRoll:I


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;IZIZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$2;->this$1:Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;

    iput p2, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$2;->val$bearing:I

    iput-boolean p3, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$2;->val$hasPitch:Z

    iput p4, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$2;->val$intPitch:I

    iput-boolean p5, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$2;->val$hasRoll:Z

    iput p6, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$2;->val$intRoll:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$2;->val$bearing:I

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    iget-boolean v1, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$2;->val$hasPitch:Z

    .line 5
    .line 6
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$2;->val$intPitch:I

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v1, v2

    .line 15
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$2;->val$hasRoll:Z

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    iget v2, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$2;->val$intRoll:I

    .line 20
    .line 21
    int-to-float v2, v2

    .line 22
    :cond_1
    iget-object v3, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor$2;->this$1:Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/google/android/projection/sink/sensors/SensorManager$SensorsInterceptor;->this$0:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 25
    .line 26
    invoke-static {v3}, Lcom/google/android/projection/sink/sensors/SensorManager;->access$700(Lcom/google/android/projection/sink/sensors/SensorManager;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/google/android/projection/sink/sensors/SensorManager$CompassListener;

    .line 45
    .line 46
    invoke-interface {v4, v0, v1, v2}, Lcom/google/android/projection/sink/sensors/SensorManager$CompassListener;->onCompassChanged(FFF)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    return-void
.end method
