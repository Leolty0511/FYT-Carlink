.class public abstract Landroid/hardware/ICameraService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/ICameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICameraService"

.field public static final TRANSACTION_addListener:I = 0x6

.field public static final TRANSACTION_connect:I = 0x3

.field public static final TRANSACTION_connectDevice:I = 0x5

.field public static final TRANSACTION_connectPro:I = 0x4

.field public static final TRANSACTION_getCameraCharacteristics:I = 0x8

.field public static final TRANSACTION_getCameraInfo:I = 0x2

.field public static final TRANSACTION_getNumberOfCameras:I = 0x1

.field public static final TRANSACTION_removeListener:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.ICameraService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.hardware.ICameraService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroid/hardware/ICameraService;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/hardware/ICameraService;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Landroid/hardware/ICameraService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/ICameraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    const v0, 0x5f4e5446

    const-string v1, "android.hardware.ICameraService"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4
    new-instance p2, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 5
    invoke-interface {p0, p1, p2}, Landroid/hardware/ICameraService;->getCameraCharacteristics(ILandroid/hardware/camera2/impl/CameraMetadataNative;)I

    move-result p1

    .line 6
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 7
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-virtual {p2, p3, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 10
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object p1

    .line 12
    invoke-interface {p0, p1}, Landroid/hardware/ICameraService;->removeListener(Landroid/hardware/ICameraServiceListener;)I

    move-result p1

    .line 13
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 14
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 15
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object p1

    .line 17
    invoke-interface {p0, p1}, Landroid/hardware/ICameraService;->addListener(Landroid/hardware/ICameraServiceListener;)I

    move-result p1

    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 19
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 20
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v4

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 25
    new-instance p1, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {p1}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    move-object v3, p0

    move-object v8, p1

    .line 26
    invoke-interface/range {v3 .. v8}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    move-result p2

    .line 27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 28
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-virtual {p1, p3, v2}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 31
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/IProCameraCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/IProCameraCallbacks;

    move-result-object v4

    .line 33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 36
    new-instance p1, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {p1}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    move-object v3, p0

    move-object v8, p1

    .line 37
    invoke-interface/range {v3 .. v8}, Landroid/hardware/ICameraService;->connectPro(Landroid/hardware/IProCameraCallbacks;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    move-result p2

    .line 38
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 39
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {p1, p3, v2}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 42
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    move-result-object v4

    .line 44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 47
    new-instance p1, Landroid/hardware/camera2/utils/BinderHolder;

    invoke-direct {p1}, Landroid/hardware/camera2/utils/BinderHolder;-><init>()V

    move-object v3, p0

    move-object v8, p1

    .line 48
    invoke-interface/range {v3 .. v8}, Landroid/hardware/ICameraService;->connect(Landroid/hardware/ICameraClient;ILjava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I

    move-result p2

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {p1, p3, v2}, Landroid/hardware/camera2/utils/BinderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 53
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 55
    new-instance p2, Landroid/hardware/CameraInfo;

    invoke-direct {p2}, Landroid/hardware/CameraInfo;-><init>()V

    .line 56
    invoke-interface {p0, p1, p2}, Landroid/hardware/ICameraService;->getCameraInfo(ILandroid/hardware/CameraInfo;)I

    move-result p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {p2, p3, v2}, Landroid/hardware/CameraInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    .line 61
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-interface {p0}, Landroid/hardware/ICameraService;->getNumberOfCameras()I

    move-result p1

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 65
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
