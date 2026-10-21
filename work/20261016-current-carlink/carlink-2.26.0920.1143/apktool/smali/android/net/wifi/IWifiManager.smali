.class public interface abstract Landroid/net/wifi/IWifiManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
.end method

.method public abstract acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
.end method

.method public abstract addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
.end method

.method public abstract addOrUpdatePasspointConfiguration(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Z
.end method

.method public abstract deauthenticateNetwork(JZ)V
.end method

.method public abstract disableEphemeralNetwork(Ljava/lang/String;)V
.end method

.method public abstract disableNetwork(I)Z
.end method

.method public abstract disconnect()V
.end method

.method public abstract enableAggressiveHandover(I)V
.end method

.method public abstract enableNetwork(IZ)Z
.end method

.method public abstract enableTdls(Ljava/lang/String;Z)V
.end method

.method public abstract enableTdlsWithMacAddress(Ljava/lang/String;Z)V
.end method

.method public abstract enableVerboseLogging(I)V
.end method

.method public abstract enableWifiConnectivityManager(Z)V
.end method

.method public abstract factoryReset()V
.end method

.method public abstract getAggressiveHandover()I
.end method

.method public abstract getAllowScansWithTraffic()I
.end method

.method public abstract getConfiguredNetworks()Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getConnectionInfo(Ljava/lang/String;)Landroid/net/wifi/WifiInfo;
.end method

.method public abstract getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
.end method

.method public abstract getCountryCode()Ljava/lang/String;
.end method

.method public abstract getCurrentNetwork()Landroid/net/Network;
.end method

.method public abstract getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;
.end method

.method public abstract getCurrentRssi()I
.end method

.method public abstract getDhcpInfo()Landroid/net/DhcpInfo;
.end method

.method public abstract getEnableAutoJoinWhenAssociated()Z
.end method

.method public abstract getMatchingOsuProviders(Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
.end method

.method public abstract getPasspointConfigurations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrivilegedConfiguredNetworks()Landroid/content/pm/ParceledListSlice;
.end method

.method public abstract getScanResults(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedFeatures()I
.end method

.method public abstract getVerboseLoggingLevel()I
.end method

.method public abstract getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
.end method

.method public abstract getWifiApEnabledState()I
.end method

.method public abstract getWifiEnabledState()I
.end method

.method public abstract getWifiServiceMessenger()Landroid/os/Messenger;
.end method

.method public abstract initializeMulticastFiltering()V
.end method

.method public abstract isDualBandSupported()Z
.end method

.method public abstract isMulticastEnabled()Z
.end method

.method public abstract isNetworkValidForVoWifi()Z
.end method

.method public abstract isScanAlwaysAvailable()Z
.end method

.method public abstract matchProviderWithCurrentNetwork(Ljava/lang/String;)I
.end method

.method public abstract notifyAndCloseWifi()V
.end method

.method public abstract queryPasspointIcon(JLjava/lang/String;)V
.end method

.method public abstract reassociate()V
.end method

.method public abstract reconnect()V
.end method

.method public abstract registerWifiNetworkEventObserver(Landroid/net/wifi/IWifiNetworkEventObserver;)Z
.end method

.method public abstract releaseMulticastLock()V
.end method

.method public abstract releaseWifiLock(Landroid/os/IBinder;)Z
.end method

.method public abstract removeNetwork(I)Z
.end method

.method public abstract removePasspointConfiguration(Ljava/lang/String;)Z
.end method

.method public abstract reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;
.end method

.method public abstract requestActivityInfo(Landroid/os/ResultReceiver;)V
.end method

.method public abstract restoreBackupData([B)V
.end method

.method public abstract restoreSupplicantBackupData([B[B)V
.end method

.method public abstract retrieveBackupData()[B
.end method

.method public abstract saveConfiguration()Z
.end method

.method public abstract setAllowScansWithTraffic(I)V
.end method

.method public abstract setCheckingInternetForVoWifi(Z)Z
.end method

.method public abstract setCountryCode(Ljava/lang/String;Z)V
.end method

.method public abstract setEnableAutoJoinWhenAssociated(Z)Z
.end method

.method public abstract setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
.end method

.method public abstract setWifiEnabled(Ljava/lang/String;Z)Z
.end method

.method public abstract softApAddClientToWhiteList(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract softApBlockStation(Ljava/lang/String;)Z
.end method

.method public abstract softApDelClientFromWhiteList(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract softApGetBlockedStations()Ljava/lang/String;
.end method

.method public abstract softApGetBlockedStationsDetail()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract softApGetClientWhiteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract softApGetConnectedStations()Ljava/lang/String;
.end method

.method public abstract softApGetConnectedStationsDetail()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract softApIsWhiteListEnabled()Z
.end method

.method public abstract softApSetClientWhiteListEnabled(Z)Z
.end method

.method public abstract softApUnblockStation(Ljava/lang/String;)Z
.end method

.method public abstract softApWpsCheckPin(Ljava/lang/String;)Z
.end method

.method public abstract startLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;)I
.end method

.method public abstract startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;Ljava/lang/String;)V
.end method

.method public abstract startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z
.end method

.method public abstract startWatchLocalOnlyHotspot(Landroid/os/Messenger;Landroid/os/IBinder;)V
.end method

.method public abstract stopLocalOnlyHotspot()V
.end method

.method public abstract stopSoftAp()Z
.end method

.method public abstract stopWatchLocalOnlyHotspot()V
.end method

.method public abstract unregisterWifiNetworkEventObserver(Landroid/net/wifi/IWifiNetworkEventObserver;)Z
.end method

.method public abstract updateInterfaceIpState(Ljava/lang/String;I)V
.end method

.method public abstract updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
.end method
