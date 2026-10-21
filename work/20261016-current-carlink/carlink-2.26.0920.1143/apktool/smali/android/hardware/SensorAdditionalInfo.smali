.class public Landroid/hardware/SensorAdditionalInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorAdditionalInfo$AdditionalInfoType;
    }
.end annotation


# static fields
.field public static final TYPE_CUSTOM_INFO:I = 0x10000000

.field public static final TYPE_DEBUG_INFO:I = 0x40000000

.field public static final TYPE_DOCK_STATE:I = 0x30002

.field public static final TYPE_FRAME_BEGIN:I = 0x0

.field public static final TYPE_FRAME_END:I = 0x1

.field public static final TYPE_HIGH_PERFORMANCE_MODE:I = 0x30003

.field public static final TYPE_INTERNAL_TEMPERATURE:I = 0x10001

.field public static final TYPE_LOCAL_GEOMAGNETIC_FIELD:I = 0x30000

.field public static final TYPE_LOCAL_GRAVITY:I = 0x30001

.field public static final TYPE_MAGNETIC_FIELD_CALIBRATION:I = 0x30004

.field public static final TYPE_SAMPLING:I = 0x10004

.field public static final TYPE_SENSOR_PLACEMENT:I = 0x10003

.field public static final TYPE_UNTRACKED_DELAY:I = 0x10000

.field public static final TYPE_VEC3_CALIBRATION:I = 0x10002


# instance fields
.field public final floatValues:[F

.field public final intValues:[I

.field public final sensor:Landroid/hardware/Sensor;

.field public final serial:I

.field public final type:I


# direct methods
.method public constructor <init>(Landroid/hardware/Sensor;II[I[F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/hardware/SensorAdditionalInfo;->sensor:Landroid/hardware/Sensor;

    .line 5
    .line 6
    iput p2, p0, Landroid/hardware/SensorAdditionalInfo;->type:I

    .line 7
    .line 8
    iput p3, p0, Landroid/hardware/SensorAdditionalInfo;->serial:I

    .line 9
    .line 10
    iput-object p4, p0, Landroid/hardware/SensorAdditionalInfo;->intValues:[I

    .line 11
    .line 12
    iput-object p5, p0, Landroid/hardware/SensorAdditionalInfo;->floatValues:[F

    .line 13
    .line 14
    return-void
.end method

.method public static createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;
    .locals 7

    .line 1
    const/high16 v0, 0x10000000

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const/high16 v0, 0x40000000    # 2.0f

    .line 6
    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/hardware/SensorAdditionalInfo;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v1, v0

    .line 16
    move-object v2, p0

    .line 17
    move v3, p1

    .line 18
    move-object v6, p2

    .line 19
    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorAdditionalInfo;-><init>(Landroid/hardware/Sensor;II[I[F)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string/jumbo v1, "invalid parameter(s): type: "

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, "; sensor: "

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p2
.end method

.method public static createLocalGeomagneticField(FFF)Landroid/hardware/SensorAdditionalInfo;
    .locals 7

    .line 1
    const/high16 v0, 0x41200000    # 10.0f

    .line 2
    .line 3
    cmpg-float v0, p0, v0

    .line 4
    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x42c80000    # 100.0f

    .line 8
    .line 9
    cmpl-float v0, p0, v0

    .line 10
    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    cmpg-float v0, p1, v0

    .line 15
    .line 16
    if-ltz v0, :cond_0

    .line 17
    .line 18
    float-to-double v0, p1

    .line 19
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    cmpl-double v0, v0, v2

    .line 25
    .line 26
    if-gtz v0, :cond_0

    .line 27
    .line 28
    float-to-double v0, p2

    .line 29
    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    cmpg-double v2, v0, v2

    .line 35
    .line 36
    if-ltz v2, :cond_0

    .line 37
    .line 38
    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    cmpl-double v0, v0, v2

    .line 44
    .line 45
    if-gtz v0, :cond_0

    .line 46
    .line 47
    new-instance v0, Landroid/hardware/SensorAdditionalInfo;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    const/high16 v3, 0x30000

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v1, 0x3

    .line 55
    new-array v6, v1, [F

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    aput p0, v6, v1

    .line 59
    .line 60
    const/4 p0, 0x1

    .line 61
    aput p1, v6, p0

    .line 62
    .line 63
    const/4 p0, 0x2

    .line 64
    aput p2, v6, p0

    .line 65
    .line 66
    move-object v1, v0

    .line 67
    invoke-direct/range {v1 .. v6}, Landroid/hardware/SensorAdditionalInfo;-><init>(Landroid/hardware/Sensor;II[I[F)V

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string p1, "Geomagnetic field info out of range"

    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0
.end method
