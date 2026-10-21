.class Landroid/hardware/SystemSensorManager$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager;->setupDynamicSensorBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SystemSensorManager;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.DYNAMIC_SENSOR_CHANGED"

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    const-string p1, "SensorManager"

    .line 10
    .line 11
    const-string p2, "DYNS received DYNAMIC_SENSOR_CHANED broadcast"

    .line 12
    .line 13
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    invoke-static {p1, p2}, Landroid/hardware/SystemSensorManager;->access$002(Landroid/hardware/SystemSensorManager;Z)Z

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Landroid/hardware/SystemSensorManager$2;->this$0:Landroid/hardware/SystemSensorManager;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/hardware/SystemSensorManager;->access$100(Landroid/hardware/SystemSensorManager;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
