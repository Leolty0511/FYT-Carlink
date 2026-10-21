package vendor.sprd.hardware.wifi.hostapd.V1_1;

import android.hardware.wifi.hostapd.V1_0.HostapdStatus;
import android.hardware.wifi.hostapd.V1_1.IHostapdCallback;
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
public interface IHostapd extends android.hardware.wifi.hostapd.V1_1.IHostapd {
    public static final String kInterfaceName = "vendor.sprd.hardware.wifi.hostapd@1.1::IHostapd";

    HostapdStatus addAccessPointEx_1_1(android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams ifaceParams, NetworkParamsEx networkParamsEx) throws RemoteException;

    @Override // android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
    IHwBinder asBinder();

    @Override // android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
    void debug(NativeHandle nativeHandle, ArrayList<String> arrayList) throws RemoteException;

    boolean doHostapdBooleanCommand(android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams ifaceParams, String str) throws RemoteException;

    int doHostapdIntCommand(android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams ifaceParams, String str) throws RemoteException;

    String doHostapdStringCommand(android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams ifaceParams, String str) throws RemoteException;

    @Override // android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
    DebugInfo getDebugInfo() throws RemoteException;

    @Override // android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
    ArrayList<byte[]> getHashChain() throws RemoteException;

    @Override // android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
    ArrayList<String> interfaceChain() throws RemoteException;

    @Override // android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
    String interfaceDescriptor() throws RemoteException;

    @Override // android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
    boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j) throws RemoteException;

    @Override // android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
    void notifySyspropsChanged() throws RemoteException;

    @Override // android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
    void ping() throws RemoteException;

    HostapdStatus registerCallbackEx(IHostapdCallbackEx iHostapdCallbackEx) throws RemoteException;

    @Override // android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
    void setHALInstrumentation() throws RemoteException;

    @Override // android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
    boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient) throws RemoteException;

    static IHostapd asInterface(IHwBinder binder) {
        if (binder == null) {
            return null;
        }
        IHwInterface iface = binder.queryLocalInterface(kInterfaceName);
        if (iface != null && (iface instanceof IHostapd)) {
            return (IHostapd) iface;
        }
        IHostapd proxy = new Proxy(binder);
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

    static IHostapd castFrom(IHwInterface iface) {
        if (iface == null) {
            return null;
        }
        return asInterface(iface.asBinder());
    }

    static IHostapd getService(String serviceName, boolean retry) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName, retry));
    }

    static IHostapd getService(boolean retry) throws RemoteException {
        return getService("default", retry);
    }

    static IHostapd getService(String serviceName) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName));
    }

    static IHostapd getService() throws RemoteException {
        return getService("default");
    }

    public static final class NetworkParamsEx {
        public int macAddrAcl;
        public android.hardware.wifi.hostapd.V1_0.IHostapd.NetworkParams networkParams = new android.hardware.wifi.hostapd.V1_0.IHostapd.NetworkParams();
        public int softApMaxNumSta;

        public final boolean equals(Object otherObject) {
            if (this == otherObject) {
                return true;
            }
            if (otherObject == null || otherObject.getClass() != NetworkParamsEx.class) {
                return false;
            }
            NetworkParamsEx other = (NetworkParamsEx) otherObject;
            if (HidlSupport.deepEquals(this.networkParams, other.networkParams) && this.softApMaxNumSta == other.softApMaxNumSta && this.macAddrAcl == other.macAddrAcl) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.networkParams)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.softApMaxNumSta))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.macAddrAcl))));
        }

        public final String toString() {
            return "{.networkParams = " + this.networkParams + ", .softApMaxNumSta = " + this.softApMaxNumSta + ", .macAddrAcl = " + this.macAddrAcl + "}";
        }

        public final void readFromParcel(HwParcel parcel) {
            HwBlob blob = parcel.readBuffer(48L);
            readEmbeddedFromParcel(parcel, blob, 0L);
        }

        public static final ArrayList<NetworkParamsEx> readVectorFromParcel(HwParcel parcel) {
            ArrayList<NetworkParamsEx> _hidl_vec = new ArrayList<>();
            HwBlob _hidl_blob = parcel.readBuffer(16L);
            int _hidl_vec_size = _hidl_blob.getInt32(8L);
            HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 48, _hidl_blob.handle(), 0L, true);
            _hidl_vec.clear();
            for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
                NetworkParamsEx _hidl_vec_element = new NetworkParamsEx();
                _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 48);
                _hidl_vec.add(_hidl_vec_element);
            }
            return _hidl_vec;
        }

        public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
            this.networkParams.readEmbeddedFromParcel(parcel, _hidl_blob, 0 + _hidl_offset);
            this.softApMaxNumSta = _hidl_blob.getInt32(40 + _hidl_offset);
            this.macAddrAcl = _hidl_blob.getInt32(44 + _hidl_offset);
        }

        public final void writeToParcel(HwParcel parcel) {
            HwBlob _hidl_blob = new HwBlob(48);
            writeEmbeddedToBlob(_hidl_blob, 0L);
            parcel.writeBuffer(_hidl_blob);
        }

        public static final void writeVectorToParcel(HwParcel parcel, ArrayList<NetworkParamsEx> _hidl_vec) {
            HwBlob _hidl_blob = new HwBlob(16);
            int _hidl_vec_size = _hidl_vec.size();
            _hidl_blob.putInt32(8L, _hidl_vec_size);
            _hidl_blob.putBool(12L, false);
            HwBlob childBlob = new HwBlob(_hidl_vec_size * 48);
            for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
                _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 48);
            }
            _hidl_blob.putBlob(0L, childBlob);
            parcel.writeBuffer(_hidl_blob);
        }

        public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
            this.networkParams.writeEmbeddedToBlob(_hidl_blob, 0 + _hidl_offset);
            _hidl_blob.putInt32(40 + _hidl_offset, this.softApMaxNumSta);
            _hidl_blob.putInt32(44 + _hidl_offset, this.macAddrAcl);
        }
    }

    public static final class Proxy implements IHostapd {
        private IHwBinder mRemote;

        public Proxy(IHwBinder remote) {
            this.mRemote = (IHwBinder) Objects.requireNonNull(remote);
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
        public IHwBinder asBinder() {
            return this.mRemote;
        }

        public String toString() {
            try {
                return interfaceDescriptor() + "@Proxy";
            } catch (RemoteException e) {
                return "[class or subclass of vendor.sprd.hardware.wifi.hostapd@1.1::IHostapd]@Proxy";
            }
        }

        public final boolean equals(Object other) {
            return HidlSupport.interfacesEqual(this, other);
        }

        public final int hashCode() {
            return asBinder().hashCode();
        }

        @Override // android.hardware.wifi.hostapd.V1_0.IHostapd
        public HostapdStatus addAccessPoint(android.hardware.wifi.hostapd.V1_0.IHostapd.IfaceParams ifaceParams, android.hardware.wifi.hostapd.V1_0.IHostapd.NetworkParams nwParams) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.hostapd.V1_0.IHostapd.kInterfaceName);
            ifaceParams.writeToParcel(_hidl_request);
            nwParams.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(1, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                HostapdStatus _hidl_out_status = new HostapdStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.hostapd.V1_0.IHostapd
        public HostapdStatus removeAccessPoint(String ifaceName) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.hostapd.V1_0.IHostapd.kInterfaceName);
            _hidl_request.writeString(ifaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(2, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                HostapdStatus _hidl_out_status = new HostapdStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.hostapd.V1_0.IHostapd
        public void terminate() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.hostapd.V1_0.IHostapd.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(3, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.hostapd.V1_1.IHostapd
        public HostapdStatus addAccessPoint_1_1(android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams ifaceParams, android.hardware.wifi.hostapd.V1_0.IHostapd.NetworkParams nwParams) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.hostapd.V1_1.IHostapd.kInterfaceName);
            ifaceParams.writeToParcel(_hidl_request);
            nwParams.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(4, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                HostapdStatus _hidl_out_status = new HostapdStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.hostapd.V1_1.IHostapd
        public HostapdStatus registerCallback(IHostapdCallback callback) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.hostapd.V1_1.IHostapd.kInterfaceName);
            _hidl_request.writeStrongBinder(callback == null ? null : callback.asBinder());
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(5, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                HostapdStatus _hidl_out_status = new HostapdStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd
        public HostapdStatus addAccessPointEx_1_1(android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams ifaceParams, NetworkParamsEx nwParams) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IHostapd.kInterfaceName);
            ifaceParams.writeToParcel(_hidl_request);
            nwParams.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(6, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                HostapdStatus _hidl_out_status = new HostapdStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd
        public HostapdStatus registerCallbackEx(IHostapdCallbackEx callback) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IHostapd.kInterfaceName);
            _hidl_request.writeStrongBinder(callback == null ? null : callback.asBinder());
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(7, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                HostapdStatus _hidl_out_status = new HostapdStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd
        public boolean doHostapdBooleanCommand(android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams ifaceParams, String type) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IHostapd.kInterfaceName);
            ifaceParams.writeToParcel(_hidl_request);
            _hidl_request.writeString(type);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(8, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                boolean _hidl_out_status = _hidl_reply.readBool();
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd
        public int doHostapdIntCommand(android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams ifaceParams, String type) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IHostapd.kInterfaceName);
            ifaceParams.writeToParcel(_hidl_request);
            _hidl_request.writeString(type);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(9, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                int _hidl_out_status = _hidl_reply.readInt32();
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd
        public String doHostapdStringCommand(android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams ifaceParams, String type) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IHostapd.kInterfaceName);
            ifaceParams.writeToParcel(_hidl_request);
            _hidl_request.writeString(type);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(10, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                String _hidl_out_status = _hidl_reply.readString();
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
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

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
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

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
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

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
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

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
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

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
        public boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) throws RemoteException {
            return this.mRemote.linkToDeath(recipient, cookie);
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
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

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
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

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
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

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
        public boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) throws RemoteException {
            return this.mRemote.unlinkToDeath(recipient);
        }
    }

    public static abstract class Stub extends HwBinder implements IHostapd {
        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
        public IHwBinder asBinder() {
            return this;
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
        public final ArrayList<String> interfaceChain() {
            return new ArrayList<>(Arrays.asList(IHostapd.kInterfaceName, android.hardware.wifi.hostapd.V1_1.IHostapd.kInterfaceName, android.hardware.wifi.hostapd.V1_0.IHostapd.kInterfaceName, IBase.kInterfaceName));
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
        public void debug(NativeHandle fd, ArrayList<String> options) {
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
        public final String interfaceDescriptor() {
            return IHostapd.kInterfaceName;
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
        public final ArrayList<byte[]> getHashChain() {
            return new ArrayList<>(Arrays.asList(new byte[]{45, -77, -93, -82, -81, -128, -77, 117, 96, 119, 16, 6, 44, 32, 53, 80, 98, 35, 23, -29, -16, 33, -63, 89, 7, 97, 39, 81, 29, 105, -63, 31}, new byte[]{47, -82, 97, -23, 98, -10, -128, -111, 51, 95, 127, -12, 88, 31, -49, -30, -30, -116, -25, -10, 19, 45, 122, 113, 47, -95, 61, 121, 101, 84, 62, 77}, new byte[]{-18, 8, 40, 13, -30, 28, -76, 30, 62, -62, 109, 110, -42, 54, -57, 1, -73, -9, 5, 22, -25, 31, -78, 47, 79, -26, 10, 19, -26, 3, -12, 6}, new byte[]{-20, 127, -41, -98, -48, 45, -6, -123, -68, 73, -108, 38, -83, -82, 62, -66, 35, -17, 5, 36, -13, -51, 105, 87, 19, -109, 36, -72, 59, 24, -54, 76}));
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
        public final void setHALInstrumentation() {
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
        public final boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) {
            return true;
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
        public final void ping() {
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
        public final DebugInfo getDebugInfo() {
            DebugInfo info = new DebugInfo();
            info.pid = HidlSupport.getPidIfSharable();
            info.ptr = 0L;
            info.arch = 0;
            return info;
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
        public final void notifySyspropsChanged() {
            HwBinder.enableInstrumentation();
        }

        @Override // vendor.sprd.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_1.IHostapd, android.hardware.wifi.hostapd.V1_0.IHostapd, android.hidl.base.V1_0.IBase
        public final boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) {
            return true;
        }

        public IHwInterface queryLocalInterface(String descriptor) {
            if (IHostapd.kInterfaceName.equals(descriptor)) {
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

        public void onTransact(int _hidl_code, HwParcel _hidl_request, HwParcel _hidl_reply, int _hidl_flags) throws RemoteException {
            switch (_hidl_code) {
                case 1:
                    boolean _hidl_is_oneway = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.hostapd.V1_0.IHostapd.kInterfaceName);
                    android.hardware.wifi.hostapd.V1_0.IHostapd.IfaceParams ifaceParams = new android.hardware.wifi.hostapd.V1_0.IHostapd.IfaceParams();
                    ifaceParams.readFromParcel(_hidl_request);
                    android.hardware.wifi.hostapd.V1_0.IHostapd.NetworkParams nwParams = new android.hardware.wifi.hostapd.V1_0.IHostapd.NetworkParams();
                    nwParams.readFromParcel(_hidl_request);
                    HostapdStatus _hidl_out_status = addAccessPoint(ifaceParams, nwParams);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 2:
                    boolean _hidl_is_oneway2 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway2) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.hostapd.V1_0.IHostapd.kInterfaceName);
                    String ifaceName = _hidl_request.readString();
                    HostapdStatus _hidl_out_status2 = removeAccessPoint(ifaceName);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status2.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 3:
                    boolean _hidl_is_oneway3 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway3) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.hostapd.V1_0.IHostapd.kInterfaceName);
                        terminate();
                        return;
                    }
                case 4:
                    boolean _hidl_is_oneway4 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway4) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.hostapd.V1_1.IHostapd.kInterfaceName);
                    android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams ifaceParams2 = new android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams();
                    ifaceParams2.readFromParcel(_hidl_request);
                    android.hardware.wifi.hostapd.V1_0.IHostapd.NetworkParams nwParams2 = new android.hardware.wifi.hostapd.V1_0.IHostapd.NetworkParams();
                    nwParams2.readFromParcel(_hidl_request);
                    HostapdStatus _hidl_out_status3 = addAccessPoint_1_1(ifaceParams2, nwParams2);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status3.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 5:
                    boolean _hidl_is_oneway5 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway5) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.hostapd.V1_1.IHostapd.kInterfaceName);
                    IHostapdCallback callback = IHostapdCallback.asInterface(_hidl_request.readStrongBinder());
                    HostapdStatus _hidl_out_status4 = registerCallback(callback);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status4.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 6:
                    boolean _hidl_is_oneway6 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway6) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IHostapd.kInterfaceName);
                    android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams ifaceParams3 = new android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams();
                    ifaceParams3.readFromParcel(_hidl_request);
                    NetworkParamsEx nwParams3 = new NetworkParamsEx();
                    nwParams3.readFromParcel(_hidl_request);
                    HostapdStatus _hidl_out_status5 = addAccessPointEx_1_1(ifaceParams3, nwParams3);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status5.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 7:
                    boolean _hidl_is_oneway7 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway7) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IHostapd.kInterfaceName);
                    IHostapdCallbackEx callback2 = IHostapdCallbackEx.asInterface(_hidl_request.readStrongBinder());
                    HostapdStatus _hidl_out_status6 = registerCallbackEx(callback2);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status6.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 8:
                    boolean _hidl_is_oneway8 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway8) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IHostapd.kInterfaceName);
                    android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams ifaceParams4 = new android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams();
                    ifaceParams4.readFromParcel(_hidl_request);
                    String type = _hidl_request.readString();
                    boolean _hidl_out_status7 = doHostapdBooleanCommand(ifaceParams4, type);
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.writeBool(_hidl_out_status7);
                    _hidl_reply.send();
                    return;
                case 9:
                    boolean _hidl_is_oneway9 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway9) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IHostapd.kInterfaceName);
                    android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams ifaceParams5 = new android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams();
                    ifaceParams5.readFromParcel(_hidl_request);
                    String type2 = _hidl_request.readString();
                    int _hidl_out_status8 = doHostapdIntCommand(ifaceParams5, type2);
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.writeInt32(_hidl_out_status8);
                    _hidl_reply.send();
                    return;
                case 10:
                    boolean _hidl_is_oneway10 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway10) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IHostapd.kInterfaceName);
                    android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams ifaceParams6 = new android.hardware.wifi.hostapd.V1_1.IHostapd.IfaceParams();
                    ifaceParams6.readFromParcel(_hidl_request);
                    String type3 = _hidl_request.readString();
                    String _hidl_out_status9 = doHostapdStringCommand(ifaceParams6, type3);
                    _hidl_reply.writeStatus(0);
                    _hidl_reply.writeString(_hidl_out_status9);
                    _hidl_reply.send();
                    return;
                default:
                    switch (_hidl_code) {
                        case 256067662:
                            boolean _hidl_is_oneway11 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway11) {
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
                            boolean _hidl_is_oneway12 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway12) {
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
                            boolean _hidl_is_oneway13 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway13) {
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
                            boolean _hidl_is_oneway14 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway14) {
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
                            boolean _hidl_is_oneway15 = (_hidl_flags & 1) != 0;
                            if (!_hidl_is_oneway15) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                setHALInstrumentation();
                                return;
                            }
                        case 256660548:
                            boolean _hidl_is_oneway16 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway16) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            return;
                        case 256921159:
                            boolean _hidl_is_oneway17 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway17) {
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
                            boolean _hidl_is_oneway18 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway18) {
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
                            boolean _hidl_is_oneway19 = (_hidl_flags & 1) != 0;
                            if (!_hidl_is_oneway19) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                notifySyspropsChanged();
                                return;
                            }
                        case 257250372:
                            boolean _hidl_is_oneway20 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway20) {
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
