.class Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;
.super Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GeofenceHardwareMonitorCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/location/GeofenceHardwareMonitorCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Landroid/hardware/location/GeofenceHardware;


# direct methods
.method public constructor <init>(Landroid/hardware/location/GeofenceHardware;Landroid/hardware/location/GeofenceHardwareMonitorCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;->this$0:Landroid/hardware/location/GeofenceHardware;

    invoke-direct {p0}, Landroid/hardware/location/IGeofenceHardwareMonitorCallback$Stub;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onMonitoringSystemChange(IZLandroid/location/Location;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardware$GeofenceHardwareMonitorCallbackWrapper;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/GeofenceHardwareMonitorCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/location/GeofenceHardwareMonitorCallback;->onMonitoringSystemChange(IZLandroid/location/Location;)V

    :cond_0
    return-void
.end method
