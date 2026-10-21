.class public Landroid/hardware/SensorEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public accuracy:I

.field public sensor:Landroid/hardware/Sensor;

.field public timestamp:J

.field public final values:[F


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-array p1, p1, [F

    .line 5
    .line 6
    iput-object p1, p0, Landroid/hardware/SensorEvent;->values:[F

    .line 7
    .line 8
    return-void
.end method
