.class public Landroid/hardware/location/NanoApp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/location/NanoApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final UNKNOWN:Ljava/lang/String;

.field private mAppBinary:[B

.field private mAppId:J

.field private mAppIdSet:Z

.field private mAppVersion:I

.field private mName:Ljava/lang/String;

.field private mNeededExecMemBytes:I

.field private mNeededReadMemBytes:I

.field private mNeededSensors:[I

.field private mNeededWriteMemBytes:I

.field private mOutputEvents:[I

.field private mPublisher:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/location/NanoApp$1;

    invoke-direct {v0}, Landroid/hardware/location/NanoApp$1;-><init>()V

    sput-object v0, Landroid/hardware/location/NanoApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/location/NanoApp;-><init>(J[B)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "NanoApp"

    .line 5
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->TAG:Ljava/lang/String;

    const-string p2, "Unknown"

    .line 6
    iput-object p2, p0, Landroid/hardware/location/NanoApp;->UNKNOWN:Ljava/lang/String;

    const-string p2, "NanoApp(int, byte[]) is deprecated, please use NanoApp(long, byte[]) instead."

    .line 7
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(J[B)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NanoApp"

    .line 9
    iput-object v0, p0, Landroid/hardware/location/NanoApp;->TAG:Ljava/lang/String;

    const-string v0, "Unknown"

    .line 10
    iput-object v0, p0, Landroid/hardware/location/NanoApp;->UNKNOWN:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    .line 13
    iput-wide p1, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    .line 16
    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    .line 17
    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    .line 18
    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    new-array p2, p1, [I

    .line 19
    iput-object p2, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    new-array p1, p1, [I

    .line 20
    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    .line 21
    iput-object p3, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NanoApp"

    .line 23
    iput-object v0, p0, Landroid/hardware/location/NanoApp;->TAG:Ljava/lang/String;

    const-string v0, "Unknown"

    .line 24
    iput-object v0, p0, Landroid/hardware/location/NanoApp;->UNKNOWN:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 33
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 36
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 39
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/location/NanoApp$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/hardware/location/NanoApp;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppBinary()[B
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    return-object v0
.end method

.method public getAppId()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    return-wide v0
.end method

.method public getAppVersion()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNeededExecMemBytes()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    return v0
.end method

.method public getNeededReadMemBytes()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    return v0
.end method

.method public getNeededSensors()[I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    return-object v0
.end method

.method public getNeededWriteMemBytes()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    return v0
.end method

.method public getOutputEvents()[I
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    return-object v0
.end method

.method public setAppBinary([B)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    return-void
.end method

.method public setAppId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    .line 5
    .line 6
    return-void
.end method

.method public setAppVersion(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNeededExecMemBytes(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    return-void
.end method

.method public setNeededReadMemBytes(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    return-void
.end method

.method public setNeededSensors([I)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    return-void
.end method

.method public setNeededWriteMemBytes(I)V
    .locals 0

    iput p1, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    return-void
.end method

.method public setOutputEvents([I)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    return-void
.end method

.method public setPublisher(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Id : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, ", Version : "

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, ", Name : "

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, ", Publisher : "

    .line 48
    .line 49
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-boolean p2, p0, Landroid/hardware/location/NanoApp;->mAppIdSet:Z

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mPublisher:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-wide v0, p0, Landroid/hardware/location/NanoApp;->mAppId:J

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 22
    .line 23
    .line 24
    iget p2, p0, Landroid/hardware/location/NanoApp;->mAppVersion:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget p2, p0, Landroid/hardware/location/NanoApp;->mNeededReadMemBytes:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget p2, p0, Landroid/hardware/location/NanoApp;->mNeededWriteMemBytes:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget p2, p0, Landroid/hardware/location/NanoApp;->mNeededExecMemBytes:I

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    .line 45
    .line 46
    array-length p2, p2

    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mNeededSensors:[I

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    .line 56
    .line 57
    array-length p2, p2

    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mOutputEvents:[I

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 64
    .line 65
    .line 66
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    .line 67
    .line 68
    array-length p2, p2

    .line 69
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Landroid/hardware/location/NanoApp;->mAppBinary:[B

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 79
    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v0, "Must set AppId for nanoapp "

    .line 83
    .line 84
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 101
    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v0, "Must set non-null AppBinary for nanoapp "

    .line 105
    .line 106
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Landroid/hardware/location/NanoApp;->mName:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p1
.end method
