package android.hardware.wifi.supplicant.V1_2;

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
public interface ISupplicantStaIfaceCallback extends android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback {
    public static final String kInterfaceName = "android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback";

    @Override // android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
    IHwBinder asBinder();

    @Override // android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
    void debug(NativeHandle nativeHandle, ArrayList<String> arrayList) throws RemoteException;

    @Override // android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
    DebugInfo getDebugInfo() throws RemoteException;

    @Override // android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
    ArrayList<byte[]> getHashChain() throws RemoteException;

    @Override // android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
    ArrayList<String> interfaceChain() throws RemoteException;

    @Override // android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
    String interfaceDescriptor() throws RemoteException;

    @Override // android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
    boolean linkToDeath(IHwBinder.DeathRecipient deathRecipient, long j) throws RemoteException;

    @Override // android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
    void notifySyspropsChanged() throws RemoteException;

    void onDppFailure(int i) throws RemoteException;

    void onDppProgress(int i) throws RemoteException;

    void onDppSuccessConfigReceived(ArrayList<Byte> arrayList, String str, byte[] bArr, int i) throws RemoteException;

    void onDppSuccessConfigSent() throws RemoteException;

    @Override // android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
    void ping() throws RemoteException;

    @Override // android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
    void setHALInstrumentation() throws RemoteException;

    @Override // android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
    boolean unlinkToDeath(IHwBinder.DeathRecipient deathRecipient) throws RemoteException;

    static ISupplicantStaIfaceCallback asInterface(IHwBinder binder) {
        if (binder == null) {
            return null;
        }
        IHwInterface iface = binder.queryLocalInterface(kInterfaceName);
        if (iface != null && (iface instanceof ISupplicantStaIfaceCallback)) {
            return (ISupplicantStaIfaceCallback) iface;
        }
        ISupplicantStaIfaceCallback proxy = new Proxy(binder);
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

    static ISupplicantStaIfaceCallback castFrom(IHwInterface iface) {
        if (iface == null) {
            return null;
        }
        return asInterface(iface.asBinder());
    }

    static ISupplicantStaIfaceCallback getService(String serviceName, boolean retry) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName, retry));
    }

    static ISupplicantStaIfaceCallback getService(boolean retry) throws RemoteException {
        return getService("default", retry);
    }

    static ISupplicantStaIfaceCallback getService(String serviceName) throws RemoteException {
        return asInterface(HwBinder.getService(kInterfaceName, serviceName));
    }

    static ISupplicantStaIfaceCallback getService() throws RemoteException {
        return getService("default");
    }

    public static final class Proxy implements ISupplicantStaIfaceCallback {
        private IHwBinder mRemote;

        public Proxy(IHwBinder remote) {
            this.mRemote = (IHwBinder) Objects.requireNonNull(remote);
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
        public IHwBinder asBinder() {
            return this.mRemote;
        }

        public String toString() {
            try {
                return interfaceDescriptor() + "@Proxy";
            } catch (RemoteException e) {
                return "[class or subclass of android.hardware.wifi.supplicant@1.2::ISupplicantStaIfaceCallback]@Proxy";
            }
        }

        public final boolean equals(Object other) {
            return HidlSupport.interfacesEqual(this, other);
        }

        public final int hashCode() {
            return asBinder().hashCode();
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onNetworkAdded(int id) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            _hidl_request.writeInt32(id);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(1, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onNetworkRemoved(int id) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            _hidl_request.writeInt32(id);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(2, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onStateChanged(int newState, byte[] bssid, int id, ArrayList<Byte> ssid) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            _hidl_request.writeInt32(newState);
            HwBlob _hidl_blob = new HwBlob(6);
            if (bssid == null || bssid.length != 6) {
                throw new IllegalArgumentException("Array element is not of the expected length");
            }
            _hidl_blob.putInt8Array(0L, bssid);
            _hidl_request.writeBuffer(_hidl_blob);
            _hidl_request.writeInt32(id);
            _hidl_request.writeInt8Vector(ssid);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(3, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onAnqpQueryDone(byte[] bssid, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.AnqpData data, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.Hs20AnqpData hs20Data) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            HwBlob _hidl_blob = new HwBlob(6);
            if (bssid == null || bssid.length != 6) {
                throw new IllegalArgumentException("Array element is not of the expected length");
            }
            _hidl_blob.putInt8Array(0L, bssid);
            _hidl_request.writeBuffer(_hidl_blob);
            data.writeToParcel(_hidl_request);
            hs20Data.writeToParcel(_hidl_request);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(4, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onHs20IconQueryDone(byte[] bssid, String fileName, ArrayList<Byte> data) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            HwBlob _hidl_blob = new HwBlob(6);
            if (bssid == null || bssid.length != 6) {
                throw new IllegalArgumentException("Array element is not of the expected length");
            }
            _hidl_blob.putInt8Array(0L, bssid);
            _hidl_request.writeBuffer(_hidl_blob);
            _hidl_request.writeString(fileName);
            _hidl_request.writeInt8Vector(data);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(5, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onHs20SubscriptionRemediation(byte[] bssid, byte osuMethod, String url) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            HwBlob _hidl_blob = new HwBlob(6);
            if (bssid == null || bssid.length != 6) {
                throw new IllegalArgumentException("Array element is not of the expected length");
            }
            _hidl_blob.putInt8Array(0L, bssid);
            _hidl_request.writeBuffer(_hidl_blob);
            _hidl_request.writeInt8(osuMethod);
            _hidl_request.writeString(url);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(6, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onHs20DeauthImminentNotice(byte[] bssid, int reasonCode, int reAuthDelayInSec, String url) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            HwBlob _hidl_blob = new HwBlob(6);
            if (bssid == null || bssid.length != 6) {
                throw new IllegalArgumentException("Array element is not of the expected length");
            }
            _hidl_blob.putInt8Array(0L, bssid);
            _hidl_request.writeBuffer(_hidl_blob);
            _hidl_request.writeInt32(reasonCode);
            _hidl_request.writeInt32(reAuthDelayInSec);
            _hidl_request.writeString(url);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(7, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onDisconnected(byte[] bssid, boolean locallyGenerated, int reasonCode) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            HwBlob _hidl_blob = new HwBlob(6);
            if (bssid == null || bssid.length != 6) {
                throw new IllegalArgumentException("Array element is not of the expected length");
            }
            _hidl_blob.putInt8Array(0L, bssid);
            _hidl_request.writeBuffer(_hidl_blob);
            _hidl_request.writeBool(locallyGenerated);
            _hidl_request.writeInt32(reasonCode);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(8, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onAssociationRejected(byte[] bssid, int statusCode, boolean timedOut) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            HwBlob _hidl_blob = new HwBlob(6);
            if (bssid == null || bssid.length != 6) {
                throw new IllegalArgumentException("Array element is not of the expected length");
            }
            _hidl_blob.putInt8Array(0L, bssid);
            _hidl_request.writeBuffer(_hidl_blob);
            _hidl_request.writeInt32(statusCode);
            _hidl_request.writeBool(timedOut);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(9, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onAuthenticationTimeout(byte[] bssid) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            HwBlob _hidl_blob = new HwBlob(6);
            if (bssid == null || bssid.length != 6) {
                throw new IllegalArgumentException("Array element is not of the expected length");
            }
            _hidl_blob.putInt8Array(0L, bssid);
            _hidl_request.writeBuffer(_hidl_blob);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(10, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onEapFailure() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(11, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onBssidChanged(byte reason, byte[] bssid) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            _hidl_request.writeInt8(reason);
            HwBlob _hidl_blob = new HwBlob(6);
            if (bssid == null || bssid.length != 6) {
                throw new IllegalArgumentException("Array element is not of the expected length");
            }
            _hidl_blob.putInt8Array(0L, bssid);
            _hidl_request.writeBuffer(_hidl_blob);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(12, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onWpsEventSuccess() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(13, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onWpsEventFail(byte[] bssid, short configError, short errorInd) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            HwBlob _hidl_blob = new HwBlob(6);
            if (bssid == null || bssid.length != 6) {
                throw new IllegalArgumentException("Array element is not of the expected length");
            }
            _hidl_blob.putInt8Array(0L, bssid);
            _hidl_request.writeBuffer(_hidl_blob);
            _hidl_request.writeInt16(configError);
            _hidl_request.writeInt16(errorInd);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(14, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onWpsEventPbcOverlap() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(15, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onExtRadioWorkStart(int id) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            _hidl_request.writeInt32(id);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(16, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback
        public void onExtRadioWorkTimeout(int id) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
            _hidl_request.writeInt32(id);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(17, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback
        public void onEapFailure_1_1(int errorCode) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback.kInterfaceName);
            _hidl_request.writeInt32(errorCode);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(18, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback
        public void onDppSuccessConfigReceived(ArrayList<Byte> ssid, String password, byte[] psk, int securityAkm) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(ISupplicantStaIfaceCallback.kInterfaceName);
            _hidl_request.writeInt8Vector(ssid);
            _hidl_request.writeString(password);
            HwBlob _hidl_blob = new HwBlob(32);
            if (psk == null || psk.length != 32) {
                throw new IllegalArgumentException("Array element is not of the expected length");
            }
            _hidl_blob.putInt8Array(0L, psk);
            _hidl_request.writeBuffer(_hidl_blob);
            _hidl_request.writeInt32(securityAkm);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(19, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback
        public void onDppSuccessConfigSent() throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(ISupplicantStaIfaceCallback.kInterfaceName);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(20, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback
        public void onDppProgress(int code) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(ISupplicantStaIfaceCallback.kInterfaceName);
            _hidl_request.writeInt32(code);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(21, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback
        public void onDppFailure(int code) throws RemoteException {
            HwParcel _hidl_request = new HwParcel();
            _hidl_request.writeInterfaceToken(ISupplicantStaIfaceCallback.kInterfaceName);
            _hidl_request.writeInt32(code);
            HwParcel _hidl_reply = new HwParcel();
            try {
                this.mRemote.transact(22, _hidl_request, _hidl_reply, 1);
                _hidl_request.releaseTemporaryStorage();
            } finally {
                _hidl_reply.release();
            }
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
        public boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) throws RemoteException {
            return this.mRemote.linkToDeath(recipient, cookie);
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
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

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
        public boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) throws RemoteException {
            return this.mRemote.unlinkToDeath(recipient);
        }
    }

    public static abstract class Stub extends HwBinder implements ISupplicantStaIfaceCallback {
        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
        public IHwBinder asBinder() {
            return this;
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
        public final ArrayList<String> interfaceChain() {
            return new ArrayList<>(Arrays.asList(ISupplicantStaIfaceCallback.kInterfaceName, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback.kInterfaceName, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName, IBase.kInterfaceName));
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
        public void debug(NativeHandle fd, ArrayList<String> options) {
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
        public final String interfaceDescriptor() {
            return ISupplicantStaIfaceCallback.kInterfaceName;
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
        public final ArrayList<byte[]> getHashChain() {
            return new ArrayList<>(Arrays.asList(new byte[]{9, -32, -117, 93, 18, -79, 9, 86, 46, -51, -40, -120, 37, 50, -3, 31, 44, 70, 57, 88, -114, 7, 118, -99, 92, 115, -106, -73, -59, -71, -13, 79}, new byte[]{-51, 67, 48, -61, 25, 107, -38, 29, 100, 42, 50, -85, -2, 35, -89, -42, 78, -65, -67, -89, 33, -108, 6, 67, -81, 104, 103, -81, 59, 63, 10, -87}, new byte[]{-41, -127, -56, -41, -25, -77, -2, 92, -54, -116, -10, -31, -40, -128, 110, 119, 9, -126, -82, 83, 88, -57, -127, 110, -43, 27, 15, 14, -62, 114, -25, 13}, new byte[]{-20, 127, -41, -98, -48, 45, -6, -123, -68, 73, -108, 38, -83, -82, 62, -66, 35, -17, 5, 36, -13, -51, 105, 87, 19, -109, 36, -72, 59, 24, -54, 76}));
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
        public final void setHALInstrumentation() {
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
        public final boolean linkToDeath(IHwBinder.DeathRecipient recipient, long cookie) {
            return true;
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
        public final void ping() {
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
        public final DebugInfo getDebugInfo() {
            DebugInfo info = new DebugInfo();
            info.pid = HidlSupport.getPidIfSharable();
            info.ptr = 0L;
            info.arch = 0;
            return info;
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
        public final void notifySyspropsChanged() {
            HwBinder.enableInstrumentation();
        }

        @Override // android.hardware.wifi.supplicant.V1_2.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback, android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback, android.hidl.base.V1_0.IBase
        public final boolean unlinkToDeath(IHwBinder.DeathRecipient recipient) {
            return true;
        }

        public IHwInterface queryLocalInterface(String descriptor) {
            if (ISupplicantStaIfaceCallback.kInterfaceName.equals(descriptor)) {
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
                    if (!_hidl_is_oneway) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                        int id = _hidl_request.readInt32();
                        onNetworkAdded(id);
                        return;
                    }
                case 2:
                    boolean _hidl_is_oneway2 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway2) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                        int id2 = _hidl_request.readInt32();
                        onNetworkRemoved(id2);
                        return;
                    }
                case 3:
                    boolean _hidl_is_oneway3 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway3) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                    int newState = _hidl_request.readInt32();
                    byte[] bssid = new byte[6];
                    HwBlob _hidl_blob = _hidl_request.readBuffer(6L);
                    _hidl_blob.copyToInt8Array(0L, bssid, 6);
                    int id3 = _hidl_request.readInt32();
                    ArrayList<Byte> ssid = _hidl_request.readInt8Vector();
                    onStateChanged(newState, bssid, id3, ssid);
                    return;
                case 4:
                    boolean _hidl_is_oneway4 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway4) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                    byte[] bssid2 = new byte[6];
                    HwBlob _hidl_blob2 = _hidl_request.readBuffer(6L);
                    _hidl_blob2.copyToInt8Array(0L, bssid2, 6);
                    android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.AnqpData data = new android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.AnqpData();
                    data.readFromParcel(_hidl_request);
                    android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.Hs20AnqpData hs20Data = new android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.Hs20AnqpData();
                    hs20Data.readFromParcel(_hidl_request);
                    onAnqpQueryDone(bssid2, data, hs20Data);
                    return;
                case 5:
                    boolean _hidl_is_oneway5 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway5) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                    byte[] bssid3 = new byte[6];
                    HwBlob _hidl_blob3 = _hidl_request.readBuffer(6L);
                    _hidl_blob3.copyToInt8Array(0L, bssid3, 6);
                    String fileName = _hidl_request.readString();
                    onHs20IconQueryDone(bssid3, fileName, _hidl_request.readInt8Vector());
                    return;
                case 6:
                    boolean _hidl_is_oneway6 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway6) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                    byte[] bssid4 = new byte[6];
                    HwBlob _hidl_blob4 = _hidl_request.readBuffer(6L);
                    _hidl_blob4.copyToInt8Array(0L, bssid4, 6);
                    byte osuMethod = _hidl_request.readInt8();
                    String url = _hidl_request.readString();
                    onHs20SubscriptionRemediation(bssid4, osuMethod, url);
                    return;
                case 7:
                    boolean _hidl_is_oneway7 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway7) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                    byte[] bssid5 = new byte[6];
                    HwBlob _hidl_blob5 = _hidl_request.readBuffer(6L);
                    _hidl_blob5.copyToInt8Array(0L, bssid5, 6);
                    int reasonCode = _hidl_request.readInt32();
                    int reAuthDelayInSec = _hidl_request.readInt32();
                    String url2 = _hidl_request.readString();
                    onHs20DeauthImminentNotice(bssid5, reasonCode, reAuthDelayInSec, url2);
                    return;
                case 8:
                    boolean _hidl_is_oneway8 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway8) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                    byte[] bssid6 = new byte[6];
                    HwBlob _hidl_blob6 = _hidl_request.readBuffer(6L);
                    _hidl_blob6.copyToInt8Array(0L, bssid6, 6);
                    boolean locallyGenerated = _hidl_request.readBool();
                    int reasonCode2 = _hidl_request.readInt32();
                    onDisconnected(bssid6, locallyGenerated, reasonCode2);
                    return;
                case 9:
                    boolean _hidl_is_oneway9 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway9) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                    byte[] bssid7 = new byte[6];
                    HwBlob _hidl_blob7 = _hidl_request.readBuffer(6L);
                    _hidl_blob7.copyToInt8Array(0L, bssid7, 6);
                    int statusCode = _hidl_request.readInt32();
                    boolean timedOut = _hidl_request.readBool();
                    onAssociationRejected(bssid7, statusCode, timedOut);
                    return;
                case 10:
                    boolean _hidl_is_oneway10 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway10) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                    byte[] bssid8 = new byte[6];
                    HwBlob _hidl_blob8 = _hidl_request.readBuffer(6L);
                    _hidl_blob8.copyToInt8Array(0L, bssid8, 6);
                    onAuthenticationTimeout(bssid8);
                    return;
                case 11:
                    boolean _hidl_is_oneway11 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway11) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                        onEapFailure();
                        return;
                    }
                case 12:
                    boolean _hidl_is_oneway12 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway12) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                    byte reason = _hidl_request.readInt8();
                    byte[] bssid9 = new byte[6];
                    HwBlob _hidl_blob9 = _hidl_request.readBuffer(6L);
                    _hidl_blob9.copyToInt8Array(0L, bssid9, 6);
                    onBssidChanged(reason, bssid9);
                    return;
                case 13:
                    boolean _hidl_is_oneway13 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway13) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                        onWpsEventSuccess();
                        return;
                    }
                case 14:
                    boolean _hidl_is_oneway14 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway14) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                    byte[] bssid10 = new byte[6];
                    HwBlob _hidl_blob10 = _hidl_request.readBuffer(6L);
                    _hidl_blob10.copyToInt8Array(0L, bssid10, 6);
                    short configError = _hidl_request.readInt16();
                    short errorInd = _hidl_request.readInt16();
                    onWpsEventFail(bssid10, configError, errorInd);
                    return;
                case 15:
                    boolean _hidl_is_oneway15 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway15) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                        onWpsEventPbcOverlap();
                        return;
                    }
                case 16:
                    boolean _hidl_is_oneway16 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway16) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                        int id4 = _hidl_request.readInt32();
                        onExtRadioWorkStart(id4);
                        return;
                    }
                case 17:
                    boolean _hidl_is_oneway17 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway17) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.kInterfaceName);
                        int id5 = _hidl_request.readInt32();
                        onExtRadioWorkTimeout(id5);
                        return;
                    }
                case 18:
                    boolean _hidl_is_oneway18 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway18) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(android.hardware.wifi.supplicant.V1_1.ISupplicantStaIfaceCallback.kInterfaceName);
                        int errorCode = _hidl_request.readInt32();
                        onEapFailure_1_1(errorCode);
                        return;
                    }
                case 19:
                    boolean _hidl_is_oneway19 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway19) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    }
                    _hidl_request.enforceInterface(ISupplicantStaIfaceCallback.kInterfaceName);
                    ArrayList<Byte> ssid2 = _hidl_request.readInt8Vector();
                    String password = _hidl_request.readString();
                    byte[] psk = new byte[32];
                    HwBlob _hidl_blob11 = _hidl_request.readBuffer(32L);
                    _hidl_blob11.copyToInt8Array(0L, psk, 32);
                    int securityAkm = _hidl_request.readInt32();
                    onDppSuccessConfigReceived(ssid2, password, psk, securityAkm);
                    return;
                case 20:
                    boolean _hidl_is_oneway20 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway20) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(ISupplicantStaIfaceCallback.kInterfaceName);
                        onDppSuccessConfigSent();
                        return;
                    }
                case android.hardware.wifi.supplicant.V1_0.ISupplicantStaIfaceCallback.ReasonCode.UNSUPPORTED_RSN_IE_VERSION /* 21 */:
                    boolean _hidl_is_oneway21 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway21) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(ISupplicantStaIfaceCallback.kInterfaceName);
                        int code = _hidl_request.readInt32();
                        onDppProgress(code);
                        return;
                    }
                case 22:
                    boolean _hidl_is_oneway22 = (_hidl_flags & 1) != 0;
                    if (!_hidl_is_oneway22) {
                        _hidl_reply.writeStatus(Integer.MIN_VALUE);
                        _hidl_reply.send();
                        return;
                    } else {
                        _hidl_request.enforceInterface(ISupplicantStaIfaceCallback.kInterfaceName);
                        int code2 = _hidl_request.readInt32();
                        onDppFailure(code2);
                        return;
                    }
                default:
                    switch (_hidl_code) {
                        case 256067662:
                            boolean _hidl_is_oneway23 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway23) {
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
                            boolean _hidl_is_oneway24 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway24) {
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
                            boolean _hidl_is_oneway25 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway25) {
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
                            boolean _hidl_is_oneway26 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway26) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            _hidl_request.enforceInterface(IBase.kInterfaceName);
                            ArrayList<byte[]> _hidl_out_hashchain = getHashChain();
                            _hidl_reply.writeStatus(0);
                            HwBlob _hidl_blob12 = new HwBlob(16);
                            int _hidl_vec_size = _hidl_out_hashchain.size();
                            _hidl_blob12.putInt32(8L, _hidl_vec_size);
                            _hidl_blob12.putBool(12L, false);
                            HwBlob childBlob = new HwBlob(_hidl_vec_size * 32);
                            for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
                                long _hidl_array_offset_1 = _hidl_index_0 * 32;
                                byte[] _hidl_array_item_1 = _hidl_out_hashchain.get(_hidl_index_0);
                                if (_hidl_array_item_1 == null || _hidl_array_item_1.length != 32) {
                                    throw new IllegalArgumentException("Array element is not of the expected length");
                                }
                                childBlob.putInt8Array(_hidl_array_offset_1, _hidl_array_item_1);
                            }
                            _hidl_blob12.putBlob(0L, childBlob);
                            _hidl_reply.writeBuffer(_hidl_blob12);
                            _hidl_reply.send();
                            return;
                        case 256462420:
                            boolean _hidl_is_oneway27 = (_hidl_flags & 1) != 0;
                            if (!_hidl_is_oneway27) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                setHALInstrumentation();
                                return;
                            }
                        case 256660548:
                            boolean _hidl_is_oneway28 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway28) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            }
                            return;
                        case 256921159:
                            boolean _hidl_is_oneway29 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway29) {
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
                            boolean _hidl_is_oneway30 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway30) {
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
                            boolean _hidl_is_oneway31 = (_hidl_flags & 1) != 0;
                            if (!_hidl_is_oneway31) {
                                _hidl_reply.writeStatus(Integer.MIN_VALUE);
                                _hidl_reply.send();
                                return;
                            } else {
                                _hidl_request.enforceInterface(IBase.kInterfaceName);
                                notifySyspropsChanged();
                                return;
                            }
                        case 257250372:
                            boolean _hidl_is_oneway32 = (_hidl_flags & 1) != 0;
                            if (_hidl_is_oneway32) {
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
