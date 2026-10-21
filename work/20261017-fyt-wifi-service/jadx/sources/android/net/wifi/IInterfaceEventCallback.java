package android.net.wifi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IInterfaceEventCallback extends IInterface {
    void OnApInterfaceReady(IApInterface iApInterface) throws RemoteException;

    void OnApTorndownEvent(IApInterface iApInterface) throws RemoteException;

    void OnClientInterfaceReady(IClientInterface iClientInterface) throws RemoteException;

    void OnClientTorndownEvent(IClientInterface iClientInterface) throws RemoteException;

    public static class Default implements IInterfaceEventCallback {
        @Override // android.net.wifi.IInterfaceEventCallback
        public void OnClientInterfaceReady(IClientInterface network_interface) throws RemoteException {
        }

        @Override // android.net.wifi.IInterfaceEventCallback
        public void OnApInterfaceReady(IApInterface network_interface) throws RemoteException {
        }

        @Override // android.net.wifi.IInterfaceEventCallback
        public void OnClientTorndownEvent(IClientInterface network_interface) throws RemoteException {
        }

        @Override // android.net.wifi.IInterfaceEventCallback
        public void OnApTorndownEvent(IApInterface network_interface) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IInterfaceEventCallback {
        private static final String DESCRIPTOR = "android.net.wifi.IInterfaceEventCallback";
        static final int TRANSACTION_OnApInterfaceReady = 2;
        static final int TRANSACTION_OnApTorndownEvent = 4;
        static final int TRANSACTION_OnClientInterfaceReady = 1;
        static final int TRANSACTION_OnClientTorndownEvent = 3;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IInterfaceEventCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IInterfaceEventCallback)) {
                return (IInterfaceEventCallback) iin;
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
                IClientInterface _arg0 = IClientInterface.Stub.asInterface(data.readStrongBinder());
                OnClientInterfaceReady(_arg0);
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                IApInterface _arg1 = IApInterface.Stub.asInterface(data.readStrongBinder());
                OnApInterfaceReady(_arg1);
                return true;
            }
            if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                IClientInterface _arg2 = IClientInterface.Stub.asInterface(data.readStrongBinder());
                OnClientTorndownEvent(_arg2);
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
            IApInterface _arg3 = IApInterface.Stub.asInterface(data.readStrongBinder());
            OnApTorndownEvent(_arg3);
            return true;
        }

        private static class Proxy implements IInterfaceEventCallback {
            public static IInterfaceEventCallback sDefaultImpl;
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

            @Override // android.net.wifi.IInterfaceEventCallback
            public void OnClientInterfaceReady(IClientInterface network_interface) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(network_interface != null ? network_interface.asBinder() : null);
                    boolean _status = this.mRemote.transact(1, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().OnClientInterfaceReady(network_interface);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IInterfaceEventCallback
            public void OnApInterfaceReady(IApInterface network_interface) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(network_interface != null ? network_interface.asBinder() : null);
                    boolean _status = this.mRemote.transact(2, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().OnApInterfaceReady(network_interface);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IInterfaceEventCallback
            public void OnClientTorndownEvent(IClientInterface network_interface) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(network_interface != null ? network_interface.asBinder() : null);
                    boolean _status = this.mRemote.transact(3, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().OnClientTorndownEvent(network_interface);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IInterfaceEventCallback
            public void OnApTorndownEvent(IApInterface network_interface) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(network_interface != null ? network_interface.asBinder() : null);
                    boolean _status = this.mRemote.transact(4, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().OnApTorndownEvent(network_interface);
                    }
                } finally {
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IInterfaceEventCallback impl) {
            if (Proxy.sDefaultImpl == null && impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IInterfaceEventCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
