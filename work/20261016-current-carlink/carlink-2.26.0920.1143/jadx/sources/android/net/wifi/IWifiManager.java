package android.net.wifi;

import android.content.pm.ParceledListSlice;
import android.net.DhcpInfo;
import android.net.Network;
import android.net.wifi.hotspot2.OsuProvider;
import android.net.wifi.hotspot2.PasspointConfiguration;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Messenger;
import android.os.Parcel;
import android.os.ResultReceiver;
import android.os.WorkSource;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IWifiManager extends IInterface {

    public static abstract class Stub extends Binder implements IWifiManager {
        private static final String DESCRIPTOR = "android.net.wifi.IWifiManager";
        static final int TRANSACTION_acquireMulticastLock = 37;
        static final int TRANSACTION_acquireWifiLock = 32;
        static final int TRANSACTION_addOrUpdateNetwork = 8;
        static final int TRANSACTION_addOrUpdatePasspointConfiguration = 9;
        static final int TRANSACTION_deauthenticateNetwork = 14;
        static final int TRANSACTION_disableEphemeralNetwork = 64;
        static final int TRANSACTION_disableNetwork = 17;
        static final int TRANSACTION_disconnect = 20;
        static final int TRANSACTION_enableAggressiveHandover = 56;
        static final int TRANSACTION_enableNetwork = 16;
        static final int TRANSACTION_enableTdls = 51;
        static final int TRANSACTION_enableTdlsWithMacAddress = 52;
        static final int TRANSACTION_enableVerboseLogging = 54;
        static final int TRANSACTION_enableWifiConnectivityManager = 62;
        static final int TRANSACTION_factoryReset = 65;
        static final int TRANSACTION_getAggressiveHandover = 57;
        static final int TRANSACTION_getAllowScansWithTraffic = 59;
        static final int TRANSACTION_getConfiguredNetworks = 4;
        static final int TRANSACTION_getConnectionInfo = 23;
        static final int TRANSACTION_getConnectionStatistics = 63;
        static final int TRANSACTION_getCountryCode = 27;
        static final int TRANSACTION_getCurrentNetwork = 66;
        static final int TRANSACTION_getCurrentNetworkWpsNfcConfigurationToken = 53;
        static final int TRANSACTION_getCurrentRssi = 72;
        static final int TRANSACTION_getDhcpInfo = 30;
        static final int TRANSACTION_getEnableAutoJoinWhenAssociated = 61;
        static final int TRANSACTION_getMatchingOsuProviders = 7;
        static final int TRANSACTION_getMatchingWifiConfig = 6;
        static final int TRANSACTION_getPasspointConfigurations = 11;
        static final int TRANSACTION_getPrivilegedConfiguredNetworks = 5;
        static final int TRANSACTION_getScanResults = 19;
        static final int TRANSACTION_getSupportedFeatures = 1;
        static final int TRANSACTION_getVerboseLoggingLevel = 55;
        static final int TRANSACTION_getWifiApConfiguration = 48;
        static final int TRANSACTION_getWifiApEnabledState = 47;
        static final int TRANSACTION_getWifiEnabledState = 25;
        static final int TRANSACTION_getWifiServiceMessenger = 50;
        static final int TRANSACTION_initializeMulticastFiltering = 35;
        static final int TRANSACTION_isDualBandSupported = 28;
        static final int TRANSACTION_isMulticastEnabled = 36;
        static final int TRANSACTION_isNetworkValidForVoWifi = 73;
        static final int TRANSACTION_isScanAlwaysAvailable = 31;
        static final int TRANSACTION_matchProviderWithCurrentNetwork = 13;
        static final int TRANSACTION_notifyAndCloseWifi = 75;
        static final int TRANSACTION_queryPasspointIcon = 12;
        static final int TRANSACTION_reassociate = 22;
        static final int TRANSACTION_reconnect = 21;
        static final int TRANSACTION_registerWifiNetworkEventObserver = 70;
        static final int TRANSACTION_releaseMulticastLock = 38;
        static final int TRANSACTION_releaseWifiLock = 34;
        static final int TRANSACTION_removeNetwork = 15;
        static final int TRANSACTION_removePasspointConfiguration = 10;
        static final int TRANSACTION_reportActivityInfo = 2;
        static final int TRANSACTION_requestActivityInfo = 3;
        static final int TRANSACTION_restoreBackupData = 68;
        static final int TRANSACTION_restoreSupplicantBackupData = 69;
        static final int TRANSACTION_retrieveBackupData = 67;
        static final int TRANSACTION_saveConfiguration = 29;
        static final int TRANSACTION_setAllowScansWithTraffic = 58;
        static final int TRANSACTION_setCheckingInternetForVoWifi = 74;
        static final int TRANSACTION_setCountryCode = 26;
        static final int TRANSACTION_setEnableAutoJoinWhenAssociated = 60;
        static final int TRANSACTION_setWifiApConfiguration = 49;
        static final int TRANSACTION_setWifiApEnabled = 39;
        static final int TRANSACTION_setWifiEnabled = 24;
        static final int TRANSACTION_softApAddClientToWhiteList = 82;
        static final int TRANSACTION_softApBlockStation = 76;
        static final int TRANSACTION_softApDelClientFromWhiteList = 83;
        static final int TRANSACTION_softApGetBlockedStations = 79;
        static final int TRANSACTION_softApGetBlockedStationsDetail = 81;
        static final int TRANSACTION_softApGetClientWhiteList = 85;
        static final int TRANSACTION_softApGetConnectedStations = 78;
        static final int TRANSACTION_softApGetConnectedStationsDetail = 80;
        static final int TRANSACTION_softApIsWhiteListEnabled = 86;
        static final int TRANSACTION_softApSetClientWhiteListEnabled = 84;
        static final int TRANSACTION_softApUnblockStation = 77;
        static final int TRANSACTION_softApWpsCheckPin = 87;
        static final int TRANSACTION_startLocalOnlyHotspot = 43;
        static final int TRANSACTION_startScan = 18;
        static final int TRANSACTION_startSoftAp = 41;
        static final int TRANSACTION_startWatchLocalOnlyHotspot = 45;
        static final int TRANSACTION_stopLocalOnlyHotspot = 44;
        static final int TRANSACTION_stopSoftAp = 42;
        static final int TRANSACTION_stopWatchLocalOnlyHotspot = 46;
        static final int TRANSACTION_unregisterWifiNetworkEventObserver = 71;
        static final int TRANSACTION_updateInterfaceIpState = 40;
        static final int TRANSACTION_updateWifiLockWorkSource = 33;

        public static class Proxy implements IWifiManager {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.net.wifi.IWifiManager
            public void acquireMulticastLock(IBinder iBinder, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(37, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean acquireWifiLock(IBinder iBinder, int i2, String str, WorkSource workSource) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    if (workSource != null) {
                        parcelObtain.writeInt(1);
                        workSource.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(32, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public int addOrUpdateNetwork(WifiConfiguration wifiConfiguration) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (wifiConfiguration != null) {
                        parcelObtain.writeInt(1);
                        wifiConfiguration.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean addOrUpdatePasspointConfiguration(PasspointConfiguration passpointConfiguration) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (passpointConfiguration != null) {
                        parcelObtain.writeInt(1);
                        passpointConfiguration.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.net.wifi.IWifiManager
            public void deauthenticateNetwork(long j2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void disableEphemeralNetwork(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(64, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean disableNetwork(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void disconnect() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(20, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void enableAggressiveHandover(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(56, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean enableNetwork(int i2, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void enableTdls(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(51, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void enableTdlsWithMacAddress(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(52, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void enableVerboseLogging(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(54, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void enableWifiConnectivityManager(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(62, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void factoryReset() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(65, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public int getAggressiveHandover() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(57, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public int getAllowScansWithTraffic() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(59, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public ParceledListSlice getConfiguredNetworks() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public WifiInfo getConnectionInfo(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(23, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? WifiInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public WifiConnectionStatistics getConnectionStatistics() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(63, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? WifiConnectionStatistics.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public String getCountryCode() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(27, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public Network getCurrentNetwork() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(66, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Network.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public String getCurrentNetworkWpsNfcConfigurationToken() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(53, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public int getCurrentRssi() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(72, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public DhcpInfo getDhcpInfo() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(30, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? DhcpInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean getEnableAutoJoinWhenAssociated() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(61, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.net.wifi.IWifiManager
            public List<OsuProvider> getMatchingOsuProviders(ScanResult scanResult) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (scanResult != null) {
                        parcelObtain.writeInt(1);
                        scanResult.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(7, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(OsuProvider.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public WifiConfiguration getMatchingWifiConfig(ScanResult scanResult) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (scanResult != null) {
                        parcelObtain.writeInt(1);
                        scanResult.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? WifiConfiguration.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public List<PasspointConfiguration> getPasspointConfigurations() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(11, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(PasspointConfiguration.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public ParceledListSlice getPrivilegedConfiguredNetworks() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? ParceledListSlice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public List<ScanResult> getScanResults(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ScanResult.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public int getSupportedFeatures() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public int getVerboseLoggingLevel() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(55, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public WifiConfiguration getWifiApConfiguration() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(48, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? WifiConfiguration.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public int getWifiApEnabledState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(47, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public int getWifiEnabledState() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(25, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public Messenger getWifiServiceMessenger() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(50, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? Messenger.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void initializeMulticastFiltering() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(35, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean isDualBandSupported() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(28, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean isMulticastEnabled() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(36, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean isNetworkValidForVoWifi() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(73, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean isScanAlwaysAvailable() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(31, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public int matchProviderWithCurrentNetwork(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void notifyAndCloseWifi() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(75, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void queryPasspointIcon(long j2, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(j2);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void reassociate() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(22, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void reconnect() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(21, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean registerWifiNetworkEventObserver(IWifiNetworkEventObserver iWifiNetworkEventObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWifiNetworkEventObserver != null ? iWifiNetworkEventObserver.asBinder() : null);
                    this.mRemote.transact(70, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void releaseMulticastLock() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(38, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean releaseWifiLock(IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean removeNetwork(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean removePasspointConfiguration(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(10, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public WifiActivityEnergyInfo reportActivityInfo() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? WifiActivityEnergyInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void requestActivityInfo(ResultReceiver resultReceiver) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (resultReceiver != null) {
                        parcelObtain.writeInt(1);
                        resultReceiver.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(3, parcelObtain, null, 1);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void restoreBackupData(byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    this.mRemote.transact(68, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void restoreSupplicantBackupData(byte[] bArr, byte[] bArr2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeByteArray(bArr);
                    parcelObtain.writeByteArray(bArr2);
                    this.mRemote.transact(69, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public byte[] retrieveBackupData() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(67, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createByteArray();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean saveConfiguration() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(29, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void setAllowScansWithTraffic(int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(58, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean setCheckingInternetForVoWifi(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(74, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void setCountryCode(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(26, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean setEnableAutoJoinWhenAssociated(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(60, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void setWifiApConfiguration(WifiConfiguration wifiConfiguration) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (wifiConfiguration != null) {
                        parcelObtain.writeInt(1);
                        wifiConfiguration.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(49, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void setWifiApEnabled(WifiConfiguration wifiConfiguration, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    int i2 = 1;
                    if (wifiConfiguration != null) {
                        parcelObtain.writeInt(1);
                        wifiConfiguration.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!z2) {
                        i2 = 0;
                    }
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(39, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean setWifiEnabled(String str, boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(24, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean softApAddClientToWhiteList(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(82, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean softApBlockStation(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(76, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean softApDelClientFromWhiteList(String str, String str2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.mRemote.transact(83, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public String softApGetBlockedStations() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(79, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public List<String> softApGetBlockedStationsDetail() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(81, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public List<String> softApGetClientWhiteList() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(85, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public String softApGetConnectedStations() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(78, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public List<String> softApGetConnectedStationsDetail() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(80, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean softApIsWhiteListEnabled() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(86, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean softApSetClientWhiteListEnabled(boolean z2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.mRemote.transact(84, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean softApUnblockStation(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(77, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean softApWpsCheckPin(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(87, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public int startLocalOnlyHotspot(Messenger messenger, IBinder iBinder, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (messenger != null) {
                        parcelObtain.writeInt(1);
                        messenger.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iBinder);
                    parcelObtain.writeString(str);
                    this.mRemote.transact(43, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void startScan(ScanSettings scanSettings, WorkSource workSource, String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (scanSettings != null) {
                        parcelObtain.writeInt(1);
                        scanSettings.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (workSource != null) {
                        parcelObtain.writeInt(1);
                        workSource.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    this.mRemote.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean startSoftAp(WifiConfiguration wifiConfiguration) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (wifiConfiguration != null) {
                        parcelObtain.writeInt(1);
                        wifiConfiguration.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(41, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void startWatchLocalOnlyHotspot(Messenger messenger, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (messenger != null) {
                        parcelObtain.writeInt(1);
                        messenger.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(45, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void stopLocalOnlyHotspot() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(44, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean stopSoftAp() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(42, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void stopWatchLocalOnlyHotspot() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(46, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public boolean unregisterWifiNetworkEventObserver(IWifiNetworkEventObserver iWifiNetworkEventObserver) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iWifiNetworkEventObserver != null ? iWifiNetworkEventObserver.asBinder() : null);
                    this.mRemote.transact(71, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void updateInterfaceIpState(String str, int i2) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i2);
                    this.mRemote.transact(40, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.net.wifi.IWifiManager
            public void updateWifiLockWorkSource(IBinder iBinder, WorkSource workSource) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (workSource != null) {
                        parcelObtain.writeInt(1);
                        workSource.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.mRemote.transact(33, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWifiManager asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IWifiManager)) ? new Proxy(iBinder) : (IWifiManager) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i2, Parcel parcel, Parcel parcel2, int i3) {
            if (i2 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i2) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    int supportedFeatures = getSupportedFeatures();
                    parcel2.writeNoException();
                    parcel2.writeInt(supportedFeatures);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    WifiActivityEnergyInfo wifiActivityEnergyInfoReportActivityInfo = reportActivityInfo();
                    parcel2.writeNoException();
                    if (wifiActivityEnergyInfoReportActivityInfo != null) {
                        parcel2.writeInt(1);
                        wifiActivityEnergyInfoReportActivityInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestActivityInfo(parcel.readInt() != 0 ? ResultReceiver.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice configuredNetworks = getConfiguredNetworks();
                    parcel2.writeNoException();
                    if (configuredNetworks != null) {
                        parcel2.writeInt(1);
                        configuredNetworks.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    ParceledListSlice privilegedConfiguredNetworks = getPrivilegedConfiguredNetworks();
                    parcel2.writeNoException();
                    if (privilegedConfiguredNetworks != null) {
                        parcel2.writeInt(1);
                        privilegedConfiguredNetworks.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    WifiConfiguration matchingWifiConfig = getMatchingWifiConfig(parcel.readInt() != 0 ? ScanResult.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (matchingWifiConfig != null) {
                        parcel2.writeInt(1);
                        matchingWifiConfig.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<OsuProvider> matchingOsuProviders = getMatchingOsuProviders(parcel.readInt() != 0 ? ScanResult.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeTypedList(matchingOsuProviders);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iAddOrUpdateNetwork = addOrUpdateNetwork(parcel.readInt() != 0 ? WifiConfiguration.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(iAddOrUpdateNetwork);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAddOrUpdatePasspointConfiguration = addOrUpdatePasspointConfiguration(parcel.readInt() != 0 ? PasspointConfiguration.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zAddOrUpdatePasspointConfiguration ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRemovePasspointConfiguration = removePasspointConfiguration(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zRemovePasspointConfiguration ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<PasspointConfiguration> passpointConfigurations = getPasspointConfigurations();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(passpointConfigurations);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    queryPasspointIcon(parcel.readLong(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iMatchProviderWithCurrentNetwork = matchProviderWithCurrentNetwork(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iMatchProviderWithCurrentNetwork);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    deauthenticateNetwork(parcel.readLong(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRemoveNetwork = removeNetwork(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zRemoveNetwork ? 1 : 0);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zEnableNetwork = enableNetwork(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zEnableNetwork ? 1 : 0);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDisableNetwork = disableNetwork(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zDisableNetwork ? 1 : 0);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    startScan(parcel.readInt() != 0 ? ScanSettings.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? WorkSource.CREATOR.createFromParcel(parcel) : null, parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<ScanResult> scanResults = getScanResults(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(scanResults);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    disconnect();
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    reconnect();
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    reassociate();
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    WifiInfo connectionInfo = getConnectionInfo(parcel.readString());
                    parcel2.writeNoException();
                    if (connectionInfo != null) {
                        parcel2.writeInt(1);
                        connectionInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean wifiEnabled = setWifiEnabled(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(wifiEnabled ? 1 : 0);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    int wifiEnabledState = getWifiEnabledState();
                    parcel2.writeNoException();
                    parcel2.writeInt(wifiEnabledState);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCountryCode(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    String countryCode = getCountryCode();
                    parcel2.writeNoException();
                    parcel2.writeString(countryCode);
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsDualBandSupported = isDualBandSupported();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsDualBandSupported ? 1 : 0);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSaveConfiguration = saveConfiguration();
                    parcel2.writeNoException();
                    parcel2.writeInt(zSaveConfiguration ? 1 : 0);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    DhcpInfo dhcpInfo = getDhcpInfo();
                    parcel2.writeNoException();
                    if (dhcpInfo != null) {
                        parcel2.writeInt(1);
                        dhcpInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsScanAlwaysAvailable = isScanAlwaysAvailable();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsScanAlwaysAvailable ? 1 : 0);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAcquireWifiLock = acquireWifiLock(parcel.readStrongBinder(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? WorkSource.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zAcquireWifiLock ? 1 : 0);
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateWifiLockWorkSource(parcel.readStrongBinder(), parcel.readInt() != 0 ? WorkSource.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zReleaseWifiLock = releaseWifiLock(parcel.readStrongBinder());
                    parcel2.writeNoException();
                    parcel2.writeInt(zReleaseWifiLock ? 1 : 0);
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    initializeMulticastFiltering();
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsMulticastEnabled = isMulticastEnabled();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsMulticastEnabled ? 1 : 0);
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    acquireMulticastLock(parcel.readStrongBinder(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    releaseMulticastLock();
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWifiApEnabled(parcel.readInt() != 0 ? WifiConfiguration.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    updateInterfaceIpState(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStartSoftAp = startSoftAp(parcel.readInt() != 0 ? WifiConfiguration.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zStartSoftAp ? 1 : 0);
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStopSoftAp = stopSoftAp();
                    parcel2.writeNoException();
                    parcel2.writeInt(zStopSoftAp ? 1 : 0);
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iStartLocalOnlyHotspot = startLocalOnlyHotspot(parcel.readInt() != 0 ? Messenger.CREATOR.createFromParcel(parcel) : null, parcel.readStrongBinder(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iStartLocalOnlyHotspot);
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopLocalOnlyHotspot();
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    startWatchLocalOnlyHotspot(parcel.readInt() != 0 ? Messenger.CREATOR.createFromParcel(parcel) : null, parcel.readStrongBinder());
                    parcel2.writeNoException();
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopWatchLocalOnlyHotspot();
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    int wifiApEnabledState = getWifiApEnabledState();
                    parcel2.writeNoException();
                    parcel2.writeInt(wifiApEnabledState);
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    WifiConfiguration wifiApConfiguration = getWifiApConfiguration();
                    parcel2.writeNoException();
                    if (wifiApConfiguration != null) {
                        parcel2.writeInt(1);
                        wifiApConfiguration.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWifiApConfiguration(parcel.readInt() != 0 ? WifiConfiguration.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    Messenger wifiServiceMessenger = getWifiServiceMessenger();
                    parcel2.writeNoException();
                    if (wifiServiceMessenger != null) {
                        parcel2.writeInt(1);
                        wifiServiceMessenger.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    enableTdls(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    enableTdlsWithMacAddress(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    String currentNetworkWpsNfcConfigurationToken = getCurrentNetworkWpsNfcConfigurationToken();
                    parcel2.writeNoException();
                    parcel2.writeString(currentNetworkWpsNfcConfigurationToken);
                    return true;
                case 54:
                    parcel.enforceInterface(DESCRIPTOR);
                    enableVerboseLogging(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    int verboseLoggingLevel = getVerboseLoggingLevel();
                    parcel2.writeNoException();
                    parcel2.writeInt(verboseLoggingLevel);
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    enableAggressiveHandover(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 57:
                    parcel.enforceInterface(DESCRIPTOR);
                    int aggressiveHandover = getAggressiveHandover();
                    parcel2.writeNoException();
                    parcel2.writeInt(aggressiveHandover);
                    return true;
                case 58:
                    parcel.enforceInterface(DESCRIPTOR);
                    setAllowScansWithTraffic(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 59:
                    parcel.enforceInterface(DESCRIPTOR);
                    int allowScansWithTraffic = getAllowScansWithTraffic();
                    parcel2.writeNoException();
                    parcel2.writeInt(allowScansWithTraffic);
                    return true;
                case 60:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean enableAutoJoinWhenAssociated = setEnableAutoJoinWhenAssociated(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(enableAutoJoinWhenAssociated ? 1 : 0);
                    return true;
                case 61:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean enableAutoJoinWhenAssociated2 = getEnableAutoJoinWhenAssociated();
                    parcel2.writeNoException();
                    parcel2.writeInt(enableAutoJoinWhenAssociated2 ? 1 : 0);
                    return true;
                case 62:
                    parcel.enforceInterface(DESCRIPTOR);
                    enableWifiConnectivityManager(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 63:
                    parcel.enforceInterface(DESCRIPTOR);
                    WifiConnectionStatistics connectionStatistics = getConnectionStatistics();
                    parcel2.writeNoException();
                    if (connectionStatistics != null) {
                        parcel2.writeInt(1);
                        connectionStatistics.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 64:
                    parcel.enforceInterface(DESCRIPTOR);
                    disableEphemeralNetwork(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 65:
                    parcel.enforceInterface(DESCRIPTOR);
                    factoryReset();
                    parcel2.writeNoException();
                    return true;
                case 66:
                    parcel.enforceInterface(DESCRIPTOR);
                    Network currentNetwork = getCurrentNetwork();
                    parcel2.writeNoException();
                    if (currentNetwork != null) {
                        parcel2.writeInt(1);
                        currentNetwork.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 67:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] bArrRetrieveBackupData = retrieveBackupData();
                    parcel2.writeNoException();
                    parcel2.writeByteArray(bArrRetrieveBackupData);
                    return true;
                case 68:
                    parcel.enforceInterface(DESCRIPTOR);
                    restoreBackupData(parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 69:
                    parcel.enforceInterface(DESCRIPTOR);
                    restoreSupplicantBackupData(parcel.createByteArray(), parcel.createByteArray());
                    parcel2.writeNoException();
                    return true;
                case 70:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRegisterWifiNetworkEventObserver = registerWifiNetworkEventObserver(IWifiNetworkEventObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterWifiNetworkEventObserver ? 1 : 0);
                    return true;
                case 71:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUnregisterWifiNetworkEventObserver = unregisterWifiNetworkEventObserver(IWifiNetworkEventObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zUnregisterWifiNetworkEventObserver ? 1 : 0);
                    return true;
                case 72:
                    parcel.enforceInterface(DESCRIPTOR);
                    int currentRssi = getCurrentRssi();
                    parcel2.writeNoException();
                    parcel2.writeInt(currentRssi);
                    return true;
                case 73:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsNetworkValidForVoWifi = isNetworkValidForVoWifi();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsNetworkValidForVoWifi ? 1 : 0);
                    return true;
                case 74:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean checkingInternetForVoWifi = setCheckingInternetForVoWifi(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(checkingInternetForVoWifi ? 1 : 0);
                    return true;
                case 75:
                    parcel.enforceInterface(DESCRIPTOR);
                    notifyAndCloseWifi();
                    parcel2.writeNoException();
                    return true;
                case 76:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSoftApBlockStation = softApBlockStation(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zSoftApBlockStation ? 1 : 0);
                    return true;
                case 77:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSoftApUnblockStation = softApUnblockStation(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zSoftApUnblockStation ? 1 : 0);
                    return true;
                case 78:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strSoftApGetConnectedStations = softApGetConnectedStations();
                    parcel2.writeNoException();
                    parcel2.writeString(strSoftApGetConnectedStations);
                    return true;
                case 79:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strSoftApGetBlockedStations = softApGetBlockedStations();
                    parcel2.writeNoException();
                    parcel2.writeString(strSoftApGetBlockedStations);
                    return true;
                case 80:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listSoftApGetConnectedStationsDetail = softApGetConnectedStationsDetail();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listSoftApGetConnectedStationsDetail);
                    return true;
                case 81:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listSoftApGetBlockedStationsDetail = softApGetBlockedStationsDetail();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listSoftApGetBlockedStationsDetail);
                    return true;
                case 82:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSoftApAddClientToWhiteList = softApAddClientToWhiteList(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zSoftApAddClientToWhiteList ? 1 : 0);
                    return true;
                case 83:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSoftApDelClientFromWhiteList = softApDelClientFromWhiteList(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zSoftApDelClientFromWhiteList ? 1 : 0);
                    return true;
                case 84:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSoftApSetClientWhiteListEnabled = softApSetClientWhiteListEnabled(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zSoftApSetClientWhiteListEnabled ? 1 : 0);
                    return true;
                case 85:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> listSoftApGetClientWhiteList = softApGetClientWhiteList();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listSoftApGetClientWhiteList);
                    return true;
                case 86:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSoftApIsWhiteListEnabled = softApIsWhiteListEnabled();
                    parcel2.writeNoException();
                    parcel2.writeInt(zSoftApIsWhiteListEnabled ? 1 : 0);
                    return true;
                case 87:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSoftApWpsCheckPin = softApWpsCheckPin(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zSoftApWpsCheckPin ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i2, parcel, parcel2, i3);
            }
        }
    }

    void acquireMulticastLock(IBinder iBinder, String str);

    boolean acquireWifiLock(IBinder iBinder, int i2, String str, WorkSource workSource);

    int addOrUpdateNetwork(WifiConfiguration wifiConfiguration);

    boolean addOrUpdatePasspointConfiguration(PasspointConfiguration passpointConfiguration);

    void deauthenticateNetwork(long j2, boolean z2);

    void disableEphemeralNetwork(String str);

    boolean disableNetwork(int i2);

    void disconnect();

    void enableAggressiveHandover(int i2);

    boolean enableNetwork(int i2, boolean z2);

    void enableTdls(String str, boolean z2);

    void enableTdlsWithMacAddress(String str, boolean z2);

    void enableVerboseLogging(int i2);

    void enableWifiConnectivityManager(boolean z2);

    void factoryReset();

    int getAggressiveHandover();

    int getAllowScansWithTraffic();

    ParceledListSlice getConfiguredNetworks();

    WifiInfo getConnectionInfo(String str);

    WifiConnectionStatistics getConnectionStatistics();

    String getCountryCode();

    Network getCurrentNetwork();

    String getCurrentNetworkWpsNfcConfigurationToken();

    int getCurrentRssi();

    DhcpInfo getDhcpInfo();

    boolean getEnableAutoJoinWhenAssociated();

    List<OsuProvider> getMatchingOsuProviders(ScanResult scanResult);

    WifiConfiguration getMatchingWifiConfig(ScanResult scanResult);

    List<PasspointConfiguration> getPasspointConfigurations();

    ParceledListSlice getPrivilegedConfiguredNetworks();

    List<ScanResult> getScanResults(String str);

    int getSupportedFeatures();

    int getVerboseLoggingLevel();

    WifiConfiguration getWifiApConfiguration();

    int getWifiApEnabledState();

    int getWifiEnabledState();

    Messenger getWifiServiceMessenger();

    void initializeMulticastFiltering();

    boolean isDualBandSupported();

    boolean isMulticastEnabled();

    boolean isNetworkValidForVoWifi();

    boolean isScanAlwaysAvailable();

    int matchProviderWithCurrentNetwork(String str);

    void notifyAndCloseWifi();

    void queryPasspointIcon(long j2, String str);

    void reassociate();

    void reconnect();

    boolean registerWifiNetworkEventObserver(IWifiNetworkEventObserver iWifiNetworkEventObserver);

    void releaseMulticastLock();

    boolean releaseWifiLock(IBinder iBinder);

    boolean removeNetwork(int i2);

    boolean removePasspointConfiguration(String str);

    WifiActivityEnergyInfo reportActivityInfo();

    void requestActivityInfo(ResultReceiver resultReceiver);

    void restoreBackupData(byte[] bArr);

    void restoreSupplicantBackupData(byte[] bArr, byte[] bArr2);

    byte[] retrieveBackupData();

    boolean saveConfiguration();

    void setAllowScansWithTraffic(int i2);

    boolean setCheckingInternetForVoWifi(boolean z2);

    void setCountryCode(String str, boolean z2);

    boolean setEnableAutoJoinWhenAssociated(boolean z2);

    void setWifiApConfiguration(WifiConfiguration wifiConfiguration);

    void setWifiApEnabled(WifiConfiguration wifiConfiguration, boolean z2);

    boolean setWifiEnabled(String str, boolean z2);

    boolean softApAddClientToWhiteList(String str, String str2);

    boolean softApBlockStation(String str);

    boolean softApDelClientFromWhiteList(String str, String str2);

    String softApGetBlockedStations();

    List<String> softApGetBlockedStationsDetail();

    List<String> softApGetClientWhiteList();

    String softApGetConnectedStations();

    List<String> softApGetConnectedStationsDetail();

    boolean softApIsWhiteListEnabled();

    boolean softApSetClientWhiteListEnabled(boolean z2);

    boolean softApUnblockStation(String str);

    boolean softApWpsCheckPin(String str);

    int startLocalOnlyHotspot(Messenger messenger, IBinder iBinder, String str);

    void startScan(ScanSettings scanSettings, WorkSource workSource, String str);

    boolean startSoftAp(WifiConfiguration wifiConfiguration);

    void startWatchLocalOnlyHotspot(Messenger messenger, IBinder iBinder);

    void stopLocalOnlyHotspot();

    boolean stopSoftAp();

    void stopWatchLocalOnlyHotspot();

    boolean unregisterWifiNetworkEventObserver(IWifiNetworkEventObserver iWifiNetworkEventObserver);

    void updateInterfaceIpState(String str, int i2);

    void updateWifiLockWorkSource(IBinder iBinder, WorkSource workSource);
}
