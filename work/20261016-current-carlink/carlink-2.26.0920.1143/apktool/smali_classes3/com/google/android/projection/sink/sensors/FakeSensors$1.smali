.class Lcom/google/android/projection/sink/sensors/FakeSensors$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/sensors/FakeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/sensors/FakeSensors;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/sensors/FakeSensors;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/FakeSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/FakeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/projection/sink/sensors/FakeSensors;->access$000()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget v3, v0, v2

    .line 10
    .line 11
    const/4 v4, 0x5

    .line 12
    if-eq v3, v4, :cond_0

    .line 13
    .line 14
    iget-object v4, p0, Lcom/google/android/projection/sink/sensors/FakeSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/FakeSensors;

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->reportAvailable(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/FakeSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/FakeSensors;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/FakeSensors;->access$100(Lcom/google/android/projection/sink/sensors/FakeSensors;)Ljava/lang/Runnable;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v2, p0, Lcom/google/android/projection/sink/sensors/FakeSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/FakeSensors;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/google/android/projection/sink/sensors/FakeSensors;->access$200(Lcom/google/android/projection/sink/sensors/FakeSensors;)Ljava/util/Random;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/16 v3, 0x3e8

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int/2addr v2, v3

    .line 41
    int-to-long v2, v2

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->postDelayed(Ljava/lang/Runnable;J)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
