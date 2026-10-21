.class Landroid/view/OrientationEventListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/OrientationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final _DATA_X:I = 0x0

.field private static final _DATA_Y:I = 0x1

.field private static final _DATA_Z:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/view/OrientationEventListener;


# direct methods
.method public constructor <init>(Landroid/view/OrientationEventListener;)V
    .locals 0

    iput-object p1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget v1, v0, v1

    .line 5
    .line 6
    neg-float v1, v1

    .line 7
    const/4 v2, 0x1

    .line 8
    aget v3, v0, v2

    .line 9
    .line 10
    neg-float v3, v3

    .line 11
    const/4 v4, 0x2

    .line 12
    aget v0, v0, v4

    .line 13
    .line 14
    neg-float v0, v0

    .line 15
    mul-float v4, v1, v1

    .line 16
    .line 17
    mul-float v5, v3, v3

    .line 18
    .line 19
    add-float/2addr v5, v4

    .line 20
    const/high16 v4, 0x40800000    # 4.0f

    .line 21
    .line 22
    mul-float/2addr v5, v4

    .line 23
    mul-float/2addr v0, v0

    .line 24
    cmpl-float v0, v5, v0

    .line 25
    .line 26
    if-ltz v0, :cond_1

    .line 27
    .line 28
    neg-float v0, v3

    .line 29
    float-to-double v3, v0

    .line 30
    float-to-double v0, v1

    .line 31
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    double-to-float v0, v0

    .line 36
    const v1, 0x42652ee1

    .line 37
    .line 38
    .line 39
    mul-float/2addr v0, v1

    .line 40
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    rsub-int/lit8 v0, v0, 0x5a

    .line 45
    .line 46
    :goto_0
    const/16 v1, 0x168

    .line 47
    .line 48
    if-lt v0, v1, :cond_0

    .line 49
    .line 50
    add-int/lit16 v0, v0, -0x168

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    :goto_1
    if-gez v0, :cond_2

    .line 54
    .line 55
    add-int/lit16 v0, v0, 0x168

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 v0, -0x1

    .line 59
    :cond_2
    iget-object v1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    .line 60
    .line 61
    invoke-static {v1}, Landroid/view/OrientationEventListener;->access$000(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    iget-object v1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    .line 68
    .line 69
    invoke-static {v1}, Landroid/view/OrientationEventListener;->access$000(Landroid/view/OrientationEventListener;)Landroid/view/OrientationListener;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 74
    .line 75
    invoke-virtual {v1, v2, p1}, Landroid/view/OrientationListener;->onSensorChanged(I[F)V

    .line 76
    .line 77
    .line 78
    :cond_3
    iget-object p1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    .line 79
    .line 80
    invoke-static {p1}, Landroid/view/OrientationEventListener;->access$100(Landroid/view/OrientationEventListener;)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eq v0, p1, :cond_4

    .line 85
    .line 86
    iget-object p1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    .line 87
    .line 88
    invoke-static {p1, v0}, Landroid/view/OrientationEventListener;->access$102(Landroid/view/OrientationEventListener;I)I

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Landroid/view/OrientationEventListener$SensorEventListenerImpl;->this$0:Landroid/view/OrientationEventListener;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/view/OrientationEventListener;->onOrientationChanged(I)V

    .line 94
    .line 95
    .line 96
    :cond_4
    return-void
.end method
