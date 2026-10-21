.class public interface abstract Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService;
.super Ljava/lang/Object;
.source "IGDCameraService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Default;,
        Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraService$Stub;
    }
.end annotation


# virtual methods
.method public abstract closeCamera(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRecommendSize(Ljava/lang/String;)Lcom/autonavi/amapauto/gdarcameraservice/IGDSize;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract initCamera(Ljava/lang/String;Lcom/autonavi/amapauto/gdarcameraservice/model/GDArCameraParam;Landroid/view/Surface;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isCameraConnected(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isCameraOpened(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isSupportArNavi(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract openCamera(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCameraStateCallback(Ljava/lang/String;Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unInitCamera(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCameraStateCallback(Ljava/lang/String;Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
