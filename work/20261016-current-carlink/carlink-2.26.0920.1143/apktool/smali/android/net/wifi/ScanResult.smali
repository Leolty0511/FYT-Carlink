.class public Landroid/net/wifi/ScanResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ScanResult$InformationElement;
    }
.end annotation


# static fields
.field public static final CHANNEL_WIDTH_160MHZ:I = 0x3

.field public static final CHANNEL_WIDTH_20MHZ:I = 0x0

.field public static final CHANNEL_WIDTH_40MHZ:I = 0x1

.field public static final CHANNEL_WIDTH_80MHZ:I = 0x2

.field public static final CHANNEL_WIDTH_80MHZ_PLUS_MHZ:I = 0x4

.field public static final CIPHER_CCMP:I = 0x3

.field public static final CIPHER_NONE:I = 0x0

.field public static final CIPHER_NO_GROUP_ADDRESSED:I = 0x1

.field public static final CIPHER_TKIP:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_80211mc_RESPONDER:J = 0x2L

.field public static final FLAG_PASSPOINT_NETWORK:J = 0x1L

.field public static final KEY_MGMT_EAP:I = 0x2

.field public static final KEY_MGMT_EAP_SHA256:I = 0x6

.field public static final KEY_MGMT_FT_EAP:I = 0x4

.field public static final KEY_MGMT_FT_PSK:I = 0x3

.field public static final KEY_MGMT_NONE:I = 0x0

.field public static final KEY_MGMT_OSEN:I = 0x7

.field public static final KEY_MGMT_PSK:I = 0x1

.field public static final KEY_MGMT_PSK_SHA256:I = 0x5

.field public static final KEY_MGMT_WAPI_CERT:I = 0x9

.field public static final KEY_MGMT_WAPI_PSK:I = 0x8

.field public static final PROTOCOL_NONE:I = 0x0

.field public static final PROTOCOL_OSEN:I = 0x3

.field public static final PROTOCOL_WAPI:I = 0x4

.field public static final PROTOCOL_WPA:I = 0x1

.field public static final PROTOCOL_WPA2:I = 0x2

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public anqpDomainId:I

.field public anqpElements:[Landroid/net/wifi/AnqpInformationElement;

.field public anqpLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blackListTimestamp:J

.field public bytes:[B

.field public capabilities:Ljava/lang/String;

.field public carrierApEapType:I

.field public carrierName:Ljava/lang/String;

.field public centerFreq0:I

.field public centerFreq1:I

.field public channelWidth:I

.field public distanceCm:I

.field public distanceSdCm:I

.field public flags:J

.field public frequency:I

.field public hessid:J

.field public informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

.field public is80211McRTTResponder:Z

.field public isCarrierAp:Z

.field public level:I

.field public numConnection:I

.field public numIpConfigFailures:I

.field public numUsage:I

.field public operatorFriendlyName:Ljava/lang/CharSequence;

.field public seen:J

.field public timestamp:J

.field public untrusted:Z

.field public venueName:Ljava/lang/CharSequence;

.field public wifiSsid:Landroid/net/wifi/WifiSsid;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/ScanResult$1;

    invoke-direct {v0}, Landroid/net/wifi/ScanResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanResult;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 61
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 62
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 64
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->hessid:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->hessid:J

    .line 65
    iget v0, p1, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    .line 66
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 67
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 68
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 69
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 70
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 71
    iget v0, p1, Landroid/net/wifi/ScanResult;->channelWidth:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 72
    iget v0, p1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 73
    iget v0, p1, Landroid/net/wifi/ScanResult;->centerFreq1:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 74
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 75
    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceCm:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 76
    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 77
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->seen:J

    .line 78
    iget-boolean v0, p1, Landroid/net/wifi/ScanResult;->untrusted:Z

    iput-boolean v0, p0, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 79
    iget v0, p1, Landroid/net/wifi/ScanResult;->numConnection:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->numConnection:I

    .line 80
    iget v0, p1, Landroid/net/wifi/ScanResult;->numUsage:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->numUsage:I

    .line 81
    iget v0, p1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 82
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    .line 83
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    .line 84
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->flags:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 85
    iget-boolean v0, p1, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    iput-boolean v0, p0, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    .line 86
    iget v0, p1, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    .line 87
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    iput-object p1, p0, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "<unknown ssid>"

    :goto_0
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Landroid/net/wifi/ScanResult;->hessid:J

    .line 6
    iput p5, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    const/4 p1, 0x0

    if-eqz p6, :cond_1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/net/wifi/AnqpInformationElement;

    .line 7
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 8
    new-instance p3, Landroid/net/wifi/AnqpInformationElement;

    const p4, 0x506f9a

    const/16 p5, 0x8

    invoke-direct {p3, p4, p5, p6}, Landroid/net/wifi/AnqpInformationElement;-><init>(II[B)V

    aput-object p3, p2, p1

    .line 9
    :cond_1
    iput-object p7, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 10
    iput p8, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 11
    iput p9, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 12
    iput-wide p10, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    const/4 p2, -0x1

    .line 13
    iput p2, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 14
    iput p2, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 15
    iput p2, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 16
    iput p2, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 17
    iput p2, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    const-wide/16 p3, 0x0

    .line 18
    iput-wide p3, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 19
    iput-boolean p1, p0, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    .line 20
    iput p2, p0, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJII)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "<unknown ssid>"

    :goto_0
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 27
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 28
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 29
    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 30
    iput p8, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 31
    iput p9, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    const/4 p1, -0x1

    .line 32
    iput p1, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 33
    iput p1, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 34
    iput p1, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    const-wide/16 p2, 0x0

    .line 35
    iput-wide p2, p0, Landroid/net/wifi/ScanResult;->flags:J

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    .line 37
    iput p1, p0, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-wide/from16 v9, p10

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p16

    move/from16 v16, p17

    .line 58
    invoke-direct/range {v0 .. v16}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    move-object/from16 v1, p1

    .line 59
    iput-object v1, v0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .locals 3

    move-object v0, p0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 40
    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object v1, p2

    .line 41
    iput-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-wide v1, p3

    .line 42
    iput-wide v1, v0, Landroid/net/wifi/ScanResult;->hessid:J

    move v1, p5

    .line 43
    iput v1, v0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    move-object v1, p6

    .line 44
    iput-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move v1, p7

    .line 45
    iput v1, v0, Landroid/net/wifi/ScanResult;->level:I

    move v1, p8

    .line 46
    iput v1, v0, Landroid/net/wifi/ScanResult;->frequency:I

    move-wide v1, p9

    .line 47
    iput-wide v1, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    move v1, p11

    .line 48
    iput v1, v0, Landroid/net/wifi/ScanResult;->distanceCm:I

    move v1, p12

    .line 49
    iput v1, v0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    move/from16 v1, p13

    .line 50
    iput v1, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    move/from16 v1, p14

    .line 51
    iput v1, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    move/from16 v1, p15

    .line 52
    iput v1, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    if-eqz p16, :cond_0

    const-wide/16 v1, 0x2

    .line 53
    iput-wide v1, v0, Landroid/net/wifi/ScanResult;->flags:J

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 54
    iput-wide v1, v0, Landroid/net/wifi/ScanResult;->flags:J

    :goto_0
    const/4 v1, 0x0

    .line 55
    iput-boolean v1, v0, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    const/4 v1, -0x1

    .line 56
    iput v1, v0, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    const/4 v1, 0x0

    .line 57
    iput-object v1, v0, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    return-void
.end method

.method public static is24GHz(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x960

    if-le p0, v0, :cond_0

    const/16 v0, 0x9c4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static is5GHz(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x1324

    if-le p0, v0, :cond_0

    const/16 v0, 0x170c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public averageRssi(IJI)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->seen:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->seen:J

    .line 14
    .line 15
    :cond_0
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->seen:J

    .line 16
    .line 17
    sub-long/2addr v0, p2

    .line 18
    cmp-long p2, p2, v2

    .line 19
    .line 20
    if-lez p2, :cond_1

    .line 21
    .line 22
    cmp-long p2, v0, v2

    .line 23
    .line 24
    if-lez p2, :cond_1

    .line 25
    .line 26
    div-int/lit8 p2, p4, 0x2

    .line 27
    .line 28
    int-to-long p2, p2

    .line 29
    cmp-long p2, v0, p2

    .line 30
    .line 31
    if-gez p2, :cond_1

    .line 32
    .line 33
    long-to-double p2, v0

    .line 34
    int-to-double v0, p4

    .line 35
    div-double/2addr p2, v0

    .line 36
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 37
    .line 38
    sub-double/2addr v0, p2

    .line 39
    iget p2, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 40
    .line 41
    int-to-double p2, p2

    .line 42
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 43
    .line 44
    sub-double/2addr v2, v0

    .line 45
    mul-double/2addr v2, p2

    .line 46
    int-to-double p1, p1

    .line 47
    mul-double/2addr p1, v0

    .line 48
    add-double/2addr p1, v2

    .line 49
    double-to-int p1, p1

    .line 50
    iput p1, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public clearFlag(J)V
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Landroid/net/wifi/ScanResult;->flags:J

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public is24GHz()Z
    .locals 1

    .line 2
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    return v0
.end method

.method public is5GHz()Z
    .locals 1

    .line 2
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    return v0
.end method

.method public is80211mcResponder()Z
    .locals 4

    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPasspointNetwork()Z
    .locals 4

    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFlag(J)V
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Landroid/net/wifi/ScanResult;->flags:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

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
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

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
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

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
    const-string v1, ", capabilities: "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move-object v2, v1

    .line 43
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    const-string v1, ", level: "

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 54
    .line 55
    .line 56
    const-string v1, ", frequency: "

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 64
    .line 65
    .line 66
    const-string v1, ", timestamp: "

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    iget-wide v1, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 74
    .line 75
    .line 76
    const-string v1, ", distance: "

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    .line 80
    .line 81
    iget v1, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 82
    .line 83
    const-string v2, "?"

    .line 84
    .line 85
    const/4 v3, -0x1

    .line 86
    if-eq v1, v3, :cond_3

    .line 87
    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move-object v1, v2

    .line 94
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 95
    .line 96
    .line 97
    const-string v1, "(cm), distanceSd: "

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    .line 101
    .line 102
    iget v1, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 103
    .line 104
    if-eq v1, v3, :cond_4

    .line 105
    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 111
    .line 112
    .line 113
    const-string v1, "(cm), passpoint: "

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    .line 117
    .line 118
    iget-wide v1, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 119
    .line 120
    const-wide/16 v3, 0x1

    .line 121
    .line 122
    and-long/2addr v1, v3

    .line 123
    const-wide/16 v3, 0x0

    .line 124
    .line 125
    cmp-long v1, v1, v3

    .line 126
    .line 127
    const-string/jumbo v2, "yes"

    .line 128
    .line 129
    .line 130
    const-string/jumbo v5, "no"

    .line 131
    .line 132
    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    move-object v1, v2

    .line 136
    goto :goto_2

    .line 137
    :cond_5
    move-object v1, v5

    .line 138
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    .line 140
    .line 141
    const-string v1, ", ChannelBandwidth: "

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    .line 145
    .line 146
    iget v1, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 149
    .line 150
    .line 151
    const-string v1, ", centerFreq0: "

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    .line 155
    .line 156
    iget v1, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 159
    .line 160
    .line 161
    const-string v1, ", centerFreq1: "

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    .line 165
    .line 166
    iget v1, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 169
    .line 170
    .line 171
    const-string v1, ", 80211mcResponder: "

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    .line 175
    .line 176
    iget-wide v6, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 177
    .line 178
    const-wide/16 v8, 0x2

    .line 179
    .line 180
    and-long/2addr v6, v8

    .line 181
    cmp-long v1, v6, v3

    .line 182
    .line 183
    if-eqz v1, :cond_6

    .line 184
    .line 185
    const-string/jumbo v1, "is supported"

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_6
    const-string/jumbo v1, "is not supported"

    .line 190
    .line 191
    .line 192
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    .line 194
    .line 195
    const-string v1, ", Carrier AP: "

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    .line 199
    .line 200
    iget-boolean v1, p0, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    .line 201
    .line 202
    if-eqz v1, :cond_7

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_7
    move-object v2, v5

    .line 206
    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    .line 208
    .line 209
    const-string v1, ", Carrier AP EAP Type: "

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    .line 213
    .line 214
    iget v1, p0, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 217
    .line 218
    .line 219
    const-string v1, ", Carrier name: "

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->hessid:J

    .line 30
    .line 31
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    .line 33
    .line 34
    iget p2, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget p2, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    iget p2, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 55
    .line 56
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    .line 58
    .line 59
    iget p2, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    .line 63
    .line 64
    iget p2, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    .line 68
    .line 69
    iget p2, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    .line 73
    .line 74
    iget p2, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    iget p2, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 80
    .line 81
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    .line 83
    .line 84
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->seen:J

    .line 85
    .line 86
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    .line 88
    .line 89
    iget-boolean p2, p0, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    .line 93
    .line 94
    iget p2, p0, Landroid/net/wifi/ScanResult;->numConnection:I

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    iget p2, p0, Landroid/net/wifi/ScanResult;->numUsage:I

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    .line 103
    .line 104
    iget p2, p0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    .line 110
    .line 111
    const-string v0, ""

    .line 112
    .line 113
    if-eqz p2, :cond_1

    .line 114
    .line 115
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    move-object p2, v0

    .line 121
    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    .line 125
    .line 126
    if-eqz p2, :cond_2

    .line 127
    .line 128
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 136
    .line 137
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    .line 139
    .line 140
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 141
    .line 142
    if-eqz p2, :cond_3

    .line 143
    .line 144
    array-length p2, p2

    .line 145
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    .line 147
    .line 148
    move p2, v1

    .line 149
    :goto_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 150
    .line 151
    array-length v2, v0

    .line 152
    if-ge p2, v2, :cond_4

    .line 153
    .line 154
    aget-object v0, v0, p2

    .line 155
    .line 156
    iget v0, v0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 162
    .line 163
    aget-object v0, v0, p2

    .line 164
    .line 165
    iget-object v0, v0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 166
    .line 167
    array-length v0, v0

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 172
    .line 173
    aget-object v0, v0, p2

    .line 174
    .line 175
    iget-object v0, v0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 178
    .line 179
    .line 180
    add-int/lit8 p2, p2, 0x1

    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    .line 185
    .line 186
    :cond_4
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    .line 187
    .line 188
    if-eqz p2, :cond_5

    .line 189
    .line 190
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    .line 196
    .line 197
    move p2, v1

    .line 198
    :goto_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    .line 199
    .line 200
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-ge p2, v0, :cond_6

    .line 205
    .line 206
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    .line 207
    .line 208
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    add-int/lit8 p2, p2, 0x1

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    .line 222
    .line 223
    :cond_6
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 224
    .line 225
    if-eqz p2, :cond_7

    .line 226
    .line 227
    array-length p2, p2

    .line 228
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    .line 230
    .line 231
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 232
    .line 233
    array-length v0, p2

    .line 234
    :goto_4
    if-ge v1, v0, :cond_8

    .line 235
    .line 236
    aget-object v2, p2, v1

    .line 237
    .line 238
    invoke-virtual {v2}, Landroid/net/wifi/AnqpInformationElement;->getVendorId()I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2}, Landroid/net/wifi/AnqpInformationElement;->getElementId()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v2}, Landroid/net/wifi/AnqpInformationElement;->getPayload()[B

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    array-length v3, v3

    .line 257
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2}, Landroid/net/wifi/AnqpInformationElement;->getPayload()[B

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 265
    .line 266
    .line 267
    add-int/lit8 v1, v1, 0x1

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    .line 272
    .line 273
    :cond_8
    iget-boolean p2, p0, Landroid/net/wifi/ScanResult;->isCarrierAp:Z

    .line 274
    .line 275
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    .line 277
    .line 278
    iget p2, p0, Landroid/net/wifi/ScanResult;->carrierApEapType:I

    .line 279
    .line 280
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    .line 282
    .line 283
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->carrierName:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    return-void
.end method
