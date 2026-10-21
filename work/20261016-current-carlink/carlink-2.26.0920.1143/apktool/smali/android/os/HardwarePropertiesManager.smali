.class public Landroid/os/HardwarePropertiesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HardwarePropertiesManager$TemperatureSource;,
        Landroid/os/HardwarePropertiesManager$DeviceTemperatureType;
    }
.end annotation


# static fields
.field public static final DEVICE_TEMPERATURE_BATTERY:I = 0x2

.field public static final DEVICE_TEMPERATURE_CPU:I = 0x0

.field public static final DEVICE_TEMPERATURE_GPU:I = 0x1

.field public static final DEVICE_TEMPERATURE_SKIN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HardwarePropertiesManager"

.field public static final TEMPERATURE_CURRENT:I = 0x0

.field public static final TEMPERATURE_SHUTDOWN:I = 0x2

.field public static final TEMPERATURE_THROTTLING:I = 0x1

.field public static final TEMPERATURE_THROTTLING_BELOW_VR_MIN:I = 0x3

.field public static final UNDEFINED_TEMPERATURE:F = -3.4028235E38f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IHardwarePropertiesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IHardwarePropertiesManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/os/HardwarePropertiesManager;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/os/HardwarePropertiesManager;->mService:Landroid/os/IHardwarePropertiesManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCpuUsages()[Landroid/os/CpuUsageInfo;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/HardwarePropertiesManager;->mService:Landroid/os/IHardwarePropertiesManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/os/HardwarePropertiesManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Landroid/os/IHardwarePropertiesManager;->getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    throw v0
.end method

.method public getDeviceTemperatures(II)[F
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    if-eq p1, v3, :cond_0

    .line 8
    .line 9
    if-eq p1, v2, :cond_0

    .line 10
    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    sget-object p1, Landroid/os/HardwarePropertiesManager;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string p2, "Unknown device temperature type."

    .line 16
    .line 17
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-array p1, v0, [F

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    if-eqz p2, :cond_1

    .line 24
    .line 25
    if-eq p2, v3, :cond_1

    .line 26
    .line 27
    if-eq p2, v2, :cond_1

    .line 28
    .line 29
    if-eq p2, v1, :cond_1

    .line 30
    .line 31
    sget-object p1, Landroid/os/HardwarePropertiesManager;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string p2, "Unknown device temperature source."

    .line 34
    .line 35
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    new-array p1, v0, [F

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/os/HardwarePropertiesManager;->mService:Landroid/os/IHardwarePropertiesManager;

    .line 42
    .line 43
    iget-object v1, p0, Landroid/os/HardwarePropertiesManager;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v0, v1, p1, p2}, Landroid/os/IHardwarePropertiesManager;->getDeviceTemperatures(Ljava/lang/String;II)[F

    .line 50
    .line 51
    .line 52
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-object p1

    .line 54
    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    throw p1
.end method

.method public getFanSpeeds()[F
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/os/HardwarePropertiesManager;->mService:Landroid/os/IHardwarePropertiesManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/os/HardwarePropertiesManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Landroid/os/IHardwarePropertiesManager;->getFanSpeeds(Ljava/lang/String;)[F

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    throw v0
.end method
