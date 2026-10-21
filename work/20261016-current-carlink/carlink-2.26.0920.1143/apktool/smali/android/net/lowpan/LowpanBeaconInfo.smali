.class public Landroid/net/lowpan/LowpanBeaconInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/lowpan/LowpanBeaconInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_CAN_ASSIST:I = 0x1

.field public static final UNKNOWN_LQI:I = 0x0

.field public static final UNKNOWN_RSSI:I = 0x7fffffff


# instance fields
.field private mBeaconAddress:[B

.field private final mFlags:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIdentity:Landroid/net/lowpan/LowpanIdentity;

.field private mLqi:I

.field private mRssi:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/lowpan/LowpanBeaconInfo$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanBeaconInfo$1;-><init>()V

    sput-object v0, Landroid/net/lowpan/LowpanBeaconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    .line 6
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/lowpan/LowpanBeaconInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/net/lowpan/LowpanBeaconInfo;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Landroid/net/lowpan/LowpanBeaconInfo;I)I
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    return p1
.end method

.method public static synthetic access$202(Landroid/net/lowpan/LowpanBeaconInfo;I)I
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    return p1
.end method

.method public static synthetic access$300(Landroid/net/lowpan/LowpanBeaconInfo;)[B
    .locals 0

    iget-object p0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    return-object p0
.end method

.method public static synthetic access$302(Landroid/net/lowpan/LowpanBeaconInfo;[B)[B
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    return-object p1
.end method

.method public static synthetic access$400(Landroid/net/lowpan/LowpanBeaconInfo;)Ljava/util/TreeSet;
    .locals 0

    iget-object p0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    return-object p0
.end method

.method public static synthetic access$502(Landroid/net/lowpan/LowpanBeaconInfo;Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanIdentity;
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    return-object p1
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
    instance-of v0, p1, Landroid/net/lowpan/LowpanBeaconInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/net/lowpan/LowpanBeaconInfo;

    .line 8
    .line 9
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    .line 10
    .line 11
    iget-object v2, p1, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/net/lowpan/LowpanIdentity;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    .line 20
    .line 21
    iget-object v2, p1, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    .line 22
    .line 23
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    .line 30
    .line 31
    iget v2, p1, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    .line 32
    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    iget v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    .line 36
    .line 37
    iget v2, p1, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    .line 38
    .line 39
    if-ne v0, v2, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    .line 42
    .line 43
    iget-object p1, p1, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    :cond_1
    return v1
.end method

.method public getBeaconAddress()[B
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getFlags()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    return-object v0
.end method

.method public getLqi()I
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    aput-object v1, v0, v2

    .line 17
    .line 18
    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x2

    .line 25
    aput-object v1, v0, v2

    .line 26
    .line 27
    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    .line 28
    .line 29
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x3

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    const/4 v1, 0x4

    .line 41
    iget-object v2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    .line 42
    .line 43
    aput-object v2, v0, v1

    .line 44
    .line 45
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    return v0
.end method

.method public isFlagSet(I)Z
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/net/lowpan/LowpanIdentity;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    .line 14
    .line 15
    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    .line 16
    .line 17
    const v2, 0x7fffffff

    .line 18
    .line 19
    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    const-string v1, ", RSSI:"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    const-string v1, "dBm"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    :cond_0
    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    const-string v1, ", LQI:"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    :cond_1
    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    .line 52
    .line 53
    array-length v1, v1

    .line 54
    if-lez v1, :cond_2

    .line 55
    .line 56
    const-string v1, ", BeaconAddress:"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    .line 62
    .line 63
    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_4

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    const/4 v4, 0x1

    .line 93
    if-eq v3, v4, :cond_3

    .line 94
    .line 95
    const-string v3, ", FLAG_"

    .line 96
    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    const-string v2, ", CAN_ASSIST"

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/net/lowpan/LowpanIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method
