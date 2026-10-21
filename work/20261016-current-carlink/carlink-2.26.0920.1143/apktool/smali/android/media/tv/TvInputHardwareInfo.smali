.class public final Landroid/media/tv/TvInputHardwareInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputHardwareInfo$Builder;,
        Landroid/media/tv/TvInputHardwareInfo$CableConnectionStatus;
    }
.end annotation


# static fields
.field public static final CABLE_CONNECTION_STATUS_CONNECTED:I = 0x1

.field public static final CABLE_CONNECTION_STATUS_DISCONNECTED:I = 0x2

.field public static final CABLE_CONNECTION_STATUS_UNKNOWN:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "TvInputHardwareInfo"

.field public static final TV_INPUT_TYPE_COMPONENT:I = 0x6

.field public static final TV_INPUT_TYPE_COMPOSITE:I = 0x3

.field public static final TV_INPUT_TYPE_DISPLAY_PORT:I = 0xa

.field public static final TV_INPUT_TYPE_DVI:I = 0x8

.field public static final TV_INPUT_TYPE_HDMI:I = 0x9

.field public static final TV_INPUT_TYPE_OTHER_HARDWARE:I = 0x1

.field public static final TV_INPUT_TYPE_SCART:I = 0x5

.field public static final TV_INPUT_TYPE_SVIDEO:I = 0x4

.field public static final TV_INPUT_TYPE_TUNER:I = 0x2

.field public static final TV_INPUT_TYPE_VGA:I = 0x7


# instance fields
.field private mAudioAddress:Ljava/lang/String;

.field private mAudioType:I

.field private mCableConnectionStatus:I

.field private mDeviceId:I

.field private mHdmiPortId:I

.field private mType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/TvInputHardwareInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvInputHardwareInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvInputHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/tv/TvInputHardwareInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/tv/TvInputHardwareInfo;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    return p1
.end method

.method public static synthetic access$202(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    return p1
.end method

.method public static synthetic access$300(Landroid/media/tv/TvInputHardwareInfo;)I
    .locals 0

    iget p0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return p0
.end method

.method public static synthetic access$302(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return p1
.end method

.method public static synthetic access$402(Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$502(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    return p1
.end method

.method public static synthetic access$602(Landroid/media/tv/TvInputHardwareInfo;I)I
    .locals 0

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAudioAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioType()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    return v0
.end method

.method public getCableConnectionStatus()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    return v0
.end method

.method public getHdmiPortId()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    .line 24
    .line 25
    iget v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    .line 26
    .line 27
    const/16 v1, 0x9

    .line 28
    .line 29
    if-ne v0, v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    .line 42
    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    const-string v1, "TvInputHardwareInfo {id="

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/accessibilityservice/c;->q(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

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
    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ", audio_type="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", audio_addr="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    .line 45
    .line 46
    const/16 v2, 0x9

    .line 47
    .line 48
    if-ne v1, v2, :cond_0

    .line 49
    .line 50
    const-string v1, ", hdmi_port="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_0
    const-string v1, ", cable_connection_status="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    .line 66
    .line 67
    const-string/jumbo v2, "}"

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget p2, p0, Landroid/media/tv/TvInputHardwareInfo;->mDeviceId:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioType:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroid/media/tv/TvInputHardwareInfo;->mAudioAddress:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/media/tv/TvInputHardwareInfo;->mType:I

    .line 22
    .line 23
    const/16 v0, 0x9

    .line 24
    .line 25
    if-ne p2, v0, :cond_0

    .line 26
    .line 27
    iget p2, p0, Landroid/media/tv/TvInputHardwareInfo;->mHdmiPortId:I

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget p2, p0, Landroid/media/tv/TvInputHardwareInfo;->mCableConnectionStatus:I

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
