.class public final Landroid/bluetooth/BluetoothAudioConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothAudioConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAudioFormat:I

.field private final mChannelConfig:I

.field private final mSampleRate:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/BluetoothAudioConfig$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothAudioConfig$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothAudioConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    .line 5
    .line 6
    iput p2, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    .line 7
    .line 8
    iput p3, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/bluetooth/BluetoothAudioConfig;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Landroid/bluetooth/BluetoothAudioConfig;

    .line 7
    .line 8
    iget v0, p1, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    .line 9
    .line 10
    iget v2, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget v0, p1, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    .line 15
    .line 16
    iget v2, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    iget p1, p1, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    .line 21
    .line 22
    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    .line 23
    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_0
    return v1
.end method

.method public getAudioFormat()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    return v0
.end method

.method public getChannelConfig()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{mSampleRate:"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ",mChannelConfig:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ",mAudioFormat:"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    .line 30
    .line 31
    const-string/jumbo v2, "}"

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/bluetooth/BluetoothAudioConfig;->mSampleRate:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/bluetooth/BluetoothAudioConfig;->mChannelConfig:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/bluetooth/BluetoothAudioConfig;->mAudioFormat:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
