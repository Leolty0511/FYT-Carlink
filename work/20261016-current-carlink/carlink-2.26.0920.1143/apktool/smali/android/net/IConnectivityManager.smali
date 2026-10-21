.class public interface abstract Landroid/net/IConnectivityManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IConnectivityManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addVpnAddress(Ljava/lang/String;I)Z
.end method

.method public abstract checkMobileProvisioning(I)I
.end method

.method public abstract disableTetherPCInternet()I
.end method

.method public abstract enableTetherPCInternet(Ljava/lang/String;)I
.end method

.method public abstract establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract factoryReset()V
.end method

.method public abstract getActiveLinkProperties()Landroid/net/LinkProperties;
.end method

.method public abstract getActiveNetwork()Landroid/net/Network;
.end method

.method public abstract getActiveNetworkForUid(IZ)Landroid/net/Network;
.end method

.method public abstract getActiveNetworkInfo()Landroid/net/NetworkInfo;
.end method

.method public abstract getActiveNetworkInfoForUid(IZ)Landroid/net/NetworkInfo;
.end method

.method public abstract getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
.end method

.method public abstract getAllNetworkInfo()[Landroid/net/NetworkInfo;
.end method

.method public abstract getAllNetworkState()[Landroid/net/NetworkState;
.end method

.method public abstract getAllNetworks()[Landroid/net/Network;
.end method

.method public abstract getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;
.end method

.method public abstract getAlwaysOnVpnPackage(I)Ljava/lang/String;
.end method

.method public abstract getCaptivePortalServerUrl()Ljava/lang/String;
.end method

.method public abstract getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;
.end method

.method public abstract getGlobalProxy()Landroid/net/ProxyInfo;
.end method

.method public abstract getLastTetherError(Ljava/lang/String;)I
.end method

.method public abstract getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;
.end method

.method public abstract getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;
.end method

.method public abstract getLinkPropertiesForType(I)Landroid/net/LinkProperties;
.end method

.method public abstract getMobileProvisioningUrl()Ljava/lang/String;
.end method

.method public abstract getMultipathPreference(Landroid/net/Network;)I
.end method

.method public abstract getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
.end method

.method public abstract getNetworkForType(I)Landroid/net/Network;
.end method

.method public abstract getNetworkInfo(I)Landroid/net/NetworkInfo;
.end method

.method public abstract getNetworkInfoForUid(Landroid/net/Network;IZ)Landroid/net/NetworkInfo;
.end method

.method public abstract getPCNetTether()Z
.end method

.method public abstract getProxyForNetwork(Landroid/net/Network;)Landroid/net/ProxyInfo;
.end method

.method public abstract getRestoreDefaultNetworkDelay(I)I
.end method

.method public abstract getTetherableBluetoothRegexs()[Ljava/lang/String;
.end method

.method public abstract getTetherableIfaces()[Ljava/lang/String;
.end method

.method public abstract getTetherableUsbRegexs()[Ljava/lang/String;
.end method

.method public abstract getTetherableWifiRegexs()[Ljava/lang/String;
.end method

.method public abstract getTetheredDhcpRanges()[Ljava/lang/String;
.end method

.method public abstract getTetheredIfaces()[Ljava/lang/String;
.end method

.method public abstract getTetheringErroredIfaces()[Ljava/lang/String;
.end method

.method public abstract getVpnConfig(I)Lcom/android/internal/net/VpnConfig;
.end method

.method public abstract isActiveNetworkMetered()Z
.end method

.method public abstract isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z
.end method

.method public abstract isNetworkSupported(I)Z
.end method

.method public abstract isTetheringSupported(Ljava/lang/String;)Z
.end method

.method public abstract listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;
.end method

.method public abstract pendingListenForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)V
.end method

.method public abstract pendingRequestForNetwork(Landroid/net/NetworkCapabilities;Landroid/app/PendingIntent;)Landroid/net/NetworkRequest;
.end method

.method public abstract prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract registerNetworkAgent(Landroid/os/Messenger;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/net/NetworkMisc;)I
.end method

.method public abstract registerNetworkFactory(Landroid/os/Messenger;Ljava/lang/String;)V
.end method

.method public abstract releaseNetworkRequest(Landroid/net/NetworkRequest;)V
.end method

.method public abstract releasePendingNetworkRequest(Landroid/app/PendingIntent;)V
.end method

.method public abstract removeVpnAddress(Ljava/lang/String;I)Z
.end method

.method public abstract reportInetCondition(II)V
.end method

.method public abstract reportNetworkConnectivity(Landroid/net/Network;Z)V
.end method

.method public abstract requestBandwidthUpdate(Landroid/net/Network;)Z
.end method

.method public abstract requestNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;ILandroid/os/IBinder;I)Landroid/net/NetworkRequest;
.end method

.method public abstract requestRouteToHostAddress(I[B)Z
.end method

.method public abstract setAcceptUnvalidated(Landroid/net/Network;ZZ)V
.end method

.method public abstract setAirplaneMode(Z)V
.end method

.method public abstract setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z
.end method

.method public abstract setAvoidUnvalidated(Landroid/net/Network;)V
.end method

.method public abstract setGlobalProxy(Landroid/net/ProxyInfo;)V
.end method

.method public abstract setProvisioningNotificationVisible(ZILjava/lang/String;)V
.end method

.method public abstract setUnderlyingNetworksForVpn([Landroid/net/Network;)Z
.end method

.method public abstract setUsbTethering(ZLjava/lang/String;)I
.end method

.method public abstract setVpnPackageAuthorization(Ljava/lang/String;IZ)V
.end method

.method public abstract startCaptivePortalApp(Landroid/net/Network;)V
.end method

.method public abstract startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
.end method

.method public abstract startNattKeepalive(Landroid/net/Network;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
.end method

.method public abstract stopKeepalive(Landroid/net/Network;I)V
.end method

.method public abstract stopTethering(ILjava/lang/String;)V
.end method

.method public abstract tether(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract unregisterNetworkFactory(Landroid/os/Messenger;)V
.end method

.method public abstract untether(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract updateLockdownVpn()Z
.end method
