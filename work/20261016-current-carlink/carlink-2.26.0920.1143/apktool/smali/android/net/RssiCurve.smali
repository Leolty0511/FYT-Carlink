.class public Landroid/net/RssiCurve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/RssiCurve;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ACTIVE_NETWORK_RSSI_BOOST:I = 0x19


# instance fields
.field public final activeNetworkRssiBoost:I

.field public final bucketWidth:I

.field public final rssiBuckets:[B

.field public final start:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/RssiCurve$1;

    invoke-direct {v0}, Landroid/net/RssiCurve$1;-><init>()V

    sput-object v0, Landroid/net/RssiCurve;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1

    const/16 v0, 0x19

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/RssiCurve;-><init>(II[BI)V

    return-void
.end method

.method public constructor <init>(II[BI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Landroid/net/RssiCurve;->start:I

    .line 5
    iput p2, p0, Landroid/net/RssiCurve;->bucketWidth:I

    if-eqz p3, :cond_0

    .line 6
    array-length p1, p3

    if-eqz p1, :cond_0

    .line 7
    iput-object p3, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    .line 8
    iput p4, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "rssiBuckets must be at least one element large."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/RssiCurve;->start:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/RssiCurve;->bucketWidth:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 14
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/RssiCurve$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/RssiCurve;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Landroid/net/RssiCurve;

    .line 20
    .line 21
    iget v2, p0, Landroid/net/RssiCurve;->start:I

    .line 22
    .line 23
    iget v3, p1, Landroid/net/RssiCurve;->start:I

    .line 24
    .line 25
    if-ne v2, v3, :cond_2

    .line 26
    .line 27
    iget v2, p0, Landroid/net/RssiCurve;->bucketWidth:I

    .line 28
    .line 29
    iget v3, p1, Landroid/net/RssiCurve;->bucketWidth:I

    .line 30
    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    .line 34
    .line 35
    iget-object v3, p1, Landroid/net/RssiCurve;->rssiBuckets:[B

    .line 36
    .line 37
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget v2, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    .line 44
    .line 45
    iget p1, p1, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    .line 46
    .line 47
    if-ne v2, p1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v0, v1

    .line 51
    :goto_0
    return v0

    .line 52
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Landroid/net/RssiCurve;->start:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    iget v1, p0, Landroid/net/RssiCurve;->bucketWidth:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 21
    .line 22
    iget v1, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    .line 23
    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    aput-object v1, v0, v2

    .line 30
    .line 31
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    .line 36
    .line 37
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    xor-int/2addr v0, v1

    .line 42
    return v0
.end method

.method public lookupScore(I)B
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/net/RssiCurve;->lookupScore(IZ)B

    move-result p1

    return p1
.end method

.method public lookupScore(IZ)B
    .locals 1

    if-eqz p2, :cond_0

    .line 2
    iget p2, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    add-int/2addr p1, p2

    .line 3
    :cond_0
    iget p2, p0, Landroid/net/RssiCurve;->start:I

    sub-int/2addr p1, p2

    iget p2, p0, Landroid/net/RssiCurve;->bucketWidth:I

    div-int/2addr p1, p2

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    .line 5
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 6
    :cond_2
    :goto_0
    iget-object p2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    aget-byte p1, p2, p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "RssiCurve[start="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/net/RssiCurve;->start:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",bucketWidth="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/net/RssiCurve;->bucketWidth:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",activeNetworkRssiBoost="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",buckets="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    :goto_0
    iget-object v2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    .line 40
    .line 41
    array-length v3, v2

    .line 42
    if-ge v1, v3, :cond_1

    .line 43
    .line 44
    aget-byte v2, v2, v1

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    .line 50
    .line 51
    array-length v2, v2

    .line 52
    add-int/lit8 v2, v2, -0x1

    .line 53
    .line 54
    if-ge v1, v2, :cond_0

    .line 55
    .line 56
    const-string v2, ","

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const-string v1, "]"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/net/RssiCurve;->start:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/net/RssiCurve;->bucketWidth:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    .line 12
    .line 13
    array-length p2, p2

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Landroid/net/RssiCurve;->rssiBuckets:[B

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 20
    .line 21
    .line 22
    iget p2, p0, Landroid/net/RssiCurve;->activeNetworkRssiBoost:I

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
