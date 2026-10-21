.class final Landroid/hardware/SystemSensorManager$InjectEventQueue;
.super Landroid/hardware/SystemSensorManager$BaseEventQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SystemSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InjectEventQueue"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SystemSensorManager;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$InjectEventQueue;->this$0:Landroid/hardware/SystemSensorManager;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p2, p3, p1, p4}, Landroid/hardware/SystemSensorManager$BaseEventQueue;-><init>(Landroid/os/Looper;Landroid/hardware/SystemSensorManager;ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public addSensorEvent(Landroid/hardware/Sensor;)V
    .locals 0

    return-void
.end method

.method public dispatchFlushCompleteEvent(I)V
    .locals 0

    return-void
.end method

.method public dispatchSensorEvent(I[FIJ)V
    .locals 0

    return-void
.end method

.method public injectSensorData(I[FIJ)I
    .locals 0

    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SystemSensorManager$BaseEventQueue;->injectSensorDataBase(I[FIJ)I

    move-result p1

    return p1
.end method

.method public removeSensorEvent(Landroid/hardware/Sensor;)V
    .locals 0

    return-void
.end method
