.class public Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Default;
.super Ljava/lang/Object;
.source "IGDCameraService.java"

# interfaces
.implements Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public closeCamera(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public getRecommendSize(Ljava/lang/String;)Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public initCamera(Ljava/lang/String;Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;Landroid/view/Surface;)Z
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "gdArCameraParam"    # Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;
    .param p3, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public isCameraConnected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public isCameraOpened(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportArNavi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public openCamera(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public registerCameraStateCallback(Ljava/lang/String;Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;)Z
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "gdCameraStateCallBack"    # Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public unInitCamera(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterCameraStateCallback(Ljava/lang/String;Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;)Z
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "gdCameraStateCallBack"    # Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method
