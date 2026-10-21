.class public Landroid/net/LinkAddress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address:Ljava/net/InetAddress;

.field private flags:I

.field private prefixLength:I

.field private scope:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/LinkAddress$1;

    invoke-direct {v0}, Landroid/net/LinkAddress$1;-><init>()V

    sput-object v0, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0, v0}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    .line 9
    iget-object p1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-static {p1}, Landroid/net/LinkAddress;->scopeForUnicastAddress(Ljava/net/InetAddress;)I

    move-result p1

    iput p1, p0, Landroid/net/LinkAddress;->scope:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Landroid/net/NetworkUtils;->parseIpAndMask(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    .line 12
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;III)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;III)V

    .line 4
    invoke-static {p1}, Landroid/net/LinkAddress;->scopeForUnicastAddress(Ljava/net/InetAddress;)I

    move-result p1

    iput p1, p0, Landroid/net/LinkAddress;->scope:I

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/LinkAddress;->init(Ljava/net/InetAddress;III)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InterfaceAddress;)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result p1

    .line 7
    invoke-direct {p0, v0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    return-void
.end method

.method private init(Ljava/net/InetAddress;III)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    if-ltz p2, :cond_1

    .line 10
    .line 11
    instance-of v0, p1, Ljava/net/Inet4Address;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x20

    .line 16
    .line 17
    if-gt p2, v0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/16 v0, 0x80

    .line 20
    .line 21
    if-gt p2, v0, :cond_1

    .line 22
    .line 23
    iput-object p1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    .line 24
    .line 25
    iput p2, p0, Landroid/net/LinkAddress;->prefixLength:I

    .line 26
    .line 27
    iput p3, p0, Landroid/net/LinkAddress;->flags:I

    .line 28
    .line 29
    iput p4, p0, Landroid/net/LinkAddress;->scope:I

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    new-instance p4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v0, "Bad LinkAddress params "

    .line 37
    .line 38
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, "/"

    .line 45
    .line 46
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p3
.end method

.method private isIPv6ULA()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIPv6()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    aget-byte v0, v0, v1

    .line 15
    .line 16
    and-int/lit8 v0, v0, -0x2

    .line 17
    .line 18
    const/4 v2, -0x4

    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_0
    return v1
.end method

.method private static scopeForUnicastAddress(Ljava/net/InetAddress;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget p0, Landroid/system/OsConstants;->RT_SCOPE_HOST:I

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    instance-of v0, p0, Ljava/net/Inet4Address;

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_2

    .line 32
    .line 33
    sget p0, Landroid/system/OsConstants;->RT_SCOPE_SITE:I

    .line 34
    .line 35
    return p0

    .line 36
    :cond_2
    sget p0, Landroid/system/OsConstants;->RT_SCOPE_UNIVERSE:I

    .line 37
    .line 38
    return p0

    .line 39
    :cond_3
    :goto_0
    sget p0, Landroid/system/OsConstants;->RT_SCOPE_LINK:I

    .line 40
    .line 41
    return p0
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
    instance-of v0, p1, Landroid/net/LinkAddress;

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
    check-cast p1, Landroid/net/LinkAddress;

    .line 8
    .line 9
    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    .line 10
    .line 11
    iget-object v2, p1, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    .line 20
    .line 21
    iget v2, p1, Landroid/net/LinkAddress;->prefixLength:I

    .line 22
    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    .line 26
    .line 27
    iget v2, p1, Landroid/net/LinkAddress;->flags:I

    .line 28
    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    .line 32
    .line 33
    iget p1, p1, Landroid/net/LinkAddress;->scope:I

    .line 34
    .line 35
    if-ne v0, p1, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    :cond_1
    return v1
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    return v0
.end method

.method public getNetworkPrefixLength()I
    .locals 1

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    return v0
.end method

.method public getPrefixLength()I
    .locals 1

    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    return v0
.end method

.method public getScope()I
    .locals 1

    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v1, v0

    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    mul-int/lit8 v0, v0, 0x13

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/LinkAddress;->scope:I

    mul-int/lit8 v1, v1, 0x2b

    add-int/2addr v1, v0

    return v1
.end method

.method public isGlobalPreferred()Z
    .locals 5

    .line 1
    iget v0, p0, Landroid/net/LinkAddress;->scope:I

    .line 2
    .line 3
    sget v1, Landroid/system/OsConstants;->RT_SCOPE_UNIVERSE:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/net/LinkAddress;->isIPv6ULA()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Landroid/net/LinkAddress;->flags:I

    .line 14
    .line 15
    sget v1, Landroid/system/OsConstants;->IFA_F_DADFAILED:I

    .line 16
    .line 17
    sget v2, Landroid/system/OsConstants;->IFA_F_DEPRECATED:I

    .line 18
    .line 19
    or-int/2addr v1, v2

    .line 20
    and-int/2addr v1, v0

    .line 21
    int-to-long v1, v1

    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    cmp-long v1, v1, v3

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    sget v1, Landroid/system/OsConstants;->IFA_F_TENTATIVE:I

    .line 29
    .line 30
    and-int/2addr v1, v0

    .line 31
    int-to-long v1, v1

    .line 32
    cmp-long v1, v1, v3

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    sget v1, Landroid/system/OsConstants;->IFA_F_OPTIMISTIC:I

    .line 37
    .line 38
    and-int/2addr v0, v1

    .line 39
    int-to-long v0, v0

    .line 40
    cmp-long v0, v0, v3

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    :cond_0
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0
.end method

.method public isIPv4()Z
    .locals 1

    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet4Address;

    return v0
.end method

.method public isIPv6()Z
    .locals 1

    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    return v0
.end method

.method public isSameAddressAs(Landroid/net/LinkAddress;)Z
    .locals 2

    iget-object v0, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    iget-object v1, p1, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/LinkAddress;->prefixLength:I

    iget p1, p1, Landroid/net/LinkAddress;->prefixLength:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/LinkAddress;->prefixLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/net/LinkAddress;->address:Ljava/net/InetAddress;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 8
    .line 9
    .line 10
    iget p2, p0, Landroid/net/LinkAddress;->prefixLength:I

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    iget p2, p0, Landroid/net/LinkAddress;->flags:I

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    iget p2, p0, Landroid/net/LinkAddress;->scope:I

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
