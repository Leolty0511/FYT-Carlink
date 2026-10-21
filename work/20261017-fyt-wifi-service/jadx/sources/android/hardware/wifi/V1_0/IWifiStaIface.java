package android.hardware.wifi.V1_0;

import android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback;
import android.hidl.base.V1_0.DebugInfo;
import android.hidl.base.V1_0.IBase;
import android.os.HidlSupport;
import android.os.HwBinder;
import android.os.HwBlob;
import android.os.HwParcel;
import android.os.IHwBinder;
import android.os.IHwInterface;
import android.os.NativeHandle;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public interface IWifiStaIface extends IWifiIface {
    public static final String kInterfaceName = "android.hardware.wifi@1.0::IWifiStaIface";

    @FunctionalInterface
    public interface getApfPacketFilterCapabilitiesCallback {
        void onValues(WifiStatus wifiStatus, StaApfPacketFilterCapabilities staApfPacketFilterCapabilities);
    }

    @FunctionalInterface
    public interface getBackgroundScanCapabilitiesCallback {
        void onValues(WifiStatus wifiStatus, StaBackgroundScanCapabilities staBackgroundScanCapabilities);
    }

    @FunctionalInterface
    public interface getCapabilitiesCallback {
        void onValues(WifiStatus wifiStatus, int i);
    }

    @FunctionalInterface
    public interface getDebugRxPacketFatesCallback {
        void onValues(WifiStatus wifiStatus, ArrayList<WifiDebugRxPacketFateReport> arrayList);
    }

    @FunctionalInterface
    public interface getDebugTxPacketFatesCallback {
        void onValues(WifiStatus wifiStatus, ArrayList<WifiDebugTxPacketFateReport> arrayList);
    }

    @FunctionalInterface
    public interface getLinkLayerStatsCallback {
        void onValues(WifiStatus wifiStatus, StaLinkLayerStats staLinkLayerStats);
    }

    @FunctionalInterface
    public interface getRoamingCapabilitiesCallback {
        void onValues(WifiStatus wifiStatus, StaRoamingCapabilities staRoamingCapabilities);
    }

    @FunctionalInterface
    public interface getValidFrequenciesForBandCallback {
        void onValues(WifiStatus wifiStatus, ArrayList<Integer> arrayList);
    }

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    IHwBinder asBinder();

    WifiStatus configureRoaming(StaRoamingConfig staRoamingConfig) throws RemoteException;

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    void debug(NativeHandle nativeHandle, ArrayList<String> arrayList) throws RemoteException;

    WifiStatus disableLinkLayerStatsCollection() throws RemoteException;

    WifiStatus enableLinkLayerStatsCollection(boolean z) throws RemoteException;

    WifiStatus enableNdOffload(boolean z) throws RemoteException;

    void getApfPacketFilterCapabilities(getApfPacketFilterCapabilitiesCallback getapfpacketfiltercapabilitiescallback) throws RemoteException;

    void getBackgroundScanCapabilities(getBackgroundScanCapabilitiesCallback getbackgroundscancapabilitiescallback) throws RemoteException;

    void getCapabilities(getCapabilitiesCallback getcapabilitiescallback) throws RemoteException;

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    DebugInfo getDebugInfo() throws RemoteException;

    void getDebugRxPacketFates(getDebugRxPacketFatesCallback getdebugrxpacketfatescallback) throws RemoteException;

    void getDebugTxPacketFates(getDebugTxPacketFatesCallback getdebugtxpacketfatescallback) throws RemoteException;

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    ArrayList<byte[]> getHashChain() throws RemoteException;

    void getLinkLayerStats(getLinkLayerStatsCallback getlinklayerstatscallback) throws RemoteException;

    void getRoamingCapabilities(getRoamingCapabilitiesCallback getroamingcapabilitiescallback) throws RemoteException;

    void getValidFrequenciesForBand(int i, getValidFrequenciesForBandCallback getvalidfrequenciesforbandcallback) throws RemoteException;

    WifiStatus installApfPacketFilter(int i, ArrayList<Byte> arrayList) throws RemoteException;

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    ArrayList<String> interfaceChain() throws RemoteException;

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    String interfaceDescriptor() throws RemoteException;

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j) throws RemoteException;

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    void notifySyspropsChanged() throws RemoteException;

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    void ping() throws RemoteException;

    WifiStatus registerEventCallback(IWifiStaIfaceEventCallback iWifiStaIfaceEventCallback) throws RemoteException;

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    void setHALInstrumentation() throws RemoteException;

    WifiStatus setRoamingState(byte b) throws RemoteException;

    WifiStatus setScanningMacOui(byte[] bArr) throws RemoteException;

    WifiStatus startBackgroundScan(int i, StaBackgroundScanParameters staBackgroundScanParameters) throws RemoteException;

    WifiStatus startDebugPacketFateMonitoring() throws RemoteException;

    WifiStatus startRssiMonitoring(int i, int i2, int i3) throws RemoteException;

    WifiStatus startSendingKeepAlivePackets(int i, ArrayList<Byte> arrayList, short s, byte[] bArr, byte[] bArr2, int i2) throws RemoteException;

    WifiStatus stopBackgroundScan(int i) throws RemoteException;

    WifiStatus stopRssiMonitoring(int i) throws RemoteException;

    WifiStatus stopSendingKeepAlivePackets(int i) throws RemoteException;

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient) throws RemoteException;

    static IWifiStaIface asInterface(IHwBinder binder) {
        if (binder == null) {
            return null;
        }
        IHwInterface iface = binder.queryLocalInterface(kInterfaceName);
        if (iface != null && (iface instanceof IWifiStaIface)) {
            return (IWifiStaIface) iface;
        }
        IWifiStaIface proxy = new Proxy(binder);
        try {
            for (String descriptor : proxy.interfaceChain()) {
                if (descriptor.equals(kInterfaceName)) {
                    return proxy;
                }
            }
        } catch (RemoteException e) {
        }
        return null;
    }

    static IWifiStaIface castFrom(IHwInterface iface) {
        if (iface == null) {
            return null;
        }
        return asInterface(iface.asBinder());
    }

    static IWifiStaIface getService(String serviceName, boolean retry) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName, retry));
    }

    static IWifiStaIface getService(boolean retry) throws RemoteException {
        return getService("default", retry);
    }

    static IWifiStaIface getService(String serviceName) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName));
    }

    static IWifiStaIface getService() throws RemoteException {
        return getService("default");
    }

    public static final class StaIfaceCapabilityMask {
        public static final int APF = 1;
        public static final int BACKGROUND_SCAN = 2;
        public static final int CONTROL_ROAMING = 16;
        public static final int DEBUG_PACKET_FATE = 16384;
        public static final int HOTSPOT = 256;
        public static final int KEEP_ALIVE = 8192;
        public static final int LINK_LAYER_STATS = 4;
        public static final int ND_OFFLOAD = 4096;
        public static final int PNO = 512;
        public static final int PROBE_IE_WHITELIST = 32;
        public static final int RSSI_MONITOR = 8;
        public static final int SCAN_RAND = 64;
        public static final int STA_5G = 128;
        public static final int TDLS = 1024;
        public static final int TDLS_OFFCHANNEL = 2048;

        public static final String toString(int o) {
            if (o == 1) {
                return "APF";
            }
            if (o == 2) {
                return "BACKGROUND_SCAN";
            }
            if (o == 4) {
                return "LINK_LAYER_STATS";
            }
            if (o == 8) {
                return "RSSI_MONITOR";
            }
            if (o == 16) {
                return "CONTROL_ROAMING";
            }
            if (o == 32) {
                return "PROBE_IE_WHITELIST";
            }
            if (o == 64) {
                return "SCAN_RAND";
            }
            if (o == 128) {
                return "STA_5G";
            }
            if (o == 256) {
                return "HOTSPOT";
            }
            if (o == 512) {
                return "PNO";
            }
            if (o == 1024) {
                return "TDLS";
            }
            if (o == 2048) {
                return "TDLS_OFFCHANNEL";
            }
            if (o == 4096) {
                return "ND_OFFLOAD";
            }
            if (o == 8192) {
                return "KEEP_ALIVE";
            }
            if (o == 16384) {
                return "DEBUG_PACKET_FATE";
            }
            return "0x" + Integer.toHexString(o);
        }

        public static final String dumpBitfield(int o) {
            ArrayList<String> list = new ArrayList<>();
            int flipped = 0;
            if ((o & 1) == 1) {
                list.add("APF");
                flipped = 0 | 1;
            }
            if ((o & 2) == 2) {
                list.add("BACKGROUND_SCAN");
                flipped |= 2;
            }
            if ((o & 4) == 4) {
                list.add("LINK_LAYER_STATS");
                flipped |= 4;
            }
            if ((o & 8) == 8) {
                list.add("RSSI_MONITOR");
                flipped |= 8;
            }
            if ((o & 16) == 16) {
                list.add("CONTROL_ROAMING");
                flipped |= 16;
            }
            if ((o & 32) == 32) {
                list.add("PROBE_IE_WHITELIST");
                flipped |= 32;
            }
            if ((o & 64) == 64) {
                list.add("SCAN_RAND");
                flipped |= 64;
            }
            if ((o & 128) == 128) {
                list.add("STA_5G");
                flipped |= 128;
            }
            if ((o & 256) == 256) {
                list.add("HOTSPOT");
                flipped |= 256;
            }
            if ((o & 512) == 512) {
                list.add("PNO");
                flipped |= 512;
            }
            if ((o & 1024) == 1024) {
                list.add("TDLS");
                flipped |= 1024;
            }
            if ((o & 2048) == 2048) {
                list.add("TDLS_OFFCHANNEL");
                flipped |= 2048;
            }
            if ((o & 4096) == 4096) {
                list.add("ND_OFFLOAD");
                flipped |= 4096;
            }
            if ((o & 8192) == 8192) {
                list.add("KEEP_ALIVE");
                flipped |= 8192;
            }
            if ((o & 16384) == 16384) {
                list.add("DEBUG_PACKET_FATE");
                flipped |= 16384;
            }
            if (o != flipped) {
                list.add("0x" + Integer.toHexString((~flipped) & o));
            }
            return String.join(" | ", list);
        }
    }

    public static final class Proxy implements IWifiStaIface {
        private IHwBinder mRemote;

        public Proxy(IHwBinder remote) {
            this.mRemote = (IHwBinder) Objects.requireNonNull(remote);
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public IHwBinder asBinder() {
            return this.mRemote;
        }

        public String toString() {
            try {
                return interfaceDescriptor() + "@Proxy";
            } catch (RemoteException e) {
                return "[class or subclass of android.hardware.wifi@1.0::IWifiStaIface]@Proxy";
            }
        }

        public final boolean equals(Object other) {
            return HidlSupport.interfacesEqual(this, other);
        }

        public final int hashCode() {
            return asBinder().hashCode();
        }

        @Override // android.hardware.wifi.V1_0.IWifiIface
        public void getType(IWifiIface.getTypeCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiIface.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(1, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                int _hidl_out_type = _hidl_reply.readInt32();
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_type);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiIface
        public void getName(IWifiIface.getNameCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiIface.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(2, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                String _hidl_out_name = _hidl_reply.readString();
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_name);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public WifiStatus registerEventCallback(IWifiStaIfaceEventCallback callback) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            _hidl_request.writeStrongBinder(callback == null ? null : callback.asBinder());
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(3, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public void getCapabilities(getCapabilitiesCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(4, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                int _hidl_out_capabilities = _hidl_reply.readInt32();
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_capabilities);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public void getApfPacketFilterCapabilities(getApfPacketFilterCapabilitiesCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(5, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                StaApfPacketFilterCapabilities _hidl_out_capabilities = new StaApfPacketFilterCapabilities();
                _hidl_out_capabilities.readFromParcel(_hidl_reply);
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_capabilities);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public WifiStatus installApfPacketFilter(int cmdId, ArrayList<Byte> program) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            _hidl_request.writeInt32(cmdId);
            _hidl_request.writeInt8Vector(program);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(6, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public void getBackgroundScanCapabilities(getBackgroundScanCapabilitiesCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(7, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                StaBackgroundScanCapabilities _hidl_out_capabilities = new StaBackgroundScanCapabilities();
                _hidl_out_capabilities.readFromParcel(_hidl_reply);
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_capabilities);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public void getValidFrequenciesForBand(int band, getValidFrequenciesForBandCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            _hidl_request.writeInt32(band);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(8, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                ArrayList<Integer> _hidl_out_frequencies = _hidl_reply.readInt32Vector();
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_frequencies);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public WifiStatus startBackgroundScan(int cmdId, StaBackgroundScanParameters params) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            _hidl_request.writeInt32(cmdId);
            params.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(9, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public WifiStatus stopBackgroundScan(int cmdId) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            _hidl_request.writeInt32(cmdId);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(10, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public WifiStatus enableLinkLayerStatsCollection(boolean debug) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            _hidl_request.writeBool(debug);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(11, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public WifiStatus disableLinkLayerStatsCollection() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(12, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public void getLinkLayerStats(getLinkLayerStatsCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(13, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                StaLinkLayerStats _hidl_out_stats = new StaLinkLayerStats();
                _hidl_out_stats.readFromParcel(_hidl_reply);
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_stats);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public WifiStatus startRssiMonitoring(int cmdId, int maxRssi, int minRssi) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            _hidl_request.writeInt32(cmdId);
            _hidl_request.writeInt32(maxRssi);
            _hidl_request.writeInt32(minRssi);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(14, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public WifiStatus stopRssiMonitoring(int cmdId) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            _hidl_request.writeInt32(cmdId);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(15, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public void getRoamingCapabilities(getRoamingCapabilitiesCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(16, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                StaRoamingCapabilities _hidl_out_caps = new StaRoamingCapabilities();
                _hidl_out_caps.readFromParcel(_hidl_reply);
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_caps);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public WifiStatus configureRoaming(StaRoamingConfig config) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            config.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(17, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public WifiStatus setRoamingState(byte state) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            _hidl_request.writeInt8(state);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(18, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public WifiStatus enableNdOffload(boolean enable) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            _hidl_request.writeBool(enable);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(19, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public WifiStatus startSendingKeepAlivePackets(int cmdId, ArrayList<Byte> ipPacketData, short etherType, byte[] srcAddress, byte[] dstAddress, int periodInMs) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            _hidl_request.writeInt32(cmdId);
            _hidl_request.writeInt8Vector(ipPacketData);
            _hidl_request.writeInt16(etherType);
            HwBlob _hidl_blob = new HwBlob(6);
            if (srcAddress == null || srcAddress.length != 6) {
                throw new IllegalArgumentException("Array element is not of the expected length");
            }
            _hidl_blob.putInt8Array(0L, srcAddress);
            _hidl_request.writeBuffer(_hidl_blob);
            HwBlob _hidl_blob2 = new HwBlob(6);
            if (dstAddress == null || dstAddress.length != 6) {
                throw new IllegalArgumentException("Array element is not of the expected length");
            }
            _hidl_blob2.putInt8Array(0L, dstAddress);
            _hidl_request.writeBuffer(_hidl_blob2);
            _hidl_request.writeInt32(periodInMs);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(20, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public WifiStatus stopSendingKeepAlivePackets(int cmdId) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            _hidl_request.writeInt32(cmdId);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(21, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public WifiStatus setScanningMacOui(byte[] oui) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            HwBlob _hidl_blob = new HwBlob(3);
            if (oui == null || oui.length != 3) {
                throw new IllegalArgumentException("Array element is not of the expected length");
            }
            _hidl_blob.putInt8Array(0L, oui);
            _hidl_request.writeBuffer(_hidl_blob);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(22, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public WifiStatus startDebugPacketFateMonitoring() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(23, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public void getDebugTxPacketFates(getDebugTxPacketFatesCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(24, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                ArrayList<WifiDebugTxPacketFateReport> _hidl_out_fates = WifiDebugTxPacketFateReport.readVectorFromParcel(_hidl_reply);
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_fates);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface
        public void getDebugRxPacketFates(getDebugRxPacketFatesCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiStaIface.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(25, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                ArrayList<WifiDebugRxPacketFateReport> _hidl_out_fates = WifiDebugRxPacketFateReport.readVectorFromParcel(_hidl_reply);
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_fates);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public ArrayList<String> interfaceChain() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256067662, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                ArrayList<String> _hidl_out_descriptors = _hidl_reply.readStringVector();
                return _hidl_out_descriptors;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public void debug(NativeHandle fd, ArrayList<String> options) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            _hidl_request.writeNativeHandle(fd);
            _hidl_request.writeStringVector(options);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256131655, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public String interfaceDescriptor() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256136003, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                String _hidl_out_descriptor = _hidl_reply.readString();
                return _hidl_out_descriptor;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public ArrayList<byte[]> getHashChain() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256398152, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                ArrayList<byte[]> _hidl_out_hashchain = new ArrayList<>();
                HwBlob _hidl_blob = _hidl_reply.readBuffer(16L);
                int _hidl_vec_size = _hidl_blob.getInt32(8L);
                HwBlob childBlob = _hidl_reply.readEmbeddedBuffer(_hidl_vec_size * 32, _hidl_blob.handle(), 0L, true);
                _hidl_out_hashchain.clear();
                for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
                    byte[] _hidl_vec_element = new byte[32];
                    long _hidl_array_offset_1 = _hidl_index_0 * 32;
                    childBlob.copyToInt8Array(_hidl_array_offset_1, _hidl_vec_element, 32);
                    _hidl_out_hashchain.add(_hidl_vec_element);
                }
                _hidl_reply.release();
                return _hidl_out_hashchain;
            } catch (Throwable th) {
                _hidl_reply.release();
                throw th;
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public void setHALInstrumentation() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256462420, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) throws RemoteException {
            return this.mRemote.linkToDeath(recipient, cookie);
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public void ping() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(256921159, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public DebugInfo getDebugInfo() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(257049926, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                DebugInfo _hidl_out_info = new DebugInfo();
                _hidl_out_info.readFromParcel(_hidl_reply);
                return _hidl_out_info;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public void notifySyspropsChanged() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IBase.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(257120595, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) throws RemoteException {
            return this.mRemote.unlinkToDeath(recipient);
        }
    }

    public static abstract class Stub extends HwBinder implements IWifiStaIface {
        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public IHwBinder asBinder() {
            return this;
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final ArrayList<String> interfaceChain() {
            return new ArrayList<>(Arrays.asList(IWifiStaIface.kInterfaceName, IWifiIface.kInterfaceName, IBase.kInterfaceName));
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public void debug(NativeHandle fd, ArrayList<String> options) {
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final String interfaceDescriptor() {
            return IWifiStaIface.kInterfaceName;
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final ArrayList<byte[]> getHashChain() {
            return new ArrayList<>(Arrays.asList(new byte[]{59, -128, -109, -45, -98, -15, -31, 14, 67, -59, 83, -118, -5, -11, -1, 110, 57, -72, -40, 22, -114, -69, -31, -103, -115, -103, 62, -119, -30, 95, 20, -91}, new byte[]{107, -102, -44, 58, 94, -5, -26, -54, 33, 79, 117, 30, 34, -50, 67, -49, 92, -44, -43, -43, -14, -53, -88, 15, 36, -52, -45, 117, 90, 114, 64, 28}, new byte[]{-20, 127, -41, -98, -48, 45, -6, -123, -68, 73, -108, 38, -83, -82, 62, -66, 35, -17, 5, 36, -13, -51, 105, 87, 19, -109, 36, -72, 59, 24, -54, 76}));
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final void setHALInstrumentation() {
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) {
            return true;
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final void ping() {
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final DebugInfo getDebugInfo() {
            DebugInfo info = new DebugInfo();
            info.pid = HidlSupport.getPidIfSharable();
            info.ptr = 0L;
            info.arch = 0;
            return info;
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final void notifySyspropsChanged() {
            HwBinder.enableInstrumentation();
        }

        @Override // android.hardware.wifi.V1_0.IWifiStaIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) {
            return true;
        }

        public IHwInterface queryLocalInterface(String descriptor) {
            if (IWifiStaIface.kInterfaceName.equals(descriptor)) {
                return this;
            }
            return null;
        }

        public void registerAsService(String serviceName) throws RemoteException {
            registerService(serviceName);
        }

        public String toString() {
            return interfaceDescriptor() + "@Stub";
        }

        public void onTransact(int _hidl_code, HwParcel _hidl_request, final HwParcel _hidl_reply, int _hidl_flags) throws RemoteException {
            switch (_hidl_code) {
                case 1:
                    boolean _hidl_is_oneway = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IWifiIface.kInterfaceName);
                        getType(new IWifiIface.getTypeCallback() { // from class: android.hardware.wifi.V1_0.IWifiStaIface.Stub.1
                            @Override // android.hardware.wifi.V1_0.IWifiIface.getTypeCallback
                            public void onValues(WifiStatus status, int type) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeInt32(type);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 2:
                    boolean _hidl_is_oneway2 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway2) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IWifiIface.kInterfaceName);
                        getName(new IWifiIface.getNameCallback() { // from class: android.hardware.wifi.V1_0.IWifiStaIface.Stub.2
                            @Override // android.hardware.wifi.V1_0.IWifiIface.getNameCallback
                            public void onValues(WifiStatus status, String name) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeString(name);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 3:
                    boolean _hidl_is_oneway3 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway3) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                    IWifiStaIfaceEventCallback callback = IWifiStaIfaceEventCallback.asInterface(_hidl_request.readStrongBinder());
                    WifiStatus _hidl_out_status = registerEventCallback(callback);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 4:
                    boolean _hidl_is_oneway4 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway4) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                        getCapabilities(new getCapabilitiesCallback() { // from class: android.hardware.wifi.V1_0.IWifiStaIface.Stub.3
                            @Override // android.hardware.wifi.V1_0.IWifiStaIface.getCapabilitiesCallback
                            public void onValues(WifiStatus status, int capabilities) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeInt32(capabilities);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 5:
                    boolean _hidl_is_oneway5 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway5) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                        getApfPacketFilterCapabilities(new getApfPacketFilterCapabilitiesCallback() { // from class: android.hardware.wifi.V1_0.IWifiStaIface.Stub.4
                            @Override // android.hardware.wifi.V1_0.IWifiStaIface.getApfPacketFilterCapabilitiesCallback
                            public void onValues(WifiStatus status, StaApfPacketFilterCapabilities capabilities) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                capabilities.writeToParcel(_hidl_reply);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 6:
                    boolean _hidl_is_oneway6 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway6) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                    int cmdId = _hidl_request.readInt32();
                    ArrayList<Byte> program = _hidl_request.readInt8Vector();
                    WifiStatus _hidl_out_status2 = installApfPacketFilter(cmdId, program);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status2.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 7:
                    boolean _hidl_is_oneway7 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway7) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                        getBackgroundScanCapabilities(new getBackgroundScanCapabilitiesCallback() { // from class: android.hardware.wifi.V1_0.IWifiStaIface.Stub.5
                            @Override // android.hardware.wifi.V1_0.IWifiStaIface.getBackgroundScanCapabilitiesCallback
                            public void onValues(WifiStatus status, StaBackgroundScanCapabilities capabilities) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                capabilities.writeToParcel(_hidl_reply);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 8:
                    boolean _hidl_is_oneway8 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway8) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                        int band = _hidl_request.readInt32();
                        getValidFrequenciesForBand(band, new getValidFrequenciesForBandCallback() { // from class: android.hardware.wifi.V1_0.IWifiStaIface.Stub.6
                            @Override // android.hardware.wifi.V1_0.IWifiStaIface.getValidFrequenciesForBandCallback
                            public void onValues(WifiStatus status, ArrayList<Integer> frequencies) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeInt32Vector(frequencies);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 9:
                    boolean _hidl_is_oneway9 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway9) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                    int cmdId2 = _hidl_request.readInt32();
                    StaBackgroundScanParameters params = new StaBackgroundScanParameters();
                    params.readFromParcel(_hidl_request);
                    WifiStatus _hidl_out_status3 = startBackgroundScan(cmdId2, params);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status3.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 10:
                    boolean _hidl_is_oneway10 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway10) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                    int cmdId3 = _hidl_request.readInt32();
                    WifiStatus _hidl_out_status4 = stopBackgroundScan(cmdId3);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status4.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 11:
                    boolean _hidl_is_oneway11 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway11) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                    boolean debug = _hidl_request.readBool();
                    WifiStatus _hidl_out_status5 = enableLinkLayerStatsCollection(debug);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status5.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 12:
                    boolean _hidl_is_oneway12 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway12) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                    WifiStatus _hidl_out_status6 = disableLinkLayerStatsCollection();
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status6.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 13:
                    boolean _hidl_is_oneway13 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway13) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                        getLinkLayerStats(new getLinkLayerStatsCallback() { // from class: android.hardware.wifi.V1_0.IWifiStaIface.Stub.7
                            @Override // android.hardware.wifi.V1_0.IWifiStaIface.getLinkLayerStatsCallback
                            public void onValues(WifiStatus status, StaLinkLayerStats stats) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                stats.writeToParcel(_hidl_reply);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 14:
                    boolean _hidl_is_oneway14 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway14) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                    int cmdId4 = _hidl_request.readInt32();
                    int maxRssi = _hidl_request.readInt32();
                    int minRssi = _hidl_request.readInt32();
                    WifiStatus _hidl_out_status7 = startRssiMonitoring(cmdId4, maxRssi, minRssi);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status7.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 15:
                    boolean _hidl_is_oneway15 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway15) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                    int cmdId5 = _hidl_request.readInt32();
                    WifiStatus _hidl_out_status8 = stopRssiMonitoring(cmdId5);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status8.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 16:
                    boolean _hidl_is_oneway16 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway16) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                        getRoamingCapabilities(new getRoamingCapabilitiesCallback() { // from class: android.hardware.wifi.V1_0.IWifiStaIface.Stub.8
                            @Override // android.hardware.wifi.V1_0.IWifiStaIface.getRoamingCapabilitiesCallback
                            public void onValues(WifiStatus status, StaRoamingCapabilities caps) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                caps.writeToParcel(_hidl_reply);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 17:
                    boolean _hidl_is_oneway17 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway17) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                    StaRoamingConfig config = new StaRoamingConfig();
                    config.readFromParcel(_hidl_request);
                    WifiStatus _hidl_out_status9 = configureRoaming(config);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status9.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 18:
                    boolean _hidl_is_oneway18 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway18) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                    byte state = _hidl_request.readInt8();
                    WifiStatus _hidl_out_status10 = setRoamingState(state);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status10.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 19:
                    boolean _hidl_is_oneway19 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway19) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                    boolean enable = _hidl_request.readBool();
                    WifiStatus _hidl_out_status11 = enableNdOffload(enable);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status11.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 20:
                    boolean _hidl_is_oneway20 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway20) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                    int cmdId6 = _hidl_request.readInt32();
                    ArrayList<Byte> ipPacketData = _hidl_request.readInt8Vector();
                    short etherType = _hidl_request.readInt16();
                    byte[] srcAddress = new byte[6];
                    HwBlob _hidl_blob = _hidl_request.readBuffer(6L);
                    _hidl_blob.copyToInt8Array(0L, srcAddress, 6);
                    byte[] dstAddress = new byte[6];
                    HwBlob _hidl_blob2 = _hidl_request.readBuffer(6L);
                    _hidl_blob2.copyToInt8Array(0L, dstAddress, 6);
                    int periodInMs = _hidl_request.readInt32();
                    WifiStatus _hidl_out_status12 = startSendingKeepAlivePackets(cmdId6, ipPacketData, etherType, srcAddress, dstAddress, periodInMs);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status12.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case ISupplicantStaIfaceCallback.ReasonCode.UNSUPPORTED_RSN_IE_VERSION /* 21 */:
                    boolean _hidl_is_oneway21 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway21) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                    int cmdId7 = _hidl_request.readInt32();
                    WifiStatus _hidl_out_status13 = stopSendingKeepAlivePackets(cmdId7);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status13.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 22:
                    boolean _hidl_is_oneway22 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway22) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                    byte[] oui = new byte[3];
                    HwBlob _hidl_blob3 = _hidl_request.readBuffer(3L);
                    _hidl_blob3.copyToInt8Array(0L, oui, 3);
                    WifiStatus _hidl_out_status14 = setScanningMacOui(oui);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status14.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 23:
                    boolean _hidl_is_oneway23 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway23) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                    WifiStatus _hidl_out_status15 = startDebugPacketFateMonitoring();
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status15.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 24:
                    boolean _hidl_is_oneway24 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway24) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                        getDebugTxPacketFates(new getDebugTxPacketFatesCallback() { // from class: android.hardware.wifi.V1_0.IWifiStaIface.Stub.9
                            @Override // android.hardware.wifi.V1_0.IWifiStaIface.getDebugTxPacketFatesCallback
                            public void onValues(WifiStatus status, ArrayList<WifiDebugTxPacketFateReport> fates) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                WifiDebugTxPacketFateReport.writeVectorToParcel(_hidl_reply, fates);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 25:
                    boolean _hidl_is_oneway25 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway25) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IWifiStaIface.kInterfaceName);
                        getDebugRxPacketFates(new getDebugRxPacketFatesCallback() { // from class: android.hardware.wifi.V1_0.IWifiStaIface.Stub.10
                            @Override // android.hardware.wifi.V1_0.IWifiStaIface.getDebugRxPacketFatesCallback
                            public void onValues(WifiStatus status, ArrayList<WifiDebugRxPacketFateReport> fates) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                WifiDebugRxPacketFateReport.writeVectorToParcel(_hidl_reply, fates);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                default:
                    switch (_hidl_code) {
                        case 256067662:
                            boolean _hidl_is_oneway26 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway26) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            ArrayList<String> _hidl_out_descriptors = interfaceChain();
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.writeStringVector(_hidl_out_descriptors);
                            _hidl_reply.send();
                            return;
                        case 256131655:
                            boolean _hidl_is_oneway27 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway27) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            NativeHandle fd = _hidl_request.readNativeHandle();
                            ArrayList<String> options = _hidl_request.readStringVector();
                            debug(fd, options);
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.send();
                            return;
                        case 256136003:
                            boolean _hidl_is_oneway28 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway28) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            String _hidl_out_descriptor = interfaceDescriptor();
                            _hidl_reply.writeStatus(0);
                            _hidl_reply.writeString(_hidl_out_descriptor);
                            _hidl_reply.send();
                            return;
                        case 256398152:
                            boolean _hidl_is_oneway29 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway29) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            ArrayList<byte[]> _hidl_out_hashchain = getHashChain();
                            _hidl_reply.writeStatus(0);
                            HwBlob _hidl_blob4 = new HwBlob(16);
                            int _hidl_vec_size = _hidl_out_hashchain.size();
                            _hidl_blob4.putInt32(8L, _hidl_vec_size);
                            _hidl_blob4.putBool(12L, false);
                            HwBlob childBlob = new HwBlob(_hidl_vec_size * 32);
                            for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
                                long _hidl_array_offset_1 = _hidl_index_0 * 32;
                                byte[] _hidl_array_item_1 = _hidl_out_hashchain.get(_hidl_index_0);
                                if (_hidl_array_item_1 == null || _hidl_array_item_1.length != 32) {
                                    throw new IllegalArgumentException("Array element is not of the expected length");
                                }
                                childBlob.putInt8Array(_hidl_array_offset_1, _hidl_array_item_1);
                            }
                            _hidl_blob4.putBlob(0L, childBlob);
                            _hidl_reply.writeBuffer(_hidl_blob4);
                            _hidl_reply.send();
                            return;
                        case 256462420:
                            boolean _hidl_is_oneway30 = (_hidl_flags & 1) != 0;
                            if (!_hidl_is_oneway30) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                setHALInstrumentation();
                                return;
                            }
                        case 256660548:
                            boolean _hidl_is_oneway31 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway31) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            return;
                        case 256921159:
                            boolean _hidl_is_oneway32 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway32) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                ping();
                                _hidl_reply.writeStatus(0);
                                _hidl_reply.send();
                                return;
                            }
                        case 257049926:
                            boolean _hidl_is_oneway33 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway33) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            DebugInfo _hidl_out_info = getDebugInfo();
                            _hidl_reply.writeStatus(0);
                            _hidl_out_info.writeToParcel(_hidl_reply);
                            _hidl_reply.send();
                            return;
                        case 257120595:
                            boolean _hidl_is_oneway34 = (_hidl_flags & 1) != 0;
                            if (!_hidl_is_oneway34) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                notifySyspropsChanged();
                                return;
                            }
                        case 257250372:
                            boolean _hidl_is_oneway35 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway35) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            return;
                        default:
                            return;
                    }
            }
        }
    }
}
