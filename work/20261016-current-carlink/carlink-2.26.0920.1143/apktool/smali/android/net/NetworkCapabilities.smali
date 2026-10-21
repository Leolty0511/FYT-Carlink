.class public final Landroid/net/NetworkCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CAPABILITIES:J = 0xe000L

.field private static final MAX_NET_CAPABILITY:I = 0x13

.field public static final MAX_TRANSPORT:I = 0x6

.field private static final MIN_NET_CAPABILITY:I = 0x0

.field public static final MIN_TRANSPORT:I = 0x0

.field private static final MUTABLE_CAPABILITIES:J = 0x74000L

.field public static final NET_CAPABILITY_CAPTIVE_PORTAL:I = 0x11

.field public static final NET_CAPABILITY_CBS:I = 0x5

.field public static final NET_CAPABILITY_DUN:I = 0x2

.field public static final NET_CAPABILITY_EIMS:I = 0xa

.field public static final NET_CAPABILITY_FOREGROUND:I = 0x12

.field public static final NET_CAPABILITY_FOTA:I = 0x3

.field public static final NET_CAPABILITY_IA:I = 0x7

.field public static final NET_CAPABILITY_IMS:I = 0x4

.field public static final NET_CAPABILITY_INTERNET:I = 0xc

.field public static final NET_CAPABILITY_MMS:I = 0x0

.field public static final NET_CAPABILITY_NOT_METERED:I = 0xb

.field public static final NET_CAPABILITY_NOT_RESTRICTED:I = 0xd

.field public static final NET_CAPABILITY_NOT_VPN:I = 0xf

.field public static final NET_CAPABILITY_OPEN:I = 0x13

.field public static final NET_CAPABILITY_RCS:I = 0x8

.field public static final NET_CAPABILITY_SUPL:I = 0x1

.field public static final NET_CAPABILITY_TRUSTED:I = 0xe

.field public static final NET_CAPABILITY_VALIDATED:I = 0x10

.field public static final NET_CAPABILITY_WIFI_P2P:I = 0x6

.field public static final NET_CAPABILITY_XCAP:I = 0x9

.field private static final NON_REQUESTABLE_CAPABILITIES:J = 0x70000L

.field static final RESTRICTED_CAPABILITIES:J = 0x7bcL

.field public static final SIGNAL_STRENGTH_UNSPECIFIED:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "NetworkCapabilities"

.field public static final TRANSPORT_BLUETOOTH:I = 0x2

.field public static final TRANSPORT_CELLULAR:I = 0x0

.field public static final TRANSPORT_ETHERNET:I = 0x3

.field public static final TRANSPORT_LOWPAN:I = 0x6

.field private static final TRANSPORT_NAMES:[Ljava/lang/String;

.field public static final TRANSPORT_VPN:I = 0x4

.field public static final TRANSPORT_WIFI:I = 0x1

.field public static final TRANSPORT_WIFI_AWARE:I = 0x5

.field static final UNRESTRICTED_CAPABILITIES:J = 0x1043L


# instance fields
.field private mLinkDownBandwidthKbps:I

.field private mLinkUpBandwidthKbps:I

.field private mNetworkCapabilities:J

.field private mNetworkSpecifier:Landroid/net/NetworkSpecifier;

.field private mSignalStrength:I

.field private mTransportTypes:J


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "CELLULAR"

    .line 2
    .line 3
    const-string v1, "WIFI"

    .line 4
    .line 5
    const-string v2, "BLUETOOTH"

    .line 6
    .line 7
    const-string v3, "ETHERNET"

    .line 8
    .line 9
    const-string v4, "VPN"

    .line 10
    .line 11
    const-string v5, "WIFI_AWARE"

    .line 12
    .line 13
    const-string v6, "LOWPAN"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Landroid/net/NetworkCapabilities;->TRANSPORT_NAMES:[Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Landroid/net/NetworkCapabilities$1;

    .line 22
    .line 23
    invoke-direct {v0}, Landroid/net/NetworkCapabilities$1;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->clearAll()V

    const-wide/32 v0, 0xe000

    .line 4
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    if-eqz p1, :cond_0

    .line 7
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 8
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 9
    iget v0, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 10
    iget v0, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 11
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 12
    iget p1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iput p1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    :cond_0
    return-void
.end method

.method public static synthetic access$002(Landroid/net/NetworkCapabilities;J)J
    .locals 0

    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    return-wide p1
.end method

.method public static synthetic access$102(Landroid/net/NetworkCapabilities;J)J
    .locals 0

    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    return-wide p1
.end method

.method public static synthetic access$202(Landroid/net/NetworkCapabilities;I)I
    .locals 0

    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return p1
.end method

.method public static synthetic access$302(Landroid/net/NetworkCapabilities;I)I
    .locals 0

    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return p1
.end method

.method public static synthetic access$402(Landroid/net/NetworkCapabilities;Landroid/net/NetworkSpecifier;)Landroid/net/NetworkSpecifier;
    .locals 0

    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    return-object p1
.end method

.method public static synthetic access$502(Landroid/net/NetworkCapabilities;I)I
    .locals 0

    iput p1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return p1
.end method

.method public static capabilityNameOf(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "OPEN"

    return-object p0

    :pswitch_1
    const-string p0, "FOREGROUND"

    return-object p0

    :pswitch_2
    const-string p0, "CAPTIVE_PORTAL"

    return-object p0

    :pswitch_3
    const-string p0, "VALIDATED"

    return-object p0

    :pswitch_4
    const-string p0, "NOT_VPN"

    return-object p0

    :pswitch_5
    const-string p0, "TRUSTED"

    return-object p0

    :pswitch_6
    const-string p0, "NOT_RESTRICTED"

    return-object p0

    :pswitch_7
    const-string p0, "INTERNET"

    return-object p0

    :pswitch_8
    const-string p0, "NOT_METERED"

    return-object p0

    :pswitch_9
    const-string p0, "EIMS"

    return-object p0

    :pswitch_a
    const-string p0, "XCAP"

    return-object p0

    :pswitch_b
    const-string p0, "RCS"

    return-object p0

    :pswitch_c
    const-string p0, "IA"

    return-object p0

    :pswitch_d
    const-string p0, "WIFI_P2P"

    return-object p0

    :pswitch_e
    const-string p0, "CBS"

    return-object p0

    :pswitch_f
    const-string p0, "IMS"

    return-object p0

    :pswitch_10
    const-string p0, "FOTA"

    return-object p0

    :pswitch_11
    const-string p0, "DUN"

    return-object p0

    :pswitch_12
    const-string p0, "SUPL"

    return-object p0

    :pswitch_13
    const-string p0, "MMS"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static capabilityNamesOf([I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Landroid/animation/b;->D()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/animation/b;->j()Ljava/util/StringJoiner;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    array-length v1, p0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    .line 14
    aget v3, p0, v2

    .line 15
    .line 16
    invoke-static {v3}, Landroid/net/NetworkCapabilities;->capabilityNameOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v0, v3}, Landroid/animation/b;->z(Ljava/util/StringJoiner;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v0}, Landroid/animation/b;->i(Ljava/util/StringJoiner;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method private static checkValidTransportType(I)V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/net/NetworkCapabilities;->isValidTransport(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Invalid TransportType "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {v0, p0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private combineLinkBandwidths(Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 2
    .line 3
    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 10
    .line 11
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 12
    .line 13
    iget p1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 14
    .line 15
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 20
    .line 21
    return-void
.end method

.method private combineNetCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 4

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    return-void
.end method

.method private combineSignalStrength(Landroid/net/NetworkCapabilities;)V
    .locals 1

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iget p1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return-void
.end method

.method private combineSpecifiers(Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "Can\'t combine two networkSpecifiers"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object p1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private combineTransportTypes(Landroid/net/NetworkCapabilities;)V
    .locals 4

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v2, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    return-void
.end method

.method private equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget p1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private equalsNetCapabilitiesRequestable(Landroid/net/NetworkCapabilities;)Z
    .locals 6

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/32 v2, -0x70001

    and-long/2addr v0, v2

    iget-wide v4, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private equalsSignalStrength(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iget p1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private equalsSpecifier(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iget-object p1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static isValidTransport(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/4 v0, 0x6

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-gt v0, v1, :cond_0

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget p1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;Z)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-wide/32 v2, -0x74001

    .line 6
    .line 7
    .line 8
    and-long/2addr v0, v2

    .line 9
    :cond_0
    iget-wide p1, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 10
    .line 11
    and-long/2addr p1, v0

    .line 12
    cmp-long p1, p1, v0

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1
.end method

.method private satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/net/NetworkCapabilities;->satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    .line 3
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    .line 5
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySignalStrength(Landroid/net/NetworkCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private satisfiedBySignalStrength(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iget p1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    if-eqz v0, :cond_1

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {v0, v1}, Landroid/net/NetworkSpecifier;->satisfiedBy(Landroid/net/NetworkSpecifier;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    instance-of p1, p1, Landroid/net/MatchAllNetworkSpecifier;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z
    .locals 6

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    and-long/2addr v0, v4

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static transportNameOf(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/net/NetworkCapabilities;->isValidTransport(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "UNKNOWN"

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object v0, Landroid/net/NetworkCapabilities;->TRANSPORT_NAMES:[Ljava/lang/String;

    .line 11
    .line 12
    aget-object p0, v0, p0

    .line 13
    .line 14
    return-object p0
.end method

.method public static transportNamesOf([I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Landroid/animation/b;->D()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/animation/b;->j()Ljava/util/StringJoiner;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    array-length v1, p0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 13
    .line 14
    aget v3, p0, v2

    .line 15
    .line 16
    invoke-static {v3}, Landroid/net/NetworkCapabilities;->transportNameOf(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v0, v3}, Landroid/animation/b;->z(Ljava/util/StringJoiner;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v0}, Landroid/animation/b;->i(Ljava/util/StringJoiner;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method


# virtual methods
.method public addCapability(I)Landroid/net/NetworkCapabilities;
    .locals 4

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x13

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    shl-int p1, v2, p1

    .line 11
    .line 12
    int-to-long v2, p1

    .line 13
    or-long/2addr v0, v2

    .line 14
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, "NetworkCapability out of range"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public addTransportType(I)Landroid/net/NetworkCapabilities;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->checkValidTransportType(I)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    shl-int p1, v2, p1

    .line 8
    .line 9
    int-to-long v2, p1

    .line 10
    or-long/2addr v0, v2

    .line 11
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 12
    .line 13
    iget-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public clearAll()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 4
    .line 5
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 9
    .line 10
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 14
    .line 15
    const/high16 v0, -0x80000000

    .line 16
    .line 17
    iput v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    .line 18
    .line 19
    return-void
.end method

.method public combineCapabilities(Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineNetCapabilities(Landroid/net/NetworkCapabilities;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineTransportTypes(Landroid/net/NetworkCapabilities;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineLinkBandwidths(Landroid/net/NetworkCapabilities;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineSpecifiers(Landroid/net/NetworkCapabilities;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->combineSignalStrength(Landroid/net/NetworkCapabilities;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public describeFirstNonRequestableCapability()Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "NET_CAPABILITY_VALIDATED"

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const/16 v0, 0x11

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v0, "NET_CAPABILITY_CAPTIVE_PORTAL"

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    const/16 v0, 0x12

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const-string v0, "NET_CAPABILITY_FOREGROUND"

    .line 32
    .line 33
    return-object v0

    .line 34
    :cond_2
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 35
    .line 36
    const-wide/32 v2, 0x70000

    .line 37
    .line 38
    .line 39
    and-long/2addr v0, v2

    .line 40
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    cmp-long v0, v0, v2

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string/jumbo v1, "unknown non-requestable capabilities "

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-wide v1, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 55
    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    return-object v0

    .line 68
    :cond_3
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 69
    .line 70
    if-nez v0, :cond_6

    .line 71
    .line 72
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    const-string/jumbo v0, "signalStrength"

    .line 84
    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_5
    const/4 v0, 0x0

    .line 88
    return-object v0

    .line 89
    :cond_6
    :goto_0
    const-string/jumbo v0, "link bandwidth"

    .line 90
    .line 91
    .line 92
    return-object v0
.end method

.method public describeImmutableDifferences(Landroid/net/NetworkCapabilities;)Ljava/lang/String;
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string/jumbo p1, "other NetworkCapabilities was null"

    .line 4
    .line 5
    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-static {}, Landroid/animation/b;->D()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/animation/b;->C()Ljava/util/StringJoiner;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-wide v1, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 15
    .line 16
    const-wide/32 v3, -0x74805

    .line 17
    .line 18
    .line 19
    and-long/2addr v1, v3

    .line 20
    iget-wide v5, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 21
    .line 22
    and-long/2addr v3, v5

    .line 23
    cmp-long v5, v1, v3

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x2

    .line 28
    if-eqz v5, :cond_1

    .line 29
    .line 30
    invoke-static {v1, v2}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Landroid/net/NetworkCapabilities;->capabilityNamesOf([I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v3, v4}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2}, Landroid/net/NetworkCapabilities;->capabilityNamesOf([I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-array v3, v8, [Ljava/lang/Object;

    .line 47
    .line 48
    aput-object v1, v3, v7

    .line 49
    .line 50
    aput-object v2, v3, v6

    .line 51
    .line 52
    const-string/jumbo v1, "immutable capabilities changed: %s -> %s"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Landroid/animation/b;->z(Ljava/util/StringJoiner;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    new-array v3, v8, [Ljava/lang/Object;

    .line 77
    .line 78
    aput-object v1, v3, v7

    .line 79
    .line 80
    aput-object v2, v3, v6

    .line 81
    .line 82
    const-string/jumbo v1, "specifier changed: %s -> %s"

    .line 83
    .line 84
    .line 85
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Landroid/animation/b;->z(Ljava/util/StringJoiner;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_3

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-array v2, v8, [Ljava/lang/Object;

    .line 115
    .line 116
    aput-object v1, v2, v7

    .line 117
    .line 118
    aput-object p1, v2, v6

    .line 119
    .line 120
    const-string/jumbo p1, "transports changed: %s -> %s"

    .line 121
    .line 122
    .line 123
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {v0, p1}, Landroid/animation/b;->z(Ljava/util/StringJoiner;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-static {v0}, Landroid/animation/b;->i(Ljava/util/StringJoiner;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    return-object p1
.end method

.method public equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsNetCapabilitiesRequestable(Landroid/net/NetworkCapabilities;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    instance-of v1, p1, Landroid/net/NetworkCapabilities;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    check-cast p1, Landroid/net/NetworkCapabilities;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsSignalStrength(Landroid/net/NetworkCapabilities;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    :cond_1
    :goto_0
    return v0
.end method

.method public equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 4

    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z
    .locals 4

    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCapabilities()[I
    .locals 2

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    invoke-static {v0, v1}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public getLinkDownstreamBandwidthKbps()I
    .locals 1

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return v0
.end method

.method public getLinkUpstreamBandwidthKbps()I
    .locals 1

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return v0
.end method

.method public getNetworkSpecifier()Landroid/net/NetworkSpecifier;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    return-object v0
.end method

.method public getSignalStrength()I
    .locals 1

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return v0
.end method

.method public getTransportTypes()[I
    .locals 2

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-static {v0, v1}, Lcom/android/internal/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public hasCapability(I)Z
    .locals 6

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    const/16 v1, 0x13

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const/4 v3, 0x1

    shl-int p1, v3, p1

    int-to-long v4, p1

    and-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v1, v4

    if-eqz p1, :cond_1

    move v0, v3

    :cond_1
    :goto_0
    return v0
.end method

.method public hasSignalStrength()Z
    .locals 2

    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransport(I)Z
    .locals 5

    invoke-static {p1}, Landroid/net/NetworkCapabilities;->isValidTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const/4 v2, 0x1

    shl-int p1, v2, p1

    int-to-long v3, p1

    and-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public hashCode()I
    .locals 8

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    and-long v4, v0, v2

    .line 6
    .line 7
    long-to-int v4, v4

    .line 8
    const/16 v5, 0x20

    .line 9
    .line 10
    shr-long/2addr v0, v5

    .line 11
    long-to-int v0, v0

    .line 12
    mul-int/lit8 v0, v0, 0x3

    .line 13
    .line 14
    add-int/2addr v0, v4

    .line 15
    iget-wide v6, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 16
    .line 17
    and-long v1, v6, v2

    .line 18
    .line 19
    long-to-int v1, v1

    .line 20
    mul-int/lit8 v1, v1, 0x5

    .line 21
    .line 22
    add-int/2addr v1, v0

    .line 23
    shr-long v2, v6, v5

    .line 24
    .line 25
    long-to-int v0, v2

    .line 26
    mul-int/lit8 v0, v0, 0x7

    .line 27
    .line 28
    add-int/2addr v0, v1

    .line 29
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 30
    .line 31
    mul-int/lit8 v1, v1, 0xb

    .line 32
    .line 33
    add-int/2addr v1, v0

    .line 34
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 35
    .line 36
    mul-int/lit8 v0, v0, 0xd

    .line 37
    .line 38
    add-int/2addr v0, v1

    .line 39
    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 40
    .line 41
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    mul-int/lit8 v1, v1, 0x11

    .line 46
    .line 47
    add-int/2addr v1, v0

    .line 48
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    .line 49
    .line 50
    mul-int/lit8 v0, v0, 0x13

    .line 51
    .line 52
    add-int/2addr v0, v1

    .line 53
    return v0
.end method

.method public maybeMarkCapabilitiesRestricted()V
    .locals 9

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 2
    .line 3
    const-wide/16 v2, 0x1043

    .line 4
    .line 5
    and-long/2addr v2, v0

    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    cmp-long v2, v2, v4

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    move v2, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v6

    .line 17
    :goto_0
    const-wide/16 v7, 0x7bc

    .line 18
    .line 19
    and-long/2addr v0, v7

    .line 20
    cmp-long v0, v0, v4

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v3, v6

    .line 26
    :goto_1
    if-eqz v3, :cond_2

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    const/16 v0, 0xd

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public removeCapability(I)Landroid/net/NetworkCapabilities;
    .locals 4

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x13

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    shl-int p1, v2, p1

    .line 11
    .line 12
    not-int p1, p1

    .line 13
    int-to-long v2, p1

    .line 14
    and-long/2addr v0, v2

    .line 15
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "NetworkCapability out of range"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public removeTransportType(I)Landroid/net/NetworkCapabilities;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->checkValidTransportType(I)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    shl-int p1, v2, p1

    .line 8
    .line 9
    not-int p1, p1

    .line 10
    int-to-long v2, p1

    .line 11
    and-long/2addr v0, v2

    .line 12
    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 13
    .line 14
    iget-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    move-result p1

    return p1
.end method

.method public satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    move-result p1

    return p1
.end method

.method public setLinkDownstreamBandwidthKbps(I)V
    .locals 0

    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return-void
.end method

.method public setLinkUpstreamBandwidthKbps(I)V
    .locals 0

    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return-void
.end method

.method public setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "Must have a single transport specified to use setNetworkSpecifier"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 22
    .line 23
    return-object p0
.end method

.method public setSignalStrength(I)V
    .locals 0

    iput p1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const-string v2, ""

    .line 7
    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, " Transports: "

    .line 13
    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object v0, v2

    .line 30
    :goto_0
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    array-length v3, v1

    .line 35
    if-lez v3, :cond_1

    .line 36
    .line 37
    const-string v3, " Capabilities: "

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move-object v3, v2

    .line 41
    :goto_1
    const/4 v4, 0x0

    .line 42
    :cond_2
    :goto_2
    array-length v5, v1

    .line 43
    if-ge v4, v5, :cond_3

    .line 44
    .line 45
    invoke-static {v3}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    aget v5, v1, v4

    .line 50
    .line 51
    invoke-static {v5}, Landroid/net/NetworkCapabilities;->capabilityNameOf(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    add-int/lit8 v4, v4, 0x1

    .line 63
    .line 64
    array-length v5, v1

    .line 65
    if-ge v4, v5, :cond_2

    .line 66
    .line 67
    const-string v5, "&"

    .line 68
    .line 69
    invoke-static {v3, v5}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 75
    .line 76
    const-string v4, "Kbps"

    .line 77
    .line 78
    if-lez v1, :cond_4

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v5, " LinkUpBandwidth>="

    .line 83
    .line 84
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget v5, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 88
    .line 89
    invoke-static {v1, v5, v4}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    move-object v1, v2

    .line 95
    :goto_3
    iget v5, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 96
    .line 97
    if-lez v5, :cond_5

    .line 98
    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v6, " LinkDnBandwidth>="

    .line 102
    .line 103
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget v6, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 107
    .line 108
    invoke-static {v5, v6, v4}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    goto :goto_4

    .line 113
    :cond_5
    move-object v4, v2

    .line 114
    :goto_4
    iget-object v5, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 115
    .line 116
    if-nez v5, :cond_6

    .line 117
    .line 118
    move-object v5, v2

    .line 119
    goto :goto_5

    .line 120
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v6, " Specifier: <"

    .line 123
    .line 124
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v6, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 128
    .line 129
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v6, ">"

    .line 133
    .line 134
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    :goto_5
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_7

    .line 146
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v6, " SignalStrength: "

    .line 150
    .line 151
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget v6, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    .line 155
    .line 156
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    :cond_7
    const-string v6, "["

    .line 164
    .line 165
    invoke-static {v6, v0, v3, v1, v4}, Landroid/accessibilityservice/c;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v1, "]"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 22
    .line 23
    check-cast v0, Landroid/os/Parcelable;

    .line 24
    .line 25
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 26
    .line 27
    .line 28
    iget p2, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
