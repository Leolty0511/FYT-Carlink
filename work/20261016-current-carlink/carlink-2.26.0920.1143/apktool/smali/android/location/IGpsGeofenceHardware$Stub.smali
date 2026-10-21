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

.field static final TRANSACTION_addCircularHardwareGeofence:I = 0x2

.field static final TRANSACTION_isHardwareGeofenceSupported:I = 0x1

.field static final TRANSACTION_pauseHardwareGeofence:I = 0x4

.field static final TRANSACTION_removeHardwareGeofence:I = 0x3

.field static final TRANSACTION_resumeHardwareGeofence:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.location.IGpsGeofenceHardware"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.location.IGpsGeofenceHardware"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Landroid/location/IGpsGeofenceHardware;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/location/IGpsGeofenceHardware;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    move-object/from16 v13, p3

    .line 8
    .line 9
    const-string v2, "android.location.IGpsGeofenceHardware"

    .line 10
    .line 11
    const/4 v14, 0x1

    .line 12
    if-eq v0, v14, :cond_5

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v0, v3, :cond_4

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-eq v0, v3, :cond_3

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    if-eq v0, v3, :cond_2

    .line 22
    .line 23
    const/4 v3, 0x5

    .line 24
    if-eq v0, v3, :cond_1

    .line 25
    .line 26
    const v3, 0x5f4e5446

    .line 27
    .line 28
    .line 29
    if-eq v0, v3, :cond_0

    .line 30
    .line 31
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    return v0

    .line 36
    :cond_0
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v14

    .line 40
    :cond_1
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-interface {v12, v0, v1}, Landroid/location/IGpsGeofenceHardware;->resumeHardwareGeofence(II)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    return v14

    .line 62
    :cond_2
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-interface {v12, v0}, Landroid/location/IGpsGeofenceHardware;->pauseHardwareGeofence(I)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    return v14

    .line 80
    :cond_3
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    invoke-interface {v12, v0}, Landroid/location/IGpsGeofenceHardware;->removeHardwareGeofence(I)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    .line 96
    .line 97
    return v14

    .line 98
    :cond_4
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    .line 106
    .line 107
    .line 108
    move-result-wide v3

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    .line 110
    .line 111
    .line 112
    move-result-wide v5

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    .line 114
    .line 115
    .line 116
    move-result-wide v7

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 130
    .line 131
    .line 132
    move-result v15

    .line 133
    move-object/from16 v0, p0

    .line 134
    .line 135
    move v1, v2

    .line 136
    move-wide v2, v3

    .line 137
    move-wide v4, v5

    .line 138
    move-wide v6, v7

    .line 139
    move v8, v9

    .line 140
    move v9, v10

    .line 141
    move v10, v11

    .line 142
    move v11, v15

    .line 143
    invoke-interface/range {v0 .. v11}, Landroid/location/IGpsGeofenceHardware;->addCircularHardwareGeofence(IDDDIIII)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    .line 152
    .line 153
    return v14

    .line 154
    :cond_5
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-interface/range {p0 .. p0}, Landroid/location/IGpsGeofenceHardware;->isHardwareGeofenceSupported()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    .line 166
    .line 167
    return v14
.end method
