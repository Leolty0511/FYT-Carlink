.class public Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack$Default;
.super Ljava/lang/Object;
.source "IGDCameraStateCallBack.java"

# interfaces
.implements Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/gdarcameraservice/IGDCameraStateCallBack;
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
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClosed(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    return-void
.end method

.method public onConnected()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    return-void
.end method

.method public onDisconnected()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    return-void
.end method

.method public onOpened(Landroid/os/ParcelFileDescriptor;Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;Ljava/lang/String;)V
    .locals 0
    .param p1, "parcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "arCameraOpenResultParam"    # Lcom/autonavi/amapauto/gdarcameraservice/model/ArCameraOpenResultParam;
    .param p3, "memoryfileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 35
    return-void
.end method
