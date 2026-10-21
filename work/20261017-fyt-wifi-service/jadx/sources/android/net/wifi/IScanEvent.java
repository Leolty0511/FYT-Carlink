package android.net.wifi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IScanEvent extends IInterface {
    void OnScanFailed() throws RemoteException;

    void OnScanResultReady() throws RemoteException;

    public static class Default implements IScanEvent {
        @Override // android.net.wifi.IScanEvent
        public void OnScanResultReady() throws RemoteException {
        }

        @Override // android.net.wifi.IScanEvent
        public void OnScanFailed() throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IScanEvent {
        private static final String DESCRIPTOR = "android.net.wifi.IScanEvent";
        static final int TRANSACTION_OnScanFailed = 2;
        static final int TRANSACTION_OnScanResultReady = 1;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IScanEvent asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IScanEvent)) {
                return (IScanEvent) iin;
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
                OnScanResultReady();
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                OnScanFailed();
                return true;
            }
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(code, data, reply, flags);
        }

        private static class Proxy implements IScanEvent {
            public static IScanEvent sDefaultImpl;
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

            @Override // android.net.wifi.IScanEvent
            public void OnScanResultReady() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(1, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().OnScanResultReady();
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IScanEvent
            public void OnScanFailed() throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(2, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().OnScanFailed();
                    }
                } finally {
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IScanEvent impl) {
            if (Proxy.sDefaultImpl == null && impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IScanEvent getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
