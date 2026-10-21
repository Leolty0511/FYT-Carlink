package android.net.wifi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface IClientInterface extends IInterface {
    void SendMgmtFrame(byte[] bArr, ISendMgmtFrameEvent iSendMgmtFrameEvent, int i) throws RemoteException;

    String getInterfaceName() throws RemoteException;

    byte[] getMacAddress() throws RemoteException;

    int[] getPacketCounters() throws RemoteException;

    IWifiScannerImpl getWifiScannerImpl() throws RemoteException;

    boolean setMacAddress(byte[] bArr) throws RemoteException;

    int[] signalPoll() throws RemoteException;

    public static class Default implements IClientInterface {
        @Override // android.net.wifi.IClientInterface
        public int[] getPacketCounters() throws RemoteException {
            return null;
        }

        @Override // android.net.wifi.IClientInterface
        public int[] signalPoll() throws RemoteException {
            return null;
        }

        @Override // android.net.wifi.IClientInterface
        public byte[] getMacAddress() throws RemoteException {
            return null;
        }

        @Override // android.net.wifi.IClientInterface
        public String getInterfaceName() throws RemoteException {
            return null;
        }

        @Override // android.net.wifi.IClientInterface
        public IWifiScannerImpl getWifiScannerImpl() throws RemoteException {
            return null;
        }

        @Override // android.net.wifi.IClientInterface
        public boolean setMacAddress(byte[] mac) throws RemoteException {
            return false;
        }

        @Override // android.net.wifi.IClientInterface
        public void SendMgmtFrame(byte[] frame, ISendMgmtFrameEvent callback, int mcs) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IClientInterface {
        private static final String DESCRIPTOR = "android.net.wifi.IClientInterface";
        static final int TRANSACTION_SendMgmtFrame = 7;
        static final int TRANSACTION_getInterfaceName = 4;
        static final int TRANSACTION_getMacAddress = 3;
        static final int TRANSACTION_getPacketCounters = 1;
        static final int TRANSACTION_getWifiScannerImpl = 5;
        static final int TRANSACTION_setMacAddress = 6;
        static final int TRANSACTION_signalPoll = 2;

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IClientInterface asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iin = obj.queryLocalInterface(DESCRIPTOR);
            if (iin != null && (iin instanceof IClientInterface)) {
                return (IClientInterface) iin;
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
                    int[] packetCounters = getPacketCounters();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(packetCounters);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int[] iArrSignalPoll = signalPoll();
                    parcel2.writeNoException();
                    parcel2.writeIntArray(iArrSignalPoll);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    byte[] macAddress = getMacAddress();
                    parcel2.writeNoException();
                    parcel2.writeByteArray(macAddress);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    String interfaceName = getInterfaceName();
                    parcel2.writeNoException();
                    parcel2.writeString(interfaceName);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    IWifiScannerImpl wifiScannerImpl = getWifiScannerImpl();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(wifiScannerImpl != null ? wifiScannerImpl.asBinder() : null);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean macAddress2 = setMacAddress(parcel.createByteArray());
                    parcel2.writeNoException();
                    parcel2.writeInt(macAddress2 ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    SendMgmtFrame(parcel.createByteArray(), ISendMgmtFrameEvent.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IClientInterface {
            public static IClientInterface sDefaultImpl;
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

            @Override // android.net.wifi.IClientInterface
            public int[] getPacketCounters() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(1, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPacketCounters();
                    }
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IClientInterface
            public int[] signalPoll() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(2, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().signalPoll();
                    }
                    _reply.readException();
                    int[] _result = _reply.createIntArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IClientInterface
            public byte[] getMacAddress() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(3, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getMacAddress();
                    }
                    _reply.readException();
                    byte[] _result = _reply.createByteArray();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IClientInterface
            public String getInterfaceName() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(4, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getInterfaceName();
                    }
                    _reply.readException();
                    String _result = _reply.readString();
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IClientInterface
            public IWifiScannerImpl getWifiScannerImpl() throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean _status = this.mRemote.transact(5, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getWifiScannerImpl();
                    }
                    _reply.readException();
                    IWifiScannerImpl _result = IWifiScannerImpl.Stub.asInterface(_reply.readStrongBinder());
                    return _result;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IClientInterface
            public boolean setMacAddress(byte[] mac) throws RemoteException {
                Parcel _data = Parcel.obtain();
                Parcel _reply = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeByteArray(mac);
                    boolean _status = this.mRemote.transact(6, _data, _reply, 0);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setMacAddress(mac);
                    }
                    _reply.readException();
                    boolean _status2 = _reply.readInt() != 0;
                    return _status2;
                } finally {
                    _reply.recycle();
                    _data.recycle();
                }
            }

            @Override // android.net.wifi.IClientInterface
            public void SendMgmtFrame(byte[] frame, ISendMgmtFrameEvent callback, int mcs) throws RemoteException {
                Parcel _data = Parcel.obtain();
                try {
                    _data.writeInterfaceToken(Stub.DESCRIPTOR);
                    _data.writeByteArray(frame);
                    _data.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    _data.writeInt(mcs);
                    boolean _status = this.mRemote.transact(7, _data, null, 1);
                    if (!_status && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().SendMgmtFrame(frame, callback, mcs);
                    }
                } finally {
                    _data.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IClientInterface impl) {
            if (Proxy.sDefaultImpl == null && impl != null) {
                Proxy.sDefaultImpl = impl;
                return true;
            }
            return false;
        }

        public static IClientInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
