package android.net.wifi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IPnoScanEvent extends IInterface {
    public static final int PNO_SCAN_OVER_OFFLOAD_BINDER_FAILURE = 0;
    public static final int PNO_SCAN_OVER_OFFLOAD_REMOTE_FAILURE = 1;

    void OnPnoNetworkFound() throws RemoteException;

    void OnPnoScanFailed() throws RemoteException;

    void OnPnoScanOverOffloadFailed(int i) throws RemoteException;

    void OnPnoScanOverOffloadStarted() throws RemoteException;

    public static class Default implements IPnoScanEvent {
        @Override // android.net.wifi.IPnoScanEvent
        public void OnPnoNetworkFound() throws RemoteException {
        }

        @Override // android.net.wifi.IPnoScanEvent
        public void OnPnoScanFailed() throws RemoteException {
        }

        @Override // android.net.wifi.IPnoScanEvent
        public void OnPnoScanOverOffloadStarted() throws RemoteException {
        }

        @Override // android.net.wifi.IPnoScanEvent
        public void OnPnoScanOverOffloadFailed(int reason) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IPnoScanEvent {
        private static final String DESCRIPTOR = "android.net.wifi.IPnoScanEvent";
        static final int TRANSACTION_OnPnoNetworkFound = 1;
        static final int TRANSACTION_OnPnoScanFailed = 2;
        static final int TRANSACTION_OnPnoScanOverOffloadFailed = 4;
        static final int TRANSACTION_OnPnoScanOverOffloadStarted = 3;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPnoScanEvent asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IPnoScanEvent)) {
                return (IPnoScanEvent) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                OnPnoNetworkFound();
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                OnPnoScanFailed();
                return true;
            }
            if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                OnPnoScanOverOffloadStarted();
                return true;
            }
            if (code != 4) {
                if (code == 1598968902) {
                    reply.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(code, data, reply, flags);
            }
            data.enforceInterface(DESCRIPTOR);
            int _arg0 = data.readInt();
            OnPnoScanOverOffloadFailed(_arg0);
            return true;
        }

        private static class Proxy implements IPnoScanEvent {
            public static IPnoScanEvent sDefaultImpl;
            private IBinder mRemote;

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // android.net.wifi.IPnoScanEvent
            public void OnPnoNetworkFound() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(1, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().OnPnoNetworkFound();
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IPnoScanEvent
            public void OnPnoScanFailed() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(2, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().OnPnoScanFailed();
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IPnoScanEvent
            public void OnPnoScanOverOffloadStarted() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(3, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().OnPnoScanOverOffloadStarted();
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IPnoScanEvent
            public void OnPnoScanOverOffloadFailed(int reason) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(reason);
                    boolean _status = this.mRemote.transact(4, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().OnPnoScanOverOffloadFailed(reason);
                    }
                } finally {
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IPnoScanEvent impl) {
            if (Proxy.sDefaultImpl == null && impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IPnoScanEvent getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
