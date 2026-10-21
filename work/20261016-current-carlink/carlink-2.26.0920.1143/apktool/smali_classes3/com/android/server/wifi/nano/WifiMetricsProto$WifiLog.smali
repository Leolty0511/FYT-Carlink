.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiLog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;,
        Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;
    }
.end annotation


# static fields
.field public static final FAILURE_WIFI_DISABLED:I = 0x4

.field public static final SCAN_FAILURE_INTERRUPTED:I = 0x2

.field public static final SCAN_FAILURE_INVALID_CONFIGURATION:I = 0x3

.field public static final SCAN_SUCCESS:I = 0x1

.field public static final SCAN_UNKNOWN:I = 0x0

.field public static final WIFI_ASSOCIATED:I = 0x3

.field public static final WIFI_DISABLED:I = 0x1

.field public static final WIFI_DISCONNECTED:I = 0x2

.field public static final WIFI_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;


# instance fields
.field public alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

.field public availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

.field public backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

.field public connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

.field public connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

.field public fullBandAllSingleScanListenerResults:I

.field public isLocationEnabled:Z

.field public isScanningAlwaysEnabled:Z

.field public isWifiNetworksAvailableNotificationOn:Z

.field public numBackgroundScans:I

.field public numConnectivityWatchdogBackgroundBad:I

.field public numConnectivityWatchdogBackgroundGood:I

.field public numConnectivityWatchdogPnoBad:I

.field public numConnectivityWatchdogPnoGood:I

.field public numEmptyScanResults:I

.field public numEnterpriseNetworkScanResults:I

.field public numEnterpriseNetworks:I

.field public numHalCrashes:I

.field public numHiddenNetworkScanResults:I

.field public numHiddenNetworks:I

.field public numHotspot2R1NetworkScanResults:I

.field public numHotspot2R2NetworkScanResults:I

.field public numLastResortWatchdogAvailableNetworksTotal:I

.field public numLastResortWatchdogBadAssociationNetworksTotal:I

.field public numLastResortWatchdogBadAuthenticationNetworksTotal:I

.field public numLastResortWatchdogBadDhcpNetworksTotal:I

.field public numLastResortWatchdogBadOtherNetworksTotal:I

.field public numLastResortWatchdogSuccesses:I

.field public numLastResortWatchdogTriggers:I

.field public numLastResortWatchdogTriggersWithBadAssociation:I

.field public numLastResortWatchdogTriggersWithBadAuthentication:I

.field public numLastResortWatchdogTriggersWithBadDhcp:I

.field public numLastResortWatchdogTriggersWithBadOther:I

.field public numNetworksAddedByApps:I

.field public numNetworksAddedByUser:I

.field public numNonEmptyScanResults:I

.field public numOneshotScans:I

.field public numOpenNetworkConnectMessageFailedToSend:I

.field public numOpenNetworkRecommendationUpdates:I

.field public numOpenNetworkScanResults:I

.field public numOpenNetworks:I

.field public numPasspointNetworks:I

.field public numPasspointProviderInstallSuccess:I

.field public numPasspointProviderInstallation:I

.field public numPasspointProviderUninstallSuccess:I

.field public numPasspointProviderUninstallation:I

.field public numPasspointProviders:I

.field public numPasspointProvidersSuccessfullyConnected:I

.field public numPersonalNetworkScanResults:I

.field public numPersonalNetworks:I

.field public numSavedNetworks:I

.field public numScans:I

.field public numTotalScanResults:I

.field public numWifiOnFailureDueToHal:I

.field public numWifiOnFailureDueToWificond:I

.field public numWifiToggledViaAirplane:I

.field public numWifiToggledViaSettings:I

.field public numWificondCrashes:I

.field public openNetworkRecommenderBlacklistSize:I

.field public partialAllSingleScanListenerResults:I

.field public pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

.field public recordDurationSec:I

.field public rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

.field public rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

.field public scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

.field public softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

.field public softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

.field public staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

.field public totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

.field public wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

.field public wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

.field public wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    .line 14
    .line 15
    sput-object v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    .line 16
    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    .line 23
    .line 24
    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    return-object p0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    .line 9
    .line 10
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    .line 11
    .line 12
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    .line 13
    .line 14
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    .line 19
    .line 20
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    .line 21
    .line 22
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    .line 23
    .line 24
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    .line 25
    .line 26
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    .line 27
    .line 28
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    .line 29
    .line 30
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    .line 31
    .line 32
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    .line 33
    .line 34
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    .line 35
    .line 36
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 41
    .line 42
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 47
    .line 48
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 53
    .line 54
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 59
    .line 60
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    .line 61
    .line 62
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    .line 63
    .line 64
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    .line 65
    .line 66
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    .line 67
    .line 68
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    .line 69
    .line 70
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    .line 71
    .line 72
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    .line 73
    .line 74
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    .line 75
    .line 76
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    .line 77
    .line 78
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    .line 79
    .line 80
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    .line 81
    .line 82
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    .line 83
    .line 84
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    .line 85
    .line 86
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    .line 87
    .line 88
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    .line 89
    .line 90
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 95
    .line 96
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    .line 97
    .line 98
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    .line 99
    .line 100
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    .line 101
    .line 102
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    .line 103
    .line 104
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    .line 105
    .line 106
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    .line 107
    .line 108
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    .line 109
    .line 110
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    .line 111
    .line 112
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    .line 113
    .line 114
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    .line 115
    .line 116
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    .line 117
    .line 118
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 123
    .line 124
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    .line 129
    .line 130
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 135
    .line 136
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 141
    .line 142
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 147
    .line 148
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 153
    .line 154
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    .line 155
    .line 156
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    .line 157
    .line 158
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    .line 159
    .line 160
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    .line 161
    .line 162
    const/4 v1, 0x0

    .line 163
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 164
    .line 165
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    .line 166
    .line 167
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    .line 168
    .line 169
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    .line 170
    .line 171
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    .line 172
    .line 173
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    .line 174
    .line 175
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    .line 176
    .line 177
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 182
    .line 183
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 188
    .line 189
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 194
    .line 195
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 200
    .line 201
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 206
    .line 207
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 212
    .line 213
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 218
    .line 219
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 224
    .line 225
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 230
    .line 231
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 236
    .line 237
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    .line 238
    .line 239
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    .line 240
    .line 241
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 242
    .line 243
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 248
    .line 249
    invoke-static {}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;->emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    iput-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 254
    .line 255
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    .line 256
    .line 257
    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    .line 258
    .line 259
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    .line 260
    .line 261
    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    .line 262
    .line 263
    const/4 v0, -0x1

    .line 264
    iput v0, p0, Lcom/android/framework/protobuf/nano/MessageNano;->cachedSize:I

    .line 265
    .line 266
    return-object p0
.end method

.method public computeSerializedSize()I
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    if-lez v1, :cond_1

    .line 12
    .line 13
    move v1, v2

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    if-ge v1, v4, :cond_1

    .line 18
    .line 19
    aget-object v3, v3, v1

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    add-int/2addr v0, v3

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const/4 v3, 0x2

    .line 37
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    add-int/2addr v0, v1

    .line 42
    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    const/4 v3, 0x3

    .line 47
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    :cond_3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    .line 53
    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    const/4 v3, 0x4

    .line 57
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v0, v1

    .line 62
    :cond_4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    const/4 v3, 0x5

    .line 67
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    add-int/2addr v0, v1

    .line 72
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    .line 73
    .line 74
    if-eqz v1, :cond_6

    .line 75
    .line 76
    const/4 v3, 0x6

    .line 77
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    add-int/2addr v0, v1

    .line 82
    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    .line 83
    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    const/4 v3, 0x7

    .line 87
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v0, v1

    .line 92
    :cond_7
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    .line 93
    .line 94
    if-eqz v1, :cond_8

    .line 95
    .line 96
    const/16 v3, 0x8

    .line 97
    .line 98
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    add-int/2addr v0, v1

    .line 103
    :cond_8
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    .line 104
    .line 105
    if-eqz v1, :cond_9

    .line 106
    .line 107
    const/16 v3, 0x9

    .line 108
    .line 109
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    add-int/2addr v0, v1

    .line 114
    :cond_9
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    .line 115
    .line 116
    if-eqz v1, :cond_a

    .line 117
    .line 118
    const/16 v3, 0xa

    .line 119
    .line 120
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    add-int/2addr v0, v1

    .line 125
    :cond_a
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    .line 126
    .line 127
    if-eqz v1, :cond_b

    .line 128
    .line 129
    const/16 v3, 0xb

    .line 130
    .line 131
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    add-int/2addr v0, v1

    .line 136
    :cond_b
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    .line 137
    .line 138
    if-eqz v1, :cond_c

    .line 139
    .line 140
    const/16 v3, 0xc

    .line 141
    .line 142
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    add-int/2addr v0, v1

    .line 147
    :cond_c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    .line 148
    .line 149
    if-eqz v1, :cond_d

    .line 150
    .line 151
    const/16 v3, 0xd

    .line 152
    .line 153
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    add-int/2addr v0, v1

    .line 158
    :cond_d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    .line 159
    .line 160
    if-eqz v1, :cond_e

    .line 161
    .line 162
    const/16 v3, 0xe

    .line 163
    .line 164
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    add-int/2addr v0, v1

    .line 169
    :cond_e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    .line 170
    .line 171
    if-eqz v1, :cond_f

    .line 172
    .line 173
    const/16 v3, 0xf

    .line 174
    .line 175
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    add-int/2addr v0, v1

    .line 180
    :cond_f
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 181
    .line 182
    if-eqz v1, :cond_11

    .line 183
    .line 184
    array-length v1, v1

    .line 185
    if-lez v1, :cond_11

    .line 186
    .line 187
    move v1, v2

    .line 188
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 189
    .line 190
    array-length v4, v3

    .line 191
    if-ge v1, v4, :cond_11

    .line 192
    .line 193
    aget-object v3, v3, v1

    .line 194
    .line 195
    if-eqz v3, :cond_10

    .line 196
    .line 197
    const/16 v4, 0x10

    .line 198
    .line 199
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    add-int/2addr v3, v0

    .line 204
    move v0, v3

    .line 205
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_11
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 209
    .line 210
    if-eqz v1, :cond_13

    .line 211
    .line 212
    array-length v1, v1

    .line 213
    if-lez v1, :cond_13

    .line 214
    .line 215
    move v1, v2

    .line 216
    :goto_2
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 217
    .line 218
    array-length v4, v3

    .line 219
    if-ge v1, v4, :cond_13

    .line 220
    .line 221
    aget-object v3, v3, v1

    .line 222
    .line 223
    if-eqz v3, :cond_12

    .line 224
    .line 225
    const/16 v4, 0x11

    .line 226
    .line 227
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    add-int/2addr v3, v0

    .line 232
    move v0, v3

    .line 233
    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_13
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 237
    .line 238
    if-eqz v1, :cond_15

    .line 239
    .line 240
    array-length v1, v1

    .line 241
    if-lez v1, :cond_15

    .line 242
    .line 243
    move v1, v2

    .line 244
    :goto_3
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 245
    .line 246
    array-length v4, v3

    .line 247
    if-ge v1, v4, :cond_15

    .line 248
    .line 249
    aget-object v3, v3, v1

    .line 250
    .line 251
    if-eqz v3, :cond_14

    .line 252
    .line 253
    const/16 v4, 0x12

    .line 254
    .line 255
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    add-int/2addr v0, v3

    .line 260
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_15
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 264
    .line 265
    if-eqz v1, :cond_17

    .line 266
    .line 267
    array-length v1, v1

    .line 268
    if-lez v1, :cond_17

    .line 269
    .line 270
    move v1, v2

    .line 271
    :goto_4
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 272
    .line 273
    array-length v4, v3

    .line 274
    if-ge v1, v4, :cond_17

    .line 275
    .line 276
    aget-object v3, v3, v1

    .line 277
    .line 278
    if-eqz v3, :cond_16

    .line 279
    .line 280
    const/16 v4, 0x13

    .line 281
    .line 282
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    add-int/2addr v0, v3

    .line 287
    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 288
    .line 289
    goto :goto_4

    .line 290
    :cond_17
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    .line 291
    .line 292
    if-eqz v1, :cond_18

    .line 293
    .line 294
    const/16 v3, 0x14

    .line 295
    .line 296
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    add-int/2addr v0, v1

    .line 301
    :cond_18
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    .line 302
    .line 303
    if-eqz v1, :cond_19

    .line 304
    .line 305
    const/16 v3, 0x15

    .line 306
    .line 307
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    add-int/2addr v0, v1

    .line 312
    :cond_19
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    .line 313
    .line 314
    if-eqz v1, :cond_1a

    .line 315
    .line 316
    const/16 v3, 0x16

    .line 317
    .line 318
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    add-int/2addr v0, v1

    .line 323
    :cond_1a
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    .line 324
    .line 325
    if-eqz v1, :cond_1b

    .line 326
    .line 327
    const/16 v3, 0x17

    .line 328
    .line 329
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    add-int/2addr v0, v1

    .line 334
    :cond_1b
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    .line 335
    .line 336
    if-eqz v1, :cond_1c

    .line 337
    .line 338
    const/16 v3, 0x18

    .line 339
    .line 340
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    add-int/2addr v0, v1

    .line 345
    :cond_1c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    .line 346
    .line 347
    if-eqz v1, :cond_1d

    .line 348
    .line 349
    const/16 v3, 0x19

    .line 350
    .line 351
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    add-int/2addr v0, v1

    .line 356
    :cond_1d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    .line 357
    .line 358
    if-eqz v1, :cond_1e

    .line 359
    .line 360
    const/16 v3, 0x1a

    .line 361
    .line 362
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    add-int/2addr v0, v1

    .line 367
    :cond_1e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    .line 368
    .line 369
    if-eqz v1, :cond_1f

    .line 370
    .line 371
    const/16 v3, 0x1b

    .line 372
    .line 373
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 374
    .line 375
    .line 376
    move-result v1

    .line 377
    add-int/2addr v0, v1

    .line 378
    :cond_1f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    .line 379
    .line 380
    if-eqz v1, :cond_20

    .line 381
    .line 382
    const/16 v3, 0x1c

    .line 383
    .line 384
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    add-int/2addr v0, v1

    .line 389
    :cond_20
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    .line 390
    .line 391
    if-eqz v1, :cond_21

    .line 392
    .line 393
    const/16 v3, 0x1d

    .line 394
    .line 395
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    add-int/2addr v0, v1

    .line 400
    :cond_21
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    .line 401
    .line 402
    if-eqz v1, :cond_22

    .line 403
    .line 404
    const/16 v3, 0x1e

    .line 405
    .line 406
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    add-int/2addr v0, v1

    .line 411
    :cond_22
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    .line 412
    .line 413
    if-eqz v1, :cond_23

    .line 414
    .line 415
    const/16 v3, 0x1f

    .line 416
    .line 417
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    add-int/2addr v0, v1

    .line 422
    :cond_23
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    .line 423
    .line 424
    if-eqz v1, :cond_24

    .line 425
    .line 426
    const/16 v3, 0x20

    .line 427
    .line 428
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    add-int/2addr v0, v1

    .line 433
    :cond_24
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    .line 434
    .line 435
    if-eqz v1, :cond_25

    .line 436
    .line 437
    const/16 v3, 0x21

    .line 438
    .line 439
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    add-int/2addr v0, v1

    .line 444
    :cond_25
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    .line 445
    .line 446
    if-eqz v1, :cond_26

    .line 447
    .line 448
    const/16 v3, 0x22

    .line 449
    .line 450
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    add-int/2addr v0, v1

    .line 455
    :cond_26
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 456
    .line 457
    if-eqz v1, :cond_28

    .line 458
    .line 459
    array-length v1, v1

    .line 460
    if-lez v1, :cond_28

    .line 461
    .line 462
    move v1, v2

    .line 463
    :goto_5
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 464
    .line 465
    array-length v4, v3

    .line 466
    if-ge v1, v4, :cond_28

    .line 467
    .line 468
    aget-object v3, v3, v1

    .line 469
    .line 470
    if-eqz v3, :cond_27

    .line 471
    .line 472
    const/16 v4, 0x23

    .line 473
    .line 474
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    add-int/2addr v0, v3

    .line 479
    :cond_27
    add-int/lit8 v1, v1, 0x1

    .line 480
    .line 481
    goto :goto_5

    .line 482
    :cond_28
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    .line 483
    .line 484
    if-eqz v1, :cond_29

    .line 485
    .line 486
    const/16 v3, 0x24

    .line 487
    .line 488
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    add-int/2addr v0, v1

    .line 493
    :cond_29
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    .line 494
    .line 495
    if-eqz v1, :cond_2a

    .line 496
    .line 497
    const/16 v3, 0x25

    .line 498
    .line 499
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    add-int/2addr v0, v1

    .line 504
    :cond_2a
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    .line 505
    .line 506
    if-eqz v1, :cond_2b

    .line 507
    .line 508
    const/16 v3, 0x26

    .line 509
    .line 510
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    add-int/2addr v0, v1

    .line 515
    :cond_2b
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    .line 516
    .line 517
    if-eqz v1, :cond_2c

    .line 518
    .line 519
    const/16 v3, 0x27

    .line 520
    .line 521
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    add-int/2addr v0, v1

    .line 526
    :cond_2c
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    .line 527
    .line 528
    if-eqz v1, :cond_2d

    .line 529
    .line 530
    const/16 v3, 0x28

    .line 531
    .line 532
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 533
    .line 534
    .line 535
    move-result v1

    .line 536
    add-int/2addr v0, v1

    .line 537
    :cond_2d
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    .line 538
    .line 539
    if-eqz v1, :cond_2e

    .line 540
    .line 541
    const/16 v3, 0x29

    .line 542
    .line 543
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    add-int/2addr v0, v1

    .line 548
    :cond_2e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    .line 549
    .line 550
    if-eqz v1, :cond_2f

    .line 551
    .line 552
    const/16 v3, 0x2a

    .line 553
    .line 554
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    add-int/2addr v0, v1

    .line 559
    :cond_2f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    .line 560
    .line 561
    if-eqz v1, :cond_30

    .line 562
    .line 563
    const/16 v3, 0x2b

    .line 564
    .line 565
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    add-int/2addr v0, v1

    .line 570
    :cond_30
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    .line 571
    .line 572
    if-eqz v1, :cond_31

    .line 573
    .line 574
    const/16 v3, 0x2c

    .line 575
    .line 576
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 577
    .line 578
    .line 579
    move-result v1

    .line 580
    add-int/2addr v0, v1

    .line 581
    :cond_31
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    .line 582
    .line 583
    if-eqz v1, :cond_32

    .line 584
    .line 585
    const/16 v3, 0x2d

    .line 586
    .line 587
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 588
    .line 589
    .line 590
    move-result v1

    .line 591
    add-int/2addr v0, v1

    .line 592
    :cond_32
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    .line 593
    .line 594
    if-eqz v1, :cond_33

    .line 595
    .line 596
    const/16 v3, 0x2e

    .line 597
    .line 598
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 599
    .line 600
    .line 601
    move-result v1

    .line 602
    add-int/2addr v0, v1

    .line 603
    :cond_33
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 604
    .line 605
    if-eqz v1, :cond_35

    .line 606
    .line 607
    array-length v1, v1

    .line 608
    if-lez v1, :cond_35

    .line 609
    .line 610
    move v1, v2

    .line 611
    :goto_6
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 612
    .line 613
    array-length v4, v3

    .line 614
    if-ge v1, v4, :cond_35

    .line 615
    .line 616
    aget-object v3, v3, v1

    .line 617
    .line 618
    if-eqz v3, :cond_34

    .line 619
    .line 620
    const/16 v4, 0x2f

    .line 621
    .line 622
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 623
    .line 624
    .line 625
    move-result v3

    .line 626
    add-int/2addr v3, v0

    .line 627
    move v0, v3

    .line 628
    :cond_34
    add-int/lit8 v1, v1, 0x1

    .line 629
    .line 630
    goto :goto_6

    .line 631
    :cond_35
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    .line 632
    .line 633
    if-eqz v1, :cond_37

    .line 634
    .line 635
    array-length v1, v1

    .line 636
    if-lez v1, :cond_37

    .line 637
    .line 638
    move v1, v2

    .line 639
    :goto_7
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    .line 640
    .line 641
    array-length v4, v3

    .line 642
    if-ge v1, v4, :cond_37

    .line 643
    .line 644
    aget-object v3, v3, v1

    .line 645
    .line 646
    if-eqz v3, :cond_36

    .line 647
    .line 648
    const/16 v4, 0x30

    .line 649
    .line 650
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 651
    .line 652
    .line 653
    move-result v3

    .line 654
    add-int/2addr v3, v0

    .line 655
    move v0, v3

    .line 656
    :cond_36
    add-int/lit8 v1, v1, 0x1

    .line 657
    .line 658
    goto :goto_7

    .line 659
    :cond_37
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 660
    .line 661
    if-eqz v1, :cond_39

    .line 662
    .line 663
    array-length v1, v1

    .line 664
    if-lez v1, :cond_39

    .line 665
    .line 666
    move v1, v2

    .line 667
    :goto_8
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 668
    .line 669
    array-length v4, v3

    .line 670
    if-ge v1, v4, :cond_39

    .line 671
    .line 672
    aget-object v3, v3, v1

    .line 673
    .line 674
    if-eqz v3, :cond_38

    .line 675
    .line 676
    const/16 v4, 0x31

    .line 677
    .line 678
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 679
    .line 680
    .line 681
    move-result v3

    .line 682
    add-int/2addr v3, v0

    .line 683
    move v0, v3

    .line 684
    :cond_38
    add-int/lit8 v1, v1, 0x1

    .line 685
    .line 686
    goto :goto_8

    .line 687
    :cond_39
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 688
    .line 689
    if-eqz v1, :cond_3b

    .line 690
    .line 691
    array-length v1, v1

    .line 692
    if-lez v1, :cond_3b

    .line 693
    .line 694
    move v1, v2

    .line 695
    :goto_9
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 696
    .line 697
    array-length v4, v3

    .line 698
    if-ge v1, v4, :cond_3b

    .line 699
    .line 700
    aget-object v3, v3, v1

    .line 701
    .line 702
    if-eqz v3, :cond_3a

    .line 703
    .line 704
    const/16 v4, 0x32

    .line 705
    .line 706
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 707
    .line 708
    .line 709
    move-result v3

    .line 710
    add-int/2addr v3, v0

    .line 711
    move v0, v3

    .line 712
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    .line 713
    .line 714
    goto :goto_9

    .line 715
    :cond_3b
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 716
    .line 717
    if-eqz v1, :cond_3d

    .line 718
    .line 719
    array-length v1, v1

    .line 720
    if-lez v1, :cond_3d

    .line 721
    .line 722
    move v1, v2

    .line 723
    :goto_a
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 724
    .line 725
    array-length v4, v3

    .line 726
    if-ge v1, v4, :cond_3d

    .line 727
    .line 728
    aget-object v3, v3, v1

    .line 729
    .line 730
    if-eqz v3, :cond_3c

    .line 731
    .line 732
    const/16 v4, 0x33

    .line 733
    .line 734
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 735
    .line 736
    .line 737
    move-result v3

    .line 738
    add-int/2addr v0, v3

    .line 739
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    .line 740
    .line 741
    goto :goto_a

    .line 742
    :cond_3d
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 743
    .line 744
    if-eqz v1, :cond_3f

    .line 745
    .line 746
    array-length v1, v1

    .line 747
    if-lez v1, :cond_3f

    .line 748
    .line 749
    move v1, v2

    .line 750
    :goto_b
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 751
    .line 752
    array-length v4, v3

    .line 753
    if-ge v1, v4, :cond_3f

    .line 754
    .line 755
    aget-object v3, v3, v1

    .line 756
    .line 757
    if-eqz v3, :cond_3e

    .line 758
    .line 759
    const/16 v4, 0x34

    .line 760
    .line 761
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 762
    .line 763
    .line 764
    move-result v3

    .line 765
    add-int/2addr v0, v3

    .line 766
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    .line 767
    .line 768
    goto :goto_b

    .line 769
    :cond_3f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    .line 770
    .line 771
    if-eqz v1, :cond_40

    .line 772
    .line 773
    const/16 v3, 0x35

    .line 774
    .line 775
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 776
    .line 777
    .line 778
    move-result v1

    .line 779
    add-int/2addr v0, v1

    .line 780
    :cond_40
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    .line 781
    .line 782
    if-eqz v1, :cond_41

    .line 783
    .line 784
    const/16 v3, 0x36

    .line 785
    .line 786
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 787
    .line 788
    .line 789
    move-result v1

    .line 790
    add-int/2addr v0, v1

    .line 791
    :cond_41
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    .line 792
    .line 793
    if-eqz v1, :cond_42

    .line 794
    .line 795
    const/16 v3, 0x37

    .line 796
    .line 797
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 798
    .line 799
    .line 800
    move-result v1

    .line 801
    add-int/2addr v0, v1

    .line 802
    :cond_42
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    .line 803
    .line 804
    if-eqz v1, :cond_43

    .line 805
    .line 806
    const/16 v3, 0x38

    .line 807
    .line 808
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 809
    .line 810
    .line 811
    move-result v1

    .line 812
    add-int/2addr v0, v1

    .line 813
    :cond_43
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 814
    .line 815
    if-eqz v1, :cond_44

    .line 816
    .line 817
    const/16 v3, 0x39

    .line 818
    .line 819
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 820
    .line 821
    .line 822
    move-result v1

    .line 823
    add-int/2addr v0, v1

    .line 824
    :cond_44
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    .line 825
    .line 826
    if-eqz v1, :cond_45

    .line 827
    .line 828
    const/16 v3, 0x3a

    .line 829
    .line 830
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 831
    .line 832
    .line 833
    move-result v1

    .line 834
    add-int/2addr v0, v1

    .line 835
    :cond_45
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    .line 836
    .line 837
    if-eqz v1, :cond_46

    .line 838
    .line 839
    const/16 v3, 0x3b

    .line 840
    .line 841
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 842
    .line 843
    .line 844
    move-result v1

    .line 845
    add-int/2addr v0, v1

    .line 846
    :cond_46
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    .line 847
    .line 848
    if-eqz v1, :cond_47

    .line 849
    .line 850
    const/16 v3, 0x3c

    .line 851
    .line 852
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 853
    .line 854
    .line 855
    move-result v1

    .line 856
    add-int/2addr v0, v1

    .line 857
    :cond_47
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    .line 858
    .line 859
    if-eqz v1, :cond_48

    .line 860
    .line 861
    const/16 v3, 0x3d

    .line 862
    .line 863
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 864
    .line 865
    .line 866
    move-result v1

    .line 867
    add-int/2addr v0, v1

    .line 868
    :cond_48
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    .line 869
    .line 870
    if-eqz v1, :cond_49

    .line 871
    .line 872
    const/16 v3, 0x3e

    .line 873
    .line 874
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 875
    .line 876
    .line 877
    move-result v1

    .line 878
    add-int/2addr v0, v1

    .line 879
    :cond_49
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    .line 880
    .line 881
    if-eqz v1, :cond_4a

    .line 882
    .line 883
    const/16 v3, 0x3f

    .line 884
    .line 885
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 886
    .line 887
    .line 888
    move-result v1

    .line 889
    add-int/2addr v0, v1

    .line 890
    :cond_4a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 891
    .line 892
    if-eqz v1, :cond_4c

    .line 893
    .line 894
    array-length v1, v1

    .line 895
    if-lez v1, :cond_4c

    .line 896
    .line 897
    move v1, v2

    .line 898
    :goto_c
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 899
    .line 900
    array-length v4, v3

    .line 901
    if-ge v1, v4, :cond_4c

    .line 902
    .line 903
    aget-object v3, v3, v1

    .line 904
    .line 905
    if-eqz v3, :cond_4b

    .line 906
    .line 907
    const/16 v4, 0x40

    .line 908
    .line 909
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 910
    .line 911
    .line 912
    move-result v3

    .line 913
    add-int/2addr v3, v0

    .line 914
    move v0, v3

    .line 915
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    .line 916
    .line 917
    goto :goto_c

    .line 918
    :cond_4c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 919
    .line 920
    if-eqz v1, :cond_4e

    .line 921
    .line 922
    array-length v1, v1

    .line 923
    if-lez v1, :cond_4e

    .line 924
    .line 925
    move v1, v2

    .line 926
    :goto_d
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 927
    .line 928
    array-length v4, v3

    .line 929
    if-ge v1, v4, :cond_4e

    .line 930
    .line 931
    aget-object v3, v3, v1

    .line 932
    .line 933
    if-eqz v3, :cond_4d

    .line 934
    .line 935
    const/16 v4, 0x41

    .line 936
    .line 937
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 938
    .line 939
    .line 940
    move-result v3

    .line 941
    add-int/2addr v3, v0

    .line 942
    move v0, v3

    .line 943
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    .line 944
    .line 945
    goto :goto_d

    .line 946
    :cond_4e
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 947
    .line 948
    if-eqz v1, :cond_50

    .line 949
    .line 950
    array-length v1, v1

    .line 951
    if-lez v1, :cond_50

    .line 952
    .line 953
    move v1, v2

    .line 954
    :goto_e
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 955
    .line 956
    array-length v4, v3

    .line 957
    if-ge v1, v4, :cond_50

    .line 958
    .line 959
    aget-object v3, v3, v1

    .line 960
    .line 961
    if-eqz v3, :cond_4f

    .line 962
    .line 963
    const/16 v4, 0x42

    .line 964
    .line 965
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 966
    .line 967
    .line 968
    move-result v3

    .line 969
    add-int/2addr v3, v0

    .line 970
    move v0, v3

    .line 971
    :cond_4f
    add-int/lit8 v1, v1, 0x1

    .line 972
    .line 973
    goto :goto_e

    .line 974
    :cond_50
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 975
    .line 976
    if-eqz v1, :cond_52

    .line 977
    .line 978
    array-length v1, v1

    .line 979
    if-lez v1, :cond_52

    .line 980
    .line 981
    move v1, v2

    .line 982
    :goto_f
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 983
    .line 984
    array-length v4, v3

    .line 985
    if-ge v1, v4, :cond_52

    .line 986
    .line 987
    aget-object v3, v3, v1

    .line 988
    .line 989
    if-eqz v3, :cond_51

    .line 990
    .line 991
    const/16 v4, 0x43

    .line 992
    .line 993
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 994
    .line 995
    .line 996
    move-result v3

    .line 997
    add-int/2addr v3, v0

    .line 998
    move v0, v3

    .line 999
    :cond_51
    add-int/lit8 v1, v1, 0x1

    .line 1000
    .line 1001
    goto :goto_f

    .line 1002
    :cond_52
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1003
    .line 1004
    if-eqz v1, :cond_54

    .line 1005
    .line 1006
    array-length v1, v1

    .line 1007
    if-lez v1, :cond_54

    .line 1008
    .line 1009
    move v1, v2

    .line 1010
    :goto_10
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1011
    .line 1012
    array-length v4, v3

    .line 1013
    if-ge v1, v4, :cond_54

    .line 1014
    .line 1015
    aget-object v3, v3, v1

    .line 1016
    .line 1017
    if-eqz v3, :cond_53

    .line 1018
    .line 1019
    const/16 v4, 0x44

    .line 1020
    .line 1021
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 1022
    .line 1023
    .line 1024
    move-result v3

    .line 1025
    add-int/2addr v3, v0

    .line 1026
    move v0, v3

    .line 1027
    :cond_53
    add-int/lit8 v1, v1, 0x1

    .line 1028
    .line 1029
    goto :goto_10

    .line 1030
    :cond_54
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1031
    .line 1032
    if-eqz v1, :cond_56

    .line 1033
    .line 1034
    array-length v1, v1

    .line 1035
    if-lez v1, :cond_56

    .line 1036
    .line 1037
    move v1, v2

    .line 1038
    :goto_11
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1039
    .line 1040
    array-length v4, v3

    .line 1041
    if-ge v1, v4, :cond_56

    .line 1042
    .line 1043
    aget-object v3, v3, v1

    .line 1044
    .line 1045
    if-eqz v3, :cond_55

    .line 1046
    .line 1047
    const/16 v4, 0x45

    .line 1048
    .line 1049
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 1050
    .line 1051
    .line 1052
    move-result v3

    .line 1053
    add-int/2addr v3, v0

    .line 1054
    move v0, v3

    .line 1055
    :cond_55
    add-int/lit8 v1, v1, 0x1

    .line 1056
    .line 1057
    goto :goto_11

    .line 1058
    :cond_56
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1059
    .line 1060
    if-eqz v1, :cond_58

    .line 1061
    .line 1062
    array-length v1, v1

    .line 1063
    if-lez v1, :cond_58

    .line 1064
    .line 1065
    move v1, v2

    .line 1066
    :goto_12
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1067
    .line 1068
    array-length v4, v3

    .line 1069
    if-ge v1, v4, :cond_58

    .line 1070
    .line 1071
    aget-object v3, v3, v1

    .line 1072
    .line 1073
    if-eqz v3, :cond_57

    .line 1074
    .line 1075
    const/16 v4, 0x46

    .line 1076
    .line 1077
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 1078
    .line 1079
    .line 1080
    move-result v3

    .line 1081
    add-int/2addr v3, v0

    .line 1082
    move v0, v3

    .line 1083
    :cond_57
    add-int/lit8 v1, v1, 0x1

    .line 1084
    .line 1085
    goto :goto_12

    .line 1086
    :cond_58
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1087
    .line 1088
    if-eqz v1, :cond_5a

    .line 1089
    .line 1090
    array-length v1, v1

    .line 1091
    if-lez v1, :cond_5a

    .line 1092
    .line 1093
    move v1, v2

    .line 1094
    :goto_13
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1095
    .line 1096
    array-length v4, v3

    .line 1097
    if-ge v1, v4, :cond_5a

    .line 1098
    .line 1099
    aget-object v3, v3, v1

    .line 1100
    .line 1101
    if-eqz v3, :cond_59

    .line 1102
    .line 1103
    const/16 v4, 0x47

    .line 1104
    .line 1105
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 1106
    .line 1107
    .line 1108
    move-result v3

    .line 1109
    add-int/2addr v3, v0

    .line 1110
    move v0, v3

    .line 1111
    :cond_59
    add-int/lit8 v1, v1, 0x1

    .line 1112
    .line 1113
    goto :goto_13

    .line 1114
    :cond_5a
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1115
    .line 1116
    if-eqz v1, :cond_5c

    .line 1117
    .line 1118
    array-length v1, v1

    .line 1119
    if-lez v1, :cond_5c

    .line 1120
    .line 1121
    move v1, v2

    .line 1122
    :goto_14
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1123
    .line 1124
    array-length v4, v3

    .line 1125
    if-ge v1, v4, :cond_5c

    .line 1126
    .line 1127
    aget-object v3, v3, v1

    .line 1128
    .line 1129
    if-eqz v3, :cond_5b

    .line 1130
    .line 1131
    const/16 v4, 0x48

    .line 1132
    .line 1133
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 1134
    .line 1135
    .line 1136
    move-result v3

    .line 1137
    add-int/2addr v0, v3

    .line 1138
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    .line 1139
    .line 1140
    goto :goto_14

    .line 1141
    :cond_5c
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1142
    .line 1143
    if-eqz v1, :cond_5e

    .line 1144
    .line 1145
    array-length v1, v1

    .line 1146
    if-lez v1, :cond_5e

    .line 1147
    .line 1148
    move v1, v2

    .line 1149
    :goto_15
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 1150
    .line 1151
    array-length v4, v3

    .line 1152
    if-ge v1, v4, :cond_5e

    .line 1153
    .line 1154
    aget-object v3, v3, v1

    .line 1155
    .line 1156
    if-eqz v3, :cond_5d

    .line 1157
    .line 1158
    const/16 v4, 0x49

    .line 1159
    .line 1160
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 1161
    .line 1162
    .line 1163
    move-result v3

    .line 1164
    add-int/2addr v0, v3

    .line 1165
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    .line 1166
    .line 1167
    goto :goto_15

    .line 1168
    :cond_5e
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    .line 1169
    .line 1170
    if-eqz v1, :cond_5f

    .line 1171
    .line 1172
    const/16 v3, 0x4a

    .line 1173
    .line 1174
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 1175
    .line 1176
    .line 1177
    move-result v1

    .line 1178
    add-int/2addr v0, v1

    .line 1179
    :cond_5f
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    .line 1180
    .line 1181
    if-eqz v1, :cond_60

    .line 1182
    .line 1183
    const/16 v3, 0x4b

    .line 1184
    .line 1185
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 1186
    .line 1187
    .line 1188
    move-result v1

    .line 1189
    add-int/2addr v0, v1

    .line 1190
    :cond_60
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 1191
    .line 1192
    if-eqz v1, :cond_61

    .line 1193
    .line 1194
    const/16 v3, 0x4c

    .line 1195
    .line 1196
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 1197
    .line 1198
    .line 1199
    move-result v1

    .line 1200
    add-int/2addr v0, v1

    .line 1201
    :cond_61
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 1202
    .line 1203
    if-eqz v1, :cond_63

    .line 1204
    .line 1205
    array-length v1, v1

    .line 1206
    if-lez v1, :cond_63

    .line 1207
    .line 1208
    move v1, v2

    .line 1209
    :goto_16
    iget-object v3, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 1210
    .line 1211
    array-length v4, v3

    .line 1212
    if-ge v1, v4, :cond_63

    .line 1213
    .line 1214
    aget-object v3, v3, v1

    .line 1215
    .line 1216
    if-eqz v3, :cond_62

    .line 1217
    .line 1218
    const/16 v4, 0x4d

    .line 1219
    .line 1220
    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 1221
    .line 1222
    .line 1223
    move-result v3

    .line 1224
    add-int/2addr v0, v3

    .line 1225
    :cond_62
    add-int/lit8 v1, v1, 0x1

    .line 1226
    .line 1227
    goto :goto_16

    .line 1228
    :cond_63
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 1229
    .line 1230
    if-eqz v1, :cond_65

    .line 1231
    .line 1232
    array-length v1, v1

    .line 1233
    if-lez v1, :cond_65

    .line 1234
    .line 1235
    :goto_17
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 1236
    .line 1237
    array-length v3, v1

    .line 1238
    if-ge v2, v3, :cond_65

    .line 1239
    .line 1240
    aget-object v1, v1, v2

    .line 1241
    .line 1242
    if-eqz v1, :cond_64

    .line 1243
    .line 1244
    const/16 v3, 0x4e

    .line 1245
    .line 1246
    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    .line 1247
    .line 1248
    .line 1249
    move-result v1

    .line 1250
    add-int/2addr v0, v1

    .line 1251
    :cond_64
    add-int/lit8 v2, v2, 0x1

    .line 1252
    .line 1253
    goto :goto_17

    .line 1254
    :cond_65
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    .line 1255
    .line 1256
    if-eqz v1, :cond_66

    .line 1257
    .line 1258
    const/16 v2, 0x4f

    .line 1259
    .line 1260
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 1261
    .line 1262
    .line 1263
    move-result v1

    .line 1264
    add-int/2addr v0, v1

    .line 1265
    :cond_66
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    .line 1266
    .line 1267
    if-eqz v1, :cond_67

    .line 1268
    .line 1269
    const/16 v2, 0x50

    .line 1270
    .line 1271
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 1272
    .line 1273
    .line 1274
    move-result v1

    .line 1275
    add-int/2addr v0, v1

    .line 1276
    :cond_67
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    .line 1277
    .line 1278
    if-eqz v1, :cond_68

    .line 1279
    .line 1280
    const/16 v2, 0x51

    .line 1281
    .line 1282
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 1283
    .line 1284
    .line 1285
    move-result v1

    .line 1286
    add-int/2addr v0, v1

    .line 1287
    :cond_68
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    .line 1288
    .line 1289
    if-eqz v1, :cond_69

    .line 1290
    .line 1291
    const/16 v2, 0x52

    .line 1292
    .line 1293
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 1294
    .line 1295
    .line 1296
    move-result v1

    .line 1297
    add-int/2addr v0, v1

    .line 1298
    :cond_69
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;
    .locals 5

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 3
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 4
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    goto :goto_0

    .line 5
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    goto :goto_0

    .line 6
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    goto :goto_0

    .line 7
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x272

    .line 8
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 9
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-nez v2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    array-length v3, v2

    :goto_1
    add-int/2addr v0, v3

    .line 10
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v3, :cond_2

    .line 11
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3

    .line 12
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v1, v4, v3

    .line 13
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 14
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 15
    :cond_3
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v0, v4, v3

    .line 16
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 17
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x26a

    .line 18
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 19
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-nez v2, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    array-length v3, v2

    :goto_3
    add-int/2addr v0, v3

    .line 20
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    if-eqz v3, :cond_5

    .line 21
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_6

    .line 22
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v1, v4, v3

    .line 23
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 24
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 25
    :cond_6
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;-><init>()V

    aput-object v0, v4, v3

    .line 26
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 27
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    goto/16 :goto_0

    .line 28
    :sswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    if-nez v0, :cond_7

    .line 29
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 30
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 31
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    goto/16 :goto_0

    .line 32
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0x24a

    .line 33
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 34
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v2, :cond_8

    move v3, v1

    goto :goto_5

    :cond_8
    array-length v3, v2

    :goto_5
    add-int/2addr v0, v3

    .line 35
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_9

    .line 36
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_a

    .line 37
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 38
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 39
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 40
    :cond_a
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v0, v4, v3

    .line 41
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 42
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x242

    .line 43
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 44
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v2, :cond_b

    move v3, v1

    goto :goto_7

    :cond_b
    array-length v3, v2

    :goto_7
    add-int/2addr v0, v3

    .line 45
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_c

    .line 46
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_8
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_d

    .line 47
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 48
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 49
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 50
    :cond_d
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v0, v4, v3

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 52
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_b
    const/16 v0, 0x23a

    .line 53
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 54
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v2, :cond_e

    move v3, v1

    goto :goto_9

    :cond_e
    array-length v3, v2

    :goto_9
    add-int/2addr v0, v3

    .line 55
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_f

    .line 56
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_f
    :goto_a
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_10

    .line 57
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 58
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 59
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 60
    :cond_10
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v0, v4, v3

    .line 61
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 62
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x232

    .line 63
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 64
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v2, :cond_11

    move v3, v1

    goto :goto_b

    :cond_11
    array-length v3, v2

    :goto_b
    add-int/2addr v0, v3

    .line 65
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_12

    .line 66
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    :goto_c
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_13

    .line 67
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 68
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 69
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 70
    :cond_13
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v0, v4, v3

    .line 71
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 72
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0x22a

    .line 73
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 74
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v2, :cond_14

    move v3, v1

    goto :goto_d

    :cond_14
    array-length v3, v2

    :goto_d
    add-int/2addr v0, v3

    .line 75
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_15

    .line 76
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    :goto_e
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_16

    .line 77
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 78
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 79
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 80
    :cond_16
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v0, v4, v3

    .line 81
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 82
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x222

    .line 83
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 84
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v2, :cond_17

    move v3, v1

    goto :goto_f

    :cond_17
    array-length v3, v2

    :goto_f
    add-int/2addr v0, v3

    .line 85
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_18

    .line 86
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_18
    :goto_10
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_19

    .line 87
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 88
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 89
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 90
    :cond_19
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v0, v4, v3

    .line 91
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 92
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x21a

    .line 93
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 94
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v2, :cond_1a

    move v3, v1

    goto :goto_11

    :cond_1a
    array-length v3, v2

    :goto_11
    add-int/2addr v0, v3

    .line 95
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_1b

    .line 96
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b
    :goto_12
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_1c

    .line 97
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 98
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 99
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 100
    :cond_1c
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v0, v4, v3

    .line 101
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 102
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0x212

    .line 103
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 104
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v2, :cond_1d

    move v3, v1

    goto :goto_13

    :cond_1d
    array-length v3, v2

    :goto_13
    add-int/2addr v0, v3

    .line 105
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_1e

    .line 106
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    :goto_14
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_1f

    .line 107
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 108
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 109
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 110
    :cond_1f
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v0, v4, v3

    .line 111
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 112
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0x20a

    .line 113
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 114
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v2, :cond_20

    move v3, v1

    goto :goto_15

    :cond_20
    array-length v3, v2

    :goto_15
    add-int/2addr v0, v3

    .line 115
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_21

    .line 116
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_21
    :goto_16
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_22

    .line 117
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 118
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 119
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 120
    :cond_22
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v0, v4, v3

    .line 121
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 122
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0x202

    .line 123
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 124
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-nez v2, :cond_23

    move v3, v1

    goto :goto_17

    :cond_23
    array-length v3, v2

    :goto_17
    add-int/2addr v0, v3

    .line 125
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    if-eqz v3, :cond_24

    .line 126
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_24
    :goto_18
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_25

    .line 127
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v1, v4, v3

    .line 128
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 129
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 130
    :cond_25
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;-><init>()V

    aput-object v0, v4, v3

    .line 131
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 132
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    goto/16 :goto_0

    .line 133
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    goto/16 :goto_0

    .line 134
    :sswitch_14
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    goto/16 :goto_0

    .line 135
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    goto/16 :goto_0

    .line 136
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    goto/16 :goto_0

    .line 137
    :sswitch_17
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    goto/16 :goto_0

    .line 138
    :sswitch_18
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    goto/16 :goto_0

    .line 139
    :sswitch_19
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    if-nez v0, :cond_26

    .line 140
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 141
    :cond_26
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 142
    :sswitch_1a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    goto/16 :goto_0

    .line 143
    :sswitch_1b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    goto/16 :goto_0

    .line 144
    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    goto/16 :goto_0

    .line 145
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    goto/16 :goto_0

    :sswitch_1e
    const/16 v0, 0x1a2

    .line 146
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 147
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-nez v2, :cond_27

    move v3, v1

    goto :goto_19

    :cond_27
    array-length v3, v2

    :goto_19
    add-int/2addr v0, v3

    .line 148
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    if-eqz v3, :cond_28

    .line 149
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_28
    :goto_1a
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_29

    .line 150
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    aput-object v1, v4, v3

    .line 151
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 152
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 153
    :cond_29
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;-><init>()V

    aput-object v0, v4, v3

    .line 154
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 155
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    goto/16 :goto_0

    :sswitch_1f
    const/16 v0, 0x19a

    .line 156
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 157
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-nez v2, :cond_2a

    move v3, v1

    goto :goto_1b

    :cond_2a
    array-length v3, v2

    :goto_1b
    add-int/2addr v0, v3

    .line 158
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v3, :cond_2b

    .line 159
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2b
    :goto_1c
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_2c

    .line 160
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v1, v4, v3

    .line 161
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 162
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 163
    :cond_2c
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v0, v4, v3

    .line 164
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 165
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    goto/16 :goto_0

    :sswitch_20
    const/16 v0, 0x192

    .line 166
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 167
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-nez v2, :cond_2d

    move v3, v1

    goto :goto_1d

    :cond_2d
    array-length v3, v2

    :goto_1d
    add-int/2addr v0, v3

    .line 168
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-eqz v3, :cond_2e

    .line 169
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2e
    :goto_1e
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_2f

    .line 170
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    aput-object v1, v4, v3

    .line 171
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 172
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 173
    :cond_2f
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    aput-object v0, v4, v3

    .line 174
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 175
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    goto/16 :goto_0

    :sswitch_21
    const/16 v0, 0x18a

    .line 176
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 177
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-nez v2, :cond_30

    move v3, v1

    goto :goto_1f

    :cond_30
    array-length v3, v2

    :goto_1f
    add-int/2addr v0, v3

    .line 178
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    if-eqz v3, :cond_31

    .line 179
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_31
    :goto_20
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_32

    .line 180
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    aput-object v1, v4, v3

    .line 181
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 182
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 183
    :cond_32
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;-><init>()V

    aput-object v0, v4, v3

    .line 184
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 185
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    goto/16 :goto_0

    :sswitch_22
    const/16 v0, 0x182

    .line 186
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 187
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-nez v2, :cond_33

    move v3, v1

    goto :goto_21

    :cond_33
    array-length v3, v2

    :goto_21
    add-int/2addr v0, v3

    .line 188
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    if-eqz v3, :cond_34

    .line 189
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_34
    :goto_22
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_35

    .line 190
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v1, v4, v3

    .line 191
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 192
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 193
    :cond_35
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;-><init>()V

    aput-object v0, v4, v3

    .line 194
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 195
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    goto/16 :goto_0

    :sswitch_23
    const/16 v0, 0x17a

    .line 196
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 197
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-nez v2, :cond_36

    move v3, v1

    goto :goto_23

    :cond_36
    array-length v3, v2

    :goto_23
    add-int/2addr v0, v3

    .line 198
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    if-eqz v3, :cond_37

    .line 199
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_37
    :goto_24
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_38

    .line 200
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v1, v4, v3

    .line 201
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 202
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 203
    :cond_38
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;-><init>()V

    aput-object v0, v4, v3

    .line 204
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 205
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    goto/16 :goto_0

    .line 206
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    goto/16 :goto_0

    .line 207
    :sswitch_25
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    goto/16 :goto_0

    .line 208
    :sswitch_26
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    goto/16 :goto_0

    .line 209
    :sswitch_27
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    goto/16 :goto_0

    .line 210
    :sswitch_28
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    goto/16 :goto_0

    .line 211
    :sswitch_29
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    goto/16 :goto_0

    .line 212
    :sswitch_2a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    goto/16 :goto_0

    .line 213
    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    goto/16 :goto_0

    .line 214
    :sswitch_2c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    goto/16 :goto_0

    .line 215
    :sswitch_2d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    goto/16 :goto_0

    .line 216
    :sswitch_2e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    goto/16 :goto_0

    :sswitch_2f
    const/16 v0, 0x11a

    .line 217
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 218
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-nez v2, :cond_39

    move v3, v1

    goto :goto_25

    :cond_39
    array-length v3, v2

    :goto_25
    add-int/2addr v0, v3

    .line 219
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    if-eqz v3, :cond_3a

    .line 220
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3a
    :goto_26
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3b

    .line 221
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v1, v4, v3

    .line 222
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 223
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 224
    :cond_3b
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;-><init>()V

    aput-object v0, v4, v3

    .line 225
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 226
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    goto/16 :goto_0

    .line 227
    :sswitch_30
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    goto/16 :goto_0

    .line 228
    :sswitch_31
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    goto/16 :goto_0

    .line 229
    :sswitch_32
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    goto/16 :goto_0

    .line 230
    :sswitch_33
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    goto/16 :goto_0

    .line 231
    :sswitch_34
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    goto/16 :goto_0

    .line 232
    :sswitch_35
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    goto/16 :goto_0

    .line 233
    :sswitch_36
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    goto/16 :goto_0

    .line 234
    :sswitch_37
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    goto/16 :goto_0

    .line 235
    :sswitch_38
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    goto/16 :goto_0

    .line 236
    :sswitch_39
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    goto/16 :goto_0

    .line 237
    :sswitch_3a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    goto/16 :goto_0

    .line 238
    :sswitch_3b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    goto/16 :goto_0

    .line 239
    :sswitch_3c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    goto/16 :goto_0

    .line 240
    :sswitch_3d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    goto/16 :goto_0

    .line 241
    :sswitch_3e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    goto/16 :goto_0

    :sswitch_3f
    const/16 v0, 0x9a

    .line 242
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 243
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-nez v2, :cond_3c

    move v3, v1

    goto :goto_27

    :cond_3c
    array-length v3, v2

    :goto_27
    add-int/2addr v0, v3

    .line 244
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v3, :cond_3d

    .line 245
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3d
    :goto_28
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3e

    .line 246
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v1, v4, v3

    .line 247
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 248
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 249
    :cond_3e
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v0, v4, v3

    .line 250
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 251
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    goto/16 :goto_0

    :sswitch_40
    const/16 v0, 0x92

    .line 252
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 253
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-nez v2, :cond_3f

    move v3, v1

    goto :goto_29

    :cond_3f
    array-length v3, v2

    :goto_29
    add-int/2addr v0, v3

    .line 254
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v3, :cond_40

    .line 255
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_40
    :goto_2a
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_41

    .line 256
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v1, v4, v3

    .line 257
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 258
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 259
    :cond_41
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v0, v4, v3

    .line 260
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 261
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    goto/16 :goto_0

    :sswitch_41
    const/16 v0, 0x8a

    .line 262
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 263
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-nez v2, :cond_42

    move v3, v1

    goto :goto_2b

    :cond_42
    array-length v3, v2

    :goto_2b
    add-int/2addr v0, v3

    .line 264
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    if-eqz v3, :cond_43

    .line 265
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_43
    :goto_2c
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_44

    .line 266
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v1, v4, v3

    .line 267
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 268
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 269
    :cond_44
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;-><init>()V

    aput-object v0, v4, v3

    .line 270
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 271
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    goto/16 :goto_0

    :sswitch_42
    const/16 v0, 0x82

    .line 272
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 273
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-nez v2, :cond_45

    move v3, v1

    goto :goto_2d

    :cond_45
    array-length v3, v2

    :goto_2d
    add-int/2addr v0, v3

    .line 274
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    if-eqz v3, :cond_46

    .line 275
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    :goto_2e
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_47

    .line 276
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v1, v4, v3

    .line 277
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 278
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 279
    :cond_47
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;-><init>()V

    aput-object v0, v4, v3

    .line 280
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 281
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    goto/16 :goto_0

    .line 282
    :sswitch_43
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    goto/16 :goto_0

    .line 283
    :sswitch_44
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    goto/16 :goto_0

    .line 284
    :sswitch_45
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    goto/16 :goto_0

    .line 285
    :sswitch_46
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    goto/16 :goto_0

    .line 286
    :sswitch_47
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    goto/16 :goto_0

    .line 287
    :sswitch_48
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    goto/16 :goto_0

    .line 288
    :sswitch_49
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    goto/16 :goto_0

    .line 289
    :sswitch_4a
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    goto/16 :goto_0

    .line 290
    :sswitch_4b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    goto/16 :goto_0

    .line 291
    :sswitch_4c
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    goto/16 :goto_0

    .line 292
    :sswitch_4d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    goto/16 :goto_0

    .line 293
    :sswitch_4e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    goto/16 :goto_0

    .line 294
    :sswitch_4f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    goto/16 :goto_0

    .line 295
    :sswitch_50
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    goto/16 :goto_0

    :sswitch_51
    const/16 v0, 0xa

    .line 296
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 297
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-nez v2, :cond_48

    move v3, v1

    goto :goto_2f

    :cond_48
    array-length v3, v2

    :goto_2f
    add-int/2addr v0, v3

    .line 298
    new-array v4, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-eqz v3, :cond_49

    .line 299
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_49
    :goto_30
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4a

    .line 300
    new-instance v1, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v1, v4, v3

    .line 301
    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 302
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 303
    :cond_4a
    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    aput-object v0, v4, v3

    .line 304
    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 305
    iput-object v4, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    goto/16 :goto_0

    :sswitch_52
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_52
        0xa -> :sswitch_51
        0x10 -> :sswitch_50
        0x18 -> :sswitch_4f
        0x20 -> :sswitch_4e
        0x28 -> :sswitch_4d
        0x30 -> :sswitch_4c
        0x38 -> :sswitch_4b
        0x40 -> :sswitch_4a
        0x48 -> :sswitch_49
        0x50 -> :sswitch_48
        0x58 -> :sswitch_47
        0x60 -> :sswitch_46
        0x68 -> :sswitch_45
        0x70 -> :sswitch_44
        0x78 -> :sswitch_43
        0x82 -> :sswitch_42
        0x8a -> :sswitch_41
        0x92 -> :sswitch_40
        0x9a -> :sswitch_3f
        0xa0 -> :sswitch_3e
        0xa8 -> :sswitch_3d
        0xb0 -> :sswitch_3c
        0xb8 -> :sswitch_3b
        0xc0 -> :sswitch_3a
        0xc8 -> :sswitch_39
        0xd0 -> :sswitch_38
        0xd8 -> :sswitch_37
        0xe0 -> :sswitch_36
        0xe8 -> :sswitch_35
        0xf0 -> :sswitch_34
        0xf8 -> :sswitch_33
        0x100 -> :sswitch_32
        0x108 -> :sswitch_31
        0x110 -> :sswitch_30
        0x11a -> :sswitch_2f
        0x120 -> :sswitch_2e
        0x128 -> :sswitch_2d
        0x130 -> :sswitch_2c
        0x138 -> :sswitch_2b
        0x140 -> :sswitch_2a
        0x148 -> :sswitch_29
        0x150 -> :sswitch_28
        0x158 -> :sswitch_27
        0x160 -> :sswitch_26
        0x168 -> :sswitch_25
        0x170 -> :sswitch_24
        0x17a -> :sswitch_23
        0x182 -> :sswitch_22
        0x18a -> :sswitch_21
        0x192 -> :sswitch_20
        0x19a -> :sswitch_1f
        0x1a2 -> :sswitch_1e
        0x1a8 -> :sswitch_1d
        0x1b0 -> :sswitch_1c
        0x1b8 -> :sswitch_1b
        0x1c0 -> :sswitch_1a
        0x1ca -> :sswitch_19
        0x1d0 -> :sswitch_18
        0x1d8 -> :sswitch_17
        0x1e0 -> :sswitch_16
        0x1e8 -> :sswitch_15
        0x1f0 -> :sswitch_14
        0x1f8 -> :sswitch_13
        0x202 -> :sswitch_12
        0x20a -> :sswitch_11
        0x212 -> :sswitch_10
        0x21a -> :sswitch_f
        0x222 -> :sswitch_e
        0x22a -> :sswitch_d
        0x232 -> :sswitch_c
        0x23a -> :sswitch_b
        0x242 -> :sswitch_a
        0x24a -> :sswitch_9
        0x250 -> :sswitch_8
        0x258 -> :sswitch_7
        0x262 -> :sswitch_6
        0x26a -> :sswitch_5
        0x272 -> :sswitch_4
        0x278 -> :sswitch_3
        0x280 -> :sswitch_2
        0x288 -> :sswitch_1
        0x290 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    move v0, v1

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectionEvent:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    if-ge v0, v3, :cond_1

    .line 14
    .line 15
    aget-object v2, v2, v0

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numSavedNetworks:I

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    const/4 v2, 0x2

    .line 31
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworks:I

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 40
    .line 41
    .line 42
    :cond_3
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworks:I

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 48
    .line 49
    .line 50
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworks:I

    .line 51
    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    const/4 v2, 0x5

    .line 55
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 56
    .line 57
    .line 58
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isLocationEnabled:Z

    .line 59
    .line 60
    if-eqz v0, :cond_6

    .line 61
    .line 62
    const/4 v2, 0x6

    .line 63
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 64
    .line 65
    .line 66
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isScanningAlwaysEnabled:Z

    .line 67
    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    const/4 v2, 0x7

    .line 71
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 72
    .line 73
    .line 74
    :cond_7
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaSettings:I

    .line 75
    .line 76
    if-eqz v0, :cond_8

    .line 77
    .line 78
    const/16 v2, 0x8

    .line 79
    .line 80
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 81
    .line 82
    .line 83
    :cond_8
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiToggledViaAirplane:I

    .line 84
    .line 85
    if-eqz v0, :cond_9

    .line 86
    .line 87
    const/16 v2, 0x9

    .line 88
    .line 89
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 90
    .line 91
    .line 92
    :cond_9
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByUser:I

    .line 93
    .line 94
    if-eqz v0, :cond_a

    .line 95
    .line 96
    const/16 v2, 0xa

    .line 97
    .line 98
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 99
    .line 100
    .line 101
    :cond_a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNetworksAddedByApps:I

    .line 102
    .line 103
    if-eqz v0, :cond_b

    .line 104
    .line 105
    const/16 v2, 0xb

    .line 106
    .line 107
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 108
    .line 109
    .line 110
    :cond_b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEmptyScanResults:I

    .line 111
    .line 112
    if-eqz v0, :cond_c

    .line 113
    .line 114
    const/16 v2, 0xc

    .line 115
    .line 116
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 117
    .line 118
    .line 119
    :cond_c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numNonEmptyScanResults:I

    .line 120
    .line 121
    if-eqz v0, :cond_d

    .line 122
    .line 123
    const/16 v2, 0xd

    .line 124
    .line 125
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 126
    .line 127
    .line 128
    :cond_d
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOneshotScans:I

    .line 129
    .line 130
    if-eqz v0, :cond_e

    .line 131
    .line 132
    const/16 v2, 0xe

    .line 133
    .line 134
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 135
    .line 136
    .line 137
    :cond_e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numBackgroundScans:I

    .line 138
    .line 139
    if-eqz v0, :cond_f

    .line 140
    .line 141
    const/16 v2, 0xf

    .line 142
    .line 143
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 144
    .line 145
    .line 146
    :cond_f
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 147
    .line 148
    if-eqz v0, :cond_11

    .line 149
    .line 150
    array-length v0, v0

    .line 151
    if-lez v0, :cond_11

    .line 152
    .line 153
    move v0, v1

    .line 154
    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->scanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 155
    .line 156
    array-length v3, v2

    .line 157
    if-ge v0, v3, :cond_11

    .line 158
    .line 159
    aget-object v2, v2, v0

    .line 160
    .line 161
    if-eqz v2, :cond_10

    .line 162
    .line 163
    const/16 v3, 0x10

    .line 164
    .line 165
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 166
    .line 167
    .line 168
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_11
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 172
    .line 173
    if-eqz v0, :cond_13

    .line 174
    .line 175
    array-length v0, v0

    .line 176
    if-lez v0, :cond_13

    .line 177
    .line 178
    move v0, v1

    .line 179
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiSystemStateEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 180
    .line 181
    array-length v3, v2

    .line 182
    if-ge v0, v3, :cond_13

    .line 183
    .line 184
    aget-object v2, v2, v0

    .line 185
    .line 186
    if-eqz v2, :cond_12

    .line 187
    .line 188
    const/16 v3, 0x11

    .line 189
    .line 190
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 191
    .line 192
    .line 193
    :cond_12
    add-int/lit8 v0, v0, 0x1

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_13
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 197
    .line 198
    if-eqz v0, :cond_15

    .line 199
    .line 200
    array-length v0, v0

    .line 201
    if-lez v0, :cond_15

    .line 202
    .line 203
    move v0, v1

    .line 204
    :goto_3
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanReturnEntries:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$ScanReturnEntry;

    .line 205
    .line 206
    array-length v3, v2

    .line 207
    if-ge v0, v3, :cond_15

    .line 208
    .line 209
    aget-object v2, v2, v0

    .line 210
    .line 211
    if-eqz v2, :cond_14

    .line 212
    .line 213
    const/16 v3, 0x12

    .line 214
    .line 215
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 216
    .line 217
    .line 218
    :cond_14
    add-int/lit8 v0, v0, 0x1

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_15
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 222
    .line 223
    if-eqz v0, :cond_17

    .line 224
    .line 225
    array-length v0, v0

    .line 226
    if-lez v0, :cond_17

    .line 227
    .line 228
    move v0, v1

    .line 229
    :goto_4
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->backgroundScanRequestState:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog$WifiSystemStateEntry;

    .line 230
    .line 231
    array-length v3, v2

    .line 232
    if-ge v0, v3, :cond_17

    .line 233
    .line 234
    aget-object v2, v2, v0

    .line 235
    .line 236
    if-eqz v2, :cond_16

    .line 237
    .line 238
    const/16 v3, 0x13

    .line 239
    .line 240
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 241
    .line 242
    .line 243
    :cond_16
    add-int/lit8 v0, v0, 0x1

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_17
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggers:I

    .line 247
    .line 248
    if-eqz v0, :cond_18

    .line 249
    .line 250
    const/16 v2, 0x14

    .line 251
    .line 252
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 253
    .line 254
    .line 255
    :cond_18
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAssociationNetworksTotal:I

    .line 256
    .line 257
    if-eqz v0, :cond_19

    .line 258
    .line 259
    const/16 v2, 0x15

    .line 260
    .line 261
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 262
    .line 263
    .line 264
    :cond_19
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadAuthenticationNetworksTotal:I

    .line 265
    .line 266
    if-eqz v0, :cond_1a

    .line 267
    .line 268
    const/16 v2, 0x16

    .line 269
    .line 270
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 271
    .line 272
    .line 273
    :cond_1a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadDhcpNetworksTotal:I

    .line 274
    .line 275
    if-eqz v0, :cond_1b

    .line 276
    .line 277
    const/16 v2, 0x17

    .line 278
    .line 279
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 280
    .line 281
    .line 282
    :cond_1b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogBadOtherNetworksTotal:I

    .line 283
    .line 284
    if-eqz v0, :cond_1c

    .line 285
    .line 286
    const/16 v2, 0x18

    .line 287
    .line 288
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 289
    .line 290
    .line 291
    :cond_1c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogAvailableNetworksTotal:I

    .line 292
    .line 293
    if-eqz v0, :cond_1d

    .line 294
    .line 295
    const/16 v2, 0x19

    .line 296
    .line 297
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 298
    .line 299
    .line 300
    :cond_1d
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAssociation:I

    .line 301
    .line 302
    if-eqz v0, :cond_1e

    .line 303
    .line 304
    const/16 v2, 0x1a

    .line 305
    .line 306
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 307
    .line 308
    .line 309
    :cond_1e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadAuthentication:I

    .line 310
    .line 311
    if-eqz v0, :cond_1f

    .line 312
    .line 313
    const/16 v2, 0x1b

    .line 314
    .line 315
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 316
    .line 317
    .line 318
    :cond_1f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadDhcp:I

    .line 319
    .line 320
    if-eqz v0, :cond_20

    .line 321
    .line 322
    const/16 v2, 0x1c

    .line 323
    .line 324
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 325
    .line 326
    .line 327
    :cond_20
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogTriggersWithBadOther:I

    .line 328
    .line 329
    if-eqz v0, :cond_21

    .line 330
    .line 331
    const/16 v2, 0x1d

    .line 332
    .line 333
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 334
    .line 335
    .line 336
    :cond_21
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoGood:I

    .line 337
    .line 338
    if-eqz v0, :cond_22

    .line 339
    .line 340
    const/16 v2, 0x1e

    .line 341
    .line 342
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 343
    .line 344
    .line 345
    :cond_22
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogPnoBad:I

    .line 346
    .line 347
    if-eqz v0, :cond_23

    .line 348
    .line 349
    const/16 v2, 0x1f

    .line 350
    .line 351
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 352
    .line 353
    .line 354
    :cond_23
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundGood:I

    .line 355
    .line 356
    if-eqz v0, :cond_24

    .line 357
    .line 358
    const/16 v2, 0x20

    .line 359
    .line 360
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 361
    .line 362
    .line 363
    :cond_24
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numConnectivityWatchdogBackgroundBad:I

    .line 364
    .line 365
    if-eqz v0, :cond_25

    .line 366
    .line 367
    const/16 v2, 0x21

    .line 368
    .line 369
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 370
    .line 371
    .line 372
    :cond_25
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->recordDurationSec:I

    .line 373
    .line 374
    if-eqz v0, :cond_26

    .line 375
    .line 376
    const/16 v2, 0x22

    .line 377
    .line 378
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 379
    .line 380
    .line 381
    :cond_26
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 382
    .line 383
    if-eqz v0, :cond_28

    .line 384
    .line 385
    array-length v0, v0

    .line 386
    if-lez v0, :cond_28

    .line 387
    .line 388
    move v0, v1

    .line 389
    :goto_5
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollRssiCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 390
    .line 391
    array-length v3, v2

    .line 392
    if-ge v0, v3, :cond_28

    .line 393
    .line 394
    aget-object v2, v2, v0

    .line 395
    .line 396
    if-eqz v2, :cond_27

    .line 397
    .line 398
    const/16 v3, 0x23

    .line 399
    .line 400
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 401
    .line 402
    .line 403
    :cond_27
    add-int/lit8 v0, v0, 0x1

    .line 404
    .line 405
    goto :goto_5

    .line 406
    :cond_28
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numLastResortWatchdogSuccesses:I

    .line 407
    .line 408
    if-eqz v0, :cond_29

    .line 409
    .line 410
    const/16 v2, 0x24

    .line 411
    .line 412
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 413
    .line 414
    .line 415
    :cond_29
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworks:I

    .line 416
    .line 417
    if-eqz v0, :cond_2a

    .line 418
    .line 419
    const/16 v2, 0x25

    .line 420
    .line 421
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 422
    .line 423
    .line 424
    :cond_2a
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointNetworks:I

    .line 425
    .line 426
    if-eqz v0, :cond_2b

    .line 427
    .line 428
    const/16 v2, 0x26

    .line 429
    .line 430
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 431
    .line 432
    .line 433
    :cond_2b
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numTotalScanResults:I

    .line 434
    .line 435
    if-eqz v0, :cond_2c

    .line 436
    .line 437
    const/16 v2, 0x27

    .line 438
    .line 439
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 440
    .line 441
    .line 442
    :cond_2c
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkScanResults:I

    .line 443
    .line 444
    if-eqz v0, :cond_2d

    .line 445
    .line 446
    const/16 v2, 0x28

    .line 447
    .line 448
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 449
    .line 450
    .line 451
    :cond_2d
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPersonalNetworkScanResults:I

    .line 452
    .line 453
    if-eqz v0, :cond_2e

    .line 454
    .line 455
    const/16 v2, 0x29

    .line 456
    .line 457
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 458
    .line 459
    .line 460
    :cond_2e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numEnterpriseNetworkScanResults:I

    .line 461
    .line 462
    if-eqz v0, :cond_2f

    .line 463
    .line 464
    const/16 v2, 0x2a

    .line 465
    .line 466
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 467
    .line 468
    .line 469
    :cond_2f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHiddenNetworkScanResults:I

    .line 470
    .line 471
    if-eqz v0, :cond_30

    .line 472
    .line 473
    const/16 v2, 0x2b

    .line 474
    .line 475
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 476
    .line 477
    .line 478
    :cond_30
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R1NetworkScanResults:I

    .line 479
    .line 480
    if-eqz v0, :cond_31

    .line 481
    .line 482
    const/16 v2, 0x2c

    .line 483
    .line 484
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 485
    .line 486
    .line 487
    :cond_31
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHotspot2R2NetworkScanResults:I

    .line 488
    .line 489
    if-eqz v0, :cond_32

    .line 490
    .line 491
    const/16 v2, 0x2d

    .line 492
    .line 493
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 494
    .line 495
    .line 496
    :cond_32
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numScans:I

    .line 497
    .line 498
    if-eqz v0, :cond_33

    .line 499
    .line 500
    const/16 v2, 0x2e

    .line 501
    .line 502
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 503
    .line 504
    .line 505
    :cond_33
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 506
    .line 507
    if-eqz v0, :cond_35

    .line 508
    .line 509
    array-length v0, v0

    .line 510
    if-lez v0, :cond_35

    .line 511
    .line 512
    move v0, v1

    .line 513
    :goto_6
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->alertReasonCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$AlertReasonCount;

    .line 514
    .line 515
    array-length v3, v2

    .line 516
    if-ge v0, v3, :cond_35

    .line 517
    .line 518
    aget-object v2, v2, v0

    .line 519
    .line 520
    if-eqz v2, :cond_34

    .line 521
    .line 522
    const/16 v3, 0x2f

    .line 523
    .line 524
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 525
    .line 526
    .line 527
    :cond_34
    add-int/lit8 v0, v0, 0x1

    .line 528
    .line 529
    goto :goto_6

    .line 530
    :cond_35
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    .line 531
    .line 532
    if-eqz v0, :cond_37

    .line 533
    .line 534
    array-length v0, v0

    .line 535
    if-lez v0, :cond_37

    .line 536
    .line 537
    move v0, v1

    .line 538
    :goto_7
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiScoreCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$WifiScoreCount;

    .line 539
    .line 540
    array-length v3, v2

    .line 541
    if-ge v0, v3, :cond_37

    .line 542
    .line 543
    aget-object v2, v2, v0

    .line 544
    .line 545
    if-eqz v2, :cond_36

    .line 546
    .line 547
    const/16 v3, 0x30

    .line 548
    .line 549
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 550
    .line 551
    .line 552
    :cond_36
    add-int/lit8 v0, v0, 0x1

    .line 553
    .line 554
    goto :goto_7

    .line 555
    :cond_37
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 556
    .line 557
    if-eqz v0, :cond_39

    .line 558
    .line 559
    array-length v0, v0

    .line 560
    if-lez v0, :cond_39

    .line 561
    .line 562
    move v0, v1

    .line 563
    :goto_8
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApDuration:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApDurationBucket;

    .line 564
    .line 565
    array-length v3, v2

    .line 566
    if-ge v0, v3, :cond_39

    .line 567
    .line 568
    aget-object v2, v2, v0

    .line 569
    .line 570
    if-eqz v2, :cond_38

    .line 571
    .line 572
    const/16 v3, 0x31

    .line 573
    .line 574
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 575
    .line 576
    .line 577
    :cond_38
    add-int/lit8 v0, v0, 0x1

    .line 578
    .line 579
    goto :goto_8

    .line 580
    :cond_39
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 581
    .line 582
    if-eqz v0, :cond_3b

    .line 583
    .line 584
    array-length v0, v0

    .line 585
    if-lez v0, :cond_3b

    .line 586
    .line 587
    move v0, v1

    .line 588
    :goto_9
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->softApReturnCode:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    .line 589
    .line 590
    array-length v3, v2

    .line 591
    if-ge v0, v3, :cond_3b

    .line 592
    .line 593
    aget-object v2, v2, v0

    .line 594
    .line 595
    if-eqz v2, :cond_3a

    .line 596
    .line 597
    const/16 v3, 0x32

    .line 598
    .line 599
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 600
    .line 601
    .line 602
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    .line 603
    .line 604
    goto :goto_9

    .line 605
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 606
    .line 607
    if-eqz v0, :cond_3d

    .line 608
    .line 609
    array-length v0, v0

    .line 610
    if-lez v0, :cond_3d

    .line 611
    .line 612
    move v0, v1

    .line 613
    :goto_a
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->rssiPollDeltaCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$RssiPollCount;

    .line 614
    .line 615
    array-length v3, v2

    .line 616
    if-ge v0, v3, :cond_3d

    .line 617
    .line 618
    aget-object v2, v2, v0

    .line 619
    .line 620
    if-eqz v2, :cond_3c

    .line 621
    .line 622
    const/16 v3, 0x33

    .line 623
    .line 624
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 625
    .line 626
    .line 627
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    .line 628
    .line 629
    goto :goto_a

    .line 630
    :cond_3d
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 631
    .line 632
    if-eqz v0, :cond_3f

    .line 633
    .line 634
    array-length v0, v0

    .line 635
    if-lez v0, :cond_3f

    .line 636
    .line 637
    move v0, v1

    .line 638
    :goto_b
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->staEventList:[Lcom/android/server/wifi/nano/WifiMetricsProto$StaEvent;

    .line 639
    .line 640
    array-length v3, v2

    .line 641
    if-ge v0, v3, :cond_3f

    .line 642
    .line 643
    aget-object v2, v2, v0

    .line 644
    .line 645
    if-eqz v2, :cond_3e

    .line 646
    .line 647
    const/16 v3, 0x34

    .line 648
    .line 649
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 650
    .line 651
    .line 652
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    .line 653
    .line 654
    goto :goto_b

    .line 655
    :cond_3f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numHalCrashes:I

    .line 656
    .line 657
    if-eqz v0, :cond_40

    .line 658
    .line 659
    const/16 v2, 0x35

    .line 660
    .line 661
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 662
    .line 663
    .line 664
    :cond_40
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWificondCrashes:I

    .line 665
    .line 666
    if-eqz v0, :cond_41

    .line 667
    .line 668
    const/16 v2, 0x36

    .line 669
    .line 670
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 671
    .line 672
    .line 673
    :cond_41
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToHal:I

    .line 674
    .line 675
    if-eqz v0, :cond_42

    .line 676
    .line 677
    const/16 v2, 0x37

    .line 678
    .line 679
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 680
    .line 681
    .line 682
    :cond_42
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numWifiOnFailureDueToWificond:I

    .line 683
    .line 684
    if-eqz v0, :cond_43

    .line 685
    .line 686
    const/16 v2, 0x38

    .line 687
    .line 688
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 689
    .line 690
    .line 691
    :cond_43
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->wifiAwareLog:Lcom/android/server/wifi/nano/WifiMetricsProto$WifiAwareLog;

    .line 692
    .line 693
    if-eqz v0, :cond_44

    .line 694
    .line 695
    const/16 v2, 0x39

    .line 696
    .line 697
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 698
    .line 699
    .line 700
    :cond_44
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviders:I

    .line 701
    .line 702
    if-eqz v0, :cond_45

    .line 703
    .line 704
    const/16 v2, 0x3a

    .line 705
    .line 706
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 707
    .line 708
    .line 709
    :cond_45
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallation:I

    .line 710
    .line 711
    if-eqz v0, :cond_46

    .line 712
    .line 713
    const/16 v2, 0x3b

    .line 714
    .line 715
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 716
    .line 717
    .line 718
    :cond_46
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderInstallSuccess:I

    .line 719
    .line 720
    if-eqz v0, :cond_47

    .line 721
    .line 722
    const/16 v2, 0x3c

    .line 723
    .line 724
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 725
    .line 726
    .line 727
    :cond_47
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallation:I

    .line 728
    .line 729
    if-eqz v0, :cond_48

    .line 730
    .line 731
    const/16 v2, 0x3d

    .line 732
    .line 733
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 734
    .line 735
    .line 736
    :cond_48
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProviderUninstallSuccess:I

    .line 737
    .line 738
    if-eqz v0, :cond_49

    .line 739
    .line 740
    const/16 v2, 0x3e

    .line 741
    .line 742
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 743
    .line 744
    .line 745
    :cond_49
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numPasspointProvidersSuccessfullyConnected:I

    .line 746
    .line 747
    if-eqz v0, :cond_4a

    .line 748
    .line 749
    const/16 v2, 0x3f

    .line 750
    .line 751
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 752
    .line 753
    .line 754
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 755
    .line 756
    if-eqz v0, :cond_4c

    .line 757
    .line 758
    array-length v0, v0

    .line 759
    if-lez v0, :cond_4c

    .line 760
    .line 761
    move v0, v1

    .line 762
    :goto_c
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 763
    .line 764
    array-length v3, v2

    .line 765
    if-ge v0, v3, :cond_4c

    .line 766
    .line 767
    aget-object v2, v2, v0

    .line 768
    .line 769
    if-eqz v2, :cond_4b

    .line 770
    .line 771
    const/16 v3, 0x40

    .line 772
    .line 773
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 774
    .line 775
    .line 776
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    .line 777
    .line 778
    goto :goto_c

    .line 779
    :cond_4c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 780
    .line 781
    if-eqz v0, :cond_4e

    .line 782
    .line 783
    array-length v0, v0

    .line 784
    if-lez v0, :cond_4e

    .line 785
    .line 786
    move v0, v1

    .line 787
    :goto_d
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->totalBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 788
    .line 789
    array-length v3, v2

    .line 790
    if-ge v0, v3, :cond_4e

    .line 791
    .line 792
    aget-object v2, v2, v0

    .line 793
    .line 794
    if-eqz v2, :cond_4d

    .line 795
    .line 796
    const/16 v3, 0x41

    .line 797
    .line 798
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 799
    .line 800
    .line 801
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    .line 802
    .line 803
    goto :goto_d

    .line 804
    :cond_4e
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 805
    .line 806
    if-eqz v0, :cond_50

    .line 807
    .line 808
    array-length v0, v0

    .line 809
    if-lez v0, :cond_50

    .line 810
    .line 811
    move v0, v1

    .line 812
    :goto_e
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 813
    .line 814
    array-length v3, v2

    .line 815
    if-ge v0, v3, :cond_50

    .line 816
    .line 817
    aget-object v2, v2, v0

    .line 818
    .line 819
    if-eqz v2, :cond_4f

    .line 820
    .line 821
    const/16 v3, 0x42

    .line 822
    .line 823
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 824
    .line 825
    .line 826
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    .line 827
    .line 828
    goto :goto_e

    .line 829
    :cond_50
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 830
    .line 831
    if-eqz v0, :cond_52

    .line 832
    .line 833
    array-length v0, v0

    .line 834
    if-lez v0, :cond_52

    .line 835
    .line 836
    move v0, v1

    .line 837
    :goto_f
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 838
    .line 839
    array-length v3, v2

    .line 840
    if-ge v0, v3, :cond_52

    .line 841
    .line 842
    aget-object v2, v2, v0

    .line 843
    .line 844
    if-eqz v2, :cond_51

    .line 845
    .line 846
    const/16 v3, 0x43

    .line 847
    .line 848
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 849
    .line 850
    .line 851
    :cond_51
    add-int/lit8 v0, v0, 0x1

    .line 852
    .line 853
    goto :goto_f

    .line 854
    :cond_52
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 855
    .line 856
    if-eqz v0, :cond_54

    .line 857
    .line 858
    array-length v0, v0

    .line 859
    if-lez v0, :cond_54

    .line 860
    .line 861
    move v0, v1

    .line 862
    :goto_10
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 863
    .line 864
    array-length v3, v2

    .line 865
    if-ge v0, v3, :cond_54

    .line 866
    .line 867
    aget-object v2, v2, v0

    .line 868
    .line 869
    if-eqz v2, :cond_53

    .line 870
    .line 871
    const/16 v3, 0x44

    .line 872
    .line 873
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 874
    .line 875
    .line 876
    :cond_53
    add-int/lit8 v0, v0, 0x1

    .line 877
    .line 878
    goto :goto_10

    .line 879
    :cond_54
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 880
    .line 881
    if-eqz v0, :cond_56

    .line 882
    .line 883
    array-length v0, v0

    .line 884
    if-lez v0, :cond_56

    .line 885
    .line 886
    move v0, v1

    .line 887
    :goto_11
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 888
    .line 889
    array-length v3, v2

    .line 890
    if-ge v0, v3, :cond_56

    .line 891
    .line 892
    aget-object v2, v2, v0

    .line 893
    .line 894
    if-eqz v2, :cond_55

    .line 895
    .line 896
    const/16 v3, 0x45

    .line 897
    .line 898
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 899
    .line 900
    .line 901
    :cond_55
    add-int/lit8 v0, v0, 0x1

    .line 902
    .line 903
    goto :goto_11

    .line 904
    :cond_56
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 905
    .line 906
    if-eqz v0, :cond_58

    .line 907
    .line 908
    array-length v0, v0

    .line 909
    if-lez v0, :cond_58

    .line 910
    .line 911
    move v0, v1

    .line 912
    :goto_12
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedSsidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 913
    .line 914
    array-length v3, v2

    .line 915
    if-ge v0, v3, :cond_58

    .line 916
    .line 917
    aget-object v2, v2, v0

    .line 918
    .line 919
    if-eqz v2, :cond_57

    .line 920
    .line 921
    const/16 v3, 0x46

    .line 922
    .line 923
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 924
    .line 925
    .line 926
    :cond_57
    add-int/lit8 v0, v0, 0x1

    .line 927
    .line 928
    goto :goto_12

    .line 929
    :cond_58
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 930
    .line 931
    if-eqz v0, :cond_5a

    .line 932
    .line 933
    array-length v0, v0

    .line 934
    if-lez v0, :cond_5a

    .line 935
    .line 936
    move v0, v1

    .line 937
    :goto_13
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableOpenOrSavedBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 938
    .line 939
    array-length v3, v2

    .line 940
    if-ge v0, v3, :cond_5a

    .line 941
    .line 942
    aget-object v2, v2, v0

    .line 943
    .line 944
    if-eqz v2, :cond_59

    .line 945
    .line 946
    const/16 v3, 0x47

    .line 947
    .line 948
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 949
    .line 950
    .line 951
    :cond_59
    add-int/lit8 v0, v0, 0x1

    .line 952
    .line 953
    goto :goto_13

    .line 954
    :cond_5a
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 955
    .line 956
    if-eqz v0, :cond_5c

    .line 957
    .line 958
    array-length v0, v0

    .line 959
    if-lez v0, :cond_5c

    .line 960
    .line 961
    move v0, v1

    .line 962
    :goto_14
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderProfilesInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 963
    .line 964
    array-length v3, v2

    .line 965
    if-ge v0, v3, :cond_5c

    .line 966
    .line 967
    aget-object v2, v2, v0

    .line 968
    .line 969
    if-eqz v2, :cond_5b

    .line 970
    .line 971
    const/16 v3, 0x48

    .line 972
    .line 973
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 974
    .line 975
    .line 976
    :cond_5b
    add-int/lit8 v0, v0, 0x1

    .line 977
    .line 978
    goto :goto_14

    .line 979
    :cond_5c
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 980
    .line 981
    if-eqz v0, :cond_5e

    .line 982
    .line 983
    array-length v0, v0

    .line 984
    if-lez v0, :cond_5e

    .line 985
    .line 986
    move v0, v1

    .line 987
    :goto_15
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->availableSavedPasspointProviderBssidsInScanHistogram:[Lcom/android/server/wifi/nano/WifiMetricsProto$NumConnectableNetworksBucket;

    .line 988
    .line 989
    array-length v3, v2

    .line 990
    if-ge v0, v3, :cond_5e

    .line 991
    .line 992
    aget-object v2, v2, v0

    .line 993
    .line 994
    if-eqz v2, :cond_5d

    .line 995
    .line 996
    const/16 v3, 0x49

    .line 997
    .line 998
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 999
    .line 1000
    .line 1001
    :cond_5d
    add-int/lit8 v0, v0, 0x1

    .line 1002
    .line 1003
    goto :goto_15

    .line 1004
    :cond_5e
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->fullBandAllSingleScanListenerResults:I

    .line 1005
    .line 1006
    if-eqz v0, :cond_5f

    .line 1007
    .line 1008
    const/16 v2, 0x4a

    .line 1009
    .line 1010
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1011
    .line 1012
    .line 1013
    :cond_5f
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->partialAllSingleScanListenerResults:I

    .line 1014
    .line 1015
    if-eqz v0, :cond_60

    .line 1016
    .line 1017
    const/16 v2, 0x4b

    .line 1018
    .line 1019
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1020
    .line 1021
    .line 1022
    :cond_60
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->pnoScanMetrics:Lcom/android/server/wifi/nano/WifiMetricsProto$PnoScanMetrics;

    .line 1023
    .line 1024
    if-eqz v0, :cond_61

    .line 1025
    .line 1026
    const/16 v2, 0x4c

    .line 1027
    .line 1028
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1029
    .line 1030
    .line 1031
    :cond_61
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 1032
    .line 1033
    if-eqz v0, :cond_63

    .line 1034
    .line 1035
    array-length v0, v0

    .line 1036
    if-lez v0, :cond_63

    .line 1037
    .line 1038
    move v0, v1

    .line 1039
    :goto_16
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 1040
    .line 1041
    array-length v3, v2

    .line 1042
    if-ge v0, v3, :cond_63

    .line 1043
    .line 1044
    aget-object v2, v2, v0

    .line 1045
    .line 1046
    if-eqz v2, :cond_62

    .line 1047
    .line 1048
    const/16 v3, 0x4d

    .line 1049
    .line 1050
    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1051
    .line 1052
    .line 1053
    :cond_62
    add-int/lit8 v0, v0, 0x1

    .line 1054
    .line 1055
    goto :goto_16

    .line 1056
    :cond_63
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 1057
    .line 1058
    if-eqz v0, :cond_65

    .line 1059
    .line 1060
    array-length v0, v0

    .line 1061
    if-lez v0, :cond_65

    .line 1062
    .line 1063
    :goto_17
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->connectToNetworkNotificationActionCount:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectToNetworkNotificationAndActionCount;

    .line 1064
    .line 1065
    array-length v2, v0

    .line 1066
    if-ge v1, v2, :cond_65

    .line 1067
    .line 1068
    aget-object v0, v0, v1

    .line 1069
    .line 1070
    if-eqz v0, :cond_64

    .line 1071
    .line 1072
    const/16 v2, 0x4e

    .line 1073
    .line 1074
    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1075
    .line 1076
    .line 1077
    :cond_64
    add-int/lit8 v1, v1, 0x1

    .line 1078
    .line 1079
    goto :goto_17

    .line 1080
    :cond_65
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->openNetworkRecommenderBlacklistSize:I

    .line 1081
    .line 1082
    if-eqz v0, :cond_66

    .line 1083
    .line 1084
    const/16 v1, 0x4f

    .line 1085
    .line 1086
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1087
    .line 1088
    .line 1089
    :cond_66
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->isWifiNetworksAvailableNotificationOn:Z

    .line 1090
    .line 1091
    if-eqz v0, :cond_67

    .line 1092
    .line 1093
    const/16 v1, 0x50

    .line 1094
    .line 1095
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1096
    .line 1097
    .line 1098
    :cond_67
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkRecommendationUpdates:I

    .line 1099
    .line 1100
    if-eqz v0, :cond_68

    .line 1101
    .line 1102
    const/16 v1, 0x51

    .line 1103
    .line 1104
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1105
    .line 1106
    .line 1107
    :cond_68
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$WifiLog;->numOpenNetworkConnectMessageFailedToSend:I

    .line 1108
    .line 1109
    if-eqz v0, :cond_69

    .line 1110
    .line 1111
    const/16 v1, 0x52

    .line 1112
    .line 1113
    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1114
    .line 1115
    .line 1116
    :cond_69
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1117
    .line 1118
    .line 1119
    return-void
.end method
