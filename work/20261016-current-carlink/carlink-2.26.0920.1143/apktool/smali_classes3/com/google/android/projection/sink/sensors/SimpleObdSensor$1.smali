.class Lcom/google/android/projection/sink/sensors/SimpleObdSensor$1;
.super Ljava/lang/Thread;
.source "SourceFile"


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
.method public constructor <init>(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$1;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$1;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 5
    .line 6
    new-instance v1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$002(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;Landroid/os/Handler;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/SimpleObdSensor$1;->this$0:Lcom/google/android/projection/sink/sensors/SimpleObdSensor;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/SimpleObdSensor;->access$100(Lcom/google/android/projection/sink/sensors/SimpleObdSensor;)Ljava/util/concurrent/CountDownLatch;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
