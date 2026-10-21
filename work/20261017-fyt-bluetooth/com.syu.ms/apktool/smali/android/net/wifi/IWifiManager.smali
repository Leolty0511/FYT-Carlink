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

.method public abstract addToBlacklist(Ljava/lang/String;)V
.end method

.method public abstract captivePortalCheckComplete()V
.end method

.method public abstract clearBlacklist()V
.end method

.method public abstract disableNetwork(I)Z
.end method

.method public abstract disconnect()V
.end method

.method public abstract enableNetwork(IZ)Z
.end method

.method public abstract enableTdls(Ljava/lang/String;Z)V
.end method

.method public abstract enableTdlsWithMacAddress(Ljava/lang/String;Z)V
.end method

.method public abstract getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfigFile()Ljava/lang/String;
.end method

.method public abstract getConfiguredNetworks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectionInfo()Landroid/net/wifi/WifiInfo;
.end method

.method public abstract getDhcpInfo()Landroid/net/DhcpInfo;
.end method

.method public abstract getFrequencyBand()I
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

.method public abstract getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
.end method

.method public abstract getWifiApEnabledState()I
.end method

.method public abstract getWifiEnabledState()I
.end method

.method public abstract getWifiServiceMessenger()Landroid/os/Messenger;
.end method

.method public abstract getWifiStateMachineMessenger()Landroid/os/Messenger;
.end method

.method public abstract initializeMulticastFiltering()V
.end method

.method public abstract isBatchedScanSupported()Z
.end method

.method public abstract isDualBandSupported()Z
.end method

.method public abstract isMulticastEnabled()Z
.end method

.method public abstract isScanAlwaysAvailable()Z
.end method

.method public abstract pingSupplicant()Z
.end method

.method public abstract pollBatchedScan()V
.end method

.method public abstract reassociate()V
.end method

.method public abstract reconnect()V
.end method

.method public abstract releaseMulticastLock()V
.end method

.method public abstract releaseWifiLock(Landroid/os/IBinder;)Z
.end method

.method public abstract removeNetwork(I)Z
.end method

.method public abstract requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
.end method

.method public abstract saveConfiguration()Z
.end method

.method public abstract setCountryCode(Ljava/lang/String;Z)V
.end method

.method public abstract setFrequencyBand(IZ)V
.end method

.method public abstract setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
.end method

.method public abstract setWifiEnabled(Z)Z
.end method

.method public abstract startScan(Landroid/os/WorkSource;)V
.end method

.method public abstract startWifi()V
.end method

.method public abstract stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
.end method

.method public abstract stopWifi()V
.end method

.method public abstract updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
.end method
