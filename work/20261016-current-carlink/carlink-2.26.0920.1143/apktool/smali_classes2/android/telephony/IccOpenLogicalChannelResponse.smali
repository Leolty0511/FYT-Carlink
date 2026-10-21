.class public Landroid/telephony/IccOpenLogicalChannelResponse;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/IccOpenLogicalChannelResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_CHANNEL:I = -0x1

.field public static final STATUS_MISSING_RESOURCE:I = 0x2

.field public static final STATUS_NO_ERROR:I = 0x1

.field public static final STATUS_NO_SUCH_ELEMENT:I = 0x3

.field public static final STATUS_UNKNOWN_ERROR:I = 0x4


# instance fields
.field private final mChannel:I

.field private final mSelectResponse:[B

.field private final mStatus:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/IccOpenLogicalChannelResponse$1;

    invoke-direct {v0}, Landroid/telephony/IccOpenLogicalChannelResponse$1;-><init>()V

    sput-object v0, Landroid/telephony/IccOpenLogicalChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    .line 4
    iput p2, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    .line 5
    iput-object p3, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 10
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/IccOpenLogicalChannelResponse$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/telephony/IccOpenLogicalChannelResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChannel()I
    .locals 1

    iget v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    return v0
.end method

.method public getSelectResponse()[B
    .locals 1

    iget-object v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Channel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget p2, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mChannel:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mStatus:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    array-length v0, p2

    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    array-length p2, p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Landroid/telephony/IccOpenLogicalChannelResponse;->mSelectResponse:[B

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p2, 0x0

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
