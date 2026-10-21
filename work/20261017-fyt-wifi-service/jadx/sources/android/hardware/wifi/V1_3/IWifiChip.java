package android.hardware.wifi.V1_3;

import android.hardware.wifi.V1_0.IWifiApIface;
import android.hardware.wifi.V1_0.IWifiChipEventCallback;
import android.hardware.wifi.V1_0.IWifiIface;
import android.hardware.wifi.V1_0.IWifiNanIface;
import android.hardware.wifi.V1_0.IWifiP2pIface;
import android.hardware.wifi.V1_0.IWifiRttController;
import android.hardware.wifi.V1_0.WifiDebugHostWakeReasonStats;
import android.hardware.wifi.V1_0.WifiDebugRingBufferStatus;
import android.hardware.wifi.V1_0.WifiStatus;
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
public interface IWifiChip extends android.hardware.wifi.V1_2.IWifiChip {
    public static final String kInterfaceName = "android.hardware.wifi@1.3::IWifiChip";

    @FunctionalInterface
    public interface getCapabilities_1_3Callback {
        void onValues(WifiStatus wifiStatus, int i);
    }

    @Override // android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
    IHwBinder asBinder();

    @Override // android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
    void debug(NativeHandle nativeHandle, ArrayList<String> arrayList) throws RemoteException;

    WifiStatus flushRingBufferToFile() throws RemoteException;

    void getCapabilities_1_3(getCapabilities_1_3Callback getcapabilities_1_3callback) throws RemoteException;

    @Override // android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
    DebugInfo getDebugInfo() throws RemoteException;

    @Override // android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
    ArrayList<byte[]> getHashChain() throws RemoteException;

    @Override // android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
    ArrayList<String> interfaceChain() throws RemoteException;

    @Override // android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
    String interfaceDescriptor() throws RemoteException;

    @Override // android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
    boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j) throws RemoteException;

    @Override // android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
    void notifySyspropsChanged() throws RemoteException;

    @Override // android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
    void ping() throws RemoteException;

    @Override // android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
    void setHALInstrumentation() throws RemoteException;

    WifiStatus setLatencyMode(int i) throws RemoteException;

    @Override // android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
    boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient) throws RemoteException;

    static IWifiChip asInterface(IHwBinder binder) {
        if (binder == null) {
            return null;
        }
        IHwInterface iface = binder.queryLocalInterface(kInterfaceName);
        if (iface != null && (iface instanceof IWifiChip)) {
            return (IWifiChip) iface;
        }
        IWifiChip proxy = new Proxy(binder);
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

    static IWifiChip castFrom(IHwInterface iface) {
        if (iface == null) {
            return null;
        }
        return asInterface(iface.asBinder());
    }

    static IWifiChip getService(String serviceName, boolean retry) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName, retry));
    }

    static IWifiChip getService(boolean retry) throws RemoteException {
        return getService("default", retry);
    }

    static IWifiChip getService(String serviceName) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName));
    }

    static IWifiChip getService() throws RemoteException {
        return getService("default");
    }

    public static final class ChipCapabilityMask {
        public static final int D2AP_RTT = 1024;
        public static final int D2D_RTT = 512;
        public static final int DEBUG_ERROR_ALERTS = 128;
        public static final int DEBUG_HOST_WAKE_REASON_STATS = 64;
        public static final int DEBUG_MEMORY_DRIVER_DUMP = 2;
        public static final int DEBUG_MEMORY_FIRMWARE_DUMP = 1;
        public static final int DEBUG_RING_BUFFER_CONNECT_EVENT = 4;
        public static final int DEBUG_RING_BUFFER_POWER_EVENT = 8;
        public static final int DEBUG_RING_BUFFER_VENDOR_DATA = 32;
        public static final int DEBUG_RING_BUFFER_WAKELOCK_EVENT = 16;
        public static final int P2P_RAND_MAC = 8192;
        public static final int SET_LATENCY_MODE = 4096;
        public static final int SET_TX_POWER_LIMIT = 256;
        public static final int USE_BODY_HEAD_SAR = 2048;

        public static final String toString(int o) {
            if (o == 1) {
                return "DEBUG_MEMORY_FIRMWARE_DUMP";
            }
            if (o == 2) {
                return "DEBUG_MEMORY_DRIVER_DUMP";
            }
            if (o == 4) {
                return "DEBUG_RING_BUFFER_CONNECT_EVENT";
            }
            if (o == 8) {
                return "DEBUG_RING_BUFFER_POWER_EVENT";
            }
            if (o == 16) {
                return "DEBUG_RING_BUFFER_WAKELOCK_EVENT";
            }
            if (o == 32) {
                return "DEBUG_RING_BUFFER_VENDOR_DATA";
            }
            if (o == 64) {
                return "DEBUG_HOST_WAKE_REASON_STATS";
            }
            if (o == 128) {
                return "DEBUG_ERROR_ALERTS";
            }
            if (o == 256) {
                return "SET_TX_POWER_LIMIT";
            }
            if (o == 512) {
                return "D2D_RTT";
            }
            if (o == 1024) {
                return "D2AP_RTT";
            }
            if (o == 2048) {
                return "USE_BODY_HEAD_SAR";
            }
            if (o == 4096) {
                return "SET_LATENCY_MODE";
            }
            if (o == 8192) {
                return "P2P_RAND_MAC";
            }
            return "0x" + Integer.toHexString(o);
        }

        public static final String dumpBitfield(int o) {
            ArrayList<String> list = new ArrayList<>();
            int flipped = 0;
            if ((o & 1) == 1) {
                list.add("DEBUG_MEMORY_FIRMWARE_DUMP");
                flipped = 0 | 1;
            }
            if ((o & 2) == 2) {
                list.add("DEBUG_MEMORY_DRIVER_DUMP");
                flipped |= 2;
            }
            if ((o & 4) == 4) {
                list.add("DEBUG_RING_BUFFER_CONNECT_EVENT");
                flipped |= 4;
            }
            if ((o & 8) == 8) {
                list.add("DEBUG_RING_BUFFER_POWER_EVENT");
                flipped |= 8;
            }
            if ((o & 16) == 16) {
                list.add("DEBUG_RING_BUFFER_WAKELOCK_EVENT");
                flipped |= 16;
            }
            if ((o & 32) == 32) {
                list.add("DEBUG_RING_BUFFER_VENDOR_DATA");
                flipped |= 32;
            }
            if ((o & 64) == 64) {
                list.add("DEBUG_HOST_WAKE_REASON_STATS");
                flipped |= 64;
            }
            if ((o & 128) == 128) {
                list.add("DEBUG_ERROR_ALERTS");
                flipped |= 128;
            }
            if ((o & 256) == 256) {
                list.add("SET_TX_POWER_LIMIT");
                flipped |= 256;
            }
            if ((o & 512) == 512) {
                list.add("D2D_RTT");
                flipped |= 512;
            }
            if ((o & 1024) == 1024) {
                list.add("D2AP_RTT");
                flipped |= 1024;
            }
            if ((o & 2048) == 2048) {
                list.add("USE_BODY_HEAD_SAR");
                flipped |= 2048;
            }
            if ((o & 4096) == 4096) {
                list.add("SET_LATENCY_MODE");
                flipped |= 4096;
            }
            if ((o & 8192) == 8192) {
                list.add("P2P_RAND_MAC");
                flipped |= 8192;
            }
            if (o != flipped) {
                list.add("0x" + Integer.toHexString((~flipped) & o));
            }
            return String.join(" | ", list);
        }
    }

    public static final class LatencyMode {
        public static final int LOW = 1;
        public static final int NORMAL = 0;

        public static final String toString(int o) {
            if (o == 0) {
                return "NORMAL";
            }
            if (o == 1) {
                return "LOW";
            }
            return "0x" + Integer.toHexString(o);
        }

        public static final String dumpBitfield(int o) {
            ArrayList<String> list = new ArrayList<>();
            int flipped = 0;
            list.add("NORMAL");
            if ((o & 1) == 1) {
                list.add("LOW");
                flipped = 0 | 1;
            }
            if (o != flipped) {
                list.add("0x" + Integer.toHexString((~flipped) & o));
            }
            return String.join(" | ", list);
        }
    }

    public static final class Proxy implements IWifiChip {
        private IHwBinder mRemote;

        public Proxy(IHwBinder remote) {
            this.mRemote = (IHwBinder) Objects.requireNonNull(remote);
        }

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
        public IHwBinder asBinder() {
            return this.mRemote;
        }

        public String toString() {
            try {
                return interfaceDescriptor() + "@Proxy";
            } catch (RemoteException e) {
                return "[class or subclass of android.hardware.wifi@1.3::IWifiChip]@Proxy";
            }
        }

        public final boolean equals(Object other) {
            return HidlSupport.interfacesEqual(this, other);
        }

        public final int hashCode() {
            return asBinder().hashCode();
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void getId(android.hardware.wifi.V1_0.IWifiChip.getIdCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(1, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                int _hidl_out_id = _hidl_reply.readInt32();
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_id);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public WifiStatus registerEventCallback(IWifiChipEventCallback callback) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            _hidl_request.writeStrongBinder(callback == null ? null : callback.asBinder());
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(2, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void getCapabilities(android.hardware.wifi.V1_0.IWifiChip.getCapabilitiesCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(3, _hidl_request, _hidl_reply, 0);
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

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void getAvailableModes(android.hardware.wifi.V1_0.IWifiChip.getAvailableModesCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(4, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                ArrayList<android.hardware.wifi.V1_0.IWifiChip.ChipMode> _hidl_out_modes = android.hardware.wifi.V1_0.IWifiChip.ChipMode.readVectorFromParcel(_hidl_reply);
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_modes);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public WifiStatus configureChip(int modeId) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            _hidl_request.writeInt32(modeId);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(5, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void getMode(android.hardware.wifi.V1_0.IWifiChip.getModeCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(6, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                int _hidl_out_modeId = _hidl_reply.readInt32();
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_modeId);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void requestChipDebugInfo(android.hardware.wifi.V1_0.IWifiChip.requestChipDebugInfoCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(7, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                android.hardware.wifi.V1_0.IWifiChip.ChipDebugInfo _hidl_out_chipDebugInfo = new android.hardware.wifi.V1_0.IWifiChip.ChipDebugInfo();
                _hidl_out_chipDebugInfo.readFromParcel(_hidl_reply);
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_chipDebugInfo);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void requestDriverDebugDump(android.hardware.wifi.V1_0.IWifiChip.requestDriverDebugDumpCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(8, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                ArrayList<Byte> _hidl_out_blob = _hidl_reply.readInt8Vector();
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_blob);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void requestFirmwareDebugDump(android.hardware.wifi.V1_0.IWifiChip.requestFirmwareDebugDumpCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(9, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                ArrayList<Byte> _hidl_out_blob = _hidl_reply.readInt8Vector();
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_blob);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void createApIface(android.hardware.wifi.V1_0.IWifiChip.createApIfaceCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(10, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                IWifiApIface _hidl_out_iface = IWifiApIface.asInterface(_hidl_reply.readStrongBinder());
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_iface);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void getApIfaceNames(android.hardware.wifi.V1_0.IWifiChip.getApIfaceNamesCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(11, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                ArrayList<String> _hidl_out_ifnames = _hidl_reply.readStringVector();
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_ifnames);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void getApIface(String ifname, android.hardware.wifi.V1_0.IWifiChip.getApIfaceCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            _hidl_request.writeString(ifname);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(12, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                IWifiApIface _hidl_out_iface = IWifiApIface.asInterface(_hidl_reply.readStrongBinder());
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_iface);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public WifiStatus removeApIface(String ifname) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            _hidl_request.writeString(ifname);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(13, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void createNanIface(android.hardware.wifi.V1_0.IWifiChip.createNanIfaceCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(14, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                IWifiNanIface _hidl_out_iface = IWifiNanIface.asInterface(_hidl_reply.readStrongBinder());
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_iface);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void getNanIfaceNames(android.hardware.wifi.V1_0.IWifiChip.getNanIfaceNamesCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(15, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                ArrayList<String> _hidl_out_ifnames = _hidl_reply.readStringVector();
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_ifnames);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void getNanIface(String ifname, android.hardware.wifi.V1_0.IWifiChip.getNanIfaceCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            _hidl_request.writeString(ifname);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(16, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                IWifiNanIface _hidl_out_iface = IWifiNanIface.asInterface(_hidl_reply.readStrongBinder());
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_iface);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public WifiStatus removeNanIface(String ifname) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            _hidl_request.writeString(ifname);
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

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void createP2pIface(android.hardware.wifi.V1_0.IWifiChip.createP2pIfaceCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(18, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                IWifiP2pIface _hidl_out_iface = IWifiP2pIface.asInterface(_hidl_reply.readStrongBinder());
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_iface);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void getP2pIfaceNames(android.hardware.wifi.V1_0.IWifiChip.getP2pIfaceNamesCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(19, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                ArrayList<String> _hidl_out_ifnames = _hidl_reply.readStringVector();
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_ifnames);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void getP2pIface(String ifname, android.hardware.wifi.V1_0.IWifiChip.getP2pIfaceCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            _hidl_request.writeString(ifname);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(20, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                IWifiP2pIface _hidl_out_iface = IWifiP2pIface.asInterface(_hidl_reply.readStrongBinder());
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_iface);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public WifiStatus removeP2pIface(String ifname) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            _hidl_request.writeString(ifname);
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

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void createStaIface(android.hardware.wifi.V1_0.IWifiChip.createStaIfaceCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(22, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                android.hardware.wifi.V1_0.IWifiStaIface _hidl_out_iface = android.hardware.wifi.V1_0.IWifiStaIface.asInterface(_hidl_reply.readStrongBinder());
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_iface);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void getStaIfaceNames(android.hardware.wifi.V1_0.IWifiChip.getStaIfaceNamesCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(23, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                ArrayList<String> _hidl_out_ifnames = _hidl_reply.readStringVector();
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_ifnames);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void getStaIface(String ifname, android.hardware.wifi.V1_0.IWifiChip.getStaIfaceCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            _hidl_request.writeString(ifname);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(24, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                android.hardware.wifi.V1_0.IWifiStaIface _hidl_out_iface = android.hardware.wifi.V1_0.IWifiStaIface.asInterface(_hidl_reply.readStrongBinder());
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_iface);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public WifiStatus removeStaIface(String ifname) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            _hidl_request.writeString(ifname);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(25, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void createRttController(IWifiIface boundIface, android.hardware.wifi.V1_0.IWifiChip.createRttControllerCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            _hidl_request.writeStrongBinder(boundIface == null ? null : boundIface.asBinder());
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(26, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                IWifiRttController _hidl_out_rtt = IWifiRttController.asInterface(_hidl_reply.readStrongBinder());
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_rtt);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void getDebugRingBuffersStatus(android.hardware.wifi.V1_0.IWifiChip.getDebugRingBuffersStatusCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(27, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                ArrayList<WifiDebugRingBufferStatus> _hidl_out_ringBuffers = WifiDebugRingBufferStatus.readVectorFromParcel(_hidl_reply);
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_ringBuffers);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public WifiStatus startLoggingToDebugRingBuffer(String ringName, int verboseLevel, int maxIntervalInSec, int minDataSizeInBytes) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            _hidl_request.writeString(ringName);
            _hidl_request.writeInt32(verboseLevel);
            _hidl_request.writeInt32(maxIntervalInSec);
            _hidl_request.writeInt32(minDataSizeInBytes);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(28, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public WifiStatus forceDumpToDebugRingBuffer(String ringName) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            _hidl_request.writeString(ringName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(29, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public WifiStatus stopLoggingToDebugRingBuffer() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(30, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public void getDebugHostWakeReasonStats(android.hardware.wifi.V1_0.IWifiChip.getDebugHostWakeReasonStatsCallback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(31, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                WifiDebugHostWakeReasonStats _hidl_out_stats = new WifiDebugHostWakeReasonStats();
                _hidl_out_stats.readFromParcel(_hidl_reply);
                _hidl_cb.onValues(_hidl_out_status, _hidl_out_stats);
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiChip
        public WifiStatus enableDebugErrorAlerts(boolean enable) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
            _hidl_request.writeBool(enable);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(32, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_1.IWifiChip
        public WifiStatus selectTxPowerScenario(int scenario) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_1.IWifiChip.kInterfaceName);
            _hidl_request.writeInt32(scenario);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(33, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_1.IWifiChip
        public WifiStatus resetTxPowerScenario() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_1.IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(34, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_2.IWifiChip
        public WifiStatus selectTxPowerScenario_1_2(int scenario) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_2.IWifiChip.kInterfaceName);
            _hidl_request.writeInt32(scenario);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(35, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_2.IWifiChip
        public WifiStatus registerEventCallback_1_2(android.hardware.wifi.V1_2.IWifiChipEventCallback callback) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.V1_2.IWifiChip.kInterfaceName);
            _hidl_request.writeStrongBinder(callback == null ? null : callback.asBinder());
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(36, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_3.IWifiChip
        public void getCapabilities_1_3(getCapabilities_1_3Callback _hidl_cb) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(37, _hidl_request, _hidl_reply, 0);
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

        @Override // android.hardware.wifi.V1_3.IWifiChip
        public WifiStatus setLatencyMode(int mode) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiChip.kInterfaceName);
            _hidl_request.writeInt32(mode);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(38, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_3.IWifiChip
        public WifiStatus flushRingBufferToFile() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiChip.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(39, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
        public boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) throws RemoteException {
            return this.mRemote.linkToDeath(recipient, cookie);
        }

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
        public boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) throws RemoteException {
            return this.mRemote.unlinkToDeath(recipient);
        }
    }

    public static abstract class Stub extends HwBinder implements IWifiChip {
        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
        public IHwBinder asBinder() {
            return this;
        }

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
        public final ArrayList<String> interfaceChain() {
            return new ArrayList<>(Arrays.asList(IWifiChip.kInterfaceName, android.hardware.wifi.V1_2.IWifiChip.kInterfaceName, android.hardware.wifi.V1_1.IWifiChip.kInterfaceName, android.hardware.wifi.V1_0.IWifiChip.kInterfaceName, IBase.kInterfaceName));
        }

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
        public void debug(NativeHandle fd, ArrayList<String> options) {
        }

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
        public final String interfaceDescriptor() {
            return IWifiChip.kInterfaceName;
        }

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
        public final ArrayList<byte[]> getHashChain() {
            return new ArrayList<>(Arrays.asList(new byte[]{100, -66, 8, 75, 110, 30, -13, 48, -73, 95, -87, 22, 89, 61, -64, -71, 75, 14, -57, -95, 109, 92, -6, -91, -93, 30, 108, -111, 67, -56, 40, -115}, new byte[]{120, 12, 22, -3, -19, -95, 59, 119, -99, -103, 57, 83, -90, 127, 124, -91, 120, -55, 56, -95, 114, -87, 66, 76, 28, 113, 90, -24, 27, -60, 15, -41}, new byte[]{-80, 86, -31, -34, -6, -76, 7, 21, -124, 33, 69, -124, 5, 125, 11, -57, 58, 97, 48, -127, -65, 17, 82, 89, 5, 73, 100, -99, 69, -126, -63, 60}, new byte[]{-13, -18, -52, 72, -99, -21, 76, 116, -119, 47, 89, -21, 122, -37, 118, -112, 99, -67, 92, 53, 74, -63, 50, -74, 38, -91, -12, 43, 54, 61, 54, -68}, new byte[]{-20, 127, -41, -98, -48, 45, -6, -123, -68, 73, -108, 38, -83, -82, 62, -66, 35, -17, 5, 36, -13, -51, 105, 87, 19, -109, 36, -72, 59, 24, -54, 76}));
        }

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
        public final void setHALInstrumentation() {
        }

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
        public final boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) {
            return true;
        }

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
        public final void ping() {
        }

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
        public final DebugInfo getDebugInfo() {
            DebugInfo info = new DebugInfo();
            info.pid = HidlSupport.getPidIfSharable();
            info.ptr = 0L;
            info.arch = 0;
            return info;
        }

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
        public final void notifySyspropsChanged() {
            HwBinder.enableInstrumentation();
        }

        @Override // android.hardware.wifi.V1_3.IWifiChip, android.hardware.wifi.V1_2.IWifiChip, android.hardware.wifi.V1_1.IWifiChip, android.hardware.wifi.V1_0.IWifiChip, android.hidl.base.V1_0.IBase
        public final boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) {
            return true;
        }

        public IHwInterface queryLocalInterface(String descriptor) {
            if (IWifiChip.kInterfaceName.equals(descriptor)) {
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
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        getId(new android.hardware.wifi.V1_0.IWifiChip.getIdCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.1
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getIdCallback
                            public void onValues(WifiStatus status, int id) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeInt32(id);
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
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                    IWifiChipEventCallback callback = IWifiChipEventCallback.asInterface(_hidl_request.readStrongBinder());
                    WifiStatus _hidl_out_status = registerEventCallback(callback);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 3:
                    boolean _hidl_is_oneway3 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway3) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        getCapabilities(new android.hardware.wifi.V1_0.IWifiChip.getCapabilitiesCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.2
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getCapabilitiesCallback
                            public void onValues(WifiStatus status, int capabilities) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeInt32(capabilities);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 4:
                    boolean _hidl_is_oneway4 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway4) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        getAvailableModes(new android.hardware.wifi.V1_0.IWifiChip.getAvailableModesCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.3
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getAvailableModesCallback
                            public void onValues(WifiStatus status, ArrayList<android.hardware.wifi.V1_0.IWifiChip.ChipMode> modes) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                android.hardware.wifi.V1_0.IWifiChip.ChipMode.writeVectorToParcel(_hidl_reply, modes);
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
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                    int modeId = _hidl_request.readInt32();
                    WifiStatus _hidl_out_status2 = configureChip(modeId);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status2.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 6:
                    boolean _hidl_is_oneway6 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway6) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        getMode(new android.hardware.wifi.V1_0.IWifiChip.getModeCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.4
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getModeCallback
                            public void onValues(WifiStatus status, int modeId2) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeInt32(modeId2);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 7:
                    boolean _hidl_is_oneway7 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway7) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        requestChipDebugInfo(new android.hardware.wifi.V1_0.IWifiChip.requestChipDebugInfoCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.5
                            @Override // android.hardware.wifi.V1_0.IWifiChip.requestChipDebugInfoCallback
                            public void onValues(WifiStatus status, android.hardware.wifi.V1_0.IWifiChip.ChipDebugInfo chipDebugInfo) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                chipDebugInfo.writeToParcel(_hidl_reply);
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
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        requestDriverDebugDump(new android.hardware.wifi.V1_0.IWifiChip.requestDriverDebugDumpCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.6
                            @Override // android.hardware.wifi.V1_0.IWifiChip.requestDriverDebugDumpCallback
                            public void onValues(WifiStatus status, ArrayList<Byte> blob) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeInt8Vector(blob);
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
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        requestFirmwareDebugDump(new android.hardware.wifi.V1_0.IWifiChip.requestFirmwareDebugDumpCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.7
                            @Override // android.hardware.wifi.V1_0.IWifiChip.requestFirmwareDebugDumpCallback
                            public void onValues(WifiStatus status, ArrayList<Byte> blob) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeInt8Vector(blob);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 10:
                    boolean _hidl_is_oneway10 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway10) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        createApIface(new android.hardware.wifi.V1_0.IWifiChip.createApIfaceCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.8
                            @Override // android.hardware.wifi.V1_0.IWifiChip.createApIfaceCallback
                            public void onValues(WifiStatus status, IWifiApIface iface) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeStrongBinder(iface == null ? null : iface.asBinder());
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 11:
                    boolean _hidl_is_oneway11 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway11) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        getApIfaceNames(new android.hardware.wifi.V1_0.IWifiChip.getApIfaceNamesCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.9
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getApIfaceNamesCallback
                            public void onValues(WifiStatus status, ArrayList<String> ifnames) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeStringVector(ifnames);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 12:
                    boolean _hidl_is_oneway12 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway12) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        String ifname = _hidl_request.readString();
                        getApIface(ifname, new android.hardware.wifi.V1_0.IWifiChip.getApIfaceCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.10
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getApIfaceCallback
                            public void onValues(WifiStatus status, IWifiApIface iface) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeStrongBinder(iface == null ? null : iface.asBinder());
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 13:
                    boolean _hidl_is_oneway13 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway13) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                    String ifname2 = _hidl_request.readString();
                    WifiStatus _hidl_out_status3 = removeApIface(ifname2);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status3.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 14:
                    boolean _hidl_is_oneway14 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway14) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        createNanIface(new android.hardware.wifi.V1_0.IWifiChip.createNanIfaceCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.11
                            @Override // android.hardware.wifi.V1_0.IWifiChip.createNanIfaceCallback
                            public void onValues(WifiStatus status, IWifiNanIface iface) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeStrongBinder(iface == null ? null : iface.asBinder());
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 15:
                    boolean _hidl_is_oneway15 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway15) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        getNanIfaceNames(new android.hardware.wifi.V1_0.IWifiChip.getNanIfaceNamesCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.12
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getNanIfaceNamesCallback
                            public void onValues(WifiStatus status, ArrayList<String> ifnames) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeStringVector(ifnames);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 16:
                    boolean _hidl_is_oneway16 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway16) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        String ifname3 = _hidl_request.readString();
                        getNanIface(ifname3, new android.hardware.wifi.V1_0.IWifiChip.getNanIfaceCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.13
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getNanIfaceCallback
                            public void onValues(WifiStatus status, IWifiNanIface iface) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeStrongBinder(iface == null ? null : iface.asBinder());
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
                    _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                    String ifname4 = _hidl_request.readString();
                    WifiStatus _hidl_out_status4 = removeNanIface(ifname4);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status4.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 18:
                    boolean _hidl_is_oneway18 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway18) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        createP2pIface(new android.hardware.wifi.V1_0.IWifiChip.createP2pIfaceCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.14
                            @Override // android.hardware.wifi.V1_0.IWifiChip.createP2pIfaceCallback
                            public void onValues(WifiStatus status, IWifiP2pIface iface) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeStrongBinder(iface == null ? null : iface.asBinder());
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 19:
                    boolean _hidl_is_oneway19 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway19) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        getP2pIfaceNames(new android.hardware.wifi.V1_0.IWifiChip.getP2pIfaceNamesCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.15
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getP2pIfaceNamesCallback
                            public void onValues(WifiStatus status, ArrayList<String> ifnames) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeStringVector(ifnames);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 20:
                    boolean _hidl_is_oneway20 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway20) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        String ifname5 = _hidl_request.readString();
                        getP2pIface(ifname5, new android.hardware.wifi.V1_0.IWifiChip.getP2pIfaceCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.16
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getP2pIfaceCallback
                            public void onValues(WifiStatus status, IWifiP2pIface iface) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeStrongBinder(iface == null ? null : iface.asBinder());
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case ISupplicantStaIfaceCallback.ReasonCode.UNSUPPORTED_RSN_IE_VERSION /* 21 */:
                    boolean _hidl_is_oneway21 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway21) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                    String ifname6 = _hidl_request.readString();
                    WifiStatus _hidl_out_status5 = removeP2pIface(ifname6);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status5.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 22:
                    boolean _hidl_is_oneway22 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway22) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        createStaIface(new android.hardware.wifi.V1_0.IWifiChip.createStaIfaceCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.17
                            @Override // android.hardware.wifi.V1_0.IWifiChip.createStaIfaceCallback
                            public void onValues(WifiStatus status, android.hardware.wifi.V1_0.IWifiStaIface iface) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeStrongBinder(iface == null ? null : iface.asBinder());
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 23:
                    boolean _hidl_is_oneway23 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway23) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        getStaIfaceNames(new android.hardware.wifi.V1_0.IWifiChip.getStaIfaceNamesCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.18
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getStaIfaceNamesCallback
                            public void onValues(WifiStatus status, ArrayList<String> ifnames) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeStringVector(ifnames);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 24:
                    boolean _hidl_is_oneway24 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway24) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        String ifname7 = _hidl_request.readString();
                        getStaIface(ifname7, new android.hardware.wifi.V1_0.IWifiChip.getStaIfaceCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.19
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getStaIfaceCallback
                            public void onValues(WifiStatus status, android.hardware.wifi.V1_0.IWifiStaIface iface) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeStrongBinder(iface == null ? null : iface.asBinder());
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
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                    String ifname8 = _hidl_request.readString();
                    WifiStatus _hidl_out_status6 = removeStaIface(ifname8);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status6.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case ISupplicantStaIfaceCallback.ReasonCode.TDLS_TEARDOWN_UNSPECIFIED /* 26 */:
                    boolean _hidl_is_oneway26 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway26) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        IWifiIface boundIface = IWifiIface.asInterface(_hidl_request.readStrongBinder());
                        createRttController(boundIface, new android.hardware.wifi.V1_0.IWifiChip.createRttControllerCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.20
                            @Override // android.hardware.wifi.V1_0.IWifiChip.createRttControllerCallback
                            public void onValues(WifiStatus status, IWifiRttController rtt) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeStrongBinder(rtt == null ? null : rtt.asBinder());
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 27:
                    boolean _hidl_is_oneway27 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway27) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        getDebugRingBuffersStatus(new android.hardware.wifi.V1_0.IWifiChip.getDebugRingBuffersStatusCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.21
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getDebugRingBuffersStatusCallback
                            public void onValues(WifiStatus status, ArrayList<WifiDebugRingBufferStatus> ringBuffers) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                WifiDebugRingBufferStatus.writeVectorToParcel(_hidl_reply, ringBuffers);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 28:
                    boolean _hidl_is_oneway28 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway28) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                    String ringName = _hidl_request.readString();
                    int verboseLevel = _hidl_request.readInt32();
                    int maxIntervalInSec = _hidl_request.readInt32();
                    int minDataSizeInBytes = _hidl_request.readInt32();
                    WifiStatus _hidl_out_status7 = startLoggingToDebugRingBuffer(ringName, verboseLevel, maxIntervalInSec, minDataSizeInBytes);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status7.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 29:
                    boolean _hidl_is_oneway29 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway29) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                    String ringName2 = _hidl_request.readString();
                    WifiStatus _hidl_out_status8 = forceDumpToDebugRingBuffer(ringName2);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status8.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 30:
                    boolean _hidl_is_oneway30 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway30) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                    WifiStatus _hidl_out_status9 = stopLoggingToDebugRingBuffer();
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status9.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 31:
                    boolean _hidl_is_oneway31 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway31) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                        getDebugHostWakeReasonStats(new android.hardware.wifi.V1_0.IWifiChip.getDebugHostWakeReasonStatsCallback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.22
                            @Override // android.hardware.wifi.V1_0.IWifiChip.getDebugHostWakeReasonStatsCallback
                            public void onValues(WifiStatus status, WifiDebugHostWakeReasonStats stats) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                stats.writeToParcel(_hidl_reply);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 32:
                    boolean _hidl_is_oneway32 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway32) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.V1_0.IWifiChip.kInterfaceName);
                    boolean enable = _hidl_request.readBool();
                    WifiStatus _hidl_out_status10 = enableDebugErrorAlerts(enable);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status10.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 33:
                    boolean _hidl_is_oneway33 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway33) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.V1_1.IWifiChip.kInterfaceName);
                    int scenario = _hidl_request.readInt32();
                    WifiStatus _hidl_out_status11 = selectTxPowerScenario(scenario);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status11.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 34:
                    int scenario2 = _hidl_flags & 1;
                    boolean _hidl_is_oneway34 = scenario2 != 0;
                    if (_hidl_is_oneway34) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.V1_1.IWifiChip.kInterfaceName);
                    WifiStatus _hidl_out_status12 = resetTxPowerScenario();
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status12.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 35:
                    boolean _hidl_is_oneway35 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway35) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.V1_2.IWifiChip.kInterfaceName);
                    int scenario3 = _hidl_request.readInt32();
                    WifiStatus _hidl_out_status13 = selectTxPowerScenario_1_2(scenario3);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status13.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case ISupplicantStaIfaceCallback.ReasonCode.STA_LEAVING /* 36 */:
                    boolean _hidl_is_oneway36 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway36) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.V1_2.IWifiChip.kInterfaceName);
                    android.hardware.wifi.V1_2.IWifiChipEventCallback callback2 = android.hardware.wifi.V1_2.IWifiChipEventCallback.asInterface(_hidl_request.readStrongBinder());
                    WifiStatus _hidl_out_status14 = registerEventCallback_1_2(callback2);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status14.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 37:
                    boolean _hidl_is_oneway37 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway37) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(IWifiChip.kInterfaceName);
                        getCapabilities_1_3(new getCapabilities_1_3Callback() { // from class: android.hardware.wifi.V1_3.IWifiChip.Stub.23
                            @Override // android.hardware.wifi.V1_3.IWifiChip.getCapabilities_1_3Callback
                            public void onValues(WifiStatus status, int capabilities) {
                                _hidl_reply.writeStatus(0);
                                status.writeToParcel(_hidl_reply);
                                _hidl_reply.writeInt32(capabilities);
                                _hidl_reply.send();
                            }
                        });
                        return;
                    }
                case 38:
                    boolean _hidl_is_oneway38 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway38) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiChip.kInterfaceName);
                    int mode = _hidl_request.readInt32();
                    WifiStatus _hidl_out_status15 = setLatencyMode(mode);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status15.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 39:
                    boolean _hidl_is_oneway39 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway39) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiChip.kInterfaceName);
                    WifiStatus _hidl_out_status16 = flushRingBufferToFile();
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status16.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                default:
                    switch (_hidl_code) {
                        case 256067662:
                            boolean _hidl_is_oneway40 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway40) {
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
                            boolean _hidl_is_oneway41 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway41) {
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
                            boolean _hidl_is_oneway42 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway42) {
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
                            boolean _hidl_is_oneway43 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway43) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            ArrayList<byte[]> _hidl_out_hashchain = getHashChain();
                            _hidl_reply.writeStatus(0);
                            HwBlob _hidl_blob = new HwBlob(16);
                            int _hidl_vec_size = _hidl_out_hashchain.size();
                            _hidl_blob.putInt32(8L, _hidl_vec_size);
                            _hidl_blob.putBool(12L, false);
                            HwBlob childBlob = new HwBlob(_hidl_vec_size * 32);
                            for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
                                long _hidl_array_offset_1 = _hidl_index_0 * 32;
                                byte[] _hidl_array_item_1 = _hidl_out_hashchain.get(_hidl_index_0);
                                if (_hidl_array_item_1 == null || _hidl_array_item_1.length != 32) {
                                    throw new IllegalArgumentException("Array element is not of the expected length");
                                }
                                childBlob.putInt8Array(_hidl_array_offset_1, _hidl_array_item_1);
                            }
                            _hidl_blob.putBlob(0L, childBlob);
                            _hidl_reply.writeBuffer(_hidl_blob);
                            _hidl_reply.send();
                            return;
                        case 256462420:
                            boolean _hidl_is_oneway44 = (_hidl_flags & 1) != 0;
                            if (!_hidl_is_oneway44) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                setHALInstrumentation();
                                return;
                            }
                        case 256660548:
                            boolean _hidl_is_oneway45 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway45) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            return;
                        case 256921159:
                            boolean _hidl_is_oneway46 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway46) {
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
                            boolean _hidl_is_oneway47 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway47) {
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
                            boolean _hidl_is_oneway48 = (_hidl_flags & 1) != 0;
                            if (!_hidl_is_oneway48) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                notifySyspropsChanged();
                                return;
                            }
                        case 257250372:
                            boolean _hidl_is_oneway49 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway49) {
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
