.class public Landroid/net/wifi/WifiInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MAC_ADDRESS:Ljava/lang/String; = "02:00:00:00:00:00"

.field private static final FILTER_TIME_CONSTANT:J = 0xbb8L

.field public static final FREQUENCY_UNITS:Ljava/lang/String; = "MHz"

.field public static final INVALID_RSSI:I = -0x7f

.field public static final LINK_SPEED_UNITS:Ljava/lang/String; = "Mbps"

.field public static final MAX_RSSI:I = 0xc8

.field public static final MIN_RSSI:I = -0x7e

.field private static final OUTPUT_SCALE_FACTOR:J = 0x5L

.field private static final RESET_TIME_STAMP:J = -0x8000000000000000L

.field private static final TAG:Ljava/lang/String; = "WifiInfo"

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/net/wifi/SupplicantState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public badRssiCount:I

.field public linkStuckCount:I

.field public lowRssiCount:I

.field private mBSSID:Ljava/lang/String;

.field private mEphemeral:Z

.field private mFrequency:I

.field private mIpAddress:Ljava/net/InetAddress;

.field private mLastPacketCountUpdateTimeStamp:J

.field private mLinkSpeed:I

.field private mMacAddress:Ljava/lang/String;

.field private mMeteredHint:Z

.field private mNetworkId:I

.field private mRssi:I

.field private mSupplicantState:Landroid/net/wifi/SupplicantState;

.field private mWifiSsid:Landroid/net/wifi/WifiSsid;

.field public rxSuccess:J

.field public rxSuccessRate:D

.field public score:I

.field public txBad:J

.field public txBadRate:D

.field public txRetries:J

.field public txRetriesRate:D

.field public txSuccess:J

.field public txSuccessRate:D


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    .line 2
    .line 3
    const-class v1, Landroid/net/wifi/SupplicantState;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    .line 9
    .line 10
    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    .line 11
    .line 12
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    .line 23
    .line 24
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    .line 30
    .line 31
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    .line 37
    .line 38
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 39
    .line 40
    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 54
    .line 55
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 61
    .line 62
    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    .line 66
    .line 67
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    .line 68
    .line 69
    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    .line 78
    .line 79
    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 83
    .line 84
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 85
    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    new-instance v0, Landroid/net/wifi/WifiInfo$1;

    .line 90
    .line 91
    invoke-direct {v0}, Landroid/net/wifi/WifiInfo$1;-><init>()V

    .line 92
    .line 93
    .line 94
    sput-object v0, Landroid/net/wifi/WifiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 95
    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "02:00:00:00:00:00"

    .line 2
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 4
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 6
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    const/16 v1, -0x7f

    .line 7
    iput v1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 8
    iput v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 9
    iput v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->mLastPacketCountUpdateTimeStamp:J

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiInfo;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "02:00:00:00:00:00"

    .line 12
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 13
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 14
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 16
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 17
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mRssi:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 18
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 19
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mFrequency:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 20
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 21
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 22
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 23
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    .line 24
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txBad:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 25
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txRetries:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 26
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 27
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 28
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txBadRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 29
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 30
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 31
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 32
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->mLastPacketCountUpdateTimeStamp:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->mLastPacketCountUpdateTimeStamp:J

    .line 33
    iget v0, p1, Landroid/net/wifi/WifiInfo;->score:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 34
    iget v0, p1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 35
    iget v0, p1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 36
    iget p1, p1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    iput p1, p0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    :cond_0
    return-void
.end method

.method public static synthetic access$002(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiSsid;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object p1
.end method

.method public static synthetic access$102(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return p1
.end method

.method public static synthetic access$402(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    return p1
.end method

.method public static synthetic access$502(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method public static getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkInfo$DetailedState;

    return-object p0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x22

    .line 18
    .line 19
    if-ne v2, v3, :cond_1

    .line 20
    .line 21
    sub-int/2addr v0, v1

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-ne v2, v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :cond_1
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    .locals 1

    .line 1
    const-string v0, "4WAY_HANDSHAKE"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Landroid/net/wifi/SupplicantState;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    sget-object p0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 24
    .line 25
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    return v0
.end method

.method public getHiddenSSID()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->isHidden()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getIpAddress()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/net/Inet4Address;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/net/Inet4Address;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public getLinkSpeed()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMeteredHint()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    return v0
.end method

.method public getRxSuccessRatePps()D
    .locals 4

    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 2
    .line 3
    const-string v1, "<unknown ssid>"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string v1, "\""

    .line 18
    .line 19
    invoke-static {v1, v0, v1}, Landroid/accessibilityservice/c;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->getHexString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    move-object v1, v0

    .line 33
    :cond_1
    return-object v1
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method public getTxSuccessRatePps()D
    .locals 4

    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getWifiSsid()Landroid/net/wifi/WifiSsid;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public hasRealMacAddress()Z
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public is24GHz()Z
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    return v0
.end method

.method public is5GHz()Z
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    return v0
.end method

.method public isEphemeral()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    return v0
.end method

.method public reset()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 13
    .line 14
    .line 15
    const/16 v1, -0x7f

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setEphemeral(Z)V

    .line 31
    .line 32
    .line 33
    const-wide/16 v1, 0x0

    .line 34
    .line 35
    iput-wide v1, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 36
    .line 37
    iput-wide v1, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 38
    .line 39
    iput-wide v1, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 40
    .line 41
    iput-wide v1, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 42
    .line 43
    const-wide/16 v1, 0x0

    .line 44
    .line 45
    iput-wide v1, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 46
    .line 47
    iput-wide v1, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 48
    .line 49
    iput-wide v1, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 50
    .line 51
    iput-wide v1, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 52
    .line 53
    iput v0, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 54
    .line 55
    iput v0, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 56
    .line 57
    iput v0, p0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 58
    .line 59
    iput v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 60
    .line 61
    const-wide/high16 v0, -0x8000000000000000L

    .line 62
    .line 63
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->mLastPacketCountUpdateTimeStamp:J

    .line 64
    .line 65
    return-void
.end method

.method public setBSSID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-void
.end method

.method public setEphemeral(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    return-void
.end method

.method public setFrequency(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    return-void
.end method

.method public setInetAddress(Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public setLinkSpeed(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method public setMeteredHint(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return-void
.end method

.method public setNetworkId(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    return-void
.end method

.method public setRssi(I)V
    .locals 1

    const/16 v0, -0x7f

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/16 v0, 0xc8

    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    return-void
.end method

.method public setSSID(Landroid/net/wifi/WifiSsid;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-void
.end method

.method public setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-void
.end method

.method public setSupplicantState(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "SSID: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "<unknown ssid>"

    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    const-string v1, ", BSSID: "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 23
    .line 24
    const-string v2, "<none>"

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    move-object v1, v2

    .line 29
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    const-string v1, ", MAC: "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    move-object v1, v2

    .line 42
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    .line 44
    .line 45
    const-string v1, ", Supplicant state: "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    move-object v2, v1

    .line 56
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    const-string v1, ", RSSI: "

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    iget v1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    const-string v1, ", Link speed: "

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    .line 73
    .line 74
    iget v1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 77
    .line 78
    .line 79
    const-string v1, "Mbps, Frequency: "

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    iget v1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 87
    .line 88
    .line 89
    const-string v1, "MHz, Net ID: "

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    .line 93
    .line 94
    iget v1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 97
    .line 98
    .line 99
    const-string v1, ", Metered hint: "

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    .line 103
    .line 104
    iget-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 107
    .line 108
    .line 109
    const-string v1, ", score: "

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    .line 113
    .line 114
    iget v1, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 115
    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    return-object v0
.end method

.method public updatePacketRates(JJ)V
    .locals 8

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 30
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 32
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 33
    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    cmp-long v4, v2, p1

    if-gtz v4, :cond_0

    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    cmp-long v6, v4, p3

    if-gtz v6, :cond_0

    .line 34
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v6

    sub-long v2, p1, v2

    long-to-double v2, v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v0

    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 35
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    mul-double/2addr v0, v6

    sub-long v2, p3, v4

    long-to-double v2, v2

    mul-double/2addr v2, v6

    add-double/2addr v2, v0

    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    goto :goto_0

    .line 36
    :cond_0
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 37
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 38
    :goto_0
    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 39
    iput-wide p3, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    return-void
.end method

.method public updatePacketRates(Landroid/net/wifi/WifiLinkLayerStats;J)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-wide/high16 v4, -0x8000000000000000L

    if-eqz v1, :cond_1

    .line 1
    iget-wide v8, v1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_be:J

    iget-wide v10, v1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_bk:J

    add-long/2addr v8, v10

    iget-wide v10, v1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vi:J

    add-long/2addr v8, v10

    iget-wide v10, v1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vo:J

    add-long/2addr v8, v10

    .line 2
    iget-wide v10, v1, Landroid/net/wifi/WifiLinkLayerStats;->retries_be:J

    iget-wide v12, v1, Landroid/net/wifi/WifiLinkLayerStats;->retries_bk:J

    add-long/2addr v10, v12

    iget-wide v12, v1, Landroid/net/wifi/WifiLinkLayerStats;->retries_vi:J

    add-long/2addr v10, v12

    iget-wide v12, v1, Landroid/net/wifi/WifiLinkLayerStats;->retries_vo:J

    add-long/2addr v10, v12

    .line 3
    iget-wide v12, v1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_be:J

    iget-wide v14, v1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_bk:J

    add-long/2addr v12, v14

    iget-wide v14, v1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vi:J

    add-long/2addr v12, v14

    iget-wide v14, v1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vo:J

    add-long/2addr v12, v14

    .line 4
    iget-wide v14, v1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_be:J

    iget-wide v6, v1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_bk:J

    add-long/2addr v14, v6

    iget-wide v6, v1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vi:J

    add-long/2addr v14, v6

    iget-wide v6, v1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vo:J

    add-long/2addr v14, v6

    .line 5
    iget-wide v6, v0, Landroid/net/wifi/WifiInfo;->mLastPacketCountUpdateTimeStamp:J

    cmp-long v1, v6, v4

    if-eqz v1, :cond_0

    cmp-long v1, v6, v2

    if-gez v1, :cond_0

    iget-wide v4, v0, Landroid/net/wifi/WifiInfo;->txBad:J

    cmp-long v1, v4, v14

    if-gtz v1, :cond_0

    iget-wide v4, v0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    cmp-long v1, v4, v8

    if-gtz v1, :cond_0

    iget-wide v4, v0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    cmp-long v1, v4, v12

    if-gtz v1, :cond_0

    iget-wide v4, v0, Landroid/net/wifi/WifiInfo;->txRetries:J

    cmp-long v1, v4, v10

    if-gtz v1, :cond_0

    sub-long v4, v2, v6

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    long-to-double v1, v4

    mul-double/2addr v1, v6

    const-wide v6, 0x40a7700000000000L    # 3000.0

    div-double/2addr v1, v6

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v1

    move-wide/from16 v18, v10

    .line 7
    iget-wide v10, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    mul-double/2addr v10, v1

    move-wide/from16 v20, v12

    iget-wide v12, v0, Landroid/net/wifi/WifiInfo;->txBad:J

    sub-long v12, v14, v12

    const-wide/16 v16, 0x5

    mul-long v12, v12, v16

    const-wide/16 v22, 0x3e8

    mul-long v12, v12, v22

    div-long/2addr v12, v4

    long-to-double v12, v12

    mul-double/2addr v12, v6

    add-double/2addr v12, v10

    iput-wide v12, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 8
    iget-wide v10, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    mul-double/2addr v10, v1

    iget-wide v12, v0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    sub-long v12, v8, v12

    mul-long v12, v12, v16

    mul-long v12, v12, v22

    div-long/2addr v12, v4

    long-to-double v12, v12

    mul-double/2addr v12, v6

    add-double/2addr v12, v10

    iput-wide v12, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 9
    iget-wide v10, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    mul-double/2addr v10, v1

    iget-wide v12, v0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    sub-long v12, v20, v12

    mul-long v12, v12, v16

    mul-long v12, v12, v22

    div-long/2addr v12, v4

    long-to-double v12, v12

    mul-double/2addr v12, v6

    add-double/2addr v12, v10

    iput-wide v12, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 10
    iget-wide v10, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    mul-double/2addr v10, v1

    iget-wide v1, v0, Landroid/net/wifi/WifiInfo;->txRetries:J

    sub-long v1, v18, v1

    mul-long v1, v1, v16

    mul-long v1, v1, v22

    div-long/2addr v1, v4

    long-to-double v1, v1

    mul-double/2addr v1, v6

    add-double/2addr v1, v10

    iput-wide v1, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    goto :goto_0

    :cond_0
    move-wide/from16 v18, v10

    move-wide/from16 v20, v12

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 12
    iput-wide v1, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 13
    iput-wide v1, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 14
    iput-wide v1, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 15
    :goto_0
    iput-wide v14, v0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 16
    iput-wide v8, v0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    move-wide/from16 v12, v20

    .line 17
    iput-wide v12, v0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    move-wide/from16 v10, v18

    .line 18
    iput-wide v10, v0, Landroid/net/wifi/WifiInfo;->txRetries:J

    move-wide/from16 v1, p2

    .line 19
    iput-wide v1, v0, Landroid/net/wifi/WifiInfo;->mLastPacketCountUpdateTimeStamp:J

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    .line 20
    iput-wide v1, v0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 21
    iput-wide v1, v0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 22
    iput-wide v1, v0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 23
    iput-wide v1, v0, Landroid/net/wifi/WifiInfo;->txRetries:J

    const-wide/16 v1, 0x0

    .line 24
    iput-wide v1, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 25
    iput-wide v1, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 26
    iput-wide v1, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 27
    iput-wide v1, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 28
    iput-wide v4, v0, Landroid/net/wifi/WifiInfo;->mLastPacketCountUpdateTimeStamp:J

    :goto_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 51
    .line 52
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    .line 58
    .line 59
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    .line 73
    .line 74
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    iget v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    .line 83
    .line 84
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 85
    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 87
    .line 88
    .line 89
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 90
    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 92
    .line 93
    .line 94
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 95
    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 97
    .line 98
    .line 99
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 100
    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 102
    .line 103
    .line 104
    iget v0, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    .line 108
    .line 109
    iget v0, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 115
    .line 116
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/SupplicantState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 117
    .line 118
    .line 119
    return-void
.end method
