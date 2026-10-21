.class public abstract Landroid/location/IGpsGeofenceHardware$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/location/IGpsGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGpsGeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsGeofenceHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IGpsGeofenceHardware"

.field public static final TRANSACTION_addCircularHardwareGeofence:I = 0x2

.field public static final TRANSACTION_isHardwareGeofenceSupported:I = 0x1

.field public static final TRANSACTION_pauseHardwareGeofence:I = 0x4

.field public static final TRANSACTION_removeHardwareGeofence:I = 0x3

.field public static final TRANSACTION_resumeHardwareGeofence:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.location.IGpsGeofenceHardware"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.location.IGpsGeofenceHardware"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroid/location/IGpsGeofenceHardware;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/location/IGpsGeofenceHardware;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16

    move-object/from16 v12, p0

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v13, p3

    const-string v2, "android.location.IGpsGeofenceHardware"

    const/4 v14, 0x1

    if-eq v0, v14, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const v3, 0x5f4e5446

    if-eq v0, v3, :cond_0

    .line 1
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    .line 3
    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 6
    invoke-interface {v12, v0, v1}, Landroid/location/IGpsGeofenceHardware;->resumeHardwareGeofence(II)Z

    move-result v0

    .line 7
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 8
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 9
    :cond_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 11
    invoke-interface {v12, v0}, Landroid/location/IGpsGeofenceHardware;->pauseHardwareGeofence(I)Z

    move-result v0

    .line 12
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 14
    :cond_3
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16
    invoke-interface {v12, v0}, Landroid/location/IGpsGeofenceHardware;->removeHardwareGeofence(I)Z

    move-result v0

    .line 17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 18
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 19
    :cond_4
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    .line 24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v15

    .line 28
    invoke-interface/range {v0 .. v11}, Landroid/location/IGpsGeofenceHardware;->addCircularHardwareGeofence(IDDDIIII)Z

    move-result v0

    .line 29
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    .line 31
    :cond_5
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    invoke-interface/range {p0 .. p0}, Landroid/location/IGpsGeofenceHardware;->isHardwareGeofenceSupported()Z

    move-result v0

    .line 33
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 34
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14
.end method
