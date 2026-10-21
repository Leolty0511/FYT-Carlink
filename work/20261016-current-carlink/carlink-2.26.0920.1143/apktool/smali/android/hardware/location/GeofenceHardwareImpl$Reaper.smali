.class Landroid/hardware/location/GeofenceHardwareImpl$Reaper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/GeofenceHardwareImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Reaper"
.end annotation


# instance fields
.field private mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

.field private mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

.field private mMonitoringType:I

.field final synthetic this$0:Landroid/hardware/location/GeofenceHardwareImpl;


# direct methods
.method public constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareCallback;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 3
    iput p3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/location/GeofenceHardwareImpl;Landroid/hardware/location/IGeofenceHardwareMonitorCallback;I)V
    .locals 0

    .line 4
    iput-object p1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 6
    iput p3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    return-void
.end method

.method public static synthetic access$300(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Landroid/hardware/location/IGeofenceHardwareCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/hardware/location/GeofenceHardwareImpl$Reaper;)Z
    .locals 0

    invoke-direct {p0}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->unlinkToDeath()Z

    move-result p0

    return p0
.end method

.method private binderEquals(Landroid/os/IInterface;Landroid/os/IInterface;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    if-ne p1, p2, :cond_2

    :goto_1
    return v0
.end method

.method private callbackEquals(Landroid/hardware/location/IGeofenceHardwareCallback;)Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private unlinkToDeath()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :cond_1
    const/4 v0, 0x1

    .line 29
    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1200(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x6

    .line 12
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    .line 19
    .line 20
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 21
    .line 22
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1200(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 37
    .line 38
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1300(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v1, 0x4

    .line 43
    iget-object v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    .line 50
    .line 51
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 52
    .line 53
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 54
    .line 55
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1300(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 63
    .line 64
    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1400(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x3

    .line 69
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->this$0:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 74
    .line 75
    invoke-static {v1}, Landroid/hardware/location/GeofenceHardwareImpl;->access$1400(Landroid/hardware/location/GeofenceHardwareImpl;)Landroid/os/Handler;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-ne p1, p0, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    check-cast p1, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;

    .line 10
    .line 11
    iget-object v2, p1, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 12
    .line 13
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 14
    .line 15
    invoke-direct {p0, v2, v3}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->binderEquals(Landroid/os/IInterface;Landroid/os/IInterface;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    iget-object v2, p1, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 22
    .line 23
    iget-object v3, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 24
    .line 25
    invoke-direct {p0, v2, v3}, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->binderEquals(Landroid/os/IInterface;Landroid/os/IInterface;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget p1, p1, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    .line 32
    .line 33
    iget v2, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    .line 34
    .line 35
    if-ne p1, v2, :cond_2

    .line 36
    .line 37
    move v0, v1

    .line 38
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mCallback:Landroid/hardware/location/IGeofenceHardwareCallback;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    const/16 v2, 0x20f

    .line 17
    .line 18
    add-int/2addr v2, v0

    .line 19
    mul-int/lit8 v2, v2, 0x1f

    .line 20
    .line 21
    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitorCallback:Landroid/hardware/location/IGeofenceHardwareMonitorCallback;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :cond_1
    add-int/2addr v2, v1

    .line 34
    mul-int/lit8 v2, v2, 0x1f

    .line 35
    .line 36
    iget v0, p0, Landroid/hardware/location/GeofenceHardwareImpl$Reaper;->mMonitoringType:I

    .line 37
    .line 38
    add-int/2addr v2, v0

    .line 39
    return v2
.end method
