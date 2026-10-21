.class public final Landroid/net/IpSecAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IpSecAlgorithm$AlgorithmName;
    }
.end annotation


# static fields
.field public static final AUTH_HMAC_MD5:Ljava/lang/String; = "hmac(md5)"

.field public static final AUTH_HMAC_SHA1:Ljava/lang/String; = "hmac(sha1)"

.field public static final AUTH_HMAC_SHA256:Ljava/lang/String; = "hmac(sha256)"

.field public static final AUTH_HMAC_SHA384:Ljava/lang/String; = "hmac(sha384)"

.field public static final AUTH_HMAC_SHA512:Ljava/lang/String; = "hmac(sha512)"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/IpSecAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field public static final CRYPT_AES_CBC:Ljava/lang/String; = "cbc(aes)"


# instance fields
.field private final mKey:[B

.field private final mName:Ljava/lang/String;

.field private final mTruncLenBits:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/IpSecAlgorithm$1;

    invoke-direct {v0}, Landroid/net/IpSecAlgorithm$1;-><init>()V

    sput-object v0, Landroid/net/IpSecAlgorithm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/IpSecAlgorithm$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/IpSecAlgorithm;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .line 2
    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, p1, p2, v0}, Landroid/net/IpSecAlgorithm;-><init>(Ljava/lang/String;[BI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BI)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1, p3}, Landroid/net/IpSecAlgorithm;->isTruncationLengthValid(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iput-object p1, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    .line 7
    array-length p1, p2

    mul-int/lit8 p1, p1, 0x8

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown algorithm or invalid length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static isTruncationLengthValid(Ljava/lang/String;I)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "hmac(sha1)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "hmac(md5)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "hmac(sha512)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "hmac(sha384)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "hmac(sha256)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_0

    :sswitch_5
    const-string v0, "cbc(aes)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v3, v2

    :goto_0
    const/16 p0, 0xc0

    const/16 v0, 0x80

    const/16 v4, 0x100

    const/16 v5, 0x60

    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    if-lt p1, v5, :cond_6

    const/16 p0, 0xa0

    if-gt p1, p0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    return v1

    :pswitch_1
    if-lt p1, v5, :cond_7

    if-gt p1, v0, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    return v1

    :pswitch_2
    if-lt p1, v4, :cond_8

    const/16 p0, 0x200

    if-gt p1, p0, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    return v1

    :pswitch_3
    if-lt p1, p0, :cond_9

    const/16 p0, 0x180

    if-gt p1, p0, :cond_9

    goto :goto_4

    :cond_9
    move v1, v2

    :goto_4
    return v1

    :pswitch_4
    if-lt p1, v5, :cond_a

    if-gt p1, v4, :cond_a

    goto :goto_5

    :cond_a
    move v1, v2

    :goto_5
    return v1

    :pswitch_5
    if-eq p1, v0, :cond_c

    if-eq p1, p0, :cond_c

    if-ne p1, v4, :cond_b

    goto :goto_6

    :cond_b
    move v1, v2

    :cond_c
    :goto_6
    return v1

    :sswitch_data_0
    .sparse-switch
        0x17881bfe -> :sswitch_5
        0x215826a1 -> :sswitch_4
        0x2158a605 -> :sswitch_3
        0x2159743e -> :sswitch_2
        0x2d40230c -> :sswitch_1
        0x7b1b4343 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getKey()[B
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTruncationLengthBits()I
    .locals 1

    iget v0, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/net/IpSecAlgorithm;->mName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/net/IpSecAlgorithm;->mKey:[B

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/net/IpSecAlgorithm;->mTruncLenBits:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
