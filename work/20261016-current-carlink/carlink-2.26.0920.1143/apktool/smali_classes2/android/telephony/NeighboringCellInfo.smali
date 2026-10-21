.class public Landroid/telephony/NeighboringCellInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_CID:I = -0x1

.field public static final UNKNOWN_RSSI:I = 0x63


# instance fields
.field private mCid:I

.field private mLac:I

.field private mNetworkType:I

.field private mPsc:I

.field private mRssi:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/NeighboringCellInfo$1;

    invoke-direct {v0}, Landroid/telephony/NeighboringCellInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/NeighboringCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x63

    .line 2
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 4
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 5
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 9
    iput p2, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 14
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 15
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    return-void

    :cond_0
    if-ge v1, v2, :cond_1

    move v2, p1

    :goto_0
    rsub-int/lit8 v3, v1, 0x8

    if-ge v2, v3, :cond_1

    const-string v3, "0"

    .line 17
    invoke-static {v3, p2}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    const/16 v2, 0x10

    if-eq p3, v1, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_3

    const/4 v1, 0x3

    if-eq p3, v1, :cond_2

    packed-switch p3, :pswitch_data_0

    goto :goto_1

    .line 18
    :cond_2
    :pswitch_0
    :try_start_0
    iput p3, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    .line 19
    invoke-static {p2, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    goto :goto_1

    .line 20
    :cond_3
    iput p3, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    const-string p3, "FFFFFFFF"

    .line 21
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4

    const/4 p3, 0x4

    .line 22
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 23
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 24
    :catch_0
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 25
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 26
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 27
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCid()I
    .locals 1

    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    return v0
.end method

.method public getPsc()I
    .locals 1

    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    return v0
.end method

.method public setCid(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 9
    .line 10
    const-string v2, "-"

    .line 11
    .line 12
    const/16 v3, 0x63

    .line 13
    .line 14
    const-string v4, "@"

    .line 15
    .line 16
    const/4 v5, -0x1

    .line 17
    if-eq v1, v5, :cond_1

    .line 18
    .line 19
    invoke-static {v1, v0, v4}, Landroid/accessibilityservice/c;->x(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 23
    .line 24
    if-ne v1, v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 36
    .line 37
    if-eq v1, v5, :cond_3

    .line 38
    .line 39
    iget v6, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 40
    .line 41
    if-eq v6, v5, :cond_3

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 51
    .line 52
    invoke-static {v1, v0, v4}, Landroid/accessibilityservice/c;->x(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 56
    .line 57
    if-ne v1, v3, :cond_2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_2
    const-string v1, "]"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
