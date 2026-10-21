.class Lcom/google/android/projection/sink/sensors/TabletSensors$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/sensors/TabletSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/sensors/TabletSensors;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq v0, v2, :cond_4

    .line 11
    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    const/4 v4, 0x4

    .line 15
    if-eq v0, v4, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x6

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0xd

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 27
    .line 28
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 29
    .line 30
    aget p1, p1, v3

    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$502(Lcom/google/android/projection/sink/sensors/TabletSensors;F)F

    .line 33
    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 38
    .line 39
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 40
    .line 41
    aget p1, p1, v3

    .line 42
    .line 43
    invoke-static {v0, p1}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$602(Lcom/google/android/projection/sink/sensors/TabletSensors;F)F

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$400(Lcom/google/android/projection/sink/sensors/TabletSensors;)[F

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 54
    .line 55
    aget v4, v4, v3

    .line 56
    .line 57
    aput v4, v0, v3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$400(Lcom/google/android/projection/sink/sensors/TabletSensors;)[F

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 66
    .line 67
    aget v3, v3, v2

    .line 68
    .line 69
    aput v3, v0, v2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$400(Lcom/google/android/projection/sink/sensors/TabletSensors;)[F

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 78
    .line 79
    aget p1, p1, v1

    .line 80
    .line 81
    aput p1, v0, v1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$300(Lcom/google/android/projection/sink/sensors/TabletSensors;)[F

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 91
    .line 92
    aget v4, v4, v3

    .line 93
    .line 94
    aput v4, v0, v3

    .line 95
    .line 96
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$300(Lcom/google/android/projection/sink/sensors/TabletSensors;)[F

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 103
    .line 104
    aget v3, v3, v2

    .line 105
    .line 106
    aput v3, v0, v2

    .line 107
    .line 108
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 109
    .line 110
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$300(Lcom/google/android/projection/sink/sensors/TabletSensors;)[F

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 115
    .line 116
    aget p1, p1, v1

    .line 117
    .line 118
    aput p1, v0, v1

    .line 119
    .line 120
    iget-object p1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 121
    .line 122
    invoke-static {p1}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$200(Lcom/google/android/projection/sink/sensors/TabletSensors;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$100(Lcom/google/android/projection/sink/sensors/TabletSensors;)[F

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 133
    .line 134
    aget v4, v4, v3

    .line 135
    .line 136
    aput v4, v0, v3

    .line 137
    .line 138
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$100(Lcom/google/android/projection/sink/sensors/TabletSensors;)[F

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 145
    .line 146
    aget v3, v3, v2

    .line 147
    .line 148
    aput v3, v0, v2

    .line 149
    .line 150
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 151
    .line 152
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$100(Lcom/google/android/projection/sink/sensors/TabletSensors;)[F

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 157
    .line 158
    aget p1, p1, v1

    .line 159
    .line 160
    aput p1, v0, v1

    .line 161
    .line 162
    iget-object p1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors$1;->this$0:Lcom/google/android/projection/sink/sensors/TabletSensors;

    .line 163
    .line 164
    invoke-static {p1}, Lcom/google/android/projection/sink/sensors/TabletSensors;->access$200(Lcom/google/android/projection/sink/sensors/TabletSensors;)V

    .line 165
    .line 166
    .line 167
    :goto_0
    return-void
.end method
