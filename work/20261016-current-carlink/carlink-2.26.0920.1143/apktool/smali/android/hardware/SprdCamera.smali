.class public Landroid/hardware/SprdCamera;
.super Landroid/hardware/Camera;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SprdCamera$SprdParameters;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/Camera;-><init>(I)V

    return-void
.end method

.method public static checkCameraId(I)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ge p0, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    const-string v0, "Unknown camera ID"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p0
.end method

.method public static checkError(Landroid/hardware/Camera;I)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    const-string v0, "com.android.camera2"

    .line 8
    .line 9
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget p0, Landroid/system/OsConstants;->EACCES:I

    .line 20
    .line 21
    neg-int p0, p0

    .line 22
    return p0

    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->cameraInitNormal(I)I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public static open(I)Landroid/hardware/SprdCamera;
    .locals 1

    new-instance v0, Landroid/hardware/SprdCamera;

    invoke-direct {v0, p0}, Landroid/hardware/SprdCamera;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public enableShutterSoundSprd(Z)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/hardware/SprdCamera;->getParameters()Landroid/hardware/SprdCamera$SprdParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/hardware/SprdCamera$SprdParameters;
    .locals 2

    .line 2
    invoke-super {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/hardware/SprdCamera$SprdParameters;

    invoke-direct {v1, p0}, Landroid/hardware/SprdCamera$SprdParameters;-><init>(Landroid/hardware/SprdCamera;)V

    .line 4
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    return-object v1
.end method

.method public final setSensorSelfShotListenerApi1(Landroid/hardware/Camera$SensorSelfShotListenerApi1;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mSensorSelfShotListenerApi1:Landroid/hardware/Camera$SensorSelfShotListenerApi1;

    return-void
.end method
