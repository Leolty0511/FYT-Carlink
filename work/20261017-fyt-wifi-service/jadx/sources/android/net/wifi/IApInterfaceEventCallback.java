package android.net.wifi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IApInterfaceEventCallback extends IInterface {
    public static final int BANDWIDTH_160 = 6;
    public static final int BANDWIDTH_20 = 2;
    public static final int BANDWIDTH_20_NOHT = 1;
    public static final int BANDWIDTH_40 = 3;
    public static final int BANDWIDTH_80 = 4;
    public static final int BANDWIDTH_80P80 = 5;
    public static final int BANDWIDTH_INVALID = 0;

    void onNumAssociatedStationsChanged(int i) throws RemoteException;

    void onSoftApChannelSwitched(int i, int i2) throws RemoteException;

    void onStationAssociated(String str) throws RemoteException;

    void onStationDisassociated(String str) throws RemoteException;

    public static class Default implements IApInterfaceEventCallback {
        @Override // android.net.wifi.IApInterfaceEventCallback
        public void onNumAssociatedStationsChanged(int numStations) throws RemoteException {
        }

        @Override // android.net.wifi.IApInterfaceEventCallback
        public void onStationAssociated(String macAddress) throws RemoteException {
        }

        @Override // android.net.wifi.IApInterfaceEventCallback
        public void onStationDisassociated(String macAddress) throws RemoteException {
        }

        @Override // android.net.wifi.IApInterfaceEventCallback
        public void onSoftApChannelSwitched(int frequency, int bandwidth) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IApInterfaceEventCallback {
        private static final String DESCRIPTOR = "android.net.wifi.IApInterfaceEventCallback";
        static final int TRANSACTION_onNumAssociatedStationsChanged = 1;
        static final int TRANSACTION_onSoftApChannelSwitched = 4;
        static final int TRANSACTION_onStationAssociated = 2;
        static final int TRANSACTION_onStationDisassociated = 3;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IApInterfaceEventCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IApInterfaceEventCallback)) {
                return (IApInterfaceEventCallback) iin;
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
                int _arg0 = data.readInt();
                onNumAssociatedStationsChanged(_arg0);
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                String _arg1 = data.readString();
                onStationAssociated(_arg1);
                return true;
            }
            if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                String _arg2 = data.readString();
                onStationDisassociated(_arg2);
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
            int _arg3 = data.readInt();
            int _arg4 = data.readInt();
            onSoftApChannelSwitched(_arg3, _arg4);
            return true;
        }

        private static class Proxy implements IApInterfaceEventCallback {
            public static IApInterfaceEventCallback sDefaultImpl;
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

            @Override // android.net.wifi.IApInterfaceEventCallback
            public void onNumAssociatedStationsChanged(int numStations) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(numStations);
                    boolean _status = this.mRemote.transact(1, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onNumAssociatedStationsChanged(numStations);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IApInterfaceEventCallback
            public void onStationAssociated(String macAddress) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(macAddress);
                    boolean _status = this.mRemote.transact(2, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onStationAssociated(macAddress);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IApInterfaceEventCallback
            public void onStationDisassociated(String macAddress) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeString(macAddress);
                    boolean _status = this.mRemote.transact(3, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onStationDisassociated(macAddress);
                    }
                } finally {
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IApInterfaceEventCallback
            public void onSoftApChannelSwitched(int frequency, int bandwidth) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeInt(frequency);
                    _data.writeInt(bandwidth);
                    boolean _status = this.mRemote.transact(4, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSoftApChannelSwitched(frequency, bandwidth);
                    }
                } finally {
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IApInterfaceEventCallback impl) {
            if (Proxy.sDefaultImpl == null && impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IApInterfaceEventCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
