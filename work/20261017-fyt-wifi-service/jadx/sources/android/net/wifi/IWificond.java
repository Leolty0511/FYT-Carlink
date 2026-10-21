package android.net.wifi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface IWificond extends IInterface {
    List<IBinder> GetApInterfaces() throws RemoteException;

    List<IBinder> GetClientInterfaces() throws RemoteException;

    void RegisterCallback(IInterfaceEventCallback iInterfaceEventCallback) throws RemoteException;

    void UnregisterCallback(IInterfaceEventCallback iInterfaceEventCallback) throws RemoteException;

    IApInterface createApInterface(String str) throws RemoteException;

    IClientInterface createClientInterface(String str) throws RemoteException;

    int[] getAvailable2gChannels() throws RemoteException;

    int[] getAvailable5gNonDFSChannels() throws RemoteException;

    int[] getAvailableDFSChannels() throws RemoteException;

    boolean tearDownApInterface(String str) throws RemoteException;

    boolean tearDownClientInterface(String str) throws RemoteException;

    void tearDownInterfaces() throws RemoteException;

    public static class Default implements IWificond {
        @Override // android.net.wifi.IWificond
        public IApInterface createApInterface(String iface_name) throws RemoteException {
            return null;
        }

        @Override // android.net.wifi.IWificond
        public IClientInterface createClientInterface(String iface_name) throws RemoteException {
            return null;
        }

        @Override // android.net.wifi.IWificond
        public boolean tearDownApInterface(String iface_name) throws RemoteException {
            return false;
        }

        @Override // android.net.wifi.IWificond
        public boolean tearDownClientInterface(String iface_name) throws RemoteException {
            return false;
        }

        @Override // android.net.wifi.IWificond
        public void tearDownInterfaces() throws RemoteException {
        }

        @Override // android.net.wifi.IWificond
        public List<IBinder> GetClientInterfaces() throws RemoteException {
            return null;
        }

        @Override // android.net.wifi.IWificond
        public List<IBinder> GetApInterfaces() throws RemoteException {
            return null;
        }

        @Override // android.net.wifi.IWificond
        public int[] getAvailable2gChannels() throws RemoteException {
            return null;
        }

        @Override // android.net.wifi.IWificond
        public int[] getAvailable5gNonDFSChannels() throws RemoteException {
            return null;
        }

        @Override // android.net.wifi.IWificond
        public int[] getAvailableDFSChannels() throws RemoteException {
            return null;
        }

        @Override // android.net.wifi.IWificond
        public void RegisterCallback(IInterfaceEventCallback callback) throws RemoteException {
        }

        @Override // android.net.wifi.IWificond
        public void UnregisterCallback(IInterfaceEventCallback callback) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IWificond {
        private static final String DESCRIPTOR = "android.net.wifi.IWificond";
        static final int TRANSACTION_GetApInterfaces = 7;
        static final int TRANSACTION_GetClientInterfaces = 6;
        static final int TRANSACTION_RegisterCallback = 11;
        static final int TRANSACTION_UnregisterCallback = 12;
        static final int TRANSACTION_createApInterface = 1;
        static final int TRANSACTION_createClientInterface = 2;
        static final int TRANSACTION_getAvailable2gChannels = 8;
        static final int TRANSACTION_getAvailable5gNonDFSChannels = 9;
        static final int TRANSACTION_getAvailableDFSChannels = 10;
        static final int TRANSACTION_tearDownApInterface = 3;
        static final int TRANSACTION_tearDownClientInterface = 4;
        static final int TRANSACTION_tearDownInterfaces = 5;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWificond asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IWificond)) {
                return (IWificond) iin;
            }
            return new Proxy(obj);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    IApInterface iApInterfaceCreateApInterface = createApInterface(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iApInterfaceCreateApInterface != null ? iApInterfaceCreateApInterface.asBinder() : null);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    IClientInterface iClientInterfaceCreateClientInterface = createClientInterface(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(iClientInterfaceCreateClientInterface != null ? iClientInterfaceCreateClientInterface.asBinder() : null);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zTearDownApInterface = tearDownApInterface(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zTearDownApInterface ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zTearDownClientInterface = tearDownClientInterface(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zTearDownClientInterface ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    tearDownInterfaces();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<IBinder> listGetClientInterfaces = GetClientInterfaces();
                    parcel2.writeNoException();
                    parcel2.writeBinderList(listGetClientInterfaces);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<IBinder> listGetApInterfaces = GetApInterfaces();
                    parcel2.writeNoException();
                    parcel2.writeBinderList(listGetApInterfaces);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] available2gChannels = getAvailable2gChannels();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(available2gChannels);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] available5gNonDFSChannels = getAvailable5gNonDFSChannels();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(available5gNonDFSChannels);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] availableDFSChannels = getAvailableDFSChannels();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(availableDFSChannels);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    RegisterCallback(IInterfaceEventCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    UnregisterCallback(IInterfaceEventCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IWificond {
            public static IWificond sDefaultImpl;
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

            @Override // android.net.wifi.IWificond
            public IApInterface createApInterface(String iface_name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(iface_name);
                    boolean _status = this.mRemote.transact(1, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().createApInterface(iface_name);
                    }
                    _reply.readException();
                    IApInterface _result = IApInterface.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWificond
            public IClientInterface createClientInterface(String iface_name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(iface_name);
                    boolean _status = this.mRemote.transact(2, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().createClientInterface(iface_name);
                    }
                    _reply.readException();
                    IClientInterface _result = IClientInterface.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWificond
            public boolean tearDownApInterface(String iface_name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(iface_name);
                    boolean _status = this.mRemote.transact(3, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().tearDownApInterface(iface_name);
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWificond
            public boolean tearDownClientInterface(String iface_name) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(iface_name);
                    boolean _status = this.mRemote.transact(4, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().tearDownClientInterface(iface_name);
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWificond
            public void tearDownInterfaces() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(5, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().tearDownInterfaces();
                    } else {
                        _reply.readException();
                    }
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWificond
            public List<IBinder> GetClientInterfaces() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(6, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().GetClientInterfaces();
                    }
                    _reply.readException();
                    List<IBinder> _result = _reply.createBinderArrayList();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWificond
            public List<IBinder> GetApInterfaces() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(7, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().GetApInterfaces();
                    }
                    _reply.readException();
                    List<IBinder> _result = _reply.createBinderArrayList();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWificond
            public int[] getAvailable2gChannels() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(8, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAvailable2gChannels();
                    }
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWificond
            public int[] getAvailable5gNonDFSChannels() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(9, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAvailable5gNonDFSChannels();
                    }
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWificond
            public int[] getAvailableDFSChannels() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(10, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAvailableDFSChannels();
                    }
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWificond
            public void RegisterCallback(IInterfaceEventCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    boolean _status = this.mRemote.transact(11, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().RegisterCallback(callback);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IWificond
            public void UnregisterCallback(IInterfaceEventCallback callback) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    boolean _status = this.mRemote.transact(12, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().UnregisterCallback(callback);
                    }
                } finally {
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IWificond impl) {
            if (Proxy.sDefaultImpl == null && impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IWificond getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
