.class Lcom/google/android/projection/sink/sensors/TabletSensors$SunCalculatorRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/sensors/TabletSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SunCalculatorRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;


# direct methods
.method private constructor <init>(Lcom/google/android/projection/sink/sensors/TabletSensors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$SunCalculatorRunnable;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/projection/sink/sensors/TabletSensors;Lcom/google/android/projection/sink/sensors/TabletSensors$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/projection/sink/sensors/TabletSensors$SunCalculatorRunnable;-><init>(Lcom/google/android/projection/sink/sensors/TabletSensors;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v7

    .line 5
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$SunCalculatorRunnable;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$700(Lcom/google/android/projection/sink/sensors/TabletSensors;)Lcom/google/android/projection/sink/sensors/TwilightCalculator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$SunCalculatorRunnable;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/google/android/projection/sink/sensors/TabletSensors;->mLocation:Landroid/location/Location;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$SunCalculatorRunnable;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/projection/sink/sensors/TabletSensors;->mLocation:Landroid/location/Location;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    move-wide v1, v7

    .line 28
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/projection/sink/sensors/TwilightCalculator;->calculateTwilight(JDD)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$SunCalculatorRunnable;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$700(Lcom/google/android/projection/sink/sensors/TabletSensors;)Lcom/google/android/projection/sink/sensors/TwilightCalculator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget v1, v1, Lcom/google/android/projection/sink/sensors/TwilightCalculator;->mState:I

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    if-ne v1, v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 44
    :goto_0
    invoke-static {v0, v2}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$802(Lcom/google/android/projection/sink/sensors/TabletSensors;Z)Z

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$SunCalculatorRunnable;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$800(Lcom/google/android/projection/sink/sensors/TabletSensors;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$SunCalculatorRunnable;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$700(Lcom/google/android/projection/sink/sensors/TabletSensors;)Lcom/google/android/projection/sink/sensors/TwilightCalculator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-wide v0, v0, Lcom/google/android/projection/sink/sensors/TwilightCalculator;->mSunrise:J

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$SunCalculatorRunnable;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$700(Lcom/google/android/projection/sink/sensors/TabletSensors;)Lcom/google/android/projection/sink/sensors/TwilightCalculator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-wide v0, v0, Lcom/google/android/projection/sink/sensors/TwilightCalculator;->mSunset:J

    .line 71
    .line 72
    :goto_1
    sub-long/2addr v0, v7

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v3, "Day/Night changing in "

    .line 76
    .line 77
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-wide/32 v3, 0xea60

    .line 81
    .line 82
    .line 83
    div-long v5, v0, v3

    .line 84
    .line 85
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v5, " minutes"

    .line 89
    .line 90
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-string v5, "AHU.TabletSensors"

    .line 98
    .line 99
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$SunCalculatorRunnable;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 103
    .line 104
    invoke-static {v2}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$900(Lcom/google/android/projection/sink/sensors/TabletSensors;)Landroid/os/Handler;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    add-long/2addr v0, v3

    .line 109
    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    .line 111
    .line 112
    return-void
.end method
