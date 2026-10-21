package android.hardware.wifi.V1_0;

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
public interface IWifiNanIface extends IWifiIface {
    public static final String kInterfaceName = "android.hardware.wifi@1.0::IWifiNanIface";

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    IHwBinder asBinder();

    WifiStatus configRequest(short s, NanConfigRequest nanConfigRequest) throws RemoteException;

    WifiStatus createDataInterfaceRequest(short s, String str) throws RemoteException;

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    void debug(NativeHandle nativeHandle, ArrayList<String> arrayList) throws RemoteException;

    WifiStatus deleteDataInterfaceRequest(short s, String str) throws RemoteException;

    WifiStatus disableRequest(short s) throws RemoteException;

    WifiStatus enableRequest(short s, NanEnableRequest nanEnableRequest) throws RemoteException;

    WifiStatus getCapabilitiesRequest(short s) throws RemoteException;

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    DebugInfo getDebugInfo() throws RemoteException;

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    ArrayList<byte[]> getHashChain() throws RemoteException;

    WifiStatus initiateDataPathRequest(short s, NanInitiateDataPathRequest nanInitiateDataPathRequest) throws RemoteException;

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

    WifiStatus registerEventCallback(IWifiNanIfaceEventCallback iWifiNanIfaceEventCallback) throws RemoteException;

    WifiStatus respondToDataPathIndicationRequest(short s, NanRespondToDataPathIndicationRequest nanRespondToDataPathIndicationRequest) throws RemoteException;

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    void setHALInstrumentation() throws RemoteException;

    WifiStatus startPublishRequest(short s, NanPublishRequest nanPublishRequest) throws RemoteException;

    WifiStatus startSubscribeRequest(short s, NanSubscribeRequest nanSubscribeRequest) throws RemoteException;

    WifiStatus stopPublishRequest(short s, byte b) throws RemoteException;

    WifiStatus stopSubscribeRequest(short s, byte b) throws RemoteException;

    WifiStatus terminateDataPathRequest(short s, int i) throws RemoteException;

    WifiStatus transmitFollowupRequest(short s, NanTransmitFollowupRequest nanTransmitFollowupRequest) throws RemoteException;

    @Override // android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
    boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient) throws RemoteException;

    static IWifiNanIface asInterface(IHwBinder binder) {
        if (binder == null) {
            return null;
        }
        IHwInterface iface = binder.queryLocalInterface(kInterfaceName);
        if (iface != null && (iface instanceof IWifiNanIface)) {
            return (IWifiNanIface) iface;
        }
        IWifiNanIface proxy = new Proxy(binder);
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

    static IWifiNanIface castFrom(IHwInterface iface) {
        if (iface == null) {
            return null;
        }
        return asInterface(iface.asBinder());
    }

    static IWifiNanIface getService(String serviceName, boolean retry) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName, retry));
    }

    static IWifiNanIface getService(boolean retry) throws RemoteException {
        return getService("default", retry);
    }

    static IWifiNanIface getService(String serviceName) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName));
    }

    static IWifiNanIface getService() throws RemoteException {
        return getService("default");
    }

    public static final class Proxy implements IWifiNanIface {
        private IHwBinder mRemote;

        public Proxy(IHwBinder remote) {
            this.mRemote = (IHwBinder) Objects.requireNonNull(remote);
        }

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public IHwBinder asBinder() {
            return this.mRemote;
        }

        public String toString() {
            try {
                return interfaceDescriptor() + "@Proxy";
            } catch (RemoteException e) {
                return "[class or subclass of android.hardware.wifi@1.0::IWifiNanIface]@Proxy";
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface
        public WifiStatus registerEventCallback(IWifiNanIfaceEventCallback callback) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiNanIface.kInterfaceName);
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface
        public WifiStatus getCapabilitiesRequest(short cmdId) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiNanIface.kInterfaceName);
            _hidl_request.writeInt16(cmdId);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(4, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiNanIface
        public WifiStatus enableRequest(short cmdId, NanEnableRequest msg) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiNanIface.kInterfaceName);
            _hidl_request.writeInt16(cmdId);
            msg.writeToParcel(_hidl_request);
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface
        public WifiStatus configRequest(short cmdId, NanConfigRequest msg) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiNanIface.kInterfaceName);
            _hidl_request.writeInt16(cmdId);
            msg.writeToParcel(_hidl_request);
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface
        public WifiStatus disableRequest(short cmdId) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiNanIface.kInterfaceName);
            _hidl_request.writeInt16(cmdId);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(7, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiNanIface
        public WifiStatus startPublishRequest(short cmdId, NanPublishRequest msg) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiNanIface.kInterfaceName);
            _hidl_request.writeInt16(cmdId);
            msg.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(8, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiNanIface
        public WifiStatus stopPublishRequest(short cmdId, byte sessionId) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiNanIface.kInterfaceName);
            _hidl_request.writeInt16(cmdId);
            _hidl_request.writeInt8(sessionId);
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface
        public WifiStatus startSubscribeRequest(short cmdId, NanSubscribeRequest msg) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiNanIface.kInterfaceName);
            _hidl_request.writeInt16(cmdId);
            msg.writeToParcel(_hidl_request);
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface
        public WifiStatus stopSubscribeRequest(short cmdId, byte sessionId) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiNanIface.kInterfaceName);
            _hidl_request.writeInt16(cmdId);
            _hidl_request.writeInt8(sessionId);
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface
        public WifiStatus transmitFollowupRequest(short cmdId, NanTransmitFollowupRequest msg) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiNanIface.kInterfaceName);
            _hidl_request.writeInt16(cmdId);
            msg.writeToParcel(_hidl_request);
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface
        public WifiStatus createDataInterfaceRequest(short cmdId, String ifaceName) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiNanIface.kInterfaceName);
            _hidl_request.writeInt16(cmdId);
            _hidl_request.writeString(ifaceName);
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface
        public WifiStatus deleteDataInterfaceRequest(short cmdId, String ifaceName) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiNanIface.kInterfaceName);
            _hidl_request.writeInt16(cmdId);
            _hidl_request.writeString(ifaceName);
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface
        public WifiStatus initiateDataPathRequest(short cmdId, NanInitiateDataPathRequest msg) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiNanIface.kInterfaceName);
            _hidl_request.writeInt16(cmdId);
            msg.writeToParcel(_hidl_request);
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface
        public WifiStatus respondToDataPathIndicationRequest(short cmdId, NanRespondToDataPathIndicationRequest msg) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiNanIface.kInterfaceName);
            _hidl_request.writeInt16(cmdId);
            msg.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(16, _hidl_request, _hidl_reply, 0);
                _hidl_reply.verifySuccess();
                _hidl_request.releaseTemporaryStorage();
                WifiStatus _hidl_out_status = new WifiStatus();
                _hidl_out_status.readFromParcel(_hidl_reply);
                return _hidl_out_status;
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.V1_0.IWifiNanIface
        public WifiStatus terminateDataPathRequest(short cmdId, int ndpInstanceId) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(IWifiNanIface.kInterfaceName);
            _hidl_request.writeInt16(cmdId);
            _hidl_request.writeInt32(ndpInstanceId);
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) throws RemoteException {
            return this.mRemote.linkToDeath(recipient, cookie);
        }

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) throws RemoteException {
            return this.mRemote.unlinkToDeath(recipient);
        }
    }

    public static abstract class Stub extends HwBinder implements IWifiNanIface {
        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public IHwBinder asBinder() {
            return this;
        }

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final ArrayList<String> interfaceChain() {
            return new ArrayList<>(Arrays.asList(IWifiNanIface.kInterfaceName, IWifiIface.kInterfaceName, IBase.kInterfaceName));
        }

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public void debug(NativeHandle fd, ArrayList<String> options) {
        }

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final String interfaceDescriptor() {
            return IWifiNanIface.kInterfaceName;
        }

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final ArrayList<byte[]> getHashChain() {
            return new ArrayList<>(Arrays.asList(new byte[]{-70, 90, -89, 79, 27, -89, 20, -16, 9, 56, 100, 34, 121, 35, 73, 40, 8, 121, 91, -38, 97, -103, -60, -22, 8, -111, 50, 45, 39, -8, -55, 49}, new byte[]{107, -102, -44, 58, 94, -5, -26, -54, 33, 79, 117, 30, 34, -50, 67, -49, 92, -44, -43, -43, -14, -53, -88, 15, 36, -52, -45, 117, 90, 114, 64, 28}, new byte[]{-20, 127, -41, -98, -48, 45, -6, -123, -68, 73, -108, 38, -83, -82, 62, -66, 35, -17, 5, 36, -13, -51, 105, 87, 19, -109, 36, -72, 59, 24, -54, 76}));
        }

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final void setHALInstrumentation() {
        }

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) {
            return true;
        }

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final void ping() {
        }

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final DebugInfo getDebugInfo() {
            DebugInfo info = new DebugInfo();
            info.pid = HidlSupport.getPidIfSharable();
            info.ptr = 0L;
            info.arch = 0;
            return info;
        }

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final void notifySyspropsChanged() {
            HwBinder.enableInstrumentation();
        }

        @Override // android.hardware.wifi.V1_0.IWifiNanIface, android.hardware.wifi.V1_0.IWifiIface, android.hidl.base.V1_0.IBase
        public final boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) {
            return true;
        }

        public IHwInterface queryLocalInterface(String descriptor) {
            if (IWifiNanIface.kInterfaceName.equals(descriptor)) {
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
                        getType(new IWifiIface.getTypeCallback() { // from class: android.hardware.wifi.V1_0.IWifiNanIface.Stub.1
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
                        getName(new IWifiIface.getNameCallback() { // from class: android.hardware.wifi.V1_0.IWifiNanIface.Stub.2
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
                    _hidl_request.enforceInterface(IWifiNanIface.kInterfaceName);
                    IWifiNanIfaceEventCallback callback = IWifiNanIfaceEventCallback.asInterface(_hidl_request.readStrongBinder());
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
                    }
                    _hidl_request.enforceInterface(IWifiNanIface.kInterfaceName);
                    short cmdId = _hidl_request.readInt16();
                    WifiStatus _hidl_out_status2 = getCapabilitiesRequest(cmdId);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status2.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 5:
                    boolean _hidl_is_oneway5 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway5) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiNanIface.kInterfaceName);
                    short cmdId2 = _hidl_request.readInt16();
                    NanEnableRequest msg = new NanEnableRequest();
                    msg.readFromParcel(_hidl_request);
                    WifiStatus _hidl_out_status3 = enableRequest(cmdId2, msg);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status3.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 6:
                    boolean _hidl_is_oneway6 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway6) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiNanIface.kInterfaceName);
                    short cmdId3 = _hidl_request.readInt16();
                    NanConfigRequest msg2 = new NanConfigRequest();
                    msg2.readFromParcel(_hidl_request);
                    WifiStatus _hidl_out_status4 = configRequest(cmdId3, msg2);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status4.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 7:
                    boolean _hidl_is_oneway7 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway7) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiNanIface.kInterfaceName);
                    short cmdId4 = _hidl_request.readInt16();
                    WifiStatus _hidl_out_status5 = disableRequest(cmdId4);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status5.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 8:
                    boolean _hidl_is_oneway8 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway8) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiNanIface.kInterfaceName);
                    short cmdId5 = _hidl_request.readInt16();
                    NanPublishRequest msg3 = new NanPublishRequest();
                    msg3.readFromParcel(_hidl_request);
                    WifiStatus _hidl_out_status6 = startPublishRequest(cmdId5, msg3);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status6.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 9:
                    boolean _hidl_is_oneway9 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway9) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiNanIface.kInterfaceName);
                    short cmdId6 = _hidl_request.readInt16();
                    byte sessionId = _hidl_request.readInt8();
                    WifiStatus _hidl_out_status7 = stopPublishRequest(cmdId6, sessionId);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status7.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 10:
                    boolean _hidl_is_oneway10 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway10) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiNanIface.kInterfaceName);
                    short cmdId7 = _hidl_request.readInt16();
                    NanSubscribeRequest msg4 = new NanSubscribeRequest();
                    msg4.readFromParcel(_hidl_request);
                    WifiStatus _hidl_out_status8 = startSubscribeRequest(cmdId7, msg4);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status8.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 11:
                    boolean _hidl_is_oneway11 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway11) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiNanIface.kInterfaceName);
                    short cmdId8 = _hidl_request.readInt16();
                    byte sessionId2 = _hidl_request.readInt8();
                    WifiStatus _hidl_out_status9 = stopSubscribeRequest(cmdId8, sessionId2);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status9.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 12:
                    boolean _hidl_is_oneway12 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway12) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiNanIface.kInterfaceName);
                    short cmdId9 = _hidl_request.readInt16();
                    NanTransmitFollowupRequest msg5 = new NanTransmitFollowupRequest();
                    msg5.readFromParcel(_hidl_request);
                    WifiStatus _hidl_out_status10 = transmitFollowupRequest(cmdId9, msg5);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status10.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 13:
                    boolean _hidl_is_oneway13 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway13) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiNanIface.kInterfaceName);
                    short cmdId10 = _hidl_request.readInt16();
                    String ifaceName = _hidl_request.readString();
                    WifiStatus _hidl_out_status11 = createDataInterfaceRequest(cmdId10, ifaceName);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status11.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 14:
                    boolean _hidl_is_oneway14 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway14) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiNanIface.kInterfaceName);
                    short cmdId11 = _hidl_request.readInt16();
                    String ifaceName2 = _hidl_request.readString();
                    WifiStatus _hidl_out_status12 = deleteDataInterfaceRequest(cmdId11, ifaceName2);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status12.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 15:
                    boolean _hidl_is_oneway15 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway15) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiNanIface.kInterfaceName);
                    short cmdId12 = _hidl_request.readInt16();
                    NanInitiateDataPathRequest msg6 = new NanInitiateDataPathRequest();
                    msg6.readFromParcel(_hidl_request);
                    WifiStatus _hidl_out_status13 = initiateDataPathRequest(cmdId12, msg6);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status13.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 16:
                    boolean _hidl_is_oneway16 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway16) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiNanIface.kInterfaceName);
                    short cmdId13 = _hidl_request.readInt16();
                    NanRespondToDataPathIndicationRequest msg7 = new NanRespondToDataPathIndicationRequest();
                    msg7.readFromParcel(_hidl_request);
                    WifiStatus _hidl_out_status14 = respondToDataPathIndicationRequest(cmdId13, msg7);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status14.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                case 17:
                    boolean _hidl_is_oneway17 = (_hidl_flags & 1) != 0;
                    if (_hidl_is_oneway17) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(IWifiNanIface.kInterfaceName);
                    short cmdId14 = _hidl_request.readInt16();
                    int ndpInstanceId = _hidl_request.readInt32();
                    WifiStatus _hidl_out_status15 = terminateDataPathRequest(cmdId14, ndpInstanceId);
                    _hidl_reply.writeStatus(0);
                    _hidl_out_status15.writeToParcel(_hidl_reply);
                    _hidl_reply.send();
                    return;
                default:
                    switch (_hidl_code) {
                        case 256067662:
                            boolean _hidl_is_oneway18 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway18) {
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
                            boolean _hidl_is_oneway19 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway19) {
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
                            boolean _hidl_is_oneway20 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway20) {
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
                            boolean _hidl_is_oneway21 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway21) {
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
                            boolean _hidl_is_oneway22 = (_hidl_flags & 1) != 0;
                            if (!_hidl_is_oneway22) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                setHALInstrumentation();
                                return;
                            }
                        case 256660548:
                            boolean _hidl_is_oneway23 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway23) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            return;
                        case 256921159:
                            boolean _hidl_is_oneway24 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway24) {
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
                            boolean _hidl_is_oneway25 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway25) {
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
                            boolean _hidl_is_oneway26 = (_hidl_flags & 1) != 0;
                            if (!_hidl_is_oneway26) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                notifySyspropsChanged();
                                return;
                            }
                        case 257250372:
                            boolean _hidl_is_oneway27 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway27) {
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
