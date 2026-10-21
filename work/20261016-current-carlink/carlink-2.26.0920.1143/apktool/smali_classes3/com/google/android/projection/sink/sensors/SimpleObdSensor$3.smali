.class Lcom/google/android/projection/sink/sensors/SimpleObdSensor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/sensors/SimpleObdSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$3;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$3;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$800(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$3;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$900(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$3;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$1000(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$3;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$1100(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$3;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$1200(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$3;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$1300(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$3;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 43
    .line 44
    invoke-static {v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$1400(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Z

    .line 45
    .line 46
    .line 47
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :try_start_2
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$3;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$000(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Landroid/os/Handler;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-wide/16 v1, 0x3e8

    .line 55
    .line 56
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-static {}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$500()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "Disconnect."

    .line 69
    .line 70
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method
