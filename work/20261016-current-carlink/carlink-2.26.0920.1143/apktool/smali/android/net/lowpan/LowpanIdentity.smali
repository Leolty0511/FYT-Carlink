.class public Landroid/net/lowpan/LowpanIdentity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanIdentity$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/lowpan/LowpanIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LowpanIdentity"

.field public static final UNSPECIFIED_CHANNEL:I = -0x1

.field public static final UNSPECIFIED_PANID:I = -0x1


# instance fields
.field private mChannel:I

.field private mIsNameValid:Z

.field private mName:Ljava/lang/String;

.field private mPanid:I

.field private mRawName:[B

.field private mType:Ljava/lang/String;

.field private mXpanid:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/lowpan/LowpanIdentity$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanIdentity$1;-><init>()V

    sput-object v0, Landroid/net/lowpan/LowpanIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v2, v1, [B

    .line 13
    .line 14
    iput-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    .line 15
    .line 16
    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    .line 17
    .line 18
    new-array v0, v1, [B

    .line 19
    .line 20
    iput-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    iput v0, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    .line 24
    .line 25
    iput v0, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic access$000(Landroid/net/lowpan/LowpanIdentity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$002(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$102(Landroid/net/lowpan/LowpanIdentity;[B)[B
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    return-object p1
.end method

.method public static synthetic access$200(Landroid/net/lowpan/LowpanIdentity;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    return p0
.end method

.method public static synthetic access$202(Landroid/net/lowpan/LowpanIdentity;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    return p1
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/lowpan/LowpanIdentity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$402(Landroid/net/lowpan/LowpanIdentity;[B)[B
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    return-object p1
.end method

.method public static synthetic access$502(Landroid/net/lowpan/LowpanIdentity;I)I
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    return p1
.end method

.method public static synthetic access$602(Landroid/net/lowpan/LowpanIdentity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$702(Landroid/net/lowpan/LowpanIdentity;I)I
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    return p1
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
    instance-of v0, p1, Landroid/net/lowpan/LowpanIdentity;

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
    check-cast p1, Landroid/net/lowpan/LowpanIdentity;

    .line 8
    .line 9
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    .line 10
    .line 11
    iget-object v2, p1, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    .line 12
    .line 13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    .line 20
    .line 21
    iget-object v2, p1, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

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
    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v2, p1, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    .line 40
    .line 41
    iget v2, p1, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    .line 42
    .line 43
    if-ne v0, v2, :cond_1

    .line 44
    .line 45
    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    .line 46
    .line 47
    iget p1, p1, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    .line 48
    .line 49
    if-ne v0, p1, :cond_1

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    :cond_1
    return v1
.end method

.method public getChannel()I
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPanid()I
    .locals 1

    iget v0, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    return v0
.end method

.method public getRawName()[B
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getXpanid()[B
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    .line 5
    .line 6
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iget-object v2, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    .line 19
    .line 20
    aput-object v2, v0, v1

    .line 21
    .line 22
    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    .line 23
    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x2

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x3

    .line 42
    aput-object v1, v0, v2

    .line 43
    .line 44
    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/4 v2, 0x4

    .line 51
    aput-object v1, v0, v2

    .line 52
    .line 53
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    return v0
.end method

.method public isNameValid()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/lowpan/LowpanIdentity;->mIsNameValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "Name:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/net/lowpan/LowpanIdentity;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-lez v1, :cond_0

    .line 22
    .line 23
    const-string v1, ", Type:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    .line 34
    .line 35
    array-length v1, v1

    .line 36
    if-lez v1, :cond_1

    .line 37
    .line 38
    const-string v1, ", XPANID:"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    .line 44
    .line 45
    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    :cond_1
    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    .line 53
    .line 54
    const/4 v2, -0x1

    .line 55
    if-eq v1, v2, :cond_2

    .line 56
    .line 57
    const-string v1, ", PANID:"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    .line 65
    iget v3, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    .line 66
    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const/4 v4, 0x0

    .line 72
    aput-object v3, v1, v4

    .line 73
    .line 74
    const-string v3, "0x%04X"

    .line 75
    .line 76
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    :cond_2
    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    .line 84
    .line 85
    if-eq v1, v2, :cond_3

    .line 86
    .line 87
    const-string v1, ", Channel:"

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    .line 91
    .line 92
    iget v1, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/net/lowpan/LowpanIdentity;->mRawName:[B

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/net/lowpan/LowpanIdentity;->mType:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/net/lowpan/LowpanIdentity;->mXpanid:[B

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/net/lowpan/LowpanIdentity;->mPanid:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/net/lowpan/LowpanIdentity;->mChannel:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
