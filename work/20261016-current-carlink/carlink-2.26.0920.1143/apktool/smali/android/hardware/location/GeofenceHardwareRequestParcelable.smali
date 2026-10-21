.class public final Landroid/hardware/location/GeofenceHardwareRequestParcelable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/GeofenceHardwareRequestParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mId:I

.field private mRequest:Landroid/hardware/location/GeofenceHardwareRequest;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;

    invoke-direct {v0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable$1;-><init>()V

    sput-object v0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/location/GeofenceHardwareRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    .line 5
    .line 6
    iput-object p2, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    return v0
.end method

.method public getLastTransition()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLastTransition()I

    move-result v0

    return v0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMonitorTransitions()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getMonitorTransitions()I

    move-result v0

    return v0
.end method

.method public getNotificationResponsiveness()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getNotificationResponsiveness()I

    move-result v0

    return v0
.end method

.method public getRadius()D
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getRadius()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSourceTechnologies()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getSourceTechnologies()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    move-result v0

    return v0
.end method

.method public getUnknownTimer()I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    invoke-virtual {v0}, Landroid/hardware/location/GeofenceHardwareRequest;->getUnknownTimer()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "id="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mId:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", type="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getType()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", latitude="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getLatitude()D

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, ", longitude="

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getLongitude()D

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", radius="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getRadius()D

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ", lastTransition="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getLastTransition()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", unknownTimer="

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    .line 90
    .line 91
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getUnknownTimer()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ", monitorTransitions="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getMonitorTransitions()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, ", notificationResponsiveness="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    .line 118
    .line 119
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getNotificationResponsiveness()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", sourceTechnologies="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->mRequest:Landroid/hardware/location/GeofenceHardwareRequest;

    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/hardware/location/GeofenceHardwareRequest;->getSourceTechnologies()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getType()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLatitude()D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLongitude()D

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getRadius()D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getLastTransition()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getMonitorTransitions()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getUnknownTimer()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getNotificationResponsiveness()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getSourceTechnologies()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->getId()I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
