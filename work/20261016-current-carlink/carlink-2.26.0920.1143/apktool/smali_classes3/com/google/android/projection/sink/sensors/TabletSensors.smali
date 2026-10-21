.class public Lcom/google/android/projection/sink/sensors/TabletSensors;
.super Lcom/google/android/projection/sink/sensors/SensorCollectorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/sink/sensors/TabletSensors$SunCalculatorRunnable;
    }
.end annotation


# static fields
.field private static final CONSECUTIVE_CHANGES_TO_TRIGGER_DAY_NIGHT_MODE_CHANGE:I = 0xa

.field private static final NIGHT_MODE_HIGH:F = 60.000004f

.field private static final NIGHT_MODE_LOW:F = 40.0f

.field private static final TAG:Ljava/lang/String; = "AHU.TabletSensors"


# instance fields
.field private mAzimuth:I

.field private final mContext:Landroid/content/Context;

.field private mDayNightModeCurrentModeAccumulated:I

.field private final mDisplay:Landroid/view/Display;

.field private final mGravity:[F

.field private mHandler:Landroid/os/Handler;

.field private final mInclinationMatrix:[F

.field protected mLocation:Landroid/location/Location;

.field private final mMagneticField:[F

.field private mNightMode:Z

.field private final mOrientation:[F

.field private mPitch:I

.field private mPressure:F

.field private mRecentNightMode:Z

.field private mRoll:I

.field private final mRotationMatrix:[F

.field private final mRotationSpeed:[F

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTc:Lcom/google/android/projection/sink/sensors/TwilightCalculator;

.field private mTemperature:F

.field private final mUseCompass:Z

.field private final mUseSunCalculator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v1, v0, [F

    .line 6
    .line 7
    iput-object v1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mGravity:[F

    .line 8
    .line 9
    new-array v1, v0, [F

    .line 10
    .line 11
    iput-object v1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mMagneticField:[F

    .line 12
    .line 13
    new-array v1, v0, [F

    .line 14
    .line 15
    iput-object v1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mRotationSpeed:[F

    .line 16
    .line 17
    const/16 v1, 0x9

    .line 18
    .line 19
    new-array v2, v1, [F

    .line 20
    .line 21
    iput-object v2, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mRotationMatrix:[F

    .line 22
    .line 23
    new-array v1, v1, [F

    .line 24
    .line 25
    iput-object v1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mInclinationMatrix:[F

    .line 26
    .line 27
    new-array v0, v0, [F

    .line 28
    .line 29
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mOrientation:[F

    .line 30
    .line 31
    const/high16 v0, -0x80000000

    .line 32
    .line 33
    iput v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mPitch:I

    .line 34
    .line 35
    iput v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mRoll:I

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mDayNightModeCurrentModeAccumulated:I

    .line 39
    .line 40
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 41
    .line 42
    iput v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mTemperature:F

    .line 43
    .line 44
    iput v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mPressure:F

    .line 45
    .line 46
    new-instance v0, Lcom/google/android/projection/sink/sensors/TabletSensors$1;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/google/android/projection/sink/sensors/TabletSensors$1;-><init>(Lcom/google/android/projection/sink/sensors/TabletSensors;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    const-string v0, "window"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/view/WindowManager;

    .line 62
    .line 63
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mDisplay:Landroid/view/Display;

    .line 68
    .line 69
    const-string v0, "sensor"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/hardware/SensorManager;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 78
    .line 79
    new-instance v0, Lcom/google/android/projection/sink/settings/Settings;

    .line 80
    .line 81
    invoke-direct {v0, p1}, Lcom/google/android/projection/sink/settings/Settings;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/google/android/projection/sink/settings/Settings;->isUseTabletCompassEnabled()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mUseCompass:Z

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/google/android/projection/sink/settings/Settings;->useSunCalculator()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mUseSunCalculator:Z

    .line 95
    .line 96
    return-void
.end method

.method public static synthetic access$100(Lcom/google/android/projection/sink/sensors/TabletSensors;)[F
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mGravity:[F

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/projection/sink/sensors/TabletSensors;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/sink/sensors/TabletSensors;->updateCompass()V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/android/projection/sink/sensors/TabletSensors;)[F
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mMagneticField:[F

    return-object p0
.end method

.method public static synthetic access$400(Lcom/google/android/projection/sink/sensors/TabletSensors;)[F
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mRotationSpeed:[F

    return-object p0
.end method

.method public static synthetic access$502(Lcom/google/android/projection/sink/sensors/TabletSensors;F)F
    .locals 0

    iput p1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mTemperature:F

    return p1
.end method

.method public static synthetic access$602(Lcom/google/android/projection/sink/sensors/TabletSensors;F)F
    .locals 0

    iput p1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mPressure:F

    return p1
.end method

.method public static synthetic access$700(Lcom/google/android/projection/sink/sensors/TabletSensors;)Lcom/google/android/projection/sink/sensors/TwilightCalculator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mTc:Lcom/google/android/projection/sink/sensors/TwilightCalculator;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/google/android/projection/sink/sensors/TabletSensors;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mNightMode:Z

    return p0
.end method

.method public static synthetic access$802(Lcom/google/android/projection/sink/sensors/TabletSensors;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mNightMode:Z

    return p1
.end method

.method public static synthetic access$900(Lcom/google/android/projection/sink/sensors/TabletSensors;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private static varargs getVectorNorm([F)F
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    .line 6
    aget v3, p0, v2

    .line 7
    .line 8
    mul-float/2addr v3, v3

    .line 9
    add-float/2addr v1, v3

    .line 10
    add-int/lit8 v2, v2, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    float-to-double v0, v1

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    double-to-float p0, v0

    .line 19
    return p0
.end method

.method private updateCompass()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mGravity:[F

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/sink/sensors/TabletSensors;->getVectorNorm([F)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    float-to-double v0, v0

    .line 8
    const-wide v2, 0x4025931af999999aL    # 10.787315177917481

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    cmpl-double v2, v0, v2

    .line 14
    .line 15
    if-gtz v2, :cond_6

    .line 16
    .line 17
    const-wide v2, 0x4021a6e786666667L    # 8.825985145568849

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    cmpg-double v0, v0, v2

    .line 23
    .line 24
    if-gez v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mRotationMatrix:[F

    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mInclinationMatrix:[F

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mGravity:[F

    .line 33
    .line 34
    iget-object v3, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mMagneticField:[F

    .line 35
    .line 36
    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_6

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mRotationMatrix:[F

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mOrientation:[F

    .line 45
    .line 46
    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mOrientation:[F

    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    aget v0, v0, v1

    .line 53
    .line 54
    float-to-double v2, v0

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 60
    .line 61
    .line 62
    move-result-wide v2

    .line 63
    long-to-int v0, v2

    .line 64
    iget-object v2, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mOrientation:[F

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    aget v2, v2, v3

    .line 68
    .line 69
    float-to-double v4, v2

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    long-to-int v2, v4

    .line 79
    iget-object v4, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mOrientation:[F

    .line 80
    .line 81
    const/4 v5, 0x2

    .line 82
    aget v4, v4, v5

    .line 83
    .line 84
    float-to-double v4, v4

    .line 85
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    long-to-int v4, v4

    .line 94
    iget-object v5, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mDisplay:Landroid/view/Display;

    .line 95
    .line 96
    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    const/4 v6, 0x3

    .line 101
    if-ne v5, v6, :cond_1

    .line 102
    .line 103
    move v5, v3

    .line 104
    goto :goto_0

    .line 105
    :cond_1
    move v5, v1

    .line 106
    :goto_0
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    const/16 v7, 0x1e

    .line 111
    .line 112
    if-ge v6, v7, :cond_2

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    move v3, v1

    .line 116
    :goto_1
    const/16 v6, 0x5a

    .line 117
    .line 118
    if-eqz v5, :cond_3

    .line 119
    .line 120
    add-int/lit8 v0, v0, -0x5a

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    add-int/2addr v0, v6

    .line 124
    :goto_2
    if-eqz v3, :cond_4

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_4
    move v1, v6

    .line 128
    :goto_3
    if-eqz v5, :cond_5

    .line 129
    .line 130
    sub-int/2addr v1, v4

    .line 131
    goto :goto_4

    .line 132
    :cond_5
    add-int/2addr v1, v4

    .line 133
    neg-int v2, v2

    .line 134
    :goto_4
    rem-int/lit16 v0, v0, 0x168

    .line 135
    .line 136
    add-int/lit16 v0, v0, 0x168

    .line 137
    .line 138
    rem-int/lit16 v0, v0, 0x168

    .line 139
    .line 140
    iput v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mAzimuth:I

    .line 141
    .line 142
    iput v1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mPitch:I

    .line 143
    .line 144
    iput v2, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mRoll:I

    .line 145
    .line 146
    :cond_6
    :goto_5
    return-void
.end method


# virtual methods
.method public discoverSensorsImpl(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v3, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 22
    .line 23
    const/4 v4, 0x4

    .line 24
    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v4, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 29
    .line 30
    const/16 v5, 0xd

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    iget-object v5, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 37
    .line 38
    const/4 v6, 0x6

    .line 39
    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const/16 v6, 0xa

    .line 44
    .line 45
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    const/16 v6, 0x13

    .line 55
    .line 56
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    if-eqz v0, :cond_1

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mUseCompass:Z

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_1
    if-eqz v3, :cond_2

    .line 79
    .line 80
    const/16 v0, 0x14

    .line 81
    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :cond_2
    if-nez v4, :cond_3

    .line 90
    .line 91
    if-eqz v5, :cond_4

    .line 92
    .line 93
    :cond_3
    const/16 v0, 0xb

    .line 94
    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_4
    return-void
.end method

.method public registerSensorsImpl()V
    .locals 5

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->isHandled(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mUseSunCalculator:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const-string v2, "location"

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/location/LocationManager;

    .line 23
    .line 24
    const-string v2, "gps"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mLocation:Landroid/location/Location;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    const-string v0, "AHU.TabletSensors"

    .line 35
    .line 36
    const-string v2, "Unable to get location, using 120W/34N"

    .line 37
    .line 38
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    new-instance v0, Landroid/location/Location;

    .line 42
    .line 43
    const-string v2, "fake"

    .line 44
    .line 45
    invoke-direct {v0, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mLocation:Landroid/location/Location;

    .line 49
    .line 50
    const-wide/high16 v2, 0x4041000000000000L    # 34.0

    .line 51
    .line 52
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mLocation:Landroid/location/Location;

    .line 56
    .line 57
    const-wide/high16 v2, -0x3fa2000000000000L    # -120.0

    .line 58
    .line 59
    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 60
    .line 61
    .line 62
    :cond_0
    new-instance v0, Lcom/google/android/projection/sink/sensors/TwilightCalculator;

    .line 63
    .line 64
    invoke-direct {v0}, Lcom/google/android/projection/sink/sensors/TwilightCalculator;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mTc:Lcom/google/android/projection/sink/sensors/TwilightCalculator;

    .line 68
    .line 69
    new-instance v0, Landroid/os/Handler;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mHandler:Landroid/os/Handler;

    .line 81
    .line 82
    new-instance v2, Lcom/google/android/projection/sink/sensors/TabletSensors$SunCalculatorRunnable;

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-direct {v2, p0, v3}, Lcom/google/android/projection/sink/sensors/TabletSensors$SunCalculatorRunnable;-><init>(Lcom/google/android/projection/sink/sensors/TabletSensors;Lcom/google/android/projection/sink/sensors/TabletSensors$1;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 95
    .line 96
    const/4 v3, 0x5

    .line 97
    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_0
    const/16 v0, 0x13

    .line 105
    .line 106
    invoke-virtual {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->isHandled(I)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 113
    .line 114
    iget-object v2, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 115
    .line 116
    const/4 v3, 0x1

    .line 117
    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 122
    .line 123
    .line 124
    :cond_3
    const/4 v0, 0x2

    .line 125
    invoke-virtual {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->isHandled(I)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_4

    .line 130
    .line 131
    iget-object v2, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 132
    .line 133
    iget-object v3, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 134
    .line 135
    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v2, v3, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 140
    .line 141
    .line 142
    :cond_4
    const/16 v0, 0x14

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->isHandled(I)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_5

    .line 149
    .line 150
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 151
    .line 152
    iget-object v2, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 153
    .line 154
    const/4 v3, 0x4

    .line 155
    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v0, v2, v3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 160
    .line 161
    .line 162
    :cond_5
    const/16 v0, 0xb

    .line 163
    .line 164
    invoke-virtual {p0, v0}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->isHandled(I)Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_7

    .line 169
    .line 170
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 171
    .line 172
    const/16 v2, 0xd

    .line 173
    .line 174
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget-object v2, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 179
    .line 180
    const/4 v3, 0x6

    .line 181
    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    if-eqz v0, :cond_6

    .line 186
    .line 187
    iget-object v3, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 188
    .line 189
    iget-object v4, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 190
    .line 191
    invoke-virtual {v3, v4, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 192
    .line 193
    .line 194
    :cond_6
    if-eqz v2, :cond_7

    .line 195
    .line 196
    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 197
    .line 198
    iget-object v3, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 199
    .line 200
    invoke-virtual {v0, v3, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 201
    .line 202
    .line 203
    :cond_7
    return-void
.end method

.method public reportAvailable(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mRecentNightMode:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mNightMode:Z

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mNightMode:Z

    .line 8
    .line 9
    const/16 p1, 0xa

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/projection/sink/sensors/SensorCollectorBase;->reportAvailable(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public sendUpdateImpl(Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;I)Z
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    if-ne p2, v2, :cond_2

    .line 5
    .line 6
    iget v4, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mAzimuth:I

    .line 7
    .line 8
    iget v6, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mPitch:I

    .line 9
    .line 10
    const/high16 p2, -0x80000000

    .line 11
    .line 12
    if-eq v6, p2, :cond_0

    .line 13
    .line 14
    move v5, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v5, v0

    .line 17
    :goto_0
    iget v8, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mRoll:I

    .line 18
    .line 19
    if-eq v8, p2, :cond_1

    .line 20
    .line 21
    move v7, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v7, v0

    .line 24
    :goto_1
    move-object v3, p1

    .line 25
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportCompassData(IZIZI)V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    const/16 v3, 0x13

    .line 30
    .line 31
    if-ne p2, v3, :cond_3

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    iget-object p2, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mGravity:[F

    .line 35
    .line 36
    aget v6, p2, v0

    .line 37
    .line 38
    const/4 v7, 0x1

    .line 39
    aget v8, p2, v1

    .line 40
    .line 41
    const/4 v9, 0x1

    .line 42
    aget v10, p2, v2

    .line 43
    .line 44
    move-object v4, p1

    .line 45
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportAccelerometerData(ZFZFZF)V

    .line 46
    .line 47
    .line 48
    return v1

    .line 49
    :cond_3
    const/16 v3, 0x14

    .line 50
    .line 51
    if-ne p2, v3, :cond_4

    .line 52
    .line 53
    const/4 v5, 0x1

    .line 54
    iget-object p2, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mRotationSpeed:[F

    .line 55
    .line 56
    aget v6, p2, v0

    .line 57
    .line 58
    const/4 v7, 0x1

    .line 59
    aget v8, p2, v1

    .line 60
    .line 61
    const/4 v9, 0x1

    .line 62
    aget v10, p2, v2

    .line 63
    .line 64
    move-object v4, p1

    .line 65
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportGyroscopeData(ZFZFZF)V

    .line 66
    .line 67
    .line 68
    return v1

    .line 69
    :cond_4
    const/16 v0, 0xa

    .line 70
    .line 71
    if-ne p2, v0, :cond_5

    .line 72
    .line 73
    iget-boolean p2, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mNightMode:Z

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportNightModeData(Z)V

    .line 76
    .line 77
    .line 78
    return v1

    .line 79
    :cond_5
    const/16 v0, 0xb

    .line 80
    .line 81
    if-ne p2, v0, :cond_6

    .line 82
    .line 83
    iget p2, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mTemperature:F

    .line 84
    .line 85
    iget v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mPressure:F

    .line 86
    .line 87
    invoke-virtual {p1, p2, v0}, Lcom/google/android/projection/sink/sensors/SensorSinkWrapper;->reportEnvironmentData(FF)V

    .line 88
    .line 89
    .line 90
    return v1

    .line 91
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 92
    .line 93
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method public unregisterSensorsImpl()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/android/projection/sink/sensors/TabletSensors;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
