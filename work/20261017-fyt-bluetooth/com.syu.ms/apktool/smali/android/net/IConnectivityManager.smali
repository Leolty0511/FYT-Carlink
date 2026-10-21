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
.method public abstract captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
.end method

.method public abstract captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
.end method

.method public abstract checkMobileProvisioning(I)I
.end method

.method public abstract establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract findConnectionTypeForIface(Ljava/lang/String;)I
.end method

.method public abstract getActiveLinkProperties()Landroid/net/LinkProperties;
.end method

.method public abstract getActiveLinkQualityInfo()Landroid/net/LinkQualityInfo;
.end method

.method public abstract getActiveNetworkInfo()Landroid/net/NetworkInfo;
.end method

.method public abstract getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
.end method

.method public abstract getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
.end method

.method public abstract getAllLinkQualityInfo()[Landroid/net/LinkQualityInfo;
.end method

.method public abstract getAllNetworkInfo()[Landroid/net/NetworkInfo;
.end method

.method public abstract getAllNetworkState()[Landroid/net/NetworkState;
.end method

.method public abstract getGlobalProxy()Landroid/net/ProxyProperties;
.end method

.method public abstract getLastTetherError(Ljava/lang/String;)I
.end method

.method public abstract getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;
.end method

.method public abstract getLinkProperties(I)Landroid/net/LinkProperties;
.end method

.method public abstract getLinkQualityInfo(I)Landroid/net/LinkQualityInfo;
.end method

.method public abstract getMobileDataEnabled()Z
.end method

.method public abstract getMobileProvisioningUrl()Ljava/lang/String;
.end method

.method public abstract getMobileRedirectedProvisioningUrl()Ljava/lang/String;
.end method

.method public abstract getNetworkInfo(I)Landroid/net/NetworkInfo;
.end method

.method public abstract getNetworkPreference()I
.end method

.method public abstract getProvisioningOrActiveNetworkInfo()Landroid/net/NetworkInfo;
.end method

.method public abstract getProxy()Landroid/net/ProxyProperties;
.end method

.method public abstract getTetherableBluetoothRegexs()[Ljava/lang/String;
.end method

.method public abstract getTetherableIfaces()[Ljava/lang/String;
.end method

.method public abstract getTetherableUsbRegexs()[Ljava/lang/String;
.end method

.method public abstract getTetherableWifiRegexs()[Ljava/lang/String;
.end method

.method public abstract getTetheredIfaces()[Ljava/lang/String;
.end method

.method public abstract getTetheringErroredIfaces()[Ljava/lang/String;
.end method

.method public abstract getVpnConfig()Lcom/android/internal/net/VpnConfig;
.end method

.method public abstract isActiveNetworkMetered()Z
.end method

.method public abstract isNetworkSupported(I)Z
.end method

.method public abstract isTetheringSupported()Z
.end method

.method public abstract markSocketAsUser(Landroid/os/ParcelFileDescriptor;I)V
.end method

.method public abstract prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract protectVpn(Landroid/os/ParcelFileDescriptor;)Z
.end method

.method public abstract reportInetCondition(II)V
.end method

.method public abstract requestNetworkTransitionWakelock(Ljava/lang/String;)V
.end method

.method public abstract requestRouteToHost(IILjava/lang/String;)Z
.end method

.method public abstract requestRouteToHostAddress(I[BLjava/lang/String;)Z
.end method

.method public abstract setAirplaneMode(Z)V
.end method

.method public abstract setDataDependency(IZ)V
.end method

.method public abstract setGlobalProxy(Landroid/net/ProxyProperties;)V
.end method

.method public abstract setMobileDataEnabled(Z)V
.end method

.method public abstract setNetworkPreference(I)V
.end method

.method public abstract setPolicyDataEnable(IZ)V
.end method

.method public abstract setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setRadio(IZ)Z
.end method

.method public abstract setRadios(Z)Z
.end method

.method public abstract setUsbTethering(Z)I
.end method

.method public abstract startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
.end method

.method public abstract startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
.end method

.method public abstract stopUsingNetworkFeature(ILjava/lang/String;)I
.end method

.method public abstract supplyMessenger(ILandroid/os/Messenger;)V
.end method

.method public abstract tether(Ljava/lang/String;)I
.end method

.method public abstract untether(Ljava/lang/String;)I
.end method

.method public abstract updateLockdownVpn()Z
.end method
