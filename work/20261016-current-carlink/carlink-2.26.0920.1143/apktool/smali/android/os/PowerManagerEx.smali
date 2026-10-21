.class public Landroid/os/PowerManagerEx;
.super Landroid/os/AbsPowerManager;
.source "SourceFile"


# static fields
.field public static final ACTION_POWEREX_SAVE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.POWEREX_SAVE_MODE_CHANGED"

.field public static final EXTRA_POWEREX_SAVE_MODE:Ljava/lang/String; = "mode"

.field public static final EXTRA_POWEREX_SAVE_PREMODE:Ljava/lang/String; = "pre-mode"

.field public static final MODE_INVALID:I = -0x1

.field public static final MODE_LOWPOWER:I = 0x3

.field public static final MODE_PERFORMANCE:I = 0x0

.field public static final MODE_POWERSAVING:I = 0x2

.field public static final MODE_SMART:I = 0x1

.field public static final MODE_ULTRASAVING:I = 0x4

.field public static final POWER_CONTROLLER_ENABLE:Ljava/lang/String; = "persist.sys.pwctl.enable"

.field private static final TAG:Ljava/lang/String; = "PowerManagerEx"

.field private static final mPowerControllerEnabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mPowerMan:Landroid/os/IPowerManagerEx;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "persist.sys.pwctl.enable"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    sput-boolean v1, Landroid/os/PowerManagerEx;->mPowerControllerEnabled:Z

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AbsPowerManager;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/os/PowerManagerEx;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-string/jumbo p1, "power_ex"

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Landroid/os/IPowerManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManagerEx;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Landroid/os/PowerManagerEx;->mPowerMan:Landroid/os/IPowerManagerEx;

    .line 18
    .line 19
    return-void
.end method

.method private getPowerManagerEx()Landroid/os/IPowerManagerEx;
    .locals 1

    .line 1
    const-string/jumbo v0, "power_ex"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/os/IPowerManagerEx$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManagerEx;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static isPowerControllerEnabled()Z
    .locals 1

    sget-boolean v0, Landroid/os/PowerManagerEx;->mPowerControllerEnabled:Z

    return v0
.end method


# virtual methods
.method public forcePowerSaveMode(Z)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManagerEx;->mPowerMan:Landroid/os/IPowerManagerEx;

    invoke-interface {v0, p1}, Landroid/os/IPowerManagerEx;->forcePowerSaveMode(Z)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public rebootAnimation()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManagerEx;->getPowerManagerEx()Landroid/os/IPowerManagerEx;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/os/IPowerManagerEx;->rebootAnimation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    const-string v0, "PowerManagerEx"

    .line 10
    .line 11
    const-string/jumbo v1, "rebootAnimation could not get remote service"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public scheduleButtonLightTimeout(J)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManagerEx;->getPowerManagerEx()Landroid/os/IPowerManagerEx;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManagerEx;->scheduleButtonLightTimeout(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    const-string p1, "PowerManagerEx"

    .line 10
    .line 11
    const-string/jumbo p2, "scheduleButtonLightTimeout could not get remote service"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public setEventUserActivityNeeded(Z)V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManagerEx;->getPowerManagerEx()Landroid/os/IPowerManagerEx;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Landroid/os/IPowerManagerEx;->setEventUserActivityNeeded(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    const-string p1, "PowerManagerEx"

    .line 10
    .line 11
    const-string/jumbo v0, "setEventUserActivityNeeded could not get remote service"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public shutdownForAlarm()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Landroid/os/PowerManagerEx;->getPowerManagerEx()Landroid/os/IPowerManagerEx;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-interface {v0, v1, v2}, Landroid/os/IPowerManagerEx;->shutdownForAlarm(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    const-string v0, "PowerManagerEx"

    .line 12
    .line 13
    const-string/jumbo v1, "shutdownForAlarm could not get remote service"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method
