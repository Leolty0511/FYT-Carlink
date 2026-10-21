.class Lcom/google/android/projection/sink/sensors/SensorManager$SensorHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/sensors/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/sensors/SensorManager;


# direct methods
.method private constructor <init>(Lcom/google/android/projection/sink/sensors/SensorManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorHandler;->this$0:Lcom/google/android/projection/sink/sensors/SensorManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/sink/sensors/SensorManager;Lcom/google/android/projection/sink/sensors/SensorManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/sensors/SensorManager$SensorHandler;-><init>(Lcom/google/android/projection/sink/sensors/SensorManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorHandler;->this$0:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SensorManager;->access$100(Lcom/google/android/projection/sink/sensors/SensorManager;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorHandler;->this$0:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/projection/sink/sensors/SensorManager;->access$200(Lcom/google/android/projection/sink/sensors/SensorManager;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorHandler;->this$0:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SensorManager;->access$300(Lcom/google/android/projection/sink/sensors/SensorManager;)Lcom/google/android/projection/sink/GalIntegration;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorHandler;->this$0:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 27
    .line 28
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SensorManager;->access$300(Lcom/google/android/projection/sink/sensors/SensorManager;)Lcom/google/android/projection/sink/GalIntegration;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v1, v1, Lcom/google/android/projection/sink/GalIntegration;->sensors:Lcom/google/android/projection/protocol/SensorSource;

    .line 33
    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SensorManager$SensorHandler;->this$0:Lcom/google/android/projection/sink/sensors/SensorManager;

    .line 37
    .line 38
    iget p1, p1, Landroid/os/Message;->what:I

    .line 39
    .line 40
    invoke-static {v1, p1}, Lcom/google/android/projection/sink/sensors/SensorManager;->access$400(Lcom/google/android/projection/sink/sensors/SensorManager;I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_0
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p1
.end method
