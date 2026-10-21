.class public final Landroid/bluetooth/BluetoothClass;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothClass$Device;,
        Landroid/bluetooth/BluetoothClass$Service;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x1000000

.field public static final PROFILE_A2DP:I = 0x1

.field public static final PROFILE_A2DP_SINK:I = 0x6

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_HID:I = 0x3

.field public static final PROFILE_NAP:I = 0x5

.field public static final PROFILE_OPP:I = 0x2

.field public static final PROFILE_PANU:I = 0x4


# instance fields
.field private final mClass:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public doesClassMatch(I)Z
    .locals 6

    .line 1
    const/16 v0, 0x428

    .line 2
    .line 3
    const/16 v1, 0x420

    .line 4
    .line 5
    const/high16 v2, 0x40000

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    if-ne p1, v4, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    return v4

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/16 v2, 0x414

    .line 23
    .line 24
    if-eq p1, v2, :cond_1

    .line 25
    .line 26
    const/16 v2, 0x418

    .line 27
    .line 28
    if-eq p1, v2, :cond_1

    .line 29
    .line 30
    if-eq p1, v1, :cond_1

    .line 31
    .line 32
    if-eq p1, v0, :cond_1

    .line 33
    .line 34
    return v3

    .line 35
    :cond_1
    return v4

    .line 36
    :cond_2
    const/4 v5, 0x6

    .line 37
    if-ne p1, v5, :cond_5

    .line 38
    .line 39
    const/high16 p1, 0x80000

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    return v4

    .line 48
    :cond_3
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/16 v1, 0x424

    .line 53
    .line 54
    if-eq p1, v1, :cond_4

    .line 55
    .line 56
    if-eq p1, v0, :cond_4

    .line 57
    .line 58
    const/16 v0, 0x42c

    .line 59
    .line 60
    if-eq p1, v0, :cond_4

    .line 61
    .line 62
    return v3

    .line 63
    :cond_4
    return v4

    .line 64
    :cond_5
    if-nez p1, :cond_8

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_6

    .line 71
    .line 72
    return v4

    .line 73
    :cond_6
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    const/16 v0, 0x404

    .line 78
    .line 79
    if-eq p1, v0, :cond_7

    .line 80
    .line 81
    const/16 v0, 0x408

    .line 82
    .line 83
    if-eq p1, v0, :cond_7

    .line 84
    .line 85
    if-eq p1, v1, :cond_7

    .line 86
    .line 87
    return v3

    .line 88
    :cond_7
    return v4

    .line 89
    :cond_8
    const/4 v0, 0x2

    .line 90
    if-ne p1, v0, :cond_a

    .line 91
    .line 92
    const/high16 p1, 0x100000

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_9

    .line 99
    .line 100
    return v4

    .line 101
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    sparse-switch p1, :sswitch_data_0

    .line 106
    .line 107
    .line 108
    return v3

    .line 109
    :sswitch_0
    return v4

    .line 110
    :cond_a
    const/4 v0, 0x3

    .line 111
    if-ne p1, v0, :cond_c

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    const/16 v0, 0x500

    .line 118
    .line 119
    and-int/2addr p1, v0

    .line 120
    if-ne p1, v0, :cond_b

    .line 121
    .line 122
    move v3, v4

    .line 123
    :cond_b
    return v3

    .line 124
    :cond_c
    const/4 v0, 0x4

    .line 125
    if-eq p1, v0, :cond_e

    .line 126
    .line 127
    const/4 v0, 0x5

    .line 128
    if-ne p1, v0, :cond_d

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_d
    return v3

    .line 132
    :cond_e
    :goto_0
    const/high16 p1, 0x20000

    .line 133
    .line 134
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_f

    .line 139
    .line 140
    return v4

    .line 141
    :cond_f
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    const/16 v0, 0x300

    .line 146
    .line 147
    and-int/2addr p1, v0

    .line 148
    if-ne p1, v0, :cond_10

    .line 149
    .line 150
    move v3, v4

    .line 151
    :cond_10
    return v3

    .line 152
    nop

    .line 153
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x104 -> :sswitch_0
        0x108 -> :sswitch_0
        0x10c -> :sswitch_0
        0x110 -> :sswitch_0
        0x114 -> :sswitch_0
        0x118 -> :sswitch_0
        0x200 -> :sswitch_0
        0x204 -> :sswitch_0
        0x208 -> :sswitch_0
        0x20c -> :sswitch_0
        0x210 -> :sswitch_0
        0x214 -> :sswitch_0
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/bluetooth/BluetoothClass;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    .line 7
    .line 8
    check-cast p1, Landroid/bluetooth/BluetoothClass;

    .line 9
    .line 10
    iget p1, p1, Landroid/bluetooth/BluetoothClass;->mClass:I

    .line 11
    .line 12
    if-ne v0, p1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    :cond_0
    return v1
.end method

.method public getDeviceClass()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1ffc

    return v0
.end method

.method public getMajorDeviceClass()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public hasService(I)Z
    .locals 2

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    const v1, 0xffe000

    and-int/2addr v0, v1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
